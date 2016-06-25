(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g28419_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g28420_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g28423_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g28424_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28425_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28426_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g28427_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g28428_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g28429_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g28430_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28431_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28432_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g28433_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g28434_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28435_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28448_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28449_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28450_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g28451_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g28468_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28469_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28470_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28471_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28474_| (gx#core-quote-syntax 'and))
  (begin
    (define |gerbil/core::<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core::<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core::<match>[1]#match-macro::t|))
    (define |gerbil/core::<match>[1]#make-match-macro|
      (lambda _$args23387_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23387_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23384_)
        (if (gx#identifier? _stx23384_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23384_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2176623370_
             (lambda (_stx21768_ _match-stx21770_)
               (let ((_parse-qq21778_
                      (lambda (_hd21784_)
                        (let ((_g2178621793_
                               (lambda (_g2178721789_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2178721789_))))
                          (_g2178621793_ _hd21784_)))))
                 (let ((_parse-error21779_
                        (lambda (_hd21781_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21770_
                                     (cons _match-stx21770_
                                           (cons _stx21768_
                                                 (cons _hd21781_ '())))
                                     (cons _stx21768_
                                           (cons _hd21781_ '())))))))
                   (letrec ((_parse121772_
                             (lambda (_hd22119_)
                               (let ((_g2214422275_
                                      (lambda (_g2214522271_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2214522271_))))
                                 (let ((_g2214322286_
                                        (lambda (_g2214522279_)
                                          ((lambda ()
                                             (_parse-error21779_
                                              _hd22119_))))))
                                   (let ((_g2214222304_
                                          (lambda (_g2214522290_)
                                            ((lambda (_L22293_)
                                               (if (gx#stx-datum? _L22293_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22293_)
                                                               '()))
                                                   (_g2214322286_
                                                    _g2214522290_)))
                                             _g2214522290_))))
                                     (let ((_g2214122320_
                                            (lambda (_g2214522308_)
                                              ((lambda (_L22311_)
                                                 (if (if (gx#identifier?
                                                          _L22311_)
                                                         (not (gx#ellipsis?
                                                               _L22311_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22311_ '()))
                                                     (_g2214222304_
                                                      _g2214522308_)))
                                               _g2214522308_))))
                                       (let ((_g2214022336_
                                              (lambda (_g2214522324_)
                                                ((lambda (_L22327_)
                                                   (if (gx#underscore?
                                                        _L22327_)
                                                       (cons 'any: '())
                                                       (_g2214122320_
                                                        _g2214522324_)))
                                                 _g2214522324_))))
                                         (let ((_g2213922368_
                                                (lambda (_g2214522340_)
                                                  (if (gx#stx-pair?
                                                       _g2214522340_)
                                                      (let ((_e2226422343_
                                                             (gx#syntax-e
                                                              _g2214522340_)))
                                                        (let ((_hd2226522347_
                                                               (##car _e2226422343_))
                                                              (_tl2226622350_
                                                               (##cdr _e2226422343_)))
                                                          ((lambda (_L22353_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22353_)
                         (_parse121772_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22353_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22119_)
                            (let ((_$e22364_ (gx#stx-source _hd22119_)))
                              (if _$e22364_
                                  _$e22364_
                                  (gx#stx-source _stx21768_))))))
                         (_g2214022336_ _g2214522340_)))
                   _hd2226522347_)))
              (_g2214022336_ _g2214522340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2213822408_
                                                  (lambda (_g2214522372_)
                                                    (if (gx#stx-pair?
                                                         _g2214522372_)
                                                        (let ((_e2225722375_
                                                               (gx#syntax-e
                                                                _g2214522372_)))
                                                          (let ((_hd2225822379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2225722375_))
                        (_tl2225922382_ (##cdr _e2225722375_)))
                    (if (gx#identifier? _hd2225822379_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g28419_|
                             _hd2225822379_)
                            (if (gx#stx-pair? _tl2225922382_)
                                (let ((_e2226022385_
                                       (gx#syntax-e _tl2225922382_)))
                                  (let ((_hd2226122389_ (##car _e2226022385_))
                                        (_tl2226222392_ (##cdr _e2226022385_)))
                                    (if (gx#stx-null? _tl2226222392_)
                                        ((lambda (_L22395_)
                                           (_parse-qq21778_ _L22395_))
                                         _hd2226122389_)
                                        (_g2213922368_ _g2214522372_))))
                                (_g2213922368_ _g2214522372_))
                            (_g2213922368_ _g2214522372_))
                        (_g2213922368_ _g2214522372_))))
                (_g2213922368_ _g2214522372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2213722448_
                                                    (lambda (_g2214522412_)
                                                      (if (gx#stx-pair?
                                                           _g2214522412_)
                                                          (let ((_e2225022415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2214522412_)))
                    (let ((_hd2225122419_ (##car _e2225022415_))
                          (_tl2225222422_ (##cdr _e2225022415_)))
                      (if (gx#identifier? _hd2225122419_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g28420_|
                               _hd2225122419_)
                              (if (gx#stx-pair? _tl2225222422_)
                                  (let ((_e2225322425_
                                         (gx#syntax-e _tl2225222422_)))
                                    (let ((_hd2225422429_
                                           (##car _e2225322425_))
                                          (_tl2225522432_
                                           (##cdr _e2225322425_)))
                                      (if (gx#stx-null? _tl2225522432_)
                                          ((lambda (_L22435_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22435_)
                                                         '())))
                                           _hd2225422429_)
                                          (_g2213822408_ _g2214522412_))))
                                  (_g2213822408_ _g2214522412_))
                              (_g2213822408_ _g2214522412_))
                          (_g2213822408_ _g2214522412_))))
                  (_g2213822408_ _g2214522412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2213622498_
                                                      (lambda (_g2214522452_)
                                                        (if (gx#stx-pair?
                                                             _g2214522452_)
                                                            (let ((_e2224322455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2214522452_)))
                      (let ((_hd2224422459_ (##car _e2224322455_))
                            (_tl2224522462_ (##cdr _e2224322455_)))
                        (if (gx#stx-pair? _tl2224522462_)
                            (let ((_e2224622465_ (gx#syntax-e _tl2224522462_)))
                              (let ((_hd2224722469_ (##car _e2224622465_))
                                    (_tl2224822472_ (##cdr _e2224622465_)))
                                (if (gx#stx-null? _tl2224822472_)
                                    ((lambda (_L22475_ _L22477_)
                                       (if (if (gx#identifier? _L22477_)
                                               (let ((_$e22490_
                                                      (gx#free-identifier=?
                                                       _L22477_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22490_
                                                     _$e22490_
                                                     (let ((_$e22494_
                                                            (gx#free-identifier=?
                                                             _L22477_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22494_
                                                           _$e22494_
                                                           (gx#free-identifier=?
                                                            _L22477_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22475_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2213722448_ _g2214522452_)))
                                     _hd2224722469_
                                     _hd2224422459_)
                                    (_g2213722448_ _g2214522452_))))
                            (_g2213722448_ _g2214522452_))))
                    (_g2213722448_ _g2214522452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2213522528_
                                                        (lambda (_g2214522502_)
                                                          (if (gx#stx-pair?
                                                               _g2214522502_)
                                                              (let ((_e2223822505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2214522502_)))
                        (let ((_hd2223922509_ (##car _e2223822505_))
                              (_tl2224022512_ (##cdr _e2223822505_)))
                          ((lambda (_L22515_ _L22517_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22517_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22517_)
                                             (cons (_parse-class-body21777_
                                                    _L22515_)
                                                   '())))
                                 (_g2213622498_ _g2214522502_)))
                           _tl2224022512_
                           _hd2223922509_)))
                      (_g2213622498_ _g2214522502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2213422558_
                                                          (lambda (_g2214522532_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2214522532_)
                        (let ((_e2223322535_ (gx#syntax-e _g2214522532_)))
                          (let ((_hd2223422539_ (##car _e2223322535_))
                                (_tl2223522542_ (##cdr _e2223322535_)))
                            ((lambda (_L22545_ _L22547_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22547_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22547_)
                                               (cons (_parse-vector21775_
                                                      _L22545_)
                                                     '())))
                                   (_g2213522528_ _g2214522532_)))
                             _tl2223522542_
                             _hd2223422539_)))
                        (_g2213522528_ _g2214522532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2213322621_
                                                            (lambda (_g2214522562_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2214522562_)
                          (let ((_e2222122565_
                                 (vector->list (gx#syntax-e _g2214522562_))))
                            (if (gx#stx-pair/null? _e2222122565_)
                                (if (fx>= (gx#stx-length _e2222122565_) '0)
                                    (let ((_g28421_
                                           (gx#syntax-split-splice
                                            _e2222122565_
                                            '0)))
                                      (begin
                                        (let ((_g28422_
                                               (values-count _g28421_)))
                                          (if (not (fx= _g28422_ 2))
                                              (error "Context expects 2 values"
                                                     _g28422_)))
                                        (let ((_target2222222569_
                                               (values-ref _g28421_ 0))
                                              (_tl2222422572_
                                               (values-ref _g28421_ 1)))
                                          (if (gx#stx-null? _tl2222422572_)
                                              (letrec ((_loop2222522575_
                                                        (lambda (_hd2222322579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2222922582_)
                  (if (gx#stx-pair? _hd2222322579_)
                      (let ((_e2222622585_ (gx#syntax-e _hd2222322579_)))
                        (let ((_lp-hd2222722589_ (##car _e2222622585_))
                              (_lp-tl2222822592_ (##cdr _e2222622585_)))
                          (_loop2222522575_
                           _lp-tl2222822592_
                           (cons _lp-hd2222722589_ _body2222922582_))))
                      (let ((_body2223022595_ (reverse _body2222922582_)))
                        ((lambda (_L22599_)
                           (cons 'vector:
                                 (cons (_parse-vector21775_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2261222615_
                                                          _g2261322618_)
                                                   (cons _g2261222615_
                                                         _g2261322618_))
                                                 '()
                                                 _L22599_)))
                                       '())))
                         _body2223022595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2222522575_
                                                 _target2222222569_
                                                 '()))
                                              (_g2213422558_ _g2214522562_)))))
                                    (_g2213422558_ _g2214522562_))
                                (_g2213422558_ _g2214522562_)))
                          (_g2213422558_ _g2214522562_)))))
               (let ((_g2213222649_
                      (lambda (_g2214522625_)
                        (if (gx#stx-pair? _g2214522625_)
                            (let ((_e2221722628_ (gx#syntax-e _g2214522625_)))
                              (let ((_hd2221822632_ (##car _e2221722628_))
                                    (_tl2221922635_ (##cdr _e2221722628_)))
                                (if (gx#identifier? _hd2221822632_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g28423_|
                                         _hd2221822632_)
                                        ((lambda (_L22638_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21775_
                                                        _L22638_)
                                                       '())))
                                         _tl2221922635_)
                                        (_g2213322621_ _g2214522625_))
                                    (_g2213322621_ _g2214522625_))))
                            (_g2213322621_ _g2214522625_)))))
                 (let ((_g2213122677_
                        (lambda (_g2214522653_)
                          (if (gx#stx-pair? _g2214522653_)
                              (let ((_e2221322656_
                                     (gx#syntax-e _g2214522653_)))
                                (let ((_hd2221422660_ (##car _e2221322656_))
                                      (_tl2221522663_ (##cdr _e2221322656_)))
                                  (if (gx#identifier? _hd2221422660_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g28424_|
                                           _hd2221422660_)
                                          ((lambda (_L22666_)
                                             (cons 'values:
                                                   (cons (_parse-vector21775_
                                                          _L22666_)
                                                         '())))
                                           _tl2221522663_)
                                          (_g2213222649_ _g2214522653_))
                                      (_g2213222649_ _g2214522653_))))
                              (_g2213222649_ _g2214522653_)))))
                   (let ((_g2213022717_
                          (lambda (_g2214522681_)
                            (if (gx#stx-pair? _g2214522681_)
                                (let ((_e2220622684_
                                       (gx#syntax-e _g2214522681_)))
                                  (let ((_hd2220722688_ (##car _e2220622684_))
                                        (_tl2220822691_ (##cdr _e2220622684_)))
                                    (if (gx#identifier? _hd2220722688_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g28425_|
                                             _hd2220722688_)
                                            (if (gx#stx-pair? _tl2220822691_)
                                                (let ((_e2220922694_
                                                       (gx#syntax-e
                                                        _tl2220822691_)))
                                                  (let ((_hd2221022698_
                                                         (##car _e2220922694_))
                                                        (_tl2221122701_
                                                         (##cdr _e2220922694_)))
                                                    (if (gx#stx-null?
                                                         _tl2221122701_)
                                                        ((lambda (_L22704_)
                                                           (_parse121772_
                                                            _L22704_))
                                                         _hd2221022698_)
                                                        (_g2213122677_
                                                         _g2214522681_))))
                                                (_g2213122677_ _g2214522681_))
                                            (_g2213122677_ _g2214522681_))
                                        (_g2213122677_ _g2214522681_))))
                                (_g2213122677_ _g2214522681_)))))
                     (let ((_g2212922738_
                            (lambda (_g2214522721_)
                              (if (gx#stx-box? _g2214522721_)
                                  (let ((_e2220422724_
                                         (unbox (gx#syntax-e _g2214522721_))))
                                    ((lambda (_L22728_)
                                       (cons 'box:
                                             (cons (_parse121772_ _L22728_)
                                                   '())))
                                     _e2220422724_))
                                  (_g2213022717_ _g2214522721_)))))
                       (let ((_g2212822778_
                              (lambda (_g2214522742_)
                                (if (gx#stx-pair? _g2214522742_)
                                    (let ((_e2219722745_
                                           (gx#syntax-e _g2214522742_)))
                                      (let ((_hd2219822749_
                                             (##car _e2219722745_))
                                            (_tl2219922752_
                                             (##cdr _e2219722745_)))
                                        (if (gx#identifier? _hd2219822749_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28426_|
                                                 _hd2219822749_)
                                                (if (gx#stx-pair?
                                                     _tl2219922752_)
                                                    (let ((_e2220022755_
                                                           (gx#syntax-e
                                                            _tl2219922752_)))
                                                      (let ((_hd2220122759_
                                                             (##car _e2220022755_))
                                                            (_tl2220222762_
                                                             (##cdr _e2220022755_)))
                                                        (if (gx#stx-null?
                                                             _tl2220222762_)
                                                            ((lambda (_L22765_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121772_ _L22765_) '())))
                     _hd2220122759_)
                    (_g2212922738_ _g2214522742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2212922738_
                                                     _g2214522742_))
                                                (_g2212922738_ _g2214522742_))
                                            (_g2212922738_ _g2214522742_))))
                                    (_g2212922738_ _g2214522742_)))))
                         (let ((_g2212722806_
                                (lambda (_g2214522782_)
                                  (if (gx#stx-pair? _g2214522782_)
                                      (let ((_e2219322785_
                                             (gx#syntax-e _g2214522782_)))
                                        (let ((_hd2219422789_
                                               (##car _e2219322785_))
                                              (_tl2219522792_
                                               (##cdr _e2219322785_)))
                                          (if (gx#identifier? _hd2219422789_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g28427_|
                                                   _hd2219422789_)
                                                  ((lambda (_L22795_)
                                                     (_parse-list21774_
                                                      _L22795_))
                                                   _tl2219522792_)
                                                  (_g2212822778_
                                                   _g2214522782_))
                                              (_g2212822778_ _g2214522782_))))
                                      (_g2212822778_ _g2214522782_)))))
                           (let ((_g2212622862_
                                  (lambda (_g2214522810_)
                                    (if (gx#stx-pair? _g2214522810_)
                                        (let ((_e2218322813_
                                               (gx#syntax-e _g2214522810_)))
                                          (let ((_hd2218422817_
                                                 (##car _e2218322813_))
                                                (_tl2218522820_
                                                 (##cdr _e2218322813_)))
                                            (if (gx#identifier? _hd2218422817_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g28428_|
                                                     _hd2218422817_)
                                                    (if (gx#stx-pair?
                                                         _tl2218522820_)
                                                        (let ((_e2218622823_
                                                               (gx#syntax-e
                                                                _tl2218522820_)))
                                                          (let ((_hd2218722827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2218622823_))
                        (_tl2218822830_ (##cdr _e2218622823_)))
                    (if (gx#stx-pair? _tl2218822830_)
                        (let ((_e2218922833_ (gx#syntax-e _tl2218822830_)))
                          (let ((_hd2219022837_ (##car _e2218922833_))
                                (_tl2219122840_ (##cdr _e2218922833_)))
                            ((lambda (_L22843_ _L22845_ _L22846_)
                               (if (gx#stx-null? _L22843_)
                                   (cons 'cons:
                                         (cons (_parse121772_ _L22846_)
                                               (cons (_parse121772_ _L22845_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121772_ _L22846_)
                                               (cons (_parse121772_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L22845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2219122840_
                             _hd2219022837_
                             _hd2218722827_)))
                        (_g2212722806_ _g2214522810_))))
                (_g2212722806_ _g2214522810_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2212722806_
                                                     _g2214522810_))
                                                (_g2212722806_
                                                 _g2214522810_))))
                                        (_g2212722806_ _g2214522810_)))))
                             (let ((_g2212522916_
                                    (lambda (_g2214522866_)
                                      (if (gx#stx-pair? _g2214522866_)
                                          (let ((_e2217122869_
                                                 (gx#syntax-e _g2214522866_)))
                                            (let ((_hd2217222873_
                                                   (##car _e2217122869_))
                                                  (_tl2217322876_
                                                   (##cdr _e2217122869_)))
                                              (if (gx#identifier?
                                                   _hd2217222873_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g28429_|
                                                       _hd2217222873_)
                                                      (if (gx#stx-pair?
                                                           _tl2217322876_)
                                                          (let ((_e2217422879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2217322876_)))
                    (let ((_hd2217522883_ (##car _e2217422879_))
                          (_tl2217622886_ (##cdr _e2217422879_)))
                      (if (gx#stx-pair? _tl2217622886_)
                          (let ((_e2217722889_ (gx#syntax-e _tl2217622886_)))
                            (let ((_hd2217822893_ (##car _e2217722889_))
                                  (_tl2217922896_ (##cdr _e2217722889_)))
                              (if (gx#stx-null? _tl2217922896_)
                                  ((lambda (_L22899_ _L22901_)
                                     (cons 'cons:
                                           (cons (_parse121772_ _L22901_)
                                                 (cons (_parse121772_ _L22899_)
                                                       '()))))
                                   _hd2217822893_
                                   _hd2217522883_)
                                  (_g2212622862_ _g2214522866_))))
                          (_g2212622862_ _g2214522866_))))
                  (_g2212622862_ _g2214522866_))
              (_g2212622862_ _g2214522866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2212622862_
                                                   _g2214522866_))))
                                          (_g2212622862_ _g2214522866_)))))
                               (let ((_g2212422956_
                                      (lambda (_g2214522920_)
                                        (if (gx#stx-pair? _g2214522920_)
                                            (let ((_e2216322923_
                                                   (gx#syntax-e
                                                    _g2214522920_)))
                                              (let ((_hd2216422927_
                                                     (##car _e2216322923_))
                                                    (_tl2216522930_
                                                     (##cdr _e2216322923_)))
                                                (if (gx#identifier?
                                                     _hd2216422927_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g28430_|
                                                         _hd2216422927_)
                                                        (if (gx#stx-pair?
                                                             _tl2216522930_)
                                                            (let ((_e2216622933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2216522930_)))
                      (let ((_hd2216722937_ (##car _e2216622933_))
                            (_tl2216822940_ (##cdr _e2216622933_)))
                        (if (gx#stx-null? _tl2216822940_)
                            ((lambda (_L22943_)
                               (cons 'not:
                                     (cons (_parse121772_ _L22943_) '())))
                             _hd2216722937_)
                            (_g2212522916_ _g2214522920_))))
                    (_g2212522916_ _g2214522920_))
                (_g2212522916_ _g2214522920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2212522916_
                                                     _g2214522920_))))
                                            (_g2212522916_ _g2214522920_)))))
                                 (let ((_g2212323041_
                                        (lambda (_g2214522960_)
                                          (if (gx#stx-pair? _g2214522960_)
                                              (let ((_e2215922963_
                                                     (gx#syntax-e
                                                      _g2214522960_)))
                                                (let ((_hd2216022967_
                                                       (##car _e2215922963_))
                                                      (_tl2216122970_
                                                       (##cdr _e2215922963_)))
                                                  (if (gx#identifier?
                                                       _hd2216022967_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g28431_|
                                                           _hd2216022967_)
                                                          ((lambda (_L22973_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22973_)
                         (let ((_g2298522996_
                                (lambda (_g2298622992_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2298622992_))))
                           (let ((_g2298423007_
                                  (lambda (_g2298623000_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121772_
                                              _L22973_)))))))
                             (let ((_g2298323037_
                                    (lambda (_g2298623011_)
                                      (if (gx#stx-pair? _g2298623011_)
                                          (let ((_e2298823014_
                                                 (gx#syntax-e _g2298623011_)))
                                            (let ((_hd2298923018_
                                                   (##car _e2298823014_))
                                                  (_tl2299023021_
                                                   (##cdr _e2298823014_)))
                                              (if (gx#stx-null? _tl2299023021_)
                                                  ((lambda (_L23024_)
                                                     (_parse121772_ _L23024_))
                                                   _hd2298923018_)
                                                  (_g2298423007_
                                                   _g2298623011_))))
                                          (_g2298423007_ _g2298623011_)))))
                               (_g2298323037_ _L22973_))))
                         (_g2212422956_ _g2214522960_)))
                   _tl2216122970_)
                  (_g2212422956_ _g2214522960_))
              (_g2212422956_ _g2214522960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2212422956_ _g2214522960_)))))
                                   (let ((_g2212223126_
                                          (lambda (_g2214523045_)
                                            (if (gx#stx-pair? _g2214523045_)
                                                (let ((_e2215523048_
                                                       (gx#syntax-e
                                                        _g2214523045_)))
                                                  (let ((_hd2215623052_
                                                         (##car _e2215523048_))
                                                        (_tl2215723055_
                                                         (##cdr _e2215523048_)))
                                                    (if (gx#identifier?
                                                         _hd2215623052_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g28432_|
                                                             _hd2215623052_)
                                                            ((lambda (_L23058_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23058_)
                           (let ((_g2307023081_
                                  (lambda (_g2307123077_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2307123077_))))
                             (let ((_g2306923092_
                                    (lambda (_g2307123085_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121772_
                                                _L23058_)))))))
                               (let ((_g2306823122_
                                      (lambda (_g2307123096_)
                                        (if (gx#stx-pair? _g2307123096_)
                                            (let ((_e2307323099_
                                                   (gx#syntax-e
                                                    _g2307123096_)))
                                              (let ((_hd2307423103_
                                                     (##car _e2307323099_))
                                                    (_tl2307523106_
                                                     (##cdr _e2307323099_)))
                                                (if (gx#stx-null?
                                                     _tl2307523106_)
                                                    ((lambda (_L23109_)
                                                       (_parse121772_
                                                        _L23109_))
                                                     _hd2307423103_)
                                                    (_g2306923092_
                                                     _g2307123096_))))
                                            (_g2306923092_ _g2307123096_)))))
                                 (_g2306823122_ _L23058_))))
                           (_g2212323041_ _g2214523045_)))
                     _tl2215723055_)
                    (_g2212323041_ _g2214523045_))
                (_g2212323041_ _g2214523045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2212323041_
                                                 _g2214523045_)))))
                                     (let ((_g2212123366_
                                            (lambda (_g2214523130_)
                                              (if (gx#stx-pair? _g2214523130_)
                                                  (let ((_e2214823133_
                                                         (gx#syntax-e
                                                          _g2214523130_)))
                                                    (let ((_hd2214923137_
                                                           (##car _e2214823133_))
                                                          (_tl2215023140_
                                                           (##cdr _e2214823133_)))
                                                      (if (gx#identifier?
                                                           _hd2214923137_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g28433_|
                                                               _hd2214923137_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2215023140_)
                          (let ((_e2215123143_ (gx#syntax-e _tl2215023140_)))
                            (let ((_hd2215223147_ (##car _e2215123143_))
                                  (_tl2215323150_ (##cdr _e2215123143_)))
                              ((lambda (_L23153_ _L23155_)
                                 (let ((_g2317223204_
                                        (lambda (_g2317323200_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2317323200_))))
                                   (let ((_g2317123215_
                                          (lambda (_g2317323208_)
                                            ((lambda ()
                                               (_parse-error21779_
                                                _hd22119_))))))
                                     (let ((_g2317023283_
                                            (lambda (_g2317323219_)
                                              (if (gx#stx-pair? _g2317323219_)
                                                  (let ((_e2318723222_
                                                         (gx#syntax-e
                                                          _g2317323219_)))
                                                    (let ((_hd2318823226_
                                                           (##car _e2318723222_))
                                                          (_tl2318923229_
                                                           (##cdr _e2318723222_)))
                                                      (if (gx#stx-datum?
                                                           _hd2318823226_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2318823226_)
                              '::)
                      (if (gx#stx-pair? _tl2318923229_)
                          (let ((_e2319023232_ (gx#syntax-e _tl2318923229_)))
                            (let ((_hd2319123236_ (##car _e2319023232_))
                                  (_tl2319223239_ (##cdr _e2319023232_)))
                              (if (gx#stx-pair? _tl2319223239_)
                                  (let ((_e2319323242_
                                         (gx#syntax-e _tl2319223239_)))
                                    (let ((_hd2319423246_
                                           (##car _e2319323242_))
                                          (_tl2319523249_
                                           (##cdr _e2319323242_)))
                                      (if (gx#identifier? _hd2319423246_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g28434_|
                                               _hd2319423246_)
                                              (if (gx#stx-pair? _tl2319523249_)
                                                  (let ((_e2319623252_
                                                         (gx#syntax-e
                                                          _tl2319523249_)))
                                                    (let ((_hd2319723256_
                                                           (##car _e2319623252_))
                                                          (_tl2319823259_
                                                           (##cdr _e2319623252_)))
                                                      (if (gx#stx-null?
                                                           _tl2319823259_)
                                                          ((lambda (_L23262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23264_)
                     (cons '?:
                           (cons _L23155_
                                 (cons '::
                                       (cons _L23264_
                                             (cons '=>:
                                                   (cons (_parse121772_
                                                          _L23262_)
                                                         '())))))))
                   _hd2319723256_
                   _hd2319123236_)
                  (_g2317123215_ _g2317323219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2317123215_
                                                   _g2317323219_))
                                              (_g2317123215_ _g2317323219_))
                                          (_g2317123215_ _g2317323219_))))
                                  (_g2317123215_ _g2317323219_))))
                          (_g2317123215_ _g2317323219_))
                      (_g2317123215_ _g2317323219_))
                  (_g2317123215_ _g2317323219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2317123215_
                                                   _g2317323219_)))))
                                       (let ((_g2316923323_
                                              (lambda (_g2317323287_)
                                                (if (gx#stx-pair?
                                                     _g2317323287_)
                                                    (let ((_e2317923290_
                                                           (gx#syntax-e
                                                            _g2317323287_)))
                                                      (let ((_hd2318023294_
                                                             (##car _e2317923290_))
                                                            (_tl2318123297_
                                                             (##cdr _e2317923290_)))
                                                        (if (gx#identifier?
                                                             _hd2318023294_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g28435_|
                         _hd2318023294_)
                        (if (gx#stx-pair? _tl2318123297_)
                            (let ((_e2318223300_ (gx#syntax-e _tl2318123297_)))
                              (let ((_hd2318323304_ (##car _e2318223300_))
                                    (_tl2318423307_ (##cdr _e2318223300_)))
                                (if (gx#stx-null? _tl2318423307_)
                                    ((lambda (_L23310_)
                                       (cons '?:
                                             (cons _L23155_
                                                   (cons '=>:
                                                         (cons (_parse121772_
                                                                _L23310_)
                                                               '())))))
                                     _hd2318323304_)
                                    (_g2317023283_ _g2317323287_))))
                            (_g2317023283_ _g2317323287_))
                        (_g2317023283_ _g2317323287_))
                    (_g2317023283_ _g2317323287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2317023283_
                                                     _g2317323287_)))))
                                         (let ((_g2316823351_
                                                (lambda (_g2317323327_)
                                                  (if (gx#stx-pair?
                                                       _g2317323327_)
                                                      (let ((_e2317523330_
                                                             (gx#syntax-e
                                                              _g2317323327_)))
                                                        (let ((_hd2317623334_
                                                               (##car _e2317523330_))
                                                              (_tl2317723337_
                                                               (##cdr _e2317523330_)))
                                                          (if (gx#stx-null?
                                                               _tl2317723337_)
                                                              ((lambda (_L23340_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23155_
                                     (cons (_parse121772_ _L23340_) '()))))
                       _hd2317623334_)
                      (_g2316923323_ _g2317323327_))))
              (_g2316923323_ _g2317323327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2316723362_
                                                  (lambda (_g2317323355_)
                                                    (if (gx#stx-null?
                                                         _g2317323355_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23155_ '()))))
                (_g2316823351_ _g2317323355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2316723362_ _L23153_))))))))
                               _tl2215323150_
                               _hd2215223147_)))
                          (_g2212223126_ _g2214523130_))
                      (_g2212223126_ _g2214523130_))
                  (_g2212223126_ _g2214523130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2212223126_
                                                   _g2214523130_)))))
                                       (_g2212123366_
                                        _hd22119_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21774_
                             (lambda (_body21954_)
                               (let ((_g2196021988_
                                      (lambda (_g2196121984_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2196121984_))))
                                 (let ((_g2195921999_
                                        (lambda (_g2196121992_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body21954_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body21954_))
                                                     (_parse121772_
                                                      _body21954_)
                                                     (_parse-error21779_
                                                      _body21954_))))))))
                                   (let ((_g2195822031_
                                          (lambda (_g2196122003_)
                                            (if (gx#stx-pair? _g2196122003_)
                                                (let ((_e2198022006_
                                                       (gx#syntax-e
                                                        _g2196122003_)))
                                                  (let ((_hd2198122010_
                                                         (##car _e2198022006_))
                                                        (_tl2198222013_
                                                         (##cdr _e2198022006_)))
                                                    ((lambda (_L22016_
                                                              _L22018_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22018_))
                   (cons 'cons:
                         (cons (_parse121772_ _L22018_)
                               (cons (_parse-list21774_ _L22016_) '())))
                   (_g2195921999_ _g2196122003_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2198222013_
                                                     _hd2198122010_)))
                                                (_g2195921999_
                                                 _g2196122003_)))))
                                     (let ((_g2195722075_
                                            (lambda (_g2196122035_)
                                              (if (gx#stx-pair? _g2196122035_)
                                                  (let ((_e2197222038_
                                                         (gx#syntax-e
                                                          _g2196122035_)))
                                                    (let ((_hd2197322042_
                                                           (##car _e2197222038_))
                                                          (_tl2197422045_
                                                           (##cdr _e2197222038_)))
                                                      (if (gx#stx-pair?
                                                           _tl2197422045_)
                                                          (let ((_e2197522048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2197422045_)))
                    (let ((_hd2197622052_ (##car _e2197522048_))
                          (_tl2197722055_ (##cdr _e2197522048_)))
                      ((lambda (_L22058_ _L22060_ _L22061_)
                         (if (gx#ellipsis? _L22060_)
                             (cons 'splice:
                                   (cons (_parse121772_ _L22061_)
                                         (cons (_parse-list21774_ _L22058_)
                                               '())))
                             (_g2195822031_ _g2196122035_)))
                       _tl2197722055_
                       _hd2197622052_
                       _hd2197322042_)))
                  (_g2195822031_ _g2196122035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2195822031_
                                                   _g2196122035_)))))
                                       (let ((_g2195622115_
                                              (lambda (_g2196122079_)
                                                (if (gx#stx-pair?
                                                     _g2196122079_)
                                                    (let ((_e2196322082_
                                                           (gx#syntax-e
                                                            _g2196122079_)))
                                                      (let ((_hd2196422086_
                                                             (##car _e2196322082_))
                                                            (_tl2196522089_
                                                             (##cdr _e2196322082_)))
                                                        (if (gx#stx-datum?
                                                             _hd2196422086_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2196422086_)
                                '::)
                        (if (gx#stx-pair? _tl2196522089_)
                            (let ((_e2196622092_ (gx#syntax-e _tl2196522089_)))
                              (let ((_hd2196722096_ (##car _e2196622092_))
                                    (_tl2196822099_ (##cdr _e2196622092_)))
                                (if (gx#stx-null? _tl2196822099_)
                                    ((lambda (_L22102_)
                                       (_parse121772_ _L22102_))
                                     _hd2196722096_)
                                    (_g2195722075_ _g2196122079_))))
                            (_g2195722075_ _g2196122079_))
                        (_g2195722075_ _g2196122079_))
                    (_g2195722075_ _g2196122079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2195722075_
                                                     _g2196122079_)))))
                                         (_g2195622115_ _body21954_))))))))
                            (_parse-vector21775_
                             (lambda (_body21951_)
                               (if (_simple-vector?21776_ _body21951_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121772_
                                                _body21951_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21774_ _body21951_)
                                               '())))))
                            (_simple-vector?21776_
                             (lambda (_body21888_)
                               (let ((_g2189221904_
                                      (lambda (_g2189321900_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2189321900_))))
                                 (let ((_g2189121915_
                                        (lambda (_g2189321908_)
                                          ((lambda ()
                                             (gx#stx-null? _body21888_))))))
                                   (let ((_g2189021947_
                                          (lambda (_g2189321919_)
                                            (if (gx#stx-pair? _g2189321919_)
                                                (let ((_e2189621922_
                                                       (gx#syntax-e
                                                        _g2189321919_)))
                                                  (let ((_hd2189721926_
                                                         (##car _e2189621922_))
                                                        (_tl2189821929_
                                                         (##cdr _e2189621922_)))
                                                    ((lambda (_L21932_
                                                              _L21934_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21934_))
                   (_simple-vector?21776_ _L21932_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2189821929_
                                                     _hd2189721926_)))
                                                (_g2189121915_
                                                 _g2189321919_)))))
                                     (_g2189021947_ _body21888_))))))
                            (_parse-class-body21777_
                             (lambda (_body21797_)
                               ((letrec ((_recur21800_
                                          (lambda (_rest21803_)
                                            (let ((_g2180721823_
                                                   (lambda (_g2180821819_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2180821819_))))
                                              (let ((_g2180621834_
                                                     (lambda (_g2180821827_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21803_)
                                                              '()
                                                              (_parse-error21779_
                                                               _rest21803_)))))))
                                                (let ((_g2180521884_
                                                       (lambda (_g2180821838_)
                                                         (if (gx#stx-pair?
                                                              _g2180821838_)
                                                             (let ((_e2181221841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2180821838_)))
                       (let ((_hd2181321845_ (##car _e2181221841_))
                             (_tl2181421848_ (##cdr _e2181221841_)))
                         (if (gx#stx-pair? _tl2181421848_)
                             (let ((_e2181521851_
                                    (gx#syntax-e _tl2181421848_)))
                               (let ((_hd2181621855_ (##car _e2181521851_))
                                     (_tl2181721858_ (##cdr _e2181521851_)))
                                 ((lambda (_L21861_ _L21863_ _L21864_)
                                    (if (gx#stx-keyword? _L21864_)
                                        (cons* _L21864_
                                               (_parse121772_ _L21863_)
                                               (_recur21800_ _L21861_))
                                        (_g2180621834_ _g2180821838_)))
                                  _tl2181721858_
                                  _hd2181621855_
                                  _hd2181321845_)))
                             (_g2180621834_ _g2180821838_))))
                     (_g2180621834_ _g2180821838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2180521884_
                                                   _rest21803_)))))))
                                  _recur21800_)
                                _body21797_))))
                     (_parse121772_ _stx21768_)))))))
        (lambda _g28437_
          (let ((_g28436_ (length _g28437_)))
            (cond ((fx= _g28436_ 1)
                   (apply (lambda (_stx23374_)
                            (let ((_match-stx23377_ '#f))
                              (_opt-lambda2176623370_
                               _stx23374_
                               _match-stx23377_)))
                          _g28437_))
                  ((fx= _g28436_ 2)
                   (apply (lambda (_stx23380_ _match-stx23382_)
                            (_opt-lambda2176623370_
                             _stx23380_
                             _match-stx23382_))
                          _g28437_))
                  (else (error "No clause matching arguments" _g28437_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21752_)
        (call-with-escape
         (lambda (_E21756_)
           (with-exception-handler
            (let ((_E!21759_ (current-exception-handler)))
              (lambda (_e21762_)
                (if (gx#syntax-error? _e21762_)
                    (_E21756_ '#f)
                    (_E!21759_ _e21762_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21752_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20607_)
        (letrec ((_loop20610_
                  (lambda (_ptree20885_ _vars20887_ _K20888_)
                    (let ((_g2090020990_
                           (lambda (_g2090120986_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2090120986_))))
                      (let ((_g2089921001_
                             (lambda (_g2090120994_)
                               ((lambda () (_K20888_ _vars20887_))))))
                        (let ((_g2089821048_
                               (lambda (_g2090121005_)
                                 (if (gx#stx-pair? _g2090121005_)
                                     (let ((_e2097921008_
                                            (gx#syntax-e _g2090121005_)))
                                       (let ((_hd2098021012_
                                              (##car _e2097921008_))
                                             (_tl2098121015_
                                              (##cdr _e2097921008_)))
                                         (if (gx#stx-datum? _hd2098021012_)
                                             (if (equal? (gx#stx-e
                                                          _hd2098021012_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2098121015_)
                                                     (let ((_e2098221018_
                                                            (gx#syntax-e
                                                             _tl2098121015_)))
                                                       (let ((_hd2098321022_
                                                              (##car _e2098221018_))
                                                             (_tl2098421025_
                                                              (##cdr _e2098221018_)))
                                                         (if (gx#stx-null?
                                                              _tl2098421025_)
                                                             ((lambda (_L21028_)
                                                                (if (find (lambda (_g2104221044_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2104221044_
                                     _L21028_))
                                  _vars20887_)
                            (_K20888_ _vars20887_)
                            (_K20888_ (cons _L21028_ _vars20887_))))
                      _hd2098321022_)
                     (_g2089921001_ _g2090121005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089921001_
                                                      _g2090121005_))
                                                 (_g2089921001_ _g2090121005_))
                                             (_g2089921001_ _g2090121005_))))
                                     (_g2089921001_ _g2090121005_)))))
                          (let ((_g2089721100_
                                 (lambda (_g2090121052_)
                                   (if (gx#stx-pair? _g2090121052_)
                                       (let ((_e2096921055_
                                              (gx#syntax-e _g2090121052_)))
                                         (let ((_hd2097021059_
                                                (##car _e2096921055_))
                                               (_tl2097121062_
                                                (##cdr _e2096921055_)))
                                           (if (gx#stx-datum? _hd2097021059_)
                                               (if (equal? (gx#stx-e
                                                            _hd2097021059_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2097121062_)
                                                       (let ((_e2097221065_
                                                              (gx#syntax-e
                                                               _tl2097121062_)))
                                                         (let ((_hd2097321069_
                                                                (##car _e2097221065_))
                                                               (_tl2097421072_
                                                                (##cdr _e2097221065_)))
                                                           (if (gx#stx-pair?
                                                                _tl2097421072_)
                                                               (let ((_e2097521075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2097421072_)))
                         (let ((_hd2097621079_ (##car _e2097521075_))
                               (_tl2097721082_ (##cdr _e2097521075_)))
                           (if (gx#stx-null? _tl2097721082_)
                               ((lambda (_L21085_)
                                  (_loop-class-list20614_
                                   _L21085_
                                   _vars20887_
                                   _K20888_))
                                _hd2097621079_)
                               (_g2089821048_ _g2090121052_))))
                       (_g2089821048_ _g2090121052_))))
               (_g2089821048_ _g2090121052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2089821048_
                                                    _g2090121052_))
                                               (_g2089821048_ _g2090121052_))))
                                       (_g2089821048_ _g2090121052_)))))
                            (let ((_g2089621152_
                                   (lambda (_g2090121104_)
                                     (if (gx#stx-pair? _g2090121104_)
                                         (let ((_e2095921107_
                                                (gx#syntax-e _g2090121104_)))
                                           (let ((_hd2096021111_
                                                  (##car _e2095921107_))
                                                 (_tl2096121114_
                                                  (##cdr _e2095921107_)))
                                             (if (gx#stx-datum? _hd2096021111_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2096021111_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2096121114_)
                                                         (let ((_e2096221117_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2096121114_)))
                   (let ((_hd2096321121_ (##car _e2096221117_))
                         (_tl2096421124_ (##cdr _e2096221117_)))
                     (if (gx#stx-pair? _tl2096421124_)
                         (let ((_e2096521127_ (gx#syntax-e _tl2096421124_)))
                           (let ((_hd2096621131_ (##car _e2096521127_))
                                 (_tl2096721134_ (##cdr _e2096521127_)))
                             (if (gx#stx-null? _tl2096721134_)
                                 ((lambda (_L21137_)
                                    (_loop-vector20612_
                                     _L21137_
                                     _vars20887_
                                     _K20888_))
                                  _hd2096621131_)
                                 (_g2089721100_ _g2090121104_))))
                         (_g2089721100_ _g2090121104_))))
                 (_g2089721100_ _g2090121104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089721100_
                                                      _g2090121104_))
                                                 (_g2089721100_
                                                  _g2090121104_))))
                                         (_g2089721100_ _g2090121104_)))))
                              (let ((_g2089521198_
                                     (lambda (_g2090121156_)
                                       (if (gx#stx-pair? _g2090121156_)
                                           (let ((_e2095221159_
                                                  (gx#syntax-e _g2090121156_)))
                                             (let ((_hd2095321163_
                                                    (##car _e2095221159_))
                                                   (_tl2095421166_
                                                    (##cdr _e2095221159_)))
                                               (if (gx#stx-pair?
                                                    _tl2095421166_)
                                                   (let ((_e2095521169_
                                                          (gx#syntax-e
                                                           _tl2095421166_)))
                                                     (let ((_hd2095621173_
                                                            (##car _e2095521169_))
                                                           (_tl2095721176_
                                                            (##cdr _e2095521169_)))
                                                       (if (gx#stx-null?
                                                            _tl2095721176_)
                                                           ((lambda (_L21179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21181_)
                      (if (let ((_$e21194_ (gx#stx-eq? 'values: _L21181_)))
                            (if _$e21194_
                                _$e21194_
                                (gx#stx-eq? 'vector: _L21181_)))
                          (_loop-vector20612_ _L21179_ _vars20887_ _K20888_)
                          (_g2089621152_ _g2090121156_)))
                    _hd2095621173_
                    _hd2095321163_)
                   (_g2089621152_ _g2090121156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2089621152_
                                                    _g2090121156_))))
                                           (_g2089621152_ _g2090121156_)))))
                                (let ((_g2089421238_
                                       (lambda (_g2090121202_)
                                         (if (gx#stx-pair? _g2090121202_)
                                             (let ((_e2094421205_
                                                    (gx#syntax-e
                                                     _g2090121202_)))
                                               (let ((_hd2094521209_
                                                      (##car _e2094421205_))
                                                     (_tl2094621212_
                                                      (##cdr _e2094421205_)))
                                                 (if (gx#stx-datum?
                                                      _hd2094521209_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2094521209_)
                         'box:)
                 (if (gx#stx-pair? _tl2094621212_)
                     (let ((_e2094721215_ (gx#syntax-e _tl2094621212_)))
                       (let ((_hd2094821219_ (##car _e2094721215_))
                             (_tl2094921222_ (##cdr _e2094721215_)))
                         (if (gx#stx-null? _tl2094921222_)
                             ((lambda (_L21225_)
                                (_loop20610_ _L21225_ _vars20887_ _K20888_))
                              _hd2094821219_)
                             (_g2089521198_ _g2090121202_))))
                     (_g2089521198_ _g2090121202_))
                 (_g2089521198_ _g2090121202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089521198_
                                                      _g2090121202_))))
                                             (_g2089521198_ _g2090121202_)))))
                                  (let ((_g2089321297_
                                         (lambda (_g2090121242_)
                                           (if (gx#stx-pair? _g2090121242_)
                                               (let ((_e2093421245_
                                                      (gx#syntax-e
                                                       _g2090121242_)))
                                                 (let ((_hd2093521249_
                                                        (##car _e2093421245_))
                                                       (_tl2093621252_
                                                        (##cdr _e2093421245_)))
                                                   (if (gx#stx-datum?
                                                        _hd2093521249_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2093521249_)
                           'splice:)
                   (if (gx#stx-pair? _tl2093621252_)
                       (let ((_e2093721255_ (gx#syntax-e _tl2093621252_)))
                         (let ((_hd2093821259_ (##car _e2093721255_))
                               (_tl2093921262_ (##cdr _e2093721255_)))
                           (if (gx#stx-pair? _tl2093921262_)
                               (let ((_e2094021265_
                                      (gx#syntax-e _tl2093921262_)))
                                 (let ((_hd2094121269_ (##car _e2094021265_))
                                       (_tl2094221272_ (##cdr _e2094021265_)))
                                   (if (gx#stx-null? _tl2094221272_)
                                       ((lambda (_L21275_ _L21277_)
                                          (_loop20610_
                                           _L21277_
                                           _vars20887_
                                           (lambda (_g2129121293_)
                                             (_loop20610_
                                              _L21275_
                                              _g2129121293_
                                              _K20888_))))
                                        _hd2094121269_
                                        _hd2093821259_)
                                       (_g2089421238_ _g2090121242_))))
                               (_g2089421238_ _g2090121242_))))
                       (_g2089421238_ _g2090121242_))
                   (_g2089421238_ _g2090121242_))
               (_g2089421238_ _g2090121242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2089421238_
                                                _g2090121242_)))))
                                    (let ((_g2089221356_
                                           (lambda (_g2090121301_)
                                             (if (gx#stx-pair? _g2090121301_)
                                                 (let ((_e2092321304_
                                                        (gx#syntax-e
                                                         _g2090121301_)))
                                                   (let ((_hd2092421308_
                                                          (##car _e2092321304_))
                                                         (_tl2092521311_
                                                          (##cdr _e2092321304_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092421308_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092421308_)
                             'cons:)
                     (if (gx#stx-pair? _tl2092521311_)
                         (let ((_e2092621314_ (gx#syntax-e _tl2092521311_)))
                           (let ((_hd2092721318_ (##car _e2092621314_))
                                 (_tl2092821321_ (##cdr _e2092621314_)))
                             (if (gx#stx-pair? _tl2092821321_)
                                 (let ((_e2092921324_
                                        (gx#syntax-e _tl2092821321_)))
                                   (let ((_hd2093021328_ (##car _e2092921324_))
                                         (_tl2093121331_
                                          (##cdr _e2092921324_)))
                                     (if (gx#stx-null? _tl2093121331_)
                                         ((lambda (_L21334_ _L21336_)
                                            (_loop20610_
                                             _L21336_
                                             _vars20887_
                                             (lambda (_g2135021352_)
                                               (_loop20610_
                                                _L21334_
                                                _g2135021352_
                                                _K20888_))))
                                          _hd2093021328_
                                          _hd2092721318_)
                                         (_g2089321297_ _g2090121301_))))
                                 (_g2089321297_ _g2090121301_))))
                         (_g2089321297_ _g2090121301_))
                     (_g2089321297_ _g2090121301_))
                 (_g2089321297_ _g2090121301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2089321297_
                                                  _g2090121301_)))))
                                      (let ((_g2089121396_
                                             (lambda (_g2090121360_)
                                               (if (gx#stx-pair? _g2090121360_)
                                                   (let ((_e2091521363_
                                                          (gx#syntax-e
                                                           _g2090121360_)))
                                                     (let ((_hd2091621367_
                                                            (##car _e2091521363_))
                                                           (_tl2091721370_
                                                            (##cdr _e2091521363_)))
                                                       (if (gx#stx-datum?
                                                            _hd2091621367_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2091621367_)
                               'not:)
                       (if (gx#stx-pair? _tl2091721370_)
                           (let ((_e2091821373_ (gx#syntax-e _tl2091721370_)))
                             (let ((_hd2091921377_ (##car _e2091821373_))
                                   (_tl2092021380_ (##cdr _e2091821373_)))
                               (if (gx#stx-null? _tl2092021380_)
                                   ((lambda (_L21383_)
                                      (_loop20610_
                                       _L21383_
                                       _vars20887_
                                       _K20888_))
                                    _hd2091921377_)
                                   (_g2089221356_ _g2090121360_))))
                           (_g2089221356_ _g2090121360_))
                       (_g2089221356_ _g2090121360_))
                   (_g2089221356_ _g2090121360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2089221356_
                                                    _g2090121360_)))))
                                        (let ((_g2089021495_
                                               (lambda (_g2090121400_)
                                                 (if (gx#stx-pair?
                                                      _g2090121400_)
                                                     (let ((_e2091121403_
                                                            (gx#syntax-e
                                                             _g2090121400_)))
                                                       (let ((_hd2091221407_
                                                              (##car _e2091121403_))
                                                             (_tl2091321410_
                                                              (##cdr _e2091121403_)))
                                                         ((lambda (_L21413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21415_)
                    (if (let ((_$e21426_ (gx#stx-eq? 'and: _L21415_)))
                          (if _$e21426_ _$e21426_ (gx#stx-eq? 'or: _L21415_)))
                        (let ((_g2143121443_
                               (lambda (_g2143221439_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2143221439_))))
                          (let ((_g2143021454_
                                 (lambda (_g2143221447_)
                                   ((lambda () (_K20888_ _vars20887_))))))
                            (let ((_g2142921491_
                                   (lambda (_g2143221458_)
                                     (if (gx#stx-pair? _g2143221458_)
                                         (let ((_e2143521461_
                                                (gx#syntax-e _g2143221458_)))
                                           (let ((_hd2143621465_
                                                  (##car _e2143521461_))
                                                 (_tl2143721468_
                                                  (##cdr _e2143521461_)))
                                             ((lambda (_L21471_ _L21473_)
                                                (_loop20610_
                                                 _L21473_
                                                 _vars20887_
                                                 (lambda (_g2148521487_)
                                                   (_loop20610_
                                                    (cons _L21415_ _L21471_)
                                                    _g2148521487_
                                                    _K20888_))))
                                              _tl2143721468_
                                              _hd2143621465_)))
                                         (_g2143021454_ _g2143221458_)))))
                              (_g2142921491_ _L21413_))))
                        (_g2089121396_ _g2090121400_)))
                  _tl2091321410_
                  _hd2091221407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089121396_
                                                      _g2090121400_)))))
                                          (let ((_g2088921748_
                                                 (lambda (_g2090121499_)
                                                   (if (gx#stx-pair?
                                                        _g2090121499_)
                                                       (let ((_e2090321502_
                                                              (gx#syntax-e
                                                               _g2090121499_)))
                                                         (let ((_hd2090421506_
                                                                (##car _e2090321502_))
                                                               (_tl2090521509_
                                                                (##cdr _e2090321502_)))
                                                           (if (gx#stx-datum?
                                                                _hd2090421506_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2090421506_)
                                   '?:)
                           (if (gx#stx-pair? _tl2090521509_)
                               (let ((_e2090621512_
                                      (gx#syntax-e _tl2090521509_)))
                                 (let ((_hd2090721516_ (##car _e2090621512_))
                                       (_tl2090821519_ (##cdr _e2090621512_)))
                                   ((lambda (_L21522_)
                                      (let ((_g2153821575_
                                             (lambda (_g2153921571_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2153921571_))))
                                        (let ((_g2153721586_
                                               (lambda (_g2153921579_)
                                                 ((lambda ()
                                                    (_K20888_ _vars20887_))))))
                                          (let ((_g2153621664_
                                                 (lambda (_g2153921590_)
                                                   (if (gx#stx-pair?
                                                        _g2153921590_)
                                                       (let ((_e2155521593_
                                                              (gx#syntax-e
                                                               _g2153921590_)))
                                                         (let ((_hd2155621597_
                                                                (##car _e2155521593_))
                                                               (_tl2155721600_
                                                                (##cdr _e2155521593_)))
                                                           (if (gx#stx-pair?
                                                                _tl2155721600_)
                                                               (let ((_e2155821603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2155721600_)))
                         (let ((_hd2155921607_ (##car _e2155821603_))
                               (_tl2156021610_ (##cdr _e2155821603_)))
                           (if (gx#stx-datum? _hd2155921607_)
                               (if (equal? (gx#stx-e _hd2155921607_) '::)
                                   (if (gx#stx-pair? _tl2156021610_)
                                       (let ((_e2156121613_
                                              (gx#syntax-e _tl2156021610_)))
                                         (let ((_hd2156221617_
                                                (##car _e2156121613_))
                                               (_tl2156321620_
                                                (##cdr _e2156121613_)))
                                           (if (gx#stx-pair? _tl2156321620_)
                                               (let ((_e2156421623_
                                                      (gx#syntax-e
                                                       _tl2156321620_)))
                                                 (let ((_hd2156521627_
                                                        (##car _e2156421623_))
                                                       (_tl2156621630_
                                                        (##cdr _e2156421623_)))
                                                   (if (gx#stx-datum?
                                                        _hd2156521627_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2156521627_)
                           '=>:)
                   (if (gx#stx-pair? _tl2156621630_)
                       (let ((_e2156721633_ (gx#syntax-e _tl2156621630_)))
                         (let ((_hd2156821637_ (##car _e2156721633_))
                               (_tl2156921640_ (##cdr _e2156721633_)))
                           (if (gx#stx-null? _tl2156921640_)
                               ((lambda (_L21643_)
                                  (_loop20610_ _L21643_ _vars20887_ _K20888_))
                                _hd2156821637_)
                               (_g2153721586_ _g2153921590_))))
                       (_g2153721586_ _g2153921590_))
                   (_g2153721586_ _g2153921590_))
               (_g2153721586_ _g2153921590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2153721586_ _g2153921590_))))
                                       (_g2153721586_ _g2153921590_))
                                   (_g2153721586_ _g2153921590_))
                               (_g2153721586_ _g2153921590_))))
                       (_g2153721586_ _g2153921590_))))
               (_g2153721586_ _g2153921590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2153521716_
                                                   (lambda (_g2153921668_)
                                                     (if (gx#stx-pair?
                                                          _g2153921668_)
                                                         (let ((_e2154521671_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2153921668_)))
                   (let ((_hd2154621675_ (##car _e2154521671_))
                         (_tl2154721678_ (##cdr _e2154521671_)))
                     (if (gx#stx-pair? _tl2154721678_)
                         (let ((_e2154821681_ (gx#syntax-e _tl2154721678_)))
                           (let ((_hd2154921685_ (##car _e2154821681_))
                                 (_tl2155021688_ (##cdr _e2154821681_)))
                             (if (gx#stx-datum? _hd2154921685_)
                                 (if (equal? (gx#stx-e _hd2154921685_) '=>:)
                                     (if (gx#stx-pair? _tl2155021688_)
                                         (let ((_e2155121691_
                                                (gx#syntax-e _tl2155021688_)))
                                           (let ((_hd2155221695_
                                                  (##car _e2155121691_))
                                                 (_tl2155321698_
                                                  (##cdr _e2155121691_)))
                                             (if (gx#stx-null? _tl2155321698_)
                                                 ((lambda (_L21701_)
                                                    (_loop20610_
                                                     _L21701_
                                                     _vars20887_
                                                     _K20888_))
                                                  _hd2155221695_)
                                                 (_g2153621664_
                                                  _g2153921668_))))
                                         (_g2153621664_ _g2153921668_))
                                     (_g2153621664_ _g2153921668_))
                                 (_g2153621664_ _g2153921668_))))
                         (_g2153621664_ _g2153921668_))))
                 (_g2153621664_ _g2153921668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2153421744_
                                                     (lambda (_g2153921720_)
                                                       (if (gx#stx-pair?
                                                            _g2153921720_)
                                                           (let ((_e2154121723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2153921720_)))
                     (let ((_hd2154221727_ (##car _e2154121723_))
                           (_tl2154321730_ (##cdr _e2154121723_)))
                       (if (gx#stx-null? _tl2154321730_)
                           ((lambda (_L21733_)
                              (_loop20610_ _L21733_ _vars20887_ _K20888_))
                            _hd2154221727_)
                           (_g2153521716_ _g2153921720_))))
                   (_g2153521716_ _g2153921720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2153421744_ _L21522_)))))))
                                    _tl2090821519_)))
                               (_g2089021495_ _g2090121499_))
                           (_g2089021495_ _g2090121499_))
                       (_g2089021495_ _g2090121499_))))
               (_g2089021495_ _g2090121499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2088921748_
                                             _ptree20885_)))))))))))))))
                 (_loop-vector20612_
                  (lambda (_body20773_ _vars20775_ _K20776_)
                    (let ((_g2077920800_
                           (lambda (_g2078020796_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2078020796_))))
                      (let ((_g2077820841_
                             (lambda (_g2078020804_)
                               (if (gx#stx-pair? _g2078020804_)
                                   (let ((_e2078920807_
                                          (gx#syntax-e _g2078020804_)))
                                     (let ((_hd2079020811_
                                            (##car _e2078920807_))
                                           (_tl2079120814_
                                            (##cdr _e2078920807_)))
                                       (if (gx#stx-datum? _hd2079020811_)
                                           (if (equal? (gx#stx-e
                                                        _hd2079020811_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2079120814_)
                                                   (let ((_e2079220817_
                                                          (gx#syntax-e
                                                           _tl2079120814_)))
                                                     (let ((_hd2079320821_
                                                            (##car _e2079220817_))
                                                           (_tl2079420824_
                                                            (##cdr _e2079220817_)))
                                                       (if (gx#stx-null?
                                                            _tl2079420824_)
                                                           ((lambda (_L20827_)
                                                              (_loop20610_
                                                               _L20827_
                                                               _vars20775_
                                                               _K20776_))
                                                            _hd2079320821_)
                                                           (_g2077920800_
                                                            _g2078020804_))))
                                                   (_g2077920800_
                                                    _g2078020804_))
                                               (_g2077920800_ _g2078020804_))
                                           (_g2077920800_ _g2078020804_))))
                                   (_g2077920800_ _g2078020804_)))))
                        (let ((_g2077720881_
                               (lambda (_g2078020845_)
                                 (if (gx#stx-pair? _g2078020845_)
                                     (let ((_e2078220848_
                                            (gx#syntax-e _g2078020845_)))
                                       (let ((_hd2078320852_
                                              (##car _e2078220848_))
                                             (_tl2078420855_
                                              (##cdr _e2078220848_)))
                                         (if (gx#stx-datum? _hd2078320852_)
                                             (if (equal? (gx#stx-e
                                                          _hd2078320852_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2078420855_)
                                                     (let ((_e2078520858_
                                                            (gx#syntax-e
                                                             _tl2078420855_)))
                                                       (let ((_hd2078620862_
                                                              (##car _e2078520858_))
                                                             (_tl2078720865_
                                                              (##cdr _e2078520858_)))
                                                         (if (gx#stx-null?
                                                              _tl2078720865_)
                                                             ((lambda (_L20868_)
                                                                (_loop-list20613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20868_
                         _vars20775_
                         _K20776_))
                      _hd2078620862_)
                     (_g2077820841_ _g2078020845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2077820841_
                                                      _g2078020845_))
                                                 (_g2077820841_ _g2078020845_))
                                             (_g2077820841_ _g2078020845_))))
                                     (_g2077820841_ _g2078020845_)))))
                          (_g2077720881_ _body20773_))))))
                 (_loop-list20613_
                  (lambda (_rest20703_ _vars20705_ _K20706_)
                    (let ((_g2070920721_
                           (lambda (_g2071020717_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2071020717_))))
                      (let ((_g2070820732_
                             (lambda (_g2071020725_)
                               ((lambda () (_K20706_ _vars20705_))))))
                        (let ((_g2070720769_
                               (lambda (_g2071020736_)
                                 (if (gx#stx-pair? _g2071020736_)
                                     (let ((_e2071320739_
                                            (gx#syntax-e _g2071020736_)))
                                       (let ((_hd2071420743_
                                              (##car _e2071320739_))
                                             (_tl2071520746_
                                              (##cdr _e2071320739_)))
                                         ((lambda (_L20749_ _L20751_)
                                            (_loop20610_
                                             _L20751_
                                             _vars20705_
                                             (lambda (_g2076320765_)
                                               (_loop-list20613_
                                                _L20749_
                                                _g2076320765_
                                                _K20706_))))
                                          _tl2071520746_
                                          _hd2071420743_)))
                                     (_g2070820732_ _g2071020736_)))))
                          (_g2070720769_ _rest20703_))))))
                 (_loop-class-list20614_
                  (lambda (_rest20616_ _vars20618_ _K20619_)
                    (let ((_g2062220637_
                           (lambda (_g2062320633_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2062320633_))))
                      (let ((_g2062120648_
                             (lambda (_g2062320641_)
                               ((lambda () (_K20619_ _vars20618_))))))
                        (let ((_g2062020699_
                               (lambda (_g2062320652_)
                                 (if (gx#stx-pair? _g2062320652_)
                                     (let ((_e2062620655_
                                            (gx#syntax-e _g2062320652_)))
                                       (let ((_hd2062720659_
                                              (##car _e2062620655_))
                                             (_tl2062820662_
                                              (##cdr _e2062620655_)))
                                         (if (gx#stx-pair? _tl2062820662_)
                                             (let ((_e2062920665_
                                                    (gx#syntax-e
                                                     _tl2062820662_)))
                                               (let ((_hd2063020669_
                                                      (##car _e2062920665_))
                                                     (_tl2063120672_
                                                      (##cdr _e2062920665_)))
                                                 ((lambda (_L20675_ _L20677_)
                                                    (_loop20610_
                                                     _L20677_
                                                     _vars20618_
                                                     (lambda (_g2069320695_)
                                                       (_loop-class-list20614_
                                                        _L20675_
                                                        _g2069320695_
                                                        _K20619_))))
                                                  _tl2063120672_
                                                  _hd2063020669_)))
                                             (_g2062120648_ _g2062320652_))))
                                     (_g2062120648_ _g2062320652_)))))
                          (_g2062020699_ _rest20616_)))))))
          (_loop20610_ _ptree20607_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17520_ _tgt17522_ _ptree17523_ _K17524_ _E17525_)
        (letrec ((_generate117527_
                  (lambda (_tgt19057_ _ptree19059_ _K19060_ _E19061_)
                    (let ((_g1906319071_
                           (lambda (_g1906419067_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1906419067_))))
                      (let ((_g1906220603_
                             (lambda (_g1906419075_)
                               ((lambda (_L19078_)
                                  (let ()
                                    (let ((_g1910419219_
                                           (lambda (_g1910519215_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1910519215_))))
                                      (let ((_g1910319240_
                                             (lambda (_g1910519223_)
                                               (if (gx#stx-pair? _g1910519223_)
                                                   (let ((_e1921119226_
                                                          (gx#syntax-e
                                                           _g1910519223_)))
                                                     (let ((_hd1921219230_
                                                            (##car _e1921119226_))
                                                           (_tl1921319233_
                                                            (##cdr _e1921119226_)))
                                                       (if (gx#stx-datum?
                                                            _hd1921219230_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1921219230_)
                               'any:)
                       (if (gx#stx-null? _tl1921319233_)
                           ((lambda () _K19060_))
                           (_g1910419219_ _g1910519223_))
                       (_g1910419219_ _g1910519223_))
                   (_g1910419219_ _g1910519223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1910419219_
                                                    _g1910519223_)))))
                                        (let ((_g1910219283_
                                               (lambda (_g1910519244_)
                                                 (if (gx#stx-pair?
                                                      _g1910519244_)
                                                     (let ((_e1920519247_
                                                            (gx#syntax-e
                                                             _g1910519244_)))
                                                       (let ((_hd1920619251_
                                                              (##car _e1920519247_))
                                                             (_tl1920719254_
                                                              (##cdr _e1920519247_)))
                                                         (if (gx#stx-datum?
                                                              _hd1920619251_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1920619251_)
                                 'var:)
                         (if (gx#stx-pair? _tl1920719254_)
                             (let ((_e1920819257_
                                    (gx#syntax-e _tl1920719254_)))
                               (let ((_hd1920919261_ (##car _e1920819257_))
                                     (_tl1921019264_ (##cdr _e1920819257_)))
                                 (if (gx#stx-null? _tl1921019264_)
                                     ((lambda (_L19267_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19267_
                                                                (cons _L19078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19060_ '()))))
                                      _hd1920919261_)
                                     (_g1910319240_ _g1910519244_))))
                             (_g1910319240_ _g1910519244_))
                         (_g1910319240_ _g1910519244_))
                     (_g1910319240_ _g1910519244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1910319240_
                                                      _g1910519244_)))))
                                          (let ((_g1910119365_
                                                 (lambda (_g1910519287_)
                                                   (if (gx#stx-pair?
                                                        _g1910519287_)
                                                       (let ((_e1919819290_
                                                              (gx#syntax-e
                                                               _g1910519287_)))
                                                         (let ((_hd1919919294_
                                                                (##car _e1919819290_))
                                                               (_tl1920019297_
                                                                (##cdr _e1919819290_)))
                                                           (if (gx#stx-datum?
                                                                _hd1919919294_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1919919294_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1920019297_)
                               (let ((_e1920119300_
                                      (gx#syntax-e _tl1920019297_)))
                                 (let ((_hd1920219304_ (##car _e1920119300_))
                                       (_tl1920319307_ (##cdr _e1920119300_)))
                                   (if (gx#stx-null? _tl1920319307_)
                                       ((lambda (_L19310_)
                                          (let ((_g1932319331_
                                                 (lambda (_g1932419327_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1932419327_))))
                                            (let ((_g1932219350_
                                                   (lambda (_g1932419335_)
                                                     ((lambda (_L19338_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19338_
                                    (cons _L19078_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19310_ '()))
                                                '())))
                              (cons _K19060_ (cons _E19061_ '()))))))
              _g1932419335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1932219350_
                                               (let ((_e19354_
                                                      (gx#stx-e _L19310_)))
                                                 (if (let ((_$e19357_
                                                            (symbol? _e19354_)))
                                                       (if _$e19357_
                                                           _$e19357_
                                                           (let ((_$e19361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19354_)))
                     (if _$e19361_ _$e19361_ (immediate? _e19354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19354_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1920219304_)
                                       (_g1910219283_ _g1910519287_))))
                               (_g1910219283_ _g1910519287_))
                           (_g1910219283_ _g1910519287_))
                       (_g1910219283_ _g1910519287_))))
               (_g1910219283_ _g1910519287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1910019419_
                                                   (lambda (_g1910519369_)
                                                     (if (gx#stx-pair?
                                                          _g1910519369_)
                                                         (let ((_e1918819372_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1910519369_)))
                   (let ((_hd1918919376_ (##car _e1918819372_))
                         (_tl1919019379_ (##cdr _e1918819372_)))
                     (if (gx#stx-datum? _hd1918919376_)
                         (if (equal? (gx#stx-e _hd1918919376_) 'class:)
                             (if (gx#stx-pair? _tl1919019379_)
                                 (let ((_e1919119382_
                                        (gx#syntax-e _tl1919019379_)))
                                   (let ((_hd1919219386_ (##car _e1919119382_))
                                         (_tl1919319389_
                                          (##cdr _e1919119382_)))
                                     (if (gx#stx-pair? _tl1919319389_)
                                         (let ((_e1919419392_
                                                (gx#syntax-e _tl1919319389_)))
                                           (let ((_hd1919519396_
                                                  (##car _e1919419392_))
                                                 (_tl1919619399_
                                                  (##cdr _e1919419392_)))
                                             (if (gx#stx-null? _tl1919619399_)
                                                 ((lambda (_L19402_ _L19404_)
                                                    (_generate-class17533_
                                                     (gx#stx-e _L19404_)
                                                     _tgt19057_
                                                     _L19402_
                                                     _K19060_
                                                     _E19061_))
                                                  _hd1919519396_
                                                  _hd1919219386_)
                                                 (_g1910119365_
                                                  _g1910519369_))))
                                         (_g1910119365_ _g1910519369_))))
                                 (_g1910119365_ _g1910519369_))
                             (_g1910119365_ _g1910519369_))
                         (_g1910119365_ _g1910519369_))))
                 (_g1910119365_ _g1910519369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1909919473_
                                                     (lambda (_g1910519423_)
                                                       (if (gx#stx-pair?
                                                            _g1910519423_)
                                                           (let ((_e1917719426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1910519423_)))
                     (let ((_hd1917819430_ (##car _e1917719426_))
                           (_tl1917919433_ (##cdr _e1917719426_)))
                       (if (gx#stx-datum? _hd1917819430_)
                           (if (equal? (gx#stx-e _hd1917819430_) 'struct:)
                               (if (gx#stx-pair? _tl1917919433_)
                                   (let ((_e1918019436_
                                          (gx#syntax-e _tl1917919433_)))
                                     (let ((_hd1918119440_
                                            (##car _e1918019436_))
                                           (_tl1918219443_
                                            (##cdr _e1918019436_)))
                                       (if (gx#stx-pair? _tl1918219443_)
                                           (let ((_e1918319446_
                                                  (gx#syntax-e
                                                   _tl1918219443_)))
                                             (let ((_hd1918419450_
                                                    (##car _e1918319446_))
                                                   (_tl1918519453_
                                                    (##cdr _e1918319446_)))
                                               (if (gx#stx-null?
                                                    _tl1918519453_)
                                                   ((lambda (_L19456_ _L19458_)
                                                      (_generate-struct17532_
                                                       (gx#stx-e _L19458_)
                                                       _tgt19057_
                                                       _L19456_
                                                       _K19060_
                                                       _E19061_))
                                                    _hd1918419450_
                                                    _hd1918119440_)
                                                   (_g1910019419_
                                                    _g1910519423_))))
                                           (_g1910019419_ _g1910519423_))))
                                   (_g1910019419_ _g1910519423_))
                               (_g1910019419_ _g1910519423_))
                           (_g1910019419_ _g1910519423_))))
                   (_g1910019419_ _g1910519423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1909819651_
                                                       (lambda (_g1910519477_)
                                                         (if (gx#stx-pair?
                                                              _g1910519477_)
                                                             (let ((_e1916919480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1910519477_)))
                       (let ((_hd1917019484_ (##car _e1916919480_))
                             (_tl1917119487_ (##cdr _e1916919480_)))
                         (if (gx#stx-datum? _hd1917019484_)
                             (if (equal? (gx#stx-e _hd1917019484_) 'vector:)
                                 (if (gx#stx-pair? _tl1917119487_)
                                     (let ((_e1917219490_
                                            (gx#syntax-e _tl1917119487_)))
                                       (let ((_hd1917319494_
                                              (##car _e1917219490_))
                                             (_tl1917419497_
                                              (##cdr _e1917219490_)))
                                         (if (gx#stx-null? _tl1917419497_)
                                             ((lambda (_L19500_)
                                                (let ((_g1951419535_
                                                       (lambda (_g1951519531_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1951519531_))))
                                                  (let ((_g1951319576_
                                                         (lambda (_g1951519539_)
                                                           (if (gx#stx-pair?
                                                                _g1951519539_)
                                                               (let ((_e1952419542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1951519539_)))
                         (let ((_hd1952519546_ (##car _e1952419542_))
                               (_tl1952619549_ (##cdr _e1952419542_)))
                           (if (gx#stx-datum? _hd1952519546_)
                               (if (equal? (gx#stx-e _hd1952519546_) 'list:)
                                   (if (gx#stx-pair? _tl1952619549_)
                                       (let ((_e1952719552_
                                              (gx#syntax-e _tl1952619549_)))
                                         (let ((_hd1952819556_
                                                (##car _e1952719552_))
                                               (_tl1952919559_
                                                (##cdr _e1952719552_)))
                                           (if (gx#stx-null? _tl1952919559_)
                                               ((lambda (_L19562_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19078_ '()))
                      (cons (_generate-list-vector17531_
                             _tgt19057_
                             _L19562_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19060_
                             _E19061_)
                            (cons _E19061_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1952819556_)
                                               (_g1951419535_ _g1951519539_))))
                                       (_g1951419535_ _g1951519539_))
                                   (_g1951419535_ _g1951519539_))
                               (_g1951419535_ _g1951519539_))))
                       (_g1951419535_ _g1951519539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1951219647_
                                                           (lambda (_g1951519580_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1951519580_)
                         (let ((_e1951719583_ (gx#syntax-e _g1951519580_)))
                           (let ((_hd1951819587_ (##car _e1951719583_))
                                 (_tl1951919590_ (##cdr _e1951719583_)))
                             (if (gx#stx-datum? _hd1951819587_)
                                 (if (equal? (gx#stx-e _hd1951819587_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1951919590_)
                                         (let ((_e1952019593_
                                                (gx#syntax-e _tl1951919590_)))
                                           (let ((_hd1952119597_
                                                  (##car _e1952019593_))
                                                 (_tl1952219600_
                                                  (##cdr _e1952019593_)))
                                             (if (gx#stx-null? _tl1952219600_)
                                                 ((lambda (_L19603_)
                                                    (let ((_g1961619624_
                                                           (lambda (_g1961719620_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1961719620_))))
                                                      (let ((_g1961519643_
                                                             (lambda (_g1961719628_)
                                                               ((lambda (_L19631_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19078_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19078_ '()))
                              (cons _L19631_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17530_
                                               _tgt19057_
                                               _L19603_
                                               '0
                                               _K19060_
                                               _E19061_)
                                              (cons _E19061_ '()))))))
                        _g1961719628_))))
                (_g1961519643_ (gx#stx-length _L19603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1952119597_)
                                                 (_g1951319576_
                                                  _g1951519580_))))
                                         (_g1951319576_ _g1951519580_))
                                     (_g1951319576_ _g1951519580_))
                                 (_g1951319576_ _g1951519580_))))
                         (_g1951319576_ _g1951519580_)))))
              (_g1951219647_ _L19500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1917319494_)
                                             (_g1909919473_ _g1910519477_))))
                                     (_g1909919473_ _g1910519477_))
                                 (_g1909919473_ _g1910519477_))
                             (_g1909919473_ _g1910519477_))))
                     (_g1909919473_ _g1910519477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1909719829_
                                                         (lambda (_g1910519655_)
                                                           (if (gx#stx-pair?
                                                                _g1910519655_)
                                                               (let ((_e1916219658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1910519655_)))
                         (let ((_hd1916319662_ (##car _e1916219658_))
                               (_tl1916419665_ (##cdr _e1916219658_)))
                           (if (gx#stx-datum? _hd1916319662_)
                               (if (equal? (gx#stx-e _hd1916319662_) 'values:)
                                   (if (gx#stx-pair? _tl1916419665_)
                                       (let ((_e1916519668_
                                              (gx#syntax-e _tl1916419665_)))
                                         (let ((_hd1916619672_
                                                (##car _e1916519668_))
                                               (_tl1916719675_
                                                (##cdr _e1916519668_)))
                                           (if (gx#stx-null? _tl1916719675_)
                                               ((lambda (_L19678_)
                                                  (let ((_g1969219713_
                                                         (lambda (_g1969319709_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1969319709_))))
                                                    (let ((_g1969119754_
                                                           (lambda (_g1969319717_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1969319717_)
                         (let ((_e1970219720_ (gx#syntax-e _g1969319717_)))
                           (let ((_hd1970319724_ (##car _e1970219720_))
                                 (_tl1970419727_ (##cdr _e1970219720_)))
                             (if (gx#stx-datum? _hd1970319724_)
                                 (if (equal? (gx#stx-e _hd1970319724_) 'list:)
                                     (if (gx#stx-pair? _tl1970419727_)
                                         (let ((_e1970519730_
                                                (gx#syntax-e _tl1970419727_)))
                                           (let ((_hd1970619734_
                                                  (##car _e1970519730_))
                                                 (_tl1970719737_
                                                  (##cdr _e1970519730_)))
                                             (if (gx#stx-null? _tl1970719737_)
                                                 ((lambda (_L19740_)
                                                    (_generate-list-vector17531_
                                                     _tgt19057_
                                                     _L19740_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19060_
                                                     _E19061_))
                                                  _hd1970619734_)
                                                 (_g1969219713_
                                                  _g1969319717_))))
                                         (_g1969219713_ _g1969319717_))
                                     (_g1969219713_ _g1969319717_))
                                 (_g1969219713_ _g1969319717_))))
                         (_g1969219713_ _g1969319717_)))))
              (let ((_g1969019825_
                     (lambda (_g1969319758_)
                       (if (gx#stx-pair? _g1969319758_)
                           (let ((_e1969519761_ (gx#syntax-e _g1969319758_)))
                             (let ((_hd1969619765_ (##car _e1969519761_))
                                   (_tl1969719768_ (##cdr _e1969519761_)))
                               (if (gx#stx-datum? _hd1969619765_)
                                   (if (equal? (gx#stx-e _hd1969619765_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1969719768_)
                                           (let ((_e1969819771_
                                                  (gx#syntax-e
                                                   _tl1969719768_)))
                                             (let ((_hd1969919775_
                                                    (##car _e1969819771_))
                                                   (_tl1970019778_
                                                    (##cdr _e1969819771_)))
                                               (if (gx#stx-null?
                                                    _tl1970019778_)
                                                   ((lambda (_L19781_)
                                                      (let ((_g1979419802_
                                                             (lambda (_g1979519798_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1979519798_))))
                                                        (let ((_g1979319821_
                                                               (lambda (_g1979519806_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19809_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19809_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17530_
                                                 _tgt19057_
                                                 _L19781_
                                                 '0
                                                 _K19060_
                                                 _E19061_)
                                                (cons _E19061_ '()))))))
                          _g1979519806_))))
                  (_g1979319821_ (gx#stx-length _L19781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1969919775_)
                                                   (_g1969119754_
                                                    _g1969319758_))))
                                           (_g1969119754_ _g1969319758_))
                                       (_g1969119754_ _g1969319758_))
                                   (_g1969119754_ _g1969319758_))))
                           (_g1969119754_ _g1969319758_)))))
                (_g1969019825_ _L19678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1916619672_)
                                               (_g1909819651_ _g1910519655_))))
                                       (_g1909819651_ _g1910519655_))
                                   (_g1909819651_ _g1910519655_))
                               (_g1909819651_ _g1910519655_))))
                       (_g1909819651_ _g1910519655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1909619900_
                                                           (lambda (_g1910519833_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1910519833_)
                         (let ((_e1915519836_ (gx#syntax-e _g1910519833_)))
                           (let ((_hd1915619840_ (##car _e1915519836_))
                                 (_tl1915719843_ (##cdr _e1915519836_)))
                             (if (gx#stx-datum? _hd1915619840_)
                                 (if (equal? (gx#stx-e _hd1915619840_) 'box:)
                                     (if (gx#stx-pair? _tl1915719843_)
                                         (let ((_e1915819846_
                                                (gx#syntax-e _tl1915719843_)))
                                           (let ((_hd1915919850_
                                                  (##car _e1915819846_))
                                                 (_tl1916019853_
                                                  (##cdr _e1915819846_)))
                                             (if (gx#stx-null? _tl1916019853_)
                                                 ((lambda (_L19856_)
                                                    (let ((_g1986919877_
                                                           (lambda (_g1987019873_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1987019873_))))
                                                      (let ((_g1986819896_
                                                             (lambda (_g1987019881_)
                                                               ((lambda (_L19884_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19078_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19078_ '()))
                                    '()))
                        '())
                  (cons (_generate117527_ _L19884_ _L19856_ _K19060_ _E19061_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19061_ '()))))))
                        _g1987019881_))))
                (_g1986819896_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1915919850_)
                                                 (_g1909719829_
                                                  _g1910519833_))))
                                         (_g1909719829_ _g1910519833_))
                                     (_g1909719829_ _g1910519833_))
                                 (_g1909719829_ _g1910519833_))))
                         (_g1909719829_ _g1910519833_)))))
              (let ((_g1909519954_
                     (lambda (_g1910519904_)
                       (if (gx#stx-pair? _g1910519904_)
                           (let ((_e1914519907_ (gx#syntax-e _g1910519904_)))
                             (let ((_hd1914619911_ (##car _e1914519907_))
                                   (_tl1914719914_ (##cdr _e1914519907_)))
                               (if (gx#stx-datum? _hd1914619911_)
                                   (if (equal? (gx#stx-e _hd1914619911_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1914719914_)
                                           (let ((_e1914819917_
                                                  (gx#syntax-e
                                                   _tl1914719914_)))
                                             (let ((_hd1914919921_
                                                    (##car _e1914819917_))
                                                   (_tl1915019924_
                                                    (##cdr _e1914819917_)))
                                               (if (gx#stx-pair?
                                                    _tl1915019924_)
                                                   (let ((_e1915119927_
                                                          (gx#syntax-e
                                                           _tl1915019924_)))
                                                     (let ((_hd1915219931_
                                                            (##car _e1915119927_))
                                                           (_tl1915319934_
                                                            (##cdr _e1915119927_)))
                                                       (if (gx#stx-null?
                                                            _tl1915319934_)
                                                           ((lambda (_L19937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19939_)
                      (_generate-splice17529_
                       _tgt19057_
                       _L19939_
                       _L19937_
                       _K19060_
                       _E19061_))
                    _hd1915219931_
                    _hd1914919921_)
                   (_g1909619900_ _g1910519904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1909619900_
                                                    _g1910519904_))))
                                           (_g1909619900_ _g1910519904_))
                                       (_g1909619900_ _g1910519904_))
                                   (_g1909619900_ _g1910519904_))))
                           (_g1909619900_ _g1910519904_)))))
                (let ((_g1909419975_
                       (lambda (_g1910519958_)
                         (if (gx#stx-pair? _g1910519958_)
                             (let ((_e1914019961_ (gx#syntax-e _g1910519958_)))
                               (let ((_hd1914119965_ (##car _e1914019961_))
                                     (_tl1914219968_ (##cdr _e1914019961_)))
                                 (if (gx#stx-datum? _hd1914119965_)
                                     (if (equal? (gx#stx-e _hd1914119965_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1914219968_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19078_ '()))
                    (cons _K19060_ (cons _E19061_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1909519954_ _g1910519958_))
                                         (_g1909519954_ _g1910519958_))
                                     (_g1909519954_ _g1910519958_))))
                             (_g1909519954_ _g1910519958_)))))
                  (let ((_g1909320094_
                         (lambda (_g1910519979_)
                           (if (gx#stx-pair? _g1910519979_)
                               (let ((_e1913119982_
                                      (gx#syntax-e _g1910519979_)))
                                 (let ((_hd1913219986_ (##car _e1913119982_))
                                       (_tl1913319989_ (##cdr _e1913119982_)))
                                   (if (gx#stx-datum? _hd1913219986_)
                                       (if (equal? (gx#stx-e _hd1913219986_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1913319989_)
                                               (let ((_e1913419992_
                                                      (gx#syntax-e
                                                       _tl1913319989_)))
                                                 (let ((_hd1913519996_
                                                        (##car _e1913419992_))
                                                       (_tl1913619999_
                                                        (##cdr _e1913419992_)))
                                                   (if (gx#stx-pair?
                                                        _tl1913619999_)
                                                       (let ((_e1913720002_
                                                              (gx#syntax-e
                                                               _tl1913619999_)))
                                                         (let ((_hd1913820006_
                                                                (##car _e1913720002_))
                                                               (_tl1913920009_
                                                                (##cdr _e1913720002_)))
                                                           (if (gx#stx-null?
                                                                _tl1913920009_)
                                                               ((lambda (_L20012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20014_)
                          (let ((_g2003020045_
                                 (lambda (_g2003120041_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2003120041_))))
                            (let ((_g2002920090_
                                   (lambda (_g2003120049_)
                                     (if (gx#stx-pair? _g2003120049_)
                                         (let ((_e2003420052_
                                                (gx#syntax-e _g2003120049_)))
                                           (let ((_hd2003520056_
                                                  (##car _e2003420052_))
                                                 (_tl2003620059_
                                                  (##cdr _e2003420052_)))
                                             (if (gx#stx-pair? _tl2003620059_)
                                                 (let ((_e2003720062_
                                                        (gx#syntax-e
                                                         _tl2003620059_)))
                                                   (let ((_hd2003820066_
                                                          (##car _e2003720062_))
                                                         (_tl2003920069_
                                                          (##cdr _e2003720062_)))
                                                     (if (gx#stx-null?
                                                          _tl2003920069_)
                                                         ((lambda (_L20072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20074_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19078_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20074_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19078_ '()))
                              '()))
                  (cons (cons _L20072_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19078_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117527_
                                                           _L20074_
                                                           _L20014_
                                                           (_generate117527_
                                                            _L20072_
                                                            _L20012_
                                                            _K19060_
                                                            _E19061_)
                                                           _E19061_)
                                                          '())))
                                        (cons _E19061_ '()))))))
                  _hd2003820066_
                  _hd2003520056_)
                 (_g2003020045_ _g2003120049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2003020045_
                                                  _g2003120049_))))
                                         (_g2003020045_ _g2003120049_)))))
                              (_g2002920090_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1913820006_
                        _hd1913519996_)
                       (_g1909419975_ _g1910519979_))))
               (_g1909419975_ _g1910519979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1909419975_ _g1910519979_))
                                           (_g1909419975_ _g1910519979_))
                                       (_g1909419975_ _g1910519979_))))
                               (_g1909419975_ _g1910519979_)))))
                    (let ((_g1909220134_
                           (lambda (_g1910520098_)
                             (if (gx#stx-pair? _g1910520098_)
                                 (let ((_e1912320101_
                                        (gx#syntax-e _g1910520098_)))
                                   (let ((_hd1912420105_ (##car _e1912320101_))
                                         (_tl1912520108_
                                          (##cdr _e1912320101_)))
                                     (if (gx#stx-datum? _hd1912420105_)
                                         (if (equal? (gx#stx-e _hd1912420105_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1912520108_)
                                                 (let ((_e1912620111_
                                                        (gx#syntax-e
                                                         _tl1912520108_)))
                                                   (let ((_hd1912720115_
                                                          (##car _e1912620111_))
                                                         (_tl1912820118_
                                                          (##cdr _e1912620111_)))
                                                     (if (gx#stx-null?
                                                          _tl1912820118_)
                                                         ((lambda (_L20121_)
                                                            (_generate117527_
                                                             _tgt19057_
                                                             _L20121_
                                                             _E19061_
                                                             _K19060_))
                                                          _hd1912720115_)
                                                         (_g1909320094_
                                                          _g1910520098_))))
                                                 (_g1909320094_ _g1910520098_))
                                             (_g1909320094_ _g1910520098_))
                                         (_g1909320094_ _g1910520098_))))
                                 (_g1909320094_ _g1910520098_)))))
                      (let ((_g1909120222_
                             (lambda (_g1910520138_)
                               (if (gx#stx-pair? _g1910520138_)
                                   (let ((_e1911920141_
                                          (gx#syntax-e _g1910520138_)))
                                     (let ((_hd1912020145_
                                            (##car _e1911920141_))
                                           (_tl1912120148_
                                            (##cdr _e1911920141_)))
                                       (if (gx#stx-datum? _hd1912020145_)
                                           (if (equal? (gx#stx-e
                                                        _hd1912020145_)
                                                       'or:)
                                               ((lambda (_L20151_)
                                                  (let ((_g2016320175_
                                                         (lambda (_g2016420171_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2016420171_))))
                                                    (let ((_g2016220186_
                                                           (lambda (_g2016420179_)
                                                             ((lambda ()
                                                                _E19061_)))))
                                                      (let ((_g2016120218_
                                                             (lambda (_g2016420190_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2016420190_)
                           (let ((_e2016720193_ (gx#syntax-e _g2016420190_)))
                             (let ((_hd2016820197_ (##car _e2016720193_))
                                   (_tl2016920200_ (##cdr _e2016720193_)))
                               ((lambda (_L20203_ _L20205_)
                                  (_generate117527_
                                   _tgt19057_
                                   _L20205_
                                   _K19060_
                                   (_generate117527_
                                    _tgt19057_
                                    (cons 'or: _L20203_)
                                    _K19060_
                                    _E19061_)))
                                _tl2016920200_
                                _hd2016820197_)))
                           (_g2016220186_ _g2016420190_)))))
                (_g2016120218_ _L20151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1912120148_)
                                               (_g1909220134_ _g1910520138_))
                                           (_g1909220134_ _g1910520138_))))
                                   (_g1909220134_ _g1910520138_)))))
                        (let ((_g1909020310_
                               (lambda (_g1910520226_)
                                 (if (gx#stx-pair? _g1910520226_)
                                     (let ((_e1911520229_
                                            (gx#syntax-e _g1910520226_)))
                                       (let ((_hd1911620233_
                                              (##car _e1911520229_))
                                             (_tl1911720236_
                                              (##cdr _e1911520229_)))
                                         (if (gx#stx-datum? _hd1911620233_)
                                             (if (equal? (gx#stx-e
                                                          _hd1911620233_)
                                                         'and:)
                                                 ((lambda (_L20239_)
                                                    (let ((_g2025120263_
                                                           (lambda (_g2025220259_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2025220259_))))
                                                      (let ((_g2025020274_
                                                             (lambda (_g2025220267_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19060_)))))
                (let ((_g2024920306_
                       (lambda (_g2025220278_)
                         (if (gx#stx-pair? _g2025220278_)
                             (let ((_e2025520281_ (gx#syntax-e _g2025220278_)))
                               (let ((_hd2025620285_ (##car _e2025520281_))
                                     (_tl2025720288_ (##cdr _e2025520281_)))
                                 ((lambda (_L20291_ _L20293_)
                                    (_generate117527_
                                     _tgt19057_
                                     _L20293_
                                     (_generate117527_
                                      _tgt19057_
                                      (cons 'and: _L20291_)
                                      _K19060_
                                      _E19061_)
                                     _E19061_))
                                  _tl2025720288_
                                  _hd2025620285_)))
                             (_g2025020274_ _g2025220278_)))))
                  (_g2024920306_ _L20239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1911720236_)
                                                 (_g1909120222_ _g1910520226_))
                                             (_g1909120222_ _g1910520226_))))
                                     (_g1909120222_ _g1910520226_)))))
                          (let ((_g1908920599_
                                 (lambda (_g1910520314_)
                                   (if (gx#stx-pair? _g1910520314_)
                                       (let ((_e1910820317_
                                              (gx#syntax-e _g1910520314_)))
                                         (let ((_hd1910920321_
                                                (##car _e1910820317_))
                                               (_tl1911020324_
                                                (##cdr _e1910820317_)))
                                           (if (gx#stx-datum? _hd1910920321_)
                                               (if (equal? (gx#stx-e
                                                            _hd1910920321_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1911020324_)
                                                       (let ((_e1911120327_
                                                              (gx#syntax-e
                                                               _tl1911020324_)))
                                                         (let ((_hd1911220331_
                                                                (##car _e1911120327_))
                                                               (_tl1911320334_
                                                                (##cdr _e1911120327_)))
                                                           ((lambda (_L20337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20339_)
                      (let ((_g2035520387_
                             (lambda (_g2035620383_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2035620383_))))
                        (let ((_g2035420485_
                               (lambda (_g2035620391_)
                                 (if (gx#stx-pair? _g2035620391_)
                                     (let ((_e2037020394_
                                            (gx#syntax-e _g2035620391_)))
                                       (let ((_hd2037120398_
                                              (##car _e2037020394_))
                                             (_tl2037220401_
                                              (##cdr _e2037020394_)))
                                         (if (gx#stx-datum? _hd2037120398_)
                                             (if (equal? (gx#stx-e
                                                          _hd2037120398_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2037220401_)
                                                     (let ((_e2037320404_
                                                            (gx#syntax-e
                                                             _tl2037220401_)))
                                                       (let ((_hd2037420408_
                                                              (##car _e2037320404_))
                                                             (_tl2037520411_
                                                              (##cdr _e2037320404_)))
                                                         (if (gx#stx-pair?
                                                              _tl2037520411_)
                                                             (let ((_e2037620414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2037520411_)))
                       (let ((_hd2037720418_ (##car _e2037620414_))
                             (_tl2037820421_ (##cdr _e2037620414_)))
                         (if (gx#stx-datum? _hd2037720418_)
                             (if (equal? (gx#stx-e _hd2037720418_) '=>:)
                                 (if (gx#stx-pair? _tl2037820421_)
                                     (let ((_e2037920424_
                                            (gx#syntax-e _tl2037820421_)))
                                       (let ((_hd2038020428_
                                              (##car _e2037920424_))
                                             (_tl2038120431_
                                              (##cdr _e2037920424_)))
                                         (if (gx#stx-null? _tl2038120431_)
                                             ((lambda (_L20434_ _L20436_)
                                                (let ((_g2045420462_
                                                       (lambda (_g2045520458_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2045520458_))))
                                                  (let ((_g2045320481_
                                                         (lambda (_g2045520466_)
                                                           ((lambda (_L20469_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20339_ (cons _L19078_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20436_ (cons _L19078_ '())) '()))
                    '())
              (cons (_generate117527_ _L20469_ _L20434_ _K19060_ _E19061_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19061_ '()))))))
                    _g2045520466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2045320481_
                                                     (gx#genident 'e)))))
                                              _hd2038020428_
                                              _hd2037420408_)
                                             (_g2035520387_ _g2035620391_))))
                                     (_g2035520387_ _g2035620391_))
                                 (_g2035520387_ _g2035620391_))
                             (_g2035520387_ _g2035620391_))))
                     (_g2035520387_ _g2035620391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2035520387_
                                                      _g2035620391_))
                                                 (_g2035520387_ _g2035620391_))
                                             (_g2035520387_ _g2035620391_))))
                                     (_g2035520387_ _g2035620391_)))))
                          (let ((_g2035320556_
                                 (lambda (_g2035620489_)
                                   (if (gx#stx-pair? _g2035620489_)
                                       (let ((_e2036220492_
                                              (gx#syntax-e _g2035620489_)))
                                         (let ((_hd2036320496_
                                                (##car _e2036220492_))
                                               (_tl2036420499_
                                                (##cdr _e2036220492_)))
                                           (if (gx#stx-datum? _hd2036320496_)
                                               (if (equal? (gx#stx-e
                                                            _hd2036320496_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2036420499_)
                                                       (let ((_e2036520502_
                                                              (gx#syntax-e
                                                               _tl2036420499_)))
                                                         (let ((_hd2036620506_
                                                                (##car _e2036520502_))
                                                               (_tl2036720509_
                                                                (##cdr _e2036520502_)))
                                                           (if (gx#stx-null?
                                                                _tl2036720509_)
                                                               ((lambda (_L20512_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2052520533_
                                 (lambda (_g2052620529_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2052620529_))))
                            (let ((_g2052420552_
                                   (lambda (_g2052620537_)
                                     ((lambda (_L20540_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20339_ (cons _L19078_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20540_
                                (cons (_generate117527_
                                       _L20540_
                                       _L20512_
                                       _K19060_
                                       _E19061_)
                                      (cons _E19061_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2052620537_))))
                              (_g2052420552_ (gx#genident 'e)))))
                        _hd2036620506_)
                       (_g2035420485_ _g2035620489_))))
               (_g2035420485_ _g2035620489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2035420485_
                                                    _g2035620489_))
                                               (_g2035420485_ _g2035620489_))))
                                       (_g2035420485_ _g2035620489_)))))
                            (let ((_g2035220584_
                                   (lambda (_g2035620560_)
                                     (if (gx#stx-pair? _g2035620560_)
                                         (let ((_e2035820563_
                                                (gx#syntax-e _g2035620560_)))
                                           (let ((_hd2035920567_
                                                  (##car _e2035820563_))
                                                 (_tl2036020570_
                                                  (##cdr _e2035820563_)))
                                             (if (gx#stx-null? _tl2036020570_)
                                                 ((lambda (_L20573_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20339_ (cons _L19078_ '())))
                        (cons (_generate117527_
                               _tgt19057_
                               _L20573_
                               _K19060_
                               _E19061_)
                              (cons _E19061_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2035920567_)
                                                 (_g2035320556_
                                                  _g2035620560_))))
                                         (_g2035320556_ _g2035620560_)))))
                              (let ((_g2035120595_
                                     (lambda (_g2035620588_)
                                       (if (gx#stx-null? _g2035620588_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20339_ (cons _L19078_ '())))
                  (cons _K19060_ (cons _E19061_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2035220584_ _g2035620588_)))))
                                (_g2035120595_ _L20337_)))))))
                    _tl1911320334_
                    _hd1911220331_)))
               (_g1909020310_ _g1910520314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1909020310_
                                                    _g1910520314_))
                                               (_g1909020310_ _g1910520314_))))
                                       (_g1909020310_ _g1910520314_)))))
                            (_g1908920599_ _ptree19059_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1906419075_))))
                        (_g1906220603_ _tgt19057_)))))
                 (_generate-splice17529_
                  (lambda (_tgt18429_ _hd18431_ _rest18432_ _K18433_ _E18434_)
                    (let ((_g1843618453_
                           (lambda (_g1843718449_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1843718449_))))
                      (let ((_g1843519053_
                             (lambda (_g1843718457_)
                               (if (gx#stx-pair/null? _g1843718457_)
                                   (if (fx>= (gx#stx-length _g1843718457_) '0)
                                       (let ((_g28438_
                                              (gx#syntax-split-splice
                                               _g1843718457_
                                               '0)))
                                         (begin
                                           (let ((_g28439_
                                                  (values-count _g28438_)))
                                             (if (not (fx= _g28439_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28439_)))
                                           (let ((_target1843918460_
                                                  (values-ref _g28438_ 0))
                                                 (_tl1844118463_
                                                  (values-ref _g28438_ 1)))
                                             (if (gx#stx-null? _tl1844118463_)
                                                 (letrec ((_loop1844218466_
                                                           (lambda (_hd1844018470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1844618473_)
                     (if (gx#stx-pair? _hd1844018470_)
                         (let ((_e1844318476_ (gx#syntax-e _hd1844018470_)))
                           (let ((_lp-hd1844418480_ (##car _e1844318476_))
                                 (_lp-tl1844518483_ (##cdr _e1844318476_)))
                             (_loop1844218466_
                              _lp-tl1844518483_
                              (cons _lp-hd1844418480_ _var1844618473_))))
                         (let ((_var1844718486_ (reverse _var1844618473_)))
                           ((lambda (_L18490_)
                              (let ()
                                (let ((_g1850618523_
                                       (lambda (_g1850718519_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1850718519_))))
                                  (let ((_g1850519041_
                                         (lambda (_g1850718527_)
                                           (if (gx#stx-pair/null?
                                                _g1850718527_)
                                               (if (fx>= (gx#stx-length
                                                          _g1850718527_)
                                                         '0)
                                                   (let ((_g28440_
                                                          (gx#syntax-split-splice
                                                           _g1850718527_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28441_
                                                              (values-count
                                                               _g28440_)))
                                                         (if (not (fx= _g28441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28441_)))
               (let ((_target1850918530_ (values-ref _g28440_ 0))
                     (_tl1851118533_ (values-ref _g28440_ 1)))
                 (if (gx#stx-null? _tl1851118533_)
                     (letrec ((_loop1851218536_
                               (lambda (_hd1851018540_ _var-r1851618543_)
                                 (if (gx#stx-pair? _hd1851018540_)
                                     (let ((_e1851318546_
                                            (gx#syntax-e _hd1851018540_)))
                                       (let ((_lp-hd1851418550_
                                              (##car _e1851318546_))
                                             (_lp-tl1851518553_
                                              (##cdr _e1851318546_)))
                                         (_loop1851218536_
                                          _lp-tl1851518553_
                                          (cons _lp-hd1851418550_
                                                _var-r1851618543_))))
                                     (let ((_var-r1851718556_
                                            (reverse _var-r1851618543_)))
                                       ((lambda (_L18560_)
                                          (let ()
                                            (let ((_g1857718594_
                                                   (lambda (_g1857818590_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1857818590_))))
                                              (let ((_g1857619029_
                                                     (lambda (_g1857818598_)
                                                       (if (gx#stx-pair/null?
                                                            _g1857818598_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1857818598_)
                             '0)
                       (let ((_g28442_
                              (gx#syntax-split-splice _g1857818598_ '0)))
                         (begin
                           (let ((_g28443_ (values-count _g28442_)))
                             (if (not (fx= _g28443_ 2))
                                 (error "Context expects 2 values" _g28443_)))
                           (let ((_target1858018601_ (values-ref _g28442_ 0))
                                 (_tl1858218604_ (values-ref _g28442_ 1)))
                             (if (gx#stx-null? _tl1858218604_)
                                 (letrec ((_loop1858318607_
                                           (lambda (_hd1858118611_
                                                    _init1858718614_)
                                             (if (gx#stx-pair? _hd1858118611_)
                                                 (let ((_e1858418617_
                                                        (gx#syntax-e
                                                         _hd1858118611_)))
                                                   (let ((_lp-hd1858518621_
                                                          (##car _e1858418617_))
                                                         (_lp-tl1858618624_
                                                          (##cdr _e1858418617_)))
                                                     (_loop1858318607_
                                                      _lp-tl1858618624_
                                                      (cons _lp-hd1858518621_
                                                            _init1858718614_))))
                                                 (let ((_init1858818627_
                                                        (reverse _init1858718614_)))
                                                   ((lambda (_L18631_)
                                                      (let ()
                                                        (let ((_g1864818656_
                                                               (lambda (_g1864918652_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1864918652_))))
                  (let ((_g1864719025_
                         (lambda (_g1864918660_)
                           ((lambda (_L18663_)
                              (let ()
                                (let ((_g1867618684_
                                       (lambda (_g1867718680_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1867718680_))))
                                  (let ((_g1867519021_
                                         (lambda (_g1867718688_)
                                           ((lambda (_L18691_)
                                              (let ()
                                                (let ((_g1870418712_
                                                       (lambda (_g1870518708_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1870518708_))))
                                                  (let ((_g1870319017_
                                                         (lambda (_g1870518716_)
                                                           ((lambda (_L18719_)
                                                              (let ()
                                                                (let ((_g1873218740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1873318736_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1873318736_))))
                          (let ((_g1873119013_
                                 (lambda (_g1873318744_)
                                   ((lambda (_L18747_)
                                      (let ()
                                        (let ((_g1876018768_
                                               (lambda (_g1876118764_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1876118764_))))
                                          (let ((_g1875919009_
                                                 (lambda (_g1876118772_)
                                                   ((lambda (_L18775_)
                                                      (let ()
                                                        (let ((_g1878818796_
                                                               (lambda (_g1878918792_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1878918792_))))
                  (let ((_g1878719005_
                         (lambda (_g1878918800_)
                           ((lambda (_L18803_)
                              (let ()
                                (let ((_g1881618824_
                                       (lambda (_g1881718820_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1881718820_))))
                                  (let ((_g1881519001_
                                         (lambda (_g1881718828_)
                                           ((lambda (_L18831_)
                                              (let ()
                                                (let ((_g1884418852_
                                                       (lambda (_g1884518848_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1884518848_))))
                                                  (let ((_g1884318986_
                                                         (lambda (_g1884518856_)
                                                           ((lambda (_L18859_)
                                                              (let ()
                                                                (let ((_g1887218880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1887318876_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1887318876_))))
                          (let ((_g1887118974_
                                 (lambda (_g1887318884_)
                                   ((lambda (_L18887_)
                                      (let ()
                                        (let ((_g1890018908_
                                               (lambda (_g1890118904_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1890118904_))))
                                          (let ((_g1889918970_
                                                 (lambda (_g1890118912_)
                                                   ((lambda (_L18915_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18691_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1892918940_ _g1893018943_)
                                     (cons _g1892918940_ _g1893018943_))
                                   '()
                                   _L18490_)))
                    (cons _L18831_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18747_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18803_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1893118946_
                                                        _g1893218949_)
                                                 (cons _g1893118946_
                                                       _g1893218949_))
                                               '()
                                               _L18560_))))
                          (cons _L18915_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18719_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18803_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1893318952_
                                                        _g1893418955_)
                                                 (cons _g1893318952_
                                                       _g1893418955_))
                                               '()
                                               _L18560_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18803_ '()))
                                                  (cons (cons _L18747_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18803_ '()))
                            (cons _L18803_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1893518958_
                                                    _g1893618961_)
                                             (cons _g1893518958_
                                                   _g1893618961_))
                                           '()
                                           _L18560_)))))
                (cons _L18887_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18719_
                                          (cons _L18663_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1893718964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1893818967_)
                   (cons _g1893718964_ _g1893818967_))
                 '()
                 _L18631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1890118912_))))
                                            (_g1889918970_
                                             (_generate117527_
                                              _L18775_
                                              _hd18431_
                                              _L18859_
                                              _L18887_))))))
                                    _g1887318884_))))
                            (_g1887118974_
                             (cons _L18691_
                                   (cons _L18803_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1897718980_
                                                           _g1897818983_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1897718980_ '()))
                  _g1897818983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18560_)))))))))
                    _g1884518856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1884318986_
                                                     (cons _L18719_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18803_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18560_ _L18490_)
                           (foldr (lambda (_g1898918993_
                                           _g1899018996_
                                           _g1899118998_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1899018996_
                                                      (cons _g1898918993_
                                                            '())))
                                          _g1899118998_))
                                  '()
                                  _L18560_
                                  _L18490_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1881718828_))))
                                    (_g1881519001_
                                     (_generate117527_
                                      _L18803_
                                      _rest18432_
                                      _K18433_
                                      _E18434_))))))
                            _g1878918800_))))
                    (_g1878719005_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1876118772_))))
                                            (_g1875919009_
                                             (gx#genident 'hd))))))
                                    _g1873318744_))))
                            (_g1873119013_ (gx#genident 'splice-try))))))
                    _g1870518716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870319017_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1867718688_))))
                                    (_g1867519021_
                                     (gx#genident 'splice-rest))))))
                            _g1864918660_))))
                    (_g1864719025_ _tgt18429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1858818627_))))))
                                   (_loop1858318607_ _target1858018601_ '()))
                                 (_g1857718594_ _g1857818598_)))))
                       (_g1857718594_ _g1857818598_))
                   (_g1857718594_ _g1857818598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1857619029_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1903219035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1903319038_)
                      (cons _g1903219035_ _g1903319038_))
                    '()
                    _L18490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1851718556_))))))
                       (_loop1851218536_ _target1850918530_ '()))
                     (_g1850618523_ _g1850718527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1850618523_
                                                    _g1850718527_))
                                               (_g1850618523_
                                                _g1850718527_)))))
                                    (_g1850519041_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1904419047_
                                                        _g1904519050_)
                                                 (cons _g1904419047_
                                                       _g1904519050_))
                                               '()
                                               _L18490_))))))))
                            _var1844718486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1844218466_
                                                    _target1843918460_
                                                    '()))
                                                 (_g1843618453_
                                                  _g1843718457_)))))
                                       (_g1843618453_ _g1843718457_))
                                   (_g1843618453_ _g1843718457_)))))
                        (_g1843519053_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18431_))))))
                 (_generate-simple-vector17530_
                  (lambda (_tgt18271_
                           _body18273_
                           _start18274_
                           _K18275_
                           _E18276_)
                    ((letrec ((_recur18278_
                               (lambda (_rest18281_ _off18283_)
                                 (let ((_g1828618298_
                                        (lambda (_g1828718294_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1828718294_))))
                                   (let ((_g1828518309_
                                          (lambda (_g1828718302_)
                                            ((lambda () _K18275_)))))
                                     (let ((_g1828418425_
                                            (lambda (_g1828718313_)
                                              (if (gx#stx-pair? _g1828718313_)
                                                  (let ((_e1829018316_
                                                         (gx#syntax-e
                                                          _g1828718313_)))
                                                    (let ((_hd1829118320_
                                                           (##car _e1829018316_))
                                                          (_tl1829218323_
                                                           (##cdr _e1829018316_)))
                                                      ((lambda (_L18326_
                                                                _L18328_)
                                                         (let ((_g1834318362_
                                                                (lambda (_g1834418358_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1834418358_))))
                   (let ((_g1834218421_
                          (lambda (_g1834418366_)
                            (if (gx#stx-pair? _g1834418366_)
                                (let ((_e1834818369_
                                       (gx#syntax-e _g1834418366_)))
                                  (let ((_hd1834918373_ (##car _e1834818369_))
                                        (_tl1835018376_ (##cdr _e1834818369_)))
                                    (if (gx#stx-pair? _tl1835018376_)
                                        (let ((_e1835118379_
                                               (gx#syntax-e _tl1835018376_)))
                                          (let ((_hd1835218383_
                                                 (##car _e1835118379_))
                                                (_tl1835318386_
                                                 (##cdr _e1835118379_)))
                                            (if (gx#stx-pair? _tl1835318386_)
                                                (let ((_e1835418389_
                                                       (gx#syntax-e
                                                        _tl1835318386_)))
                                                  (let ((_hd1835518393_
                                                         (##car _e1835418389_))
                                                        (_tl1835618396_
                                                         (##cdr _e1835418389_)))
                                                    (if (gx#stx-null?
                                                         _tl1835618396_)
                                                        ((lambda (_L18399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18401_
                          _L18402_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18402_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18401_
                                                               (cons _L18399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117527_
                                        _L18402_
                                        _L18328_
                                        (_recur18278_
                                         _L18326_
                                         (fx1+ _off18283_))
                                        _E18276_)
                                       '())))))
                 _hd1835518393_
                 _hd1835218383_
                 _hd1834918373_)
                (_g1834318362_ _g1834418366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1834318362_
                                                 _g1834418366_))))
                                        (_g1834318362_ _g1834418366_))))
                                (_g1834318362_ _g1834418366_)))))
                     (_g1834218421_
                      (list (gx#genident 'e) _tgt18271_ _off18283_)))))
               _tl1829218323_
               _hd1829118320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1828518309_
                                                   _g1828718313_)))))
                                       (_g1828418425_ _rest18281_)))))))
                       _recur18278_)
                     _body18273_
                     _start18274_)))
                 (_generate-list-vector17531_
                  (lambda (_tgt18181_
                           _body18183_
                           _tgt->list18184_
                           _start18185_
                           _K18186_
                           _E18187_)
                    (let ((_g1818918208_
                           (lambda (_g1819018204_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1819018204_))))
                      (let ((_g1818818267_
                             (lambda (_g1819018212_)
                               (if (gx#stx-pair? _g1819018212_)
                                   (let ((_e1819418215_
                                          (gx#syntax-e _g1819018212_)))
                                     (let ((_hd1819518219_
                                            (##car _e1819418215_))
                                           (_tl1819618222_
                                            (##cdr _e1819418215_)))
                                       (if (gx#stx-pair? _tl1819618222_)
                                           (let ((_e1819718225_
                                                  (gx#syntax-e
                                                   _tl1819618222_)))
                                             (let ((_hd1819818229_
                                                    (##car _e1819718225_))
                                                   (_tl1819918232_
                                                    (##cdr _e1819718225_)))
                                               (if (gx#stx-pair?
                                                    _tl1819918232_)
                                                   (let ((_e1820018235_
                                                          (gx#syntax-e
                                                           _tl1819918232_)))
                                                     (let ((_hd1820118239_
                                                            (##car _e1820018235_))
                                                           (_tl1820218242_
                                                            (##cdr _e1820018235_)))
                                                       (if (gx#stx-null?
                                                            _tl1820218242_)
                                                           ((lambda (_L18245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18247_
                             _L18248_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18248_
                                                (cons (cons _L18245_
                                                            (cons _L18247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117527_
                                           _L18248_
                                           _body18183_
                                           _K18186_
                                           _E18187_)
                                          '())))))
                    _hd1820118239_
                    _hd1819818229_
                    _hd1819518219_)
                   (_g1818918208_ _g1819018212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1818918208_
                                                    _g1819018212_))))
                                           (_g1818918208_ _g1819018212_))))
                                   (_g1818918208_ _g1819018212_)))))
                        (_g1818818267_
                         (list (gx#genident 'e)
                               _tgt18181_
                               _tgt->list18184_))))))
                 (_generate-struct17532_
                  (lambda (_info17914_
                           _tgt17916_
                           _body17917_
                           _K17918_
                           _E17919_)
                    (let ((_rtd17921_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info17914_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17914_)
                               '#f)))
                      (let ((_fields17931_
                             ((letrec ((_lp17924_
                                        (lambda (_rtd17927_ _k17929_)
                                          (if _rtd17927_
                                              (_lp17924_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd17927_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd17927_))
                                                    _k17929_))
                                              _k17929_))))
                                _lp17924_)
                              _rtd17921_
                              '0)))
                        (let ((_final?17934_
                               (if _rtd17921_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd17921_))
                                   '#f)))
                          (let ((_g1793717945_
                                 (lambda (_g1793817941_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1793817941_))))
                            (let ((_g1793618177_
                                   (lambda (_g1793817949_)
                                     ((lambda (_L17952_)
                                        (let ()
                                          (let ((_g1796717975_
                                                 (lambda (_g1796817971_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1796817971_))))
                                            (let ((_g1796618173_
                                                   (lambda (_g1796817979_)
                                                     ((lambda (_L17982_)
                                                        (let ()
                                                          (let ((_g1799518003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1799617999_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1799617999_))))
                    (let ((_g1799418169_
                           (lambda (_g1799618007_)
                             ((lambda (_L18010_)
                                (let ()
                                  (let ()
                                    (let ((_g1802618047_
                                           (lambda (_g1802718043_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1802718043_))))
                                      (let ((_g1802518090_
                                             (lambda (_g1802718051_)
                                               (if (gx#stx-pair? _g1802718051_)
                                                   (let ((_e1803618054_
                                                          (gx#syntax-e
                                                           _g1802718051_)))
                                                     (let ((_hd1803718058_
                                                            (##car _e1803618054_))
                                                           (_tl1803818061_
                                                            (##cdr _e1803618054_)))
                                                       (if (gx#stx-datum?
                                                            _hd1803718058_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1803718058_)
                               'list:)
                       (if (gx#stx-pair? _tl1803818061_)
                           (let ((_e1803918064_ (gx#syntax-e _tl1803818061_)))
                             (let ((_hd1804018068_ (##car _e1803918064_))
                                   (_tl1804118071_ (##cdr _e1803918064_)))
                               (if (gx#stx-null? _tl1804118071_)
                                   ((lambda (_L18074_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18010_
                                                        (cons _L17982_
                                                              (cons _L17952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17531_
                                                         _tgt17916_
                                                         _L18074_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K17918_
                                                         _E17919_)
                                                        (cons _E17919_ '())))))
                                    _hd1804018068_)
                                   (_g1802618047_ _g1802718051_))))
                           (_g1802618047_ _g1802718051_))
                       (_g1802618047_ _g1802718051_))
                   (_g1802618047_ _g1802718051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1802618047_
                                                    _g1802718051_)))))
                                        (let ((_g1802418165_
                                               (lambda (_g1802718094_)
                                                 (if (gx#stx-pair?
                                                      _g1802718094_)
                                                     (let ((_e1802918097_
                                                            (gx#syntax-e
                                                             _g1802718094_)))
                                                       (let ((_hd1803018101_
                                                              (##car _e1802918097_))
                                                             (_tl1803118104_
                                                              (##cdr _e1802918097_)))
                                                         (if (gx#stx-datum?
                                                              _hd1803018101_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1803018101_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1803118104_)
                             (let ((_e1803218107_
                                    (gx#syntax-e _tl1803118104_)))
                               (let ((_hd1803318111_ (##car _e1803218107_))
                                     (_tl1803418114_ (##cdr _e1803218107_)))
                                 (if (gx#stx-null? _tl1803418114_)
                                     ((lambda (_L18117_)
                                        (let ((_K18130_
                                               (_generate-simple-vector17530_
                                                _tgt17916_
                                                _L18117_
                                                '1
                                                _K17918_
                                                _E17919_)))
                                          (if (if _rtd17921_
                                                  (fx<= (gx#stx-length
                                                         _L18117_)
                                                        _fields17931_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18010_
                                                                (cons _L17982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L17952_ '())))
                  (cons _K18130_ (cons _E17919_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1813318141_
                                                     (lambda (_g1813418137_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1813418137_))))
                                                (let ((_g1813218161_
                                                       (lambda (_g1813418145_)
                                                         ((lambda (_L18148_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18010_
                                                    (cons _L17982_
                                                          (cons _L17952_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18148_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L17952_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18130_ (cons _E17919_ '()))))))
                  _g1813418145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1813218161_
                                                   (gx#stx-length
                                                    _L18117_)))))))
                                      _hd1803318111_)
                                     (_g1802518090_ _g1802718094_))))
                             (_g1802518090_ _g1802718094_))
                         (_g1802518090_ _g1802718094_))
                     (_g1802518090_ _g1802718094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1802518090_
                                                      _g1802718094_)))))
                                          (_g1802418165_ _body17917_)))))))
                              _g1799618007_))))
                      (_g1799418169_
                       (if _final?17934_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1796817979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1796618173_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info17914_))))))
                                      _g1793817949_))))
                              (_g1793618177_ _tgt17916_))))))))
                 (_generate-class17533_
                  (lambda (_info17535_
                           _tgt17537_
                           _body17538_
                           _K17539_
                           _E17540_)
                    (let ((_rtd17542_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17535_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17535_)
                               '#f)))
                      (let ((_known-slot?17544_ #!void))
                        (letrec ((_rtd-known-slot?17546_
                                  (lambda (_rtd17895_ _slot17897_)
                                    (if _rtd17895_
                                        (let ((_$e17899_
                                               (memq _slot17897_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd17895_))))
                                          (if _$e17899_
                                              _$e17899_
                                              (ormap (lambda (_g1790217904_)
                                                       (_rtd-known-slot?17546_
                                                        _g1790217904_
                                                        _slot17897_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd17895_)))))
                                        '#f)))
                                 (_recur17547_
                                  (lambda (_klass17681_ _rest17683_)
                                    (let ((_g1768617702_
                                           (lambda (_g1768717698_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1768717698_))))
                                      (let ((_g1768517713_
                                             (lambda (_g1768717706_)
                                               ((lambda () _K17539_)))))
                                        (let ((_g1768417891_
                                               (lambda (_g1768717717_)
                                                 (if (gx#stx-pair?
                                                      _g1768717717_)
                                                     (let ((_e1769117720_
                                                            (gx#syntax-e
                                                             _g1768717717_)))
                                                       (let ((_hd1769217724_
                                                              (##car _e1769117720_))
                                                             (_tl1769317727_
                                                              (##cdr _e1769117720_)))
                                                         (if (gx#stx-pair?
                                                              _tl1769317727_)
                                                             (let ((_e1769417730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1769317727_)))
                       (let ((_hd1769517734_ (##car _e1769417730_))
                             (_tl1769617737_ (##cdr _e1769417730_)))
                         ((lambda (_L17740_ _L17742_ _L17743_)
                            (let ((_g1775917767_
                                   (lambda (_g1776017763_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1776017763_))))
                              (let ((_g1775817887_
                                     (lambda (_g1776017771_)
                                       ((lambda (_L17774_)
                                          (let ()
                                            (let ((_g1778617794_
                                                   (lambda (_g1778717790_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1778717790_))))
                                              (let ((_g1778517883_
                                                     (lambda (_g1778717798_)
                                                       ((lambda (_L17801_)
                                                          (let ()
                                                            (let ((_g1781417822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1781517818_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1781517818_))))
                      (let ((_g1781317879_
                             (lambda (_g1781517826_)
                               ((lambda (_L17829_)
                                  (let ()
                                    (let ((_g1784217850_
                                           (lambda (_g1784317846_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1784317846_))))
                                      (let ((_g1784117875_
                                             (lambda (_g1784317854_)
                                               ((lambda (_L17857_)
                                                  (let ()
                                                    (let ((_K17870_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L17857_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17774_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L17829_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117527_
                                      _L17857_
                                      _L17742_
                                      (_recur17547_ _klass17681_ _L17740_)
                                      _E17540_)
                                     '())))))
              (let ()
                (if (_known-slot?17544_ _L17743_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17829_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17801_
                                                              (cons _L17743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K17870_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17829_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17801_
                                                              (cons _L17743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L17829_
                                                  (cons _K17870_
                                                        (cons _E17540_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1784317854_))))
                                        (_g1784117875_ (gx#genident 'e))))))
                                _g1781517826_))))
                        (_g1781317879_ (gx#genident 'slot))))))
                _g1778717798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1778517883_
                                                 _klass17681_)))))
                                        _g1776017771_))))
                                (_g1775817887_ _tgt17537_))))
                          _tl1769617737_
                          _hd1769517734_
                          _hd1769217724_)))
                     (_g1768517713_ _g1768717717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1768517713_
                                                      _g1768717717_)))))
                                          (_g1768417891_ _rest17683_)))))))
                          (begin
                            (set! _known-slot?17544_
                                  (if _rtd17542_
                                      (lambda (_key17908_)
                                        (let ((_slot17911_
                                               (keyword->symbol
                                                (gx#stx-e _key17908_))))
                                          (_rtd-known-slot?17546_
                                           _rtd17542_
                                           _slot17911_)))
                                      false))
                            (let ((_final?17545_
                                   (if _rtd17542_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17542_))
                                       '#f)))
                              (let ((_g1754917557_
                                     (lambda (_g1755017553_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1755017553_))))
                                (let ((_g1754817677_
                                       (lambda (_g1755017561_)
                                         ((lambda (_L17564_)
                                            (let ()
                                              (let ((_g1757917587_
                                                     (lambda (_g1758017583_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1758017583_))))
                                                (let ((_g1757817673_
                                                       (lambda (_g1758017591_)
                                                         ((lambda (_L17594_)
                                                            (let ()
                                                              (let ((_g1760717615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1760817611_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1760817611_))))
                        (let ((_g1760617669_
                               (lambda (_g1760817619_)
                                 ((lambda (_L17622_)
                                    (let ()
                                      (let ((_g1763517643_
                                             (lambda (_g1763617639_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1763617639_))))
                                        (let ((_g1763417665_
                                               (lambda (_g1763617647_)
                                                 ((lambda (_L17650_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17622_ (cons _L17594_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17564_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17594_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17547_
                                                     _L17564_
                                                     _body17538_)
                                                    '())))
                                  (cons _E17540_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1763617647_))))
                                          (_g1763417665_
                                           (if _final?17545_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1760817619_))))
                          (_g1760617669_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17535_))))))
                  _g1758017591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1757817673_
                                                   _tgt17537_)))))
                                          _g1755017561_))))
                                  (_g1754817677_
                                   (gx#genident 'class))))))))))))
          (_generate117527_ _tgt17522_ _ptree17523_ _K17524_ _E17525_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16519_ _tgt-lst16521_ _clauses16522_)
        (let ((_parse-body16524_
               (lambda (_hd-len17342_)
                 ((letrec ((_lp17345_
                            (lambda (_rest17348_ _r17350_)
                              (let ((_g1735317365_
                                     (lambda (_g1735417361_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1735417361_))))
                                (let ((_g1735217376_
                                       (lambda (_g1735417369_)
                                         ((lambda () _r17350_)))))
                                  (let ((_g1735117516_
                                         (lambda (_g1735417380_)
                                           (if (gx#stx-pair? _g1735417380_)
                                               (let ((_e1735717383_
                                                      (gx#syntax-e
                                                       _g1735417380_)))
                                                 (let ((_hd1735817387_
                                                        (##car _e1735717383_))
                                                       (_tl1735917390_
                                                        (##cdr _e1735717383_)))
                                                   ((lambda (_L17393_ _L17395_)
                                                      (let ((_g1741217428_
                                                             (lambda (_g1741317424_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1741317424_))))
                                                        (let ((_g1741117439_
                                                               (lambda (_g1741317432_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16519_
                             _L17395_))))))
                  (let ((_g1741017480_
                         (lambda (_g1741317443_)
                           (if (gx#stx-pair? _g1741317443_)
                               (let ((_e1742017446_
                                      (gx#syntax-e _g1741317443_)))
                                 (let ((_hd1742117450_ (##car _e1742017446_))
                                       (_tl1742217453_ (##cdr _e1742017446_)))
                                   ((lambda (_L17456_ _L17458_)
                                      (if (if (gx#stx-list? _L17458_)
                                              (if (fx= (gx#stx-length _L17458_)
                                                       _hd-len17342_)
                                                  (if (gx#stx-list? _L17456_)
                                                      (not (gx#stx-null?
                                                            _L17456_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17345_
                                           _L17393_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1747017472_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1747017472_
                         _stx16519_))
                      _L17458_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17456_)
                            (let ((_$e17476_ (gx#stx-source _L17395_)))
                              (if _$e17476_
                                  _$e17476_
                                  (gx#stx-source _stx16519_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17350_))
                                          (_g1741117439_ _g1741317443_)))
                                    _tl1742217453_
                                    _hd1742117450_)))
                               (_g1741117439_ _g1741317443_)))))
                    (let ((_g1740917512_
                           (lambda (_g1741317484_)
                             (if (gx#stx-pair? _g1741317484_)
                                 (let ((_e1741517487_
                                        (gx#syntax-e _g1741317484_)))
                                   (let ((_hd1741617491_ (##car _e1741517487_))
                                         (_tl1741717494_
                                          (##cdr _e1741517487_)))
                                     (if (gx#identifier? _hd1741617491_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28448_|
                                              _hd1741617491_)
                                             ((lambda (_L17497_)
                                                (if (if (gx#stx-list? _L17497_)
                                                        (not (gx#stx-null?
                                                              _L17497_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17393_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17497_)
                                         (let ((_$e17508_
                                                (gx#stx-source _L17395_)))
                                           (if _$e17508_
                                               _$e17508_
                                               (gx#stx-source _stx16519_))))
                                        '())))
                      _r17350_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16519_
                 _L17395_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1741017480_
                                                     _g1741317484_)))
                                              _tl1741717494_)
                                             (_g1741017480_ _g1741317484_))
                                         (_g1741017480_ _g1741317484_))))
                                 (_g1741017480_ _g1741317484_)))))
                      (_g1740917512_ _L17395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1735917390_
                                                    _hd1735817387_)))
                                               (_g1735217376_
                                                _g1735417380_)))))
                                    (_g1735117516_ _rest17348_)))))))
                    _lp17345_)
                  _clauses16522_
                  '()))))
          (let ((_generate116528_
                 (lambda (_clause16530_ _body16532_ _E16533_)
                   ((letrec ((_recur16535_
                              (lambda (_rest16538_ _rest-targets16540_)
                                (let ((_g1654316555_
                                       (lambda (_g1654416551_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1654416551_))))
                                  (let ((_g1654216566_
                                         (lambda (_g1654416559_)
                                           ((lambda () _body16532_)))))
                                    (let ((_g1654116837_
                                           (lambda (_g1654416570_)
                                             (if (gx#stx-pair? _g1654416570_)
                                                 (let ((_e1654716573_
                                                        (gx#syntax-e
                                                         _g1654416570_)))
                                                   (let ((_hd1654816577_
                                                          (##car _e1654716573_))
                                                         (_tl1654916580_
                                                          (##cdr _e1654716573_)))
                                                     ((lambda (_L16583_
                                                               _L16585_)
                                                        (let ((_g1660216614_
                                                               (lambda (_g1660316610_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1660316610_))))
                  (let ((_g1660116833_
                         (lambda (_g1660316618_)
                           (if (gx#stx-pair? _g1660316618_)
                               (let ((_e1660616621_
                                      (gx#syntax-e _g1660316618_)))
                                 (let ((_hd1660716625_ (##car _e1660616621_))
                                       (_tl1660816628_ (##cdr _e1660616621_)))
                                   ((lambda (_L16631_ _L16633_)
                                      (let ((_g1664516653_
                                             (lambda (_g1664616649_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1664616649_))))
                                        (let ((_g1664416829_
                                               (lambda (_g1664616657_)
                                                 ((lambda (_L16660_)
                                                    (let ()
                                                      (let ((_g1667216689_
                                                             (lambda (_g1667316685_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1667316685_))))
                                                        (let ((_g1667116825_
                                                               (lambda (_g1667316693_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1667316693_)
                             (if (fx>= (gx#stx-length _g1667316693_) '0)
                                 (let ((_g28446_
                                        (gx#syntax-split-splice
                                         _g1667316693_
                                         '0)))
                                   (begin
                                     (let ((_g28447_ (values-count _g28446_)))
                                       (if (not (fx= _g28447_ 2))
                                           (error "Context expects 2 values"
                                                  _g28447_)))
                                     (let ((_target1667516696_
                                            (values-ref _g28446_ 0))
                                           (_tl1667716699_
                                            (values-ref _g28446_ 1)))
                                       (if (gx#stx-null? _tl1667716699_)
                                           (letrec ((_loop1667816702_
                                                     (lambda (_hd1667616706_
                                                              _var1668216709_)
                                                       (if (gx#stx-pair?
                                                            _hd1667616706_)
                                                           (let ((_e1667916712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1667616706_)))
                     (let ((_lp-hd1668016716_ (##car _e1667916712_))
                           (_lp-tl1668116719_ (##cdr _e1667916712_)))
                       (_loop1667816702_
                        _lp-tl1668116719_
                        (cons _lp-hd1668016716_ _var1668216709_))))
                   (let ((_var1668316722_ (reverse _var1668216709_)))
                     ((lambda (_L16726_)
                        (let ()
                          (let ((_g1674316751_
                                 (lambda (_g1674416747_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1674416747_))))
                            (let ((_g1674216821_
                                   (lambda (_g1674416755_)
                                     ((lambda (_L16758_)
                                        (let ()
                                          (let ((_g1677116779_
                                                 (lambda (_g1677216775_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1677216775_))))
                                            (let ((_g1677016809_
                                                   (lambda (_g1677216783_)
                                                     ((lambda (_L16786_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16660_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1680016803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1680116806_)
                                 (cons _g1680016803_ _g1680116806_))
                               '()
                               _L16726_))
                      (cons _L16758_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16786_ '()))))))
              _g1677216783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1677016809_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16519_
                                                _L16633_
                                                _L16585_
                                                (cons _L16660_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1681216815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1681316818_)
                         (cons _g1681216815_ _g1681316818_))
                       '()
                       _L16726_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16533_))))))
                                      _g1674416755_))))
                              (_g1674216821_
                               (_recur16535_ _L16583_ _L16631_))))))
                      _var1668316722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1667816702_
                                              _target1667516696_
                                              '()))
                                           (_g1667216689_ _g1667316693_)))))
                                 (_g1667216689_ _g1667316693_))
                             (_g1667216689_ _g1667316693_)))))
                  (_g1667116825_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1664616657_))))
                                          (_g1664416829_ (gx#genident 'K)))))
                                    _tl1660816628_
                                    _hd1660716625_)))
                               (_g1660216614_ _g1660316618_)))))
                    (_g1660116833_ _rest-targets16540_))))
              _tl1654916580_
              _hd1654816577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1654216566_
                                                  _g1654416570_)))))
                                      (_g1654116837_ _rest16538_)))))))
                      _recur16535_)
                    _clause16530_
                    _tgt-lst16521_))))
            (letrec ((_generate-clauses16527_
                      (lambda (_rest16841_ _E16843_)
                        (let ((_g1684716863_
                               (lambda (_g1684816859_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1684816859_))))
                          (let ((_g1684616874_
                                 (lambda (_g1684816867_)
                                   ((lambda () _E16843_)))))
                            (let ((_g1684517050_
                                   (lambda (_g1684816878_)
                                     (if (gx#stx-pair? _g1684816878_)
                                         (let ((_e1685516881_
                                                (gx#syntax-e _g1684816878_)))
                                           (let ((_hd1685616885_
                                                  (##car _e1685516881_))
                                                 (_tl1685716888_
                                                  (##cdr _e1685516881_)))
                                             ((lambda (_L16891_ _L16893_)
                                                (let ((_g1690616925_
                                                       (lambda (_g1690716921_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1690716921_))))
                                                  (let ((_g1690517046_
                                                         (lambda (_g1690716929_)
                                                           (if (gx#stx-pair?
                                                                _g1690716929_)
                                                               (let ((_e1691116932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1690716929_)))
                         (let ((_hd1691216936_ (##car _e1691116932_))
                               (_tl1691316939_ (##cdr _e1691116932_)))
                           (if (gx#stx-pair? _tl1691316939_)
                               (let ((_e1691416942_
                                      (gx#syntax-e _tl1691316939_)))
                                 (let ((_hd1691516946_ (##car _e1691416942_))
                                       (_tl1691616949_ (##cdr _e1691416942_)))
                                   (if (gx#stx-pair? _tl1691616949_)
                                       (let ((_e1691716952_
                                              (gx#syntax-e _tl1691616949_)))
                                         (let ((_hd1691816956_
                                                (##car _e1691716952_))
                                               (_tl1691916959_
                                                (##cdr _e1691716952_)))
                                           (if (gx#stx-null? _tl1691916959_)
                                               ((lambda (_L16962_
                                                         _L16964_
                                                         _L16965_)
                                                  (let ((_g1698216997_
                                                         (lambda (_g1698316993_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1698316993_))))
                                                    (let ((_g1698117042_
                                                           (lambda (_g1698317001_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1698317001_)
                         (let ((_e1698617004_ (gx#syntax-e _g1698317001_)))
                           (let ((_hd1698717008_ (##car _e1698617004_))
                                 (_tl1698817011_ (##cdr _e1698617004_)))
                             (if (gx#stx-pair? _tl1698817011_)
                                 (let ((_e1698917014_
                                        (gx#syntax-e _tl1698817011_)))
                                   (let ((_hd1699017018_ (##car _e1698917014_))
                                         (_tl1699117021_
                                          (##cdr _e1698917014_)))
                                     (if (gx#stx-null? _tl1699117021_)
                                         ((lambda (_L17024_ _L17026_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L16965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17026_ '())))
                                    '()))
                        '())
                  (cons _L17024_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1699017018_
                                          _hd1698717008_)
                                         (_g1698216997_ _g1698317001_))))
                                 (_g1698216997_ _g1698317001_))))
                         (_g1698216997_ _g1698317001_)))))
              (_g1698117042_
               (list (if (gx#stx-e _L16964_)
                         (_generate116528_ _L16964_ _L16962_ _E16843_)
                         _L16962_)
                     (_generate-clauses16527_
                      _L16891_
                      (cons _L16965_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1691816956_
                                                _hd1691516946_
                                                _hd1691216936_)
                                               (_g1690616925_ _g1690716929_))))
                                       (_g1690616925_ _g1690716929_))))
                               (_g1690616925_ _g1690716929_))))
                       (_g1690616925_ _g1690716929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1690517046_ _L16893_))))
                                              _tl1685716888_
                                              _hd1685616885_)))
                                         (_g1684616874_ _g1684816878_)))))
                              (let ((_g1684417155_
                                     (lambda (_g1684817054_)
                                       (if (gx#stx-pair? _g1684817054_)
                                           (let ((_e1685017057_
                                                  (gx#syntax-e _g1684817054_)))
                                             (let ((_hd1685117061_
                                                    (##car _e1685017057_))
                                                   (_tl1685217064_
                                                    (##cdr _e1685017057_)))
                                               (if (gx#stx-null?
                                                    _tl1685217064_)
                                                   ((lambda (_L17067_)
                                                      (let ((_g1707817096_
                                                             (lambda (_g1707917092_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1707917092_))))
                                                        (let ((_g1707717151_
                                                               (lambda (_g1707917100_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1707917100_)
                             (let ((_e1708217103_ (gx#syntax-e _g1707917100_)))
                               (let ((_hd1708317107_ (##car _e1708217103_))
                                     (_tl1708417110_ (##cdr _e1708217103_)))
                                 (if (gx#stx-pair? _tl1708417110_)
                                     (let ((_e1708517113_
                                            (gx#syntax-e _tl1708417110_)))
                                       (let ((_hd1708617117_
                                              (##car _e1708517113_))
                                             (_tl1708717120_
                                              (##cdr _e1708517113_)))
                                         (if (gx#stx-pair? _tl1708717120_)
                                             (let ((_e1708817123_
                                                    (gx#syntax-e
                                                     _tl1708717120_)))
                                               (let ((_hd1708917127_
                                                      (##car _e1708817123_))
                                                     (_tl1709017130_
                                                      (##cdr _e1708817123_)))
                                                 (if (gx#stx-null?
                                                      _tl1709017130_)
                                                     ((lambda (_L17133_
                                                               _L17135_)
                                                        (if (gx#stx-e _L17135_)
                                                            (_generate116528_
                                                             _L17135_
                                                             _L17133_
                                                             _E16843_)
                                                            _L17133_))
                                                      _hd1708917127_
                                                      _hd1708617117_)
                                                     (_g1707817096_
                                                      _g1707917100_))))
                                             (_g1707817096_ _g1707917100_))))
                                     (_g1707817096_ _g1707917100_))))
                             (_g1707817096_ _g1707917100_)))))
                  (_g1707717151_ _L17067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1685117061_)
                                                   (_g1684517050_
                                                    _g1684817054_))))
                                           (_g1684517050_ _g1684817054_)))))
                                (_g1684417155_ _rest16841_))))))))
              (let ((_generate-body16526_
                     (lambda (_body17159_)
                       (let ((_g1716217170_
                              (lambda (_g1716317166_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1716317166_))))
                         (let ((_g1716117338_
                                (lambda (_g1716317174_)
                                  ((lambda (_L17177_)
                                     (let ()
                                       (let ((_g1718917206_
                                              (lambda (_g1719017202_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1719017202_))))
                                         (let ((_g1718817334_
                                                (lambda (_g1719017210_)
                                                  (if (gx#stx-pair/null?
                                                       _g1719017210_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1719017210_)
                        '0)
                  (let ((_g28444_ (gx#syntax-split-splice _g1719017210_ '0)))
                    (begin
                      (let ((_g28445_ (values-count _g28444_)))
                        (if (not (fx= _g28445_ 2))
                            (error "Context expects 2 values" _g28445_)))
                      (let ((_target1719217213_ (values-ref _g28444_ 0))
                            (_tl1719417216_ (values-ref _g28444_ 1)))
                        (if (gx#stx-null? _tl1719417216_)
                            (letrec ((_loop1719517219_
                                      (lambda (_hd1719317223_
                                               _target1719917226_)
                                        (if (gx#stx-pair? _hd1719317223_)
                                            (let ((_e1719617229_
                                                   (gx#syntax-e
                                                    _hd1719317223_)))
                                              (let ((_lp-hd1719717233_
                                                     (##car _e1719617229_))
                                                    (_lp-tl1719817236_
                                                     (##cdr _e1719617229_)))
                                                (_loop1719517219_
                                                 _lp-tl1719817236_
                                                 (cons _lp-hd1719717233_
                                                       _target1719917226_))))
                                            (let ((_target1720017239_
                                                   (reverse _target1719917226_)))
                                              ((lambda (_L17243_)
                                                 (let ()
                                                   (let ((_g1726017268_
                                                          (lambda (_g1726117264_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1726117264_))))
                                                     (let ((_g1725917322_
                                                            (lambda (_g1726117272_)
                                                              ((lambda (_L17275_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1728817296_
                                  (lambda (_g1728917292_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1728917292_))))
                             (let ((_g1728717318_
                                    (lambda (_g1728917300_)
                                      ((lambda (_L17303_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17275_ '()))
                       '())
                 (cons _L17303_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1728917300_))))
                               (_g1728717318_
                                (_generate-clauses16527_
                                 _body17159_
                                 (cons _L17177_ '())))))))
                       _g1726117272_))))
               (_g1725917322_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1732517328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1732617331_)
                  (cons _g1732517328_ _g1732617331_))
                '()
                _L17243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16519_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1720017239_))))))
                              (_loop1719517219_ _target1719217213_ '()))
                            (_g1718917206_ _g1719017210_)))))
                  (_g1718917206_ _g1719017210_))
              (_g1718917206_ _g1719017210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1718817334_ _tgt-lst16521_)))))
                                   _g1716317174_))))
                           (_g1716117338_ (gx#genident 'E)))))))
                (_generate-body16526_
                 (_parse-body16524_ (gx#stx-length _tgt-lst16521_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16421_ _tgt16423_ _clauses16424_)
        (let ((_reclause16426_
               (lambda (_clause16429_)
                 (let ((_g1643416449_
                        (lambda (_g1643516445_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1643516445_))))
                   (let ((_g1643316460_
                          (lambda (_g1643516453_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16421_
                                _clause16429_))))))
                     (let ((_g1643216494_
                            (lambda (_g1643516464_)
                              (if (gx#stx-pair? _g1643516464_)
                                  (let ((_e1644116467_
                                         (gx#syntax-e _g1643516464_)))
                                    (let ((_hd1644216471_
                                           (##car _e1644116467_))
                                          (_tl1644316474_
                                           (##cdr _e1644116467_)))
                                      ((lambda (_L16477_ _L16479_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16479_ '()) _L16477_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1644316474_
                                       _hd1644216471_)))
                                  (_g1643316460_ _g1643516464_)))))
                       (let ((_g1643116515_
                              (lambda (_g1643516498_)
                                (if (gx#stx-pair? _g1643516498_)
                                    (let ((_e1643616501_
                                           (gx#syntax-e _g1643516498_)))
                                      (let ((_hd1643716505_
                                             (##car _e1643616501_))
                                            (_tl1643816508_
                                             (##cdr _e1643616501_)))
                                        (if (gx#identifier? _hd1643716505_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28449_|
                                                 _hd1643716505_)
                                                ((lambda () _clause16429_))
                                                (_g1643216494_ _g1643516498_))
                                            (_g1643216494_ _g1643516498_))))
                                    (_g1643216494_ _g1643516498_)))))
                         (_g1643116515_ _clause16429_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16421_
           (cons _tgt16423_ '())
           (gx#stx-map _reclause16426_ _clauses16424_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23399_)
        (let ((_g2340423433_
               (lambda (_g2340523429_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2340523429_))))
          (let ((_g2340323541_
                 (lambda (_g2340523437_)
                   (if (gx#stx-pair? _g2340523437_)
                       (let ((_e2342223440_ (gx#syntax-e _g2340523437_)))
                         (let ((_hd2342323444_ (##car _e2342223440_))
                               (_tl2342423447_ (##cdr _e2342223440_)))
                           (if (gx#stx-pair? _tl2342423447_)
                               (let ((_e2342523450_
                                      (gx#syntax-e _tl2342423447_)))
                                 (let ((_hd2342623454_ (##car _e2342523450_))
                                       (_tl2342723457_ (##cdr _e2342523450_)))
                                   ((lambda (_L23460_ _L23462_)
                                      (if (gx#stx-list? _L23460_)
                                          (let ((_g2347623484_
                                                 (lambda (_g2347723480_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2347723480_))))
                                            (let ((_g2347523537_
                                                   (lambda (_g2347723488_)
                                                     ((lambda (_L23491_)
                                                        (let ()
                                                          (let ((_g2350323511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2350423507_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2350423507_))))
                    (let ((_g2350223533_
                           (lambda (_g2350423515_)
                             ((lambda (_L23518_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23491_
                                                            (cons _L23462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23518_ '()))))))
                              _g2350423515_))))
                      (_g2350223533_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23399_
                        _L23491_
                        _L23460_))))))
              _g2347723488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2347523537_
                                               (gx#genident _L23462_))))
                                          (_g2340423433_ _g2340523437_)))
                                    _tl2342723457_
                                    _hd2342623454_)))
                               (_g2340423433_ _g2340523437_))))
                       (_g2340423433_ _g2340523437_)))))
            (let ((_g2340223646_
                   (lambda (_g2340523545_)
                     (if (gx#stx-pair? _g2340523545_)
                         (let ((_e2341423548_ (gx#syntax-e _g2340523545_)))
                           (let ((_hd2341523552_ (##car _e2341423548_))
                                 (_tl2341623555_ (##cdr _e2341423548_)))
                             (if (gx#stx-pair? _tl2341623555_)
                                 (let ((_e2341723558_
                                        (gx#syntax-e _tl2341623555_)))
                                   (let ((_hd2341823562_ (##car _e2341723558_))
                                         (_tl2341923565_
                                          (##cdr _e2341723558_)))
                                     (if (gx#identifier? _hd2341823562_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28450_|
                                              _hd2341823562_)
                                             ((lambda (_L23568_)
                                                (if (gx#stx-list? _L23568_)
                                                    (let ((_g2358123589_
                                                           (lambda (_g2358223585_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2358223585_))))
                                                      (let ((_g2358023642_
                                                             (lambda (_g2358223593_)
                                                               ((lambda (_L23596_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2360823616_
                                   (lambda (_g2360923612_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2360923612_))))
                              (let ((_g2360723638_
                                     (lambda (_g2360923620_)
                                       ((lambda (_L23623_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23596_
                                                          (cons _L23623_
                                                                '()))))))
                                        _g2360923620_))))
                                (_g2360723638_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23596_ _L23568_))
                                  (gx#stx-source _stx23399_)))))))
                        _g2358223593_))))
                (_g2358023642_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2340323541_
                                                     _g2340523545_)))
                                              _tl2341923565_)
                                             (_g2340323541_ _g2340523545_))
                                         (_g2340323541_ _g2340523545_))))
                                 (_g2340323541_ _g2340523545_))))
                         (_g2340323541_ _g2340523545_)))))
              (let ((_g2340123751_
                     (lambda (_g2340523650_)
                       (if (gx#stx-pair? _g2340523650_)
                           (let ((_e2340723653_ (gx#syntax-e _g2340523650_)))
                             (let ((_hd2340823657_ (##car _e2340723653_))
                                   (_tl2340923660_ (##cdr _e2340723653_)))
                               (if (gx#stx-pair? _tl2340923660_)
                                   (let ((_e2341023663_
                                          (gx#syntax-e _tl2340923660_)))
                                     (let ((_hd2341123667_
                                            (##car _e2341023663_))
                                           (_tl2341223670_
                                            (##cdr _e2341023663_)))
                                       (if (gx#identifier? _hd2341123667_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g28451_|
                                                _hd2341123667_)
                                               ((lambda (_L23673_)
                                                  (if (gx#stx-list? _L23673_)
                                                      (let ((_g2368623694_
                                                             (lambda (_g2368723690_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2368723690_))))
                                                        (let ((_g2368523747_
                                                               (lambda (_g2368723698_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23701_)
                            (let ()
                              (let ((_g2371323721_
                                     (lambda (_g2371423717_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2371423717_))))
                                (let ((_g2371223743_
                                       (lambda (_g2371423725_)
                                         ((lambda (_L23728_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23701_ '())
                                                            (cons _L23728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2371423725_))))
                                  (_g2371223743_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23701_ _L23673_))
                                    (gx#stx-source _stx23399_)))))))
                          _g2368723698_))))
                  (_g2368523747_ (gx#genident 'e))))
              (_g2340223646_ _g2340523650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2341223670_)
                                               (_g2340223646_ _g2340523650_))
                                           (_g2340223646_ _g2340523650_))))
                                   (_g2340223646_ _g2340523650_))))
                           (_g2340223646_ _g2340523650_)))))
                (_g2340123751_ _stx23399_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23755_)
        (let ((_g2375823782_
               (lambda (_g2375923778_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2375923778_))))
          (let ((_g2375723994_
                 (lambda (_g2375923786_)
                   (if (gx#stx-pair? _g2375923786_)
                       (let ((_e2376223789_ (gx#syntax-e _g2375923786_)))
                         (let ((_hd2376323793_ (##car _e2376223789_))
                               (_tl2376423796_ (##cdr _e2376223789_)))
                           (if (gx#stx-pair? _tl2376423796_)
                               (let ((_e2376523799_
                                      (gx#syntax-e _tl2376423796_)))
                                 (let ((_hd2376623803_ (##car _e2376523799_))
                                       (_tl2376723806_ (##cdr _e2376523799_)))
                                   (if (gx#stx-pair/null? _hd2376623803_)
                                       (if (fx>= (gx#stx-length _hd2376623803_)
                                                 '0)
                                           (let ((_g28452_
                                                  (gx#syntax-split-splice
                                                   _hd2376623803_
                                                   '0)))
                                             (begin
                                               (let ((_g28453_
                                                      (values-count _g28452_)))
                                                 (if (not (fx= _g28453_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28453_)))
                                               (let ((_target2376823809_
                                                      (values-ref _g28452_ 0))
                                                     (_tl2377023812_
                                                      (values-ref _g28452_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2377023812_)
                                                     (letrec ((_loop2377123815_
                                                               (lambda (_hd2376923819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2377523822_)
                         (if (gx#stx-pair? _hd2376923819_)
                             (let ((_e2377223825_
                                    (gx#syntax-e _hd2376923819_)))
                               (let ((_lp-hd2377323829_ (##car _e2377223825_))
                                     (_lp-tl2377423832_ (##cdr _e2377223825_)))
                                 (_loop2377123815_
                                  _lp-tl2377423832_
                                  (cons _lp-hd2377323829_ _e2377523822_))))
                             (let ((_e2377623835_ (reverse _e2377523822_)))
                               ((lambda (_L23839_ _L23841_)
                                  (if (gx#stx-list? _L23839_)
                                      (let ((_g2385923876_
                                             (lambda (_g2386023872_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2386023872_))))
                                        (let ((_g2385823982_
                                               (lambda (_g2386023880_)
                                                 (if (gx#stx-pair/null?
                                                      _g2386023880_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2386023880_)
                                                               '0)
                                                         (let ((_g28454_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2386023880_
                         '0)))
                   (begin
                     (let ((_g28455_ (values-count _g28454_)))
                       (if (not (fx= _g28455_ 2))
                           (error "Context expects 2 values" _g28455_)))
                     (let ((_target2386223883_ (values-ref _g28454_ 0))
                           (_tl2386423886_ (values-ref _g28454_ 1)))
                       (if (gx#stx-null? _tl2386423886_)
                           (letrec ((_loop2386523889_
                                     (lambda (_hd2386323893_ _$e2386923896_)
                                       (if (gx#stx-pair? _hd2386323893_)
                                           (let ((_e2386623899_
                                                  (gx#syntax-e
                                                   _hd2386323893_)))
                                             (let ((_lp-hd2386723903_
                                                    (##car _e2386623899_))
                                                   (_lp-tl2386823906_
                                                    (##cdr _e2386623899_)))
                                               (_loop2386523889_
                                                _lp-tl2386823906_
                                                (cons _lp-hd2386723903_
                                                      _$e2386923896_))))
                                           (let ((_$e2387023909_
                                                  (reverse _$e2386923896_)))
                                             ((lambda (_L23913_)
                                                (let ()
                                                  (let ((_g2392923937_
                                                         (lambda (_g2393023933_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2393023933_))))
                                                    (let ((_g2392823970_
                                                           (lambda (_g2393023941_)
                                                             ((lambda (_L23944_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L23841_
                                           _L23913_)
                                          (foldr (lambda (_g2395823962_
                                                          _g2395923965_
                                                          _g2396023967_)
                                                   (cons (cons _g2395923965_
                                                               (cons _g2395823962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2396023967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L23841_
                                                 _L23913_))
                                        (cons _L23944_ '()))))))
                      _g2393023941_))))
              (_g2392823970_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23755_
                (begin
                  '#!void
                  (foldr (lambda (_g2397323976_ _g2397423979_)
                           (cons _g2397323976_ _g2397423979_))
                         '()
                         _L23913_))
                _L23839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2387023909_))))))
                             (_loop2386523889_ _target2386223883_ '()))
                           (_g2385923876_ _g2386023880_)))))
                 (_g2385923876_ _g2386023880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2385923876_
                                                      _g2386023880_)))))
                                          (_g2385823982_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2398523988_
                                                              _g2398623991_)
                                                       (cons _g2398523988_
                                                             _g2398623991_))
                                                     '()
                                                     _L23841_))))))
                                      (_g2375823782_ _g2375923786_)))
                                _tl2376723806_
                                _e2377623835_))))))
               (_loop2377123815_ _target2376823809_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2375823782_
                                                      _g2375923786_)))))
                                           (_g2375823782_ _g2375923786_))
                                       (_g2375823782_ _g2375923786_))))
                               (_g2375823782_ _g2375923786_))))
                       (_g2375823782_ _g2375923786_)))))
            (_g2375723994_ _stx23755_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24000_)
        (let ((_g2400624089_
               (lambda (_g2400724085_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2400724085_))))
          (let ((_g2400524250_
                 (lambda (_g2400724093_)
                   (if (gx#stx-pair? _g2400724093_)
                       (let ((_e2405224096_ (gx#syntax-e _g2400724093_)))
                         (let ((_hd2405324100_ (##car _e2405224096_))
                               (_tl2405424103_ (##cdr _e2405224096_)))
                           (if (gx#stx-pair? _tl2405424103_)
                               (let ((_e2405524106_
                                      (gx#syntax-e _tl2405424103_)))
                                 (let ((_hd2405624110_ (##car _e2405524106_))
                                       (_tl2405724113_ (##cdr _e2405524106_)))
                                   (if (gx#stx-pair/null? _hd2405624110_)
                                       (if (fx>= (gx#stx-length _hd2405624110_)
                                                 '0)
                                           (let ((_g28456_
                                                  (gx#syntax-split-splice
                                                   _hd2405624110_
                                                   '0)))
                                             (begin
                                               (let ((_g28457_
                                                      (values-count _g28456_)))
                                                 (if (not (fx= _g28457_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28457_)))
                                               (let ((_target2405824116_
                                                      (values-ref _g28456_ 0))
                                                     (_tl2406024119_
                                                      (values-ref _g28456_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2406024119_)
                                                     (letrec ((_loop2406124122_
                                                               (lambda (_hd2405924126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2406524129_
                                _hd2406624131_)
                         (if (gx#stx-pair? _hd2405924126_)
                             (let ((_e2406224134_
                                    (gx#syntax-e _hd2405924126_)))
                               (let ((_lp-hd2406324138_ (##car _e2406224134_))
                                     (_lp-tl2406424141_ (##cdr _e2406224134_)))
                                 (if (gx#stx-pair? _lp-hd2406324138_)
                                     (let ((_e2406924144_
                                            (gx#syntax-e _lp-hd2406324138_)))
                                       (let ((_hd2407024148_
                                              (##car _e2406924144_))
                                             (_tl2407124151_
                                              (##cdr _e2406924144_)))
                                         (if (gx#stx-pair? _tl2407124151_)
                                             (let ((_e2407224154_
                                                    (gx#syntax-e
                                                     _tl2407124151_)))
                                               (let ((_hd2407324158_
                                                      (##car _e2407224154_))
                                                     (_tl2407424161_
                                                      (##cdr _e2407224154_)))
                                                 (if (gx#stx-null?
                                                      _tl2407424161_)
                                                     (_loop2406124122_
                                                      _lp-tl2406424141_
                                                      (cons _hd2407324158_
                                                            _expr2406524129_)
                                                      (cons _hd2407024148_
                                                            _hd2406624131_))
                                                     (_g2400624089_
                                                      _g2400724093_))))
                                             (_g2400624089_ _g2400724093_))))
                                     (_g2400624089_ _g2400724093_))))
                             (let ((_expr2406724164_
                                    (reverse _expr2406524129_))
                                   (_hd2406824167_ (reverse _hd2406624131_)))
                               (if (gx#stx-pair/null? _tl2405724113_)
                                   (if (fx>= (gx#stx-length _tl2405724113_) '0)
                                       (let ((_g28458_
                                              (gx#syntax-split-splice
                                               _tl2405724113_
                                               '0)))
                                         (begin
                                           (let ((_g28459_
                                                  (values-count _g28458_)))
                                             (if (not (fx= _g28459_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28459_)))
                                           (let ((_target2407524170_
                                                  (values-ref _g28458_ 0))
                                                 (_tl2407724173_
                                                  (values-ref _g28458_ 1)))
                                             (if (gx#stx-null? _tl2407724173_)
                                                 (letrec ((_loop2407824176_
                                                           (lambda (_hd2407624180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2408224183_)
                     (if (gx#stx-pair? _hd2407624180_)
                         (let ((_e2407924186_ (gx#syntax-e _hd2407624180_)))
                           (let ((_lp-hd2408024190_ (##car _e2407924186_))
                                 (_lp-tl2408124193_ (##cdr _e2407924186_)))
                             (_loop2407824176_
                              _lp-tl2408124193_
                              (cons _lp-hd2408024190_ _body2408224183_))))
                         (let ((_body2408324196_ (reverse _body2408224183_)))
                           ((lambda (_L24200_ _L24202_ _L24203_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2422524232_
                                                            _g2422624235_)
                                                     (cons _g2422524232_
                                                           _g2422624235_))
                                                   '()
                                                   _L24202_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2422724238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2422824241_)
                         (cons _g2422724238_ _g2422824241_))
                       '()
                       _L24203_))
              (begin
                '#!void
                (foldr (lambda (_g2422924244_ _g2423024247_)
                         (cons _g2422924244_ _g2423024247_))
                       '()
                       _L24200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2408324196_
                            _expr2406724164_
                            _hd2406824167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2407824176_
                                                    _target2407524170_
                                                    '()))
                                                 (_g2400624089_
                                                  _g2400724093_)))))
                                       (_g2400624089_ _g2400724093_))
                                   (_g2400624089_ _g2400724093_)))))))
               (_loop2406124122_ _target2405824116_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400624089_
                                                      _g2400724093_)))))
                                           (_g2400624089_ _g2400724093_))
                                       (_g2400624089_ _g2400724093_))))
                               (_g2400624089_ _g2400724093_))))
                       (_g2400624089_ _g2400724093_)))))
            (let ((_g2400424362_
                   (lambda (_g2400724254_)
                     (if (gx#stx-pair? _g2400724254_)
                         (let ((_e2402824257_ (gx#syntax-e _g2400724254_)))
                           (let ((_hd2402924261_ (##car _e2402824257_))
                                 (_tl2403024264_ (##cdr _e2402824257_)))
                             (if (gx#stx-pair? _tl2403024264_)
                                 (let ((_e2403124267_
                                        (gx#syntax-e _tl2403024264_)))
                                   (let ((_hd2403224271_ (##car _e2403124267_))
                                         (_tl2403324274_
                                          (##cdr _e2403124267_)))
                                     (if (gx#stx-pair? _hd2403224271_)
                                         (let ((_e2403424277_
                                                (gx#syntax-e _hd2403224271_)))
                                           (let ((_hd2403524281_
                                                  (##car _e2403424277_))
                                                 (_tl2403624284_
                                                  (##cdr _e2403424277_)))
                                             (if (gx#stx-pair? _tl2403624284_)
                                                 (let ((_e2403724287_
                                                        (gx#syntax-e
                                                         _tl2403624284_)))
                                                   (let ((_hd2403824291_
                                                          (##car _e2403724287_))
                                                         (_tl2403924294_
                                                          (##cdr _e2403724287_)))
                                                     (if (gx#stx-null?
                                                          _tl2403924294_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2403324274_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2403324274_)
                               '0)
                         (let ((_g28460_
                                (gx#syntax-split-splice _tl2403324274_ '0)))
                           (begin
                             (let ((_g28461_ (values-count _g28460_)))
                               (if (not (fx= _g28461_ 2))
                                   (error "Context expects 2 values"
                                          _g28461_)))
                             (let ((_target2404024297_ (values-ref _g28460_ 0))
                                   (_tl2404224300_ (values-ref _g28460_ 1)))
                               (if (gx#stx-null? _tl2404224300_)
                                   (letrec ((_loop2404324303_
                                             (lambda (_hd2404124307_
                                                      _body2404724310_)
                                               (if (gx#stx-pair?
                                                    _hd2404124307_)
                                                   (let ((_e2404424313_
                                                          (gx#syntax-e
                                                           _hd2404124307_)))
                                                     (let ((_lp-hd2404524317_
                                                            (##car _e2404424313_))
                                                           (_lp-tl2404624320_
                                                            (##cdr _e2404424313_)))
                                                       (_loop2404324303_
                                                        _lp-tl2404624320_
                                                        (cons _lp-hd2404524317_
                                                              _body2404724310_))))
                                                   (let ((_body2404824323_
                                                          (reverse _body2404724310_)))
                                                     ((lambda (_L24327_
                                                               _L24329_
                                                               _L24330_
                                                               _L24331_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24330_)
                                                            (cons _L24331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24330_ (cons _L24329_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2435324356_ _g2435424359_)
                                           (cons _g2435324356_ _g2435424359_))
                                         '()
                                         _L24327_))))
                    (_g2400524250_ _g2400724254_)))
              _body2404824323_
              _hd2403824291_
              _hd2403524281_
              _hd2402924261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2404324303_ _target2404024297_ '()))
                                   (_g2400524250_ _g2400724254_)))))
                         (_g2400524250_ _g2400724254_))
                     (_g2400524250_ _g2400724254_))
                 (_g2400524250_ _g2400724254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2400524250_
                                                  _g2400724254_))))
                                         (_g2400524250_ _g2400724254_))))
                                 (_g2400524250_ _g2400724254_))))
                         (_g2400524250_ _g2400724254_)))))
              (let ((_g2400324444_
                     (lambda (_g2400724366_)
                       (if (gx#stx-pair? _g2400724366_)
                           (let ((_e2400924369_ (gx#syntax-e _g2400724366_)))
                             (let ((_hd2401024373_ (##car _e2400924369_))
                                   (_tl2401124376_ (##cdr _e2400924369_)))
                               (if (gx#stx-pair? _tl2401124376_)
                                   (let ((_e2401224379_
                                          (gx#syntax-e _tl2401124376_)))
                                     (let ((_hd2401324383_
                                            (##car _e2401224379_))
                                           (_tl2401424386_
                                            (##cdr _e2401224379_)))
                                       (if (gx#stx-null? _hd2401324383_)
                                           (if (gx#stx-pair/null?
                                                _tl2401424386_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2401424386_)
                                                         '0)
                                                   (let ((_g28462_
                                                          (gx#syntax-split-splice
                                                           _tl2401424386_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28463_
                                                              (values-count
                                                               _g28462_)))
                                                         (if (not (fx= _g28463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28463_)))
               (let ((_target2401524389_ (values-ref _g28462_ 0))
                     (_tl2401724392_ (values-ref _g28462_ 1)))
                 (if (gx#stx-null? _tl2401724392_)
                     (letrec ((_loop2401824395_
                               (lambda (_hd2401624399_ _body2402224402_)
                                 (if (gx#stx-pair? _hd2401624399_)
                                     (let ((_e2401924405_
                                            (gx#syntax-e _hd2401624399_)))
                                       (let ((_lp-hd2402024409_
                                              (##car _e2401924405_))
                                             (_lp-tl2402124412_
                                              (##cdr _e2401924405_)))
                                         (_loop2401824395_
                                          _lp-tl2402124412_
                                          (cons _lp-hd2402024409_
                                                _body2402224402_))))
                                     (let ((_body2402324415_
                                            (reverse _body2402224402_)))
                                       ((lambda (_L24419_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2443524438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2443624441_)
                         (cons _g2443524438_ _g2443624441_))
                       '()
                       _L24419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2402324415_))))))
                       (_loop2401824395_ _target2401524389_ '()))
                     (_g2400424362_ _g2400724366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2400424362_
                                                    _g2400724366_))
                                               (_g2400424362_ _g2400724366_))
                                           (_g2400424362_ _g2400724366_))))
                                   (_g2400424362_ _g2400724366_))))
                           (_g2400424362_ _g2400724366_)))))
                (_g2400324444_ _$stx24000_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24452_)
        (let ((_g2445724509_
               (lambda (_g2445824505_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2445824505_))))
          (let ((_g2445624592_
                 (lambda (_g2445824513_)
                   (if (gx#stx-pair? _g2445824513_)
                       (let ((_e2448924516_ (gx#syntax-e _g2445824513_)))
                         (let ((_hd2449024520_ (##car _e2448924516_))
                               (_tl2449124523_ (##cdr _e2448924516_)))
                           (if (gx#stx-pair? _tl2449124523_)
                               (let ((_e2449224526_
                                      (gx#syntax-e _tl2449124523_)))
                                 (let ((_hd2449324530_ (##car _e2449224526_))
                                       (_tl2449424533_ (##cdr _e2449224526_)))
                                   (if (gx#stx-null? _hd2449324530_)
                                       (if (gx#stx-pair/null? _tl2449424533_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2449424533_)
                                                     '0)
                                               (let ((_g28464_
                                                      (gx#syntax-split-splice
                                                       _tl2449424533_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28465_
                                                          (values-count
                                                           _g28464_)))
                                                     (if (not (fx= _g28465_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28465_)))
                                                   (let ((_target2449524536_
                                                          (values-ref
                                                           _g28464_
                                                           0))
                                                         (_tl2449724539_
                                                          (values-ref
                                                           _g28464_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2449724539_)
                                                         (letrec ((_loop2449824542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2449624546_ _body2450224549_)
                             (if (gx#stx-pair? _hd2449624546_)
                                 (let ((_e2449924552_
                                        (gx#syntax-e _hd2449624546_)))
                                   (let ((_lp-hd2450024556_
                                          (##car _e2449924552_))
                                         (_lp-tl2450124559_
                                          (##cdr _e2449924552_)))
                                     (_loop2449824542_
                                      _lp-tl2450124559_
                                      (cons _lp-hd2450024556_
                                            _body2450224549_))))
                                 (let ((_body2450324562_
                                        (reverse _body2450224549_)))
                                   ((lambda (_L24566_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2458324586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2458424589_)
                     (cons _g2458324586_ _g2458424589_))
                   '()
                   _L24566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2450324562_))))))
                   (_loop2449824542_ _target2449524536_ '()))
                 (_g2445724509_ _g2445824513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2445724509_ _g2445824513_))
                                           (_g2445724509_ _g2445824513_))
                                       (_g2445724509_ _g2445824513_))))
                               (_g2445724509_ _g2445824513_))))
                       (_g2445724509_ _g2445824513_)))))
            (let ((_g2445524718_
                   (lambda (_g2445824596_)
                     (if (gx#stx-pair? _g2445824596_)
                         (let ((_e2446424599_ (gx#syntax-e _g2445824596_)))
                           (let ((_hd2446524603_ (##car _e2446424599_))
                                 (_tl2446624606_ (##cdr _e2446424599_)))
                             (if (gx#stx-pair? _tl2446624606_)
                                 (let ((_e2446724609_
                                        (gx#syntax-e _tl2446624606_)))
                                   (let ((_hd2446824613_ (##car _e2446724609_))
                                         (_tl2446924616_
                                          (##cdr _e2446724609_)))
                                     (if (gx#stx-pair? _hd2446824613_)
                                         (let ((_e2447024619_
                                                (gx#syntax-e _hd2446824613_)))
                                           (let ((_hd2447124623_
                                                  (##car _e2447024619_))
                                                 (_tl2447224626_
                                                  (##cdr _e2447024619_)))
                                             (if (gx#stx-pair? _hd2447124623_)
                                                 (let ((_e2447324629_
                                                        (gx#syntax-e
                                                         _hd2447124623_)))
                                                   (let ((_hd2447424633_
                                                          (##car _e2447324629_))
                                                         (_tl2447524636_
                                                          (##cdr _e2447324629_)))
                                                     (if (gx#stx-pair?
                                                          _tl2447524636_)
                                                         (let ((_e2447624639_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2447524636_)))
                   (let ((_hd2447724643_ (##car _e2447624639_))
                         (_tl2447824646_ (##cdr _e2447624639_)))
                     (if (gx#stx-null? _tl2447824646_)
                         (if (gx#stx-pair/null? _tl2446924616_)
                             (if (fx>= (gx#stx-length _tl2446924616_) '0)
                                 (let ((_g28466_
                                        (gx#syntax-split-splice
                                         _tl2446924616_
                                         '0)))
                                   (begin
                                     (let ((_g28467_ (values-count _g28466_)))
                                       (if (not (fx= _g28467_ 2))
                                           (error "Context expects 2 values"
                                                  _g28467_)))
                                     (let ((_target2447924649_
                                            (values-ref _g28466_ 0))
                                           (_tl2448124652_
                                            (values-ref _g28466_ 1)))
                                       (if (gx#stx-null? _tl2448124652_)
                                           (letrec ((_loop2448224655_
                                                     (lambda (_hd2448024659_
                                                              _body2448624662_)
                                                       (if (gx#stx-pair?
                                                            _hd2448024659_)
                                                           (let ((_e2448324665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2448024659_)))
                     (let ((_lp-hd2448424669_ (##car _e2448324665_))
                           (_lp-tl2448524672_ (##cdr _e2448324665_)))
                       (_loop2448224655_
                        _lp-tl2448524672_
                        (cons _lp-hd2448424669_ _body2448624662_))))
                   (let ((_body2448724675_ (reverse _body2448624662_)))
                     ((lambda (_L24679_ _L24681_ _L24682_ _L24683_ _L24684_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24683_ (cons _L24682_ '()))
                                          '())
                                    (cons (cons _L24684_
                                                (cons _L24681_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2470924712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2471024715_)
                         (cons _g2470924712_ _g2471024715_))
                       '()
                       _L24679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2448724675_
                      _tl2447224626_
                      _hd2447724643_
                      _hd2447424633_
                      _hd2446524603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2448224655_
                                              _target2447924649_
                                              '()))
                                           (_g2445624592_ _g2445824596_)))))
                                 (_g2445624592_ _g2445824596_))
                             (_g2445624592_ _g2445824596_))
                         (_g2445624592_ _g2445824596_))))
                 (_g2445624592_ _g2445824596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2445624592_
                                                  _g2445824596_))))
                                         (_g2445624592_ _g2445824596_))))
                                 (_g2445624592_ _g2445824596_))))
                         (_g2445624592_ _g2445824596_)))))
              (_g2445524718_ _$stx24452_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24724_)
        (let ((_g2473524879_
               (lambda (_g2473624875_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2473624875_))))
          (let ((_g2473424974_
                 (lambda (_g2473624883_)
                   (if (gx#stx-pair? _g2473624883_)
                       (let ((_e2485624886_ (gx#syntax-e _g2473624883_)))
                         (let ((_hd2485724890_ (##car _e2485624886_))
                               (_tl2485824893_ (##cdr _e2485624886_)))
                           (if (gx#stx-pair? _tl2485824893_)
                               (let ((_e2485924896_
                                      (gx#syntax-e _tl2485824893_)))
                                 (let ((_hd2486024900_ (##car _e2485924896_))
                                       (_tl2486124903_ (##cdr _e2485924896_)))
                                   (if (gx#stx-pair? _tl2486124903_)
                                       (let ((_e2486224906_
                                              (gx#syntax-e _tl2486124903_)))
                                         (let ((_hd2486324910_
                                                (##car _e2486224906_))
                                               (_tl2486424913_
                                                (##cdr _e2486224906_)))
                                           (if (gx#stx-datum? _hd2486324910_)
                                               (if (equal? (gx#stx-e
                                                            _hd2486324910_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2486424913_)
                                                       (let ((_e2486524916_
                                                              (gx#syntax-e
                                                               _tl2486424913_)))
                                                         (let ((_hd2486624920_
                                                                (##car _e2486524916_))
                                                               (_tl2486724923_
                                                                (##cdr _e2486524916_)))
                                                           (if (gx#stx-pair?
                                                                _tl2486724923_)
                                                               (let ((_e2486824926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2486724923_)))
                         (let ((_hd2486924930_ (##car _e2486824926_))
                               (_tl2487024933_ (##cdr _e2486824926_)))
                           (if (gx#identifier? _hd2486924930_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g28468_|
                                    _hd2486924930_)
                                   (if (gx#stx-pair? _tl2487024933_)
                                       (let ((_e2487124936_
                                              (gx#syntax-e _tl2487024933_)))
                                         (let ((_hd2487224940_
                                                (##car _e2487124936_))
                                               (_tl2487324943_
                                                (##cdr _e2487124936_)))
                                           (if (gx#stx-null? _tl2487324943_)
                                               ((lambda (_L24946_
                                                         _L24948_
                                                         _L24949_
                                                         _L24950_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L24950_
                                              (cons _L24949_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L24946_
                                                    (cons (cons _L24948_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '$obj)
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2487224940_
                                                _hd2486624920_
                                                _hd2486024900_
                                                _hd2485724890_)
                                               (_g2473524879_ _g2473624883_))))
                                       (_g2473524879_ _g2473624883_))
                                   (_g2473524879_ _g2473624883_))
                               (_g2473524879_ _g2473624883_))))
                       (_g2473524879_ _g2473624883_))))
               (_g2473524879_ _g2473624883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473524879_
                                                    _g2473624883_))
                                               (_g2473524879_ _g2473624883_))))
                                       (_g2473524879_ _g2473624883_))))
                               (_g2473524879_ _g2473624883_))))
                       (_g2473524879_ _g2473624883_)))))
            (let ((_g2473325042_
                   (lambda (_g2473624978_)
                     (if (gx#stx-pair? _g2473624978_)
                         (let ((_e2484024981_ (gx#syntax-e _g2473624978_)))
                           (let ((_hd2484124985_ (##car _e2484024981_))
                                 (_tl2484224988_ (##cdr _e2484024981_)))
                             (if (gx#stx-pair? _tl2484224988_)
                                 (let ((_e2484324991_
                                        (gx#syntax-e _tl2484224988_)))
                                   (let ((_hd2484424995_ (##car _e2484324991_))
                                         (_tl2484524998_
                                          (##cdr _e2484324991_)))
                                     (if (gx#stx-pair? _tl2484524998_)
                                         (let ((_e2484625001_
                                                (gx#syntax-e _tl2484524998_)))
                                           (let ((_hd2484725005_
                                                  (##car _e2484625001_))
                                                 (_tl2484825008_
                                                  (##cdr _e2484625001_)))
                                             (if (gx#stx-datum? _hd2484725005_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2484725005_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2484825008_)
                                                         (let ((_e2484925011_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2484825008_)))
                   (let ((_hd2485025015_ (##car _e2484925011_))
                         (_tl2485125018_ (##cdr _e2484925011_)))
                     (if (gx#stx-null? _tl2485125018_)
                         ((lambda (_L25021_ _L25023_ _L25024_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25024_
                                    (cons _L25023_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25021_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2485025015_
                          _hd2484424995_
                          _hd2484124985_)
                         (_g2473424974_ _g2473624978_))))
                 (_g2473424974_ _g2473624978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2473424974_
                                                      _g2473624978_))
                                                 (_g2473424974_
                                                  _g2473624978_))))
                                         (_g2473424974_ _g2473624978_))))
                                 (_g2473424974_ _g2473624978_))))
                         (_g2473424974_ _g2473624978_)))))
              (let ((_g2473225110_
                     (lambda (_g2473625046_)
                       (if (gx#stx-pair? _g2473625046_)
                           (let ((_e2482525049_ (gx#syntax-e _g2473625046_)))
                             (let ((_hd2482625053_ (##car _e2482525049_))
                                   (_tl2482725056_ (##cdr _e2482525049_)))
                               (if (gx#stx-pair? _tl2482725056_)
                                   (let ((_e2482825059_
                                          (gx#syntax-e _tl2482725056_)))
                                     (let ((_hd2482925063_
                                            (##car _e2482825059_))
                                           (_tl2483025066_
                                            (##cdr _e2482825059_)))
                                       (if (gx#stx-pair? _tl2483025066_)
                                           (let ((_e2483125069_
                                                  (gx#syntax-e
                                                   _tl2483025066_)))
                                             (let ((_hd2483225073_
                                                    (##car _e2483125069_))
                                                   (_tl2483325076_
                                                    (##cdr _e2483125069_)))
                                               (if (gx#identifier?
                                                    _hd2483225073_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g28469_|
                                                        _hd2483225073_)
                                                       (if (gx#stx-pair?
                                                            _tl2483325076_)
                                                           (let ((_e2483425079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2483325076_)))
                     (let ((_hd2483525083_ (##car _e2483425079_))
                           (_tl2483625086_ (##cdr _e2483425079_)))
                       (if (gx#stx-null? _tl2483625086_)
                           ((lambda (_L25089_ _L25091_ _L25092_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25091_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25089_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2483525083_
                            _hd2482925063_
                            _hd2482625053_)
                           (_g2473325042_ _g2473625046_))))
                   (_g2473325042_ _g2473625046_))
               (_g2473325042_ _g2473625046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473325042_
                                                    _g2473625046_))))
                                           (_g2473325042_ _g2473625046_))))
                                   (_g2473325042_ _g2473625046_))))
                           (_g2473325042_ _g2473625046_)))))
                (let ((_g2473125152_
                       (lambda (_g2473625114_)
                         (if (gx#stx-pair? _g2473625114_)
                             (let ((_e2481625117_ (gx#syntax-e _g2473625114_)))
                               (let ((_hd2481725121_ (##car _e2481625117_))
                                     (_tl2481825124_ (##cdr _e2481625117_)))
                                 (if (gx#stx-pair? _tl2481825124_)
                                     (let ((_e2481925127_
                                            (gx#syntax-e _tl2481825124_)))
                                       (let ((_hd2482025131_
                                              (##car _e2481925127_))
                                             (_tl2482125134_
                                              (##cdr _e2481925127_)))
                                         (if (gx#stx-null? _tl2482125134_)
                                             ((lambda (_L25137_ _L25139_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25139_
                                (cons _L25137_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2482025131_
                                              _hd2481725121_)
                                             (_g2473225110_ _g2473625114_))))
                                     (_g2473225110_ _g2473625114_))))
                             (_g2473225110_ _g2473625114_)))))
                  (let ((_g2473025206_
                         (lambda (_g2473625156_)
                           (if (gx#stx-pair? _g2473625156_)
                               (let ((_e2480525159_
                                      (gx#syntax-e _g2473625156_)))
                                 (let ((_hd2480625163_ (##car _e2480525159_))
                                       (_tl2480725166_ (##cdr _e2480525159_)))
                                   (if (gx#stx-pair? _tl2480725166_)
                                       (let ((_e2480825169_
                                              (gx#syntax-e _tl2480725166_)))
                                         (let ((_hd2480925173_
                                                (##car _e2480825169_))
                                               (_tl2481025176_
                                                (##cdr _e2480825169_)))
                                           (if (gx#stx-pair? _tl2481025176_)
                                               (let ((_e2481125179_
                                                      (gx#syntax-e
                                                       _tl2481025176_)))
                                                 (let ((_hd2481225183_
                                                        (##car _e2481125179_))
                                                       (_tl2481325186_
                                                        (##cdr _e2481125179_)))
                                                   (if (gx#stx-null?
                                                        _tl2481325186_)
                                                       ((lambda (_L25189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25191_)
                  (cons _L25191_ (cons _L25189_ '())))
                _hd2481225183_
                _hd2480925173_)
               (_g2473125152_ _g2473625156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2473125152_ _g2473625156_))))
                                       (_g2473125152_ _g2473625156_))))
                               (_g2473125152_ _g2473625156_)))))
                    (let ((_g2472925286_
                           (lambda (_g2473625210_)
                             (if (gx#stx-pair? _g2473625210_)
                                 (let ((_e2478825213_
                                        (gx#syntax-e _g2473625210_)))
                                   (let ((_hd2478925217_ (##car _e2478825213_))
                                         (_tl2479025220_
                                          (##cdr _e2478825213_)))
                                     (if (gx#stx-pair? _tl2479025220_)
                                         (let ((_e2479125223_
                                                (gx#syntax-e _tl2479025220_)))
                                           (let ((_hd2479225227_
                                                  (##car _e2479125223_))
                                                 (_tl2479325230_
                                                  (##cdr _e2479125223_)))
                                             (if (gx#stx-pair? _hd2479225227_)
                                                 (let ((_e2479425233_
                                                        (gx#syntax-e
                                                         _hd2479225227_)))
                                                   (let ((_hd2479525237_
                                                          (##car _e2479425233_))
                                                         (_tl2479625240_
                                                          (##cdr _e2479425233_)))
                                                     (if (gx#identifier?
                                                          _hd2479525237_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g28470_|
                                                              _hd2479525237_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2479625240_)
                         (let ((_e2479725243_ (gx#syntax-e _tl2479625240_)))
                           (let ((_hd2479825247_ (##car _e2479725243_))
                                 (_tl2479925250_ (##cdr _e2479725243_)))
                             (if (gx#stx-null? _tl2479925250_)
                                 (if (gx#stx-pair? _tl2479325230_)
                                     (let ((_e2480025253_
                                            (gx#syntax-e _tl2479325230_)))
                                       (let ((_hd2480125257_
                                              (##car _e2480025253_))
                                             (_tl2480225260_
                                              (##cdr _e2480025253_)))
                                         (if (gx#stx-null? _tl2480225260_)
                                             ((lambda (_L25263_
                                                       _L25265_
                                                       _L25266_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25265_ (cons _L25263_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2480125257_
                                              _hd2479825247_
                                              _hd2478925217_)
                                             (_g2473025206_ _g2473625210_))))
                                     (_g2473025206_ _g2473625210_))
                                 (_g2473025206_ _g2473625210_))))
                         (_g2473025206_ _g2473625210_))
                     (_g2473025206_ _g2473625210_))
                 (_g2473025206_ _g2473625210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2473025206_
                                                  _g2473625210_))))
                                         (_g2473025206_ _g2473625210_))))
                                 (_g2473025206_ _g2473625210_)))))
                      (let ((_g2472825396_
                             (lambda (_g2473625290_)
                               (if (gx#stx-pair? _g2473625290_)
                                   (let ((_e2476425293_
                                          (gx#syntax-e _g2473625290_)))
                                     (let ((_hd2476525297_
                                            (##car _e2476425293_))
                                           (_tl2476625300_
                                            (##cdr _e2476425293_)))
                                       (if (gx#stx-pair? _tl2476625300_)
                                           (let ((_e2476725303_
                                                  (gx#syntax-e
                                                   _tl2476625300_)))
                                             (let ((_hd2476825307_
                                                    (##car _e2476725303_))
                                                   (_tl2476925310_
                                                    (##cdr _e2476725303_)))
                                               (if (gx#stx-pair?
                                                    _hd2476825307_)
                                                   (let ((_e2477025313_
                                                          (gx#syntax-e
                                                           _hd2476825307_)))
                                                     (let ((_hd2477125317_
                                                            (##car _e2477025313_))
                                                           (_tl2477225320_
                                                            (##cdr _e2477025313_)))
                                                       (if (gx#identifier?
                                                            _hd2477125317_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g28471_|
                                                                _hd2477125317_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2477225320_)
                           (if (fx>= (gx#stx-length _tl2477225320_) '0)
                               (let ((_g28472_
                                      (gx#syntax-split-splice
                                       _tl2477225320_
                                       '0)))
                                 (begin
                                   (let ((_g28473_ (values-count _g28472_)))
                                     (if (not (fx= _g28473_ 2))
                                         (error "Context expects 2 values"
                                                _g28473_)))
                                   (let ((_target2477325323_
                                          (values-ref _g28472_ 0))
                                         (_tl2477525326_
                                          (values-ref _g28472_ 1)))
                                     (if (gx#stx-null? _tl2477525326_)
                                         (letrec ((_loop2477625329_
                                                   (lambda (_hd2477425333_
                                                            _pred2478025336_)
                                                     (if (gx#stx-pair?
                                                          _hd2477425333_)
                                                         (let ((_e2477725339_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2477425333_)))
                   (let ((_lp-hd2477825343_ (##car _e2477725339_))
                         (_lp-tl2477925346_ (##cdr _e2477725339_)))
                     (_loop2477625329_
                      _lp-tl2477925346_
                      (cons _lp-hd2477825343_ _pred2478025336_))))
                 (let ((_pred2478125349_ (reverse _pred2478025336_)))
                   (if (gx#stx-pair? _tl2476925310_)
                       (let ((_e2478225353_ (gx#syntax-e _tl2476925310_)))
                         (let ((_hd2478325357_ (##car _e2478225353_))
                               (_tl2478425360_ (##cdr _e2478225353_)))
                           (if (gx#stx-null? _tl2478425360_)
                               ((lambda (_L25363_ _L25365_ _L25366_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2538725390_
                                                          _g2538825393_)
                                                   (cons (cons _L25366_
                                                               (cons _g2538725390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25363_ '())))
                 _g2538825393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25365_))))
                                _hd2478325357_
                                _pred2478125349_
                                _hd2476525297_)
                               (_g2472925286_ _g2473625290_))))
                       (_g2472925286_ _g2473625290_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2477625329_
                                            _target2477325323_
                                            '()))
                                         (_g2472925286_ _g2473625290_)))))
                               (_g2472925286_ _g2473625290_))
                           (_g2472925286_ _g2473625290_))
                       (_g2472925286_ _g2473625290_))
                   (_g2472925286_ _g2473625290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2472925286_
                                                    _g2473625290_))))
                                           (_g2472925286_ _g2473625290_))))
                                   (_g2472925286_ _g2473625290_)))))
                        (let ((_g2472725506_
                               (lambda (_g2473625400_)
                                 (if (gx#stx-pair? _g2473625400_)
                                     (let ((_e2474025403_
                                            (gx#syntax-e _g2473625400_)))
                                       (let ((_hd2474125407_
                                              (##car _e2474025403_))
                                             (_tl2474225410_
                                              (##cdr _e2474025403_)))
                                         (if (gx#stx-pair? _tl2474225410_)
                                             (let ((_e2474325413_
                                                    (gx#syntax-e
                                                     _tl2474225410_)))
                                               (let ((_hd2474425417_
                                                      (##car _e2474325413_))
                                                     (_tl2474525420_
                                                      (##cdr _e2474325413_)))
                                                 (if (gx#stx-pair?
                                                      _hd2474425417_)
                                                     (let ((_e2474625423_
                                                            (gx#syntax-e
                                                             _hd2474425417_)))
                                                       (let ((_hd2474725427_
                                                              (##car _e2474625423_))
                                                             (_tl2474825430_
                                                              (##cdr _e2474625423_)))
                                                         (if (gx#identifier?
                                                              _hd2474725427_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g28474_|
                          _hd2474725427_)
                         (if (gx#stx-pair/null? _tl2474825430_)
                             (if (fx>= (gx#stx-length _tl2474825430_) '0)
                                 (let ((_g28475_
                                        (gx#syntax-split-splice
                                         _tl2474825430_
                                         '0)))
                                   (begin
                                     (let ((_g28476_ (values-count _g28475_)))
                                       (if (not (fx= _g28476_ 2))
                                           (error "Context expects 2 values"
                                                  _g28476_)))
                                     (let ((_target2474925433_
                                            (values-ref _g28475_ 0))
                                           (_tl2475125436_
                                            (values-ref _g28475_ 1)))
                                       (if (gx#stx-null? _tl2475125436_)
                                           (letrec ((_loop2475225439_
                                                     (lambda (_hd2475025443_
                                                              _pred2475625446_)
                                                       (if (gx#stx-pair?
                                                            _hd2475025443_)
                                                           (let ((_e2475325449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2475025443_)))
                     (let ((_lp-hd2475425453_ (##car _e2475325449_))
                           (_lp-tl2475525456_ (##cdr _e2475325449_)))
                       (_loop2475225439_
                        _lp-tl2475525456_
                        (cons _lp-hd2475425453_ _pred2475625446_))))
                   (let ((_pred2475725459_ (reverse _pred2475625446_)))
                     (if (gx#stx-pair? _tl2474525420_)
                         (let ((_e2475825463_ (gx#syntax-e _tl2474525420_)))
                           (let ((_hd2475925467_ (##car _e2475825463_))
                                 (_tl2476025470_ (##cdr _e2475825463_)))
                             (if (gx#stx-null? _tl2476025470_)
                                 ((lambda (_L25473_ _L25475_ _L25476_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2549725500_
                                                            _g2549825503_)
                                                     (cons (cons _L25476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2549725500_ (cons _L25473_ '())))
                   _g2549825503_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25475_))))
                                  _hd2475925467_
                                  _pred2475725459_
                                  _hd2474125407_)
                                 (_g2472825396_ _g2473625400_))))
                         (_g2472825396_ _g2473625400_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2475225439_
                                              _target2474925433_
                                              '()))
                                           (_g2472825396_ _g2473625400_)))))
                                 (_g2472825396_ _g2473625400_))
                             (_g2472825396_ _g2473625400_))
                         (_g2472825396_ _g2473625400_))
                     (_g2472825396_ _g2473625400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2472825396_
                                                      _g2473625400_))))
                                             (_g2472825396_ _g2473625400_))))
                                     (_g2472825396_ _g2473625400_)))))
                          (_g2472725506_ _$stx24724_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25512_)
        (let ((_g2551725551_
               (lambda (_g2551825547_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2551825547_))))
          (let ((_g2551625608_
                 (lambda (_g2551825555_)
                   (if (gx#stx-pair? _g2551825555_)
                       (let ((_e2553725558_ (gx#syntax-e _g2551825555_)))
                         (let ((_hd2553825562_ (##car _e2553725558_))
                               (_tl2553925565_ (##cdr _e2553725558_)))
                           (if (gx#stx-pair? _tl2553925565_)
                               (let ((_e2554025568_
                                      (gx#syntax-e _tl2553925565_)))
                                 (let ((_hd2554125572_ (##car _e2554025568_))
                                       (_tl2554225575_ (##cdr _e2554025568_)))
                                   (if (gx#stx-pair? _tl2554225575_)
                                       (let ((_e2554325578_
                                              (gx#syntax-e _tl2554225575_)))
                                         (let ((_hd2554425582_
                                                (##car _e2554325578_))
                                               (_tl2554525585_
                                                (##cdr _e2554325578_)))
                                           (if (gx#stx-null? _tl2554525585_)
                                               ((lambda (_L25588_
                                                         _L25590_
                                                         _L25591_)
                                                  (cons _L25591_
                                                        (cons _L25590_
                                                              (cons _L25588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '$stx)
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2554425582_
                                                _hd2554125572_
                                                _hd2553825562_)
                                               (_g2551725551_ _g2551825555_))))
                                       (_g2551725551_ _g2551825555_))))
                               (_g2551725551_ _g2551825555_))))
                       (_g2551725551_ _g2551825555_)))))
            (let ((_g2551525676_
                   (lambda (_g2551825612_)
                     (if (gx#stx-pair? _g2551825612_)
                         (let ((_e2552225615_ (gx#syntax-e _g2551825612_)))
                           (let ((_hd2552325619_ (##car _e2552225615_))
                                 (_tl2552425622_ (##cdr _e2552225615_)))
                             (if (gx#stx-pair? _tl2552425622_)
                                 (let ((_e2552525625_
                                        (gx#syntax-e _tl2552425622_)))
                                   (let ((_hd2552625629_ (##car _e2552525625_))
                                         (_tl2552725632_
                                          (##cdr _e2552525625_)))
                                     (if (gx#stx-pair? _tl2552725632_)
                                         (let ((_e2552825635_
                                                (gx#syntax-e _tl2552725632_)))
                                           (let ((_hd2552925639_
                                                  (##car _e2552825635_))
                                                 (_tl2553025642_
                                                  (##cdr _e2552825635_)))
                                             (if (gx#stx-pair? _tl2553025642_)
                                                 (let ((_e2553125645_
                                                        (gx#syntax-e
                                                         _tl2553025642_)))
                                                   (let ((_hd2553225649_
                                                          (##car _e2553125645_))
                                                         (_tl2553325652_
                                                          (##cdr _e2553125645_)))
                                                     (if (gx#stx-null?
                                                          _tl2553325652_)
                                                         ((lambda (_L25655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25657_
                           _L25658_)
                    (if (gx#identifier? _L25658_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25658_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25657_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25655_ '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons '()
                                  (cons (cons (cons 'match:
                                                    (gx#datum->syntax
                                                     '#f
                                                     'body))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-apply-expander)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$match-e)
                        (cons (cons (gx#datum->syntax '#f 'stx-wrap-source)
                                    (cons (cons (gx#datum->syntax '#f 'syntax)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'body)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-source)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '$stx)
                                                            '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f '_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-apply-expander)
                        (cons (gx#datum->syntax '#f '$macro-e)
                              (cons (gx#datum->syntax '#f '$stx) '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_g2551625608_ _g2551825612_)))
                  _hd2553225649_
                  _hd2552925639_
                  _hd2552625629_)
                 (_g2551625608_ _g2551825612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2551625608_
                                                  _g2551825612_))))
                                         (_g2551625608_ _g2551825612_))))
                                 (_g2551625608_ _g2551825612_))))
                         (_g2551625608_ _g2551825612_)))))
              (_g2551525676_ _$stx25512_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25680_)
        (let ((_g2568425699_
               (lambda (_g2568525695_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2568525695_))))
          (let ((_g2568325742_
                 (lambda (_g2568525703_)
                   (if (gx#stx-pair? _g2568525703_)
                       (let ((_e2568825706_ (gx#syntax-e _g2568525703_)))
                         (let ((_hd2568925710_ (##car _e2568825706_))
                               (_tl2569025713_ (##cdr _e2568825706_)))
                           (if (gx#stx-pair? _tl2569025713_)
                               (let ((_e2569125716_
                                      (gx#syntax-e _tl2569025713_)))
                                 (let ((_hd2569225720_ (##car _e2569125716_))
                                       (_tl2569325723_ (##cdr _e2569125716_)))
                                   ((lambda (_L25726_ _L25728_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25728_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25726_)
                                                        '()))))
                                    _tl2569325723_
                                    _hd2569225720_)))
                               (_g2568425699_ _g2568525703_))))
                       (_g2568425699_ _g2568525703_)))))
            (_g2568325742_ _$stx25680_)))))))
