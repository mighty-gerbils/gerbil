(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g31714_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31715_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31716_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31719_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31720_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31721_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31722_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31723_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31724_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31725_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31726_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31727_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31728_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31729_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31730_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31731_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31740_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31745_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31746_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31747_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31764_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31765_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31766_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31767_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31770_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args25353_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args25353_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx25350_)
        (if (gx#identifier? _stx25350_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx25350_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2366625336_
             (lambda (_stx23668_ _match-stx23670_)
               (letrec ((_parse123672_
                         (lambda (_hd24019_)
                           (let* ((_g2404524187_
                                   (lambda (_g2404624183_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2404624183_)))
                                  (_g2404424198_
                                   (lambda (_g2404624191_)
                                     ((lambda ()
                                        (_parse-error23679_ _hd24019_)))))
                                  (_g2404324216_
                                   (lambda (_g2404624202_)
                                     ((lambda (_L24205_)
                                        (if (gx#stx-datum? _L24205_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L24205_)
                                                        '()))
                                            (_g2404424198_ _g2404624202_)))
                                      _g2404624202_)))
                                  (_g2404224232_
                                   (lambda (_g2404624220_)
                                     ((lambda (_L24223_)
                                        (if (if (gx#identifier? _L24223_)
                                                (not (gx#ellipsis? _L24223_))
                                                '#f)
                                            (cons 'var: (cons _L24223_ '()))
                                            (_g2404324216_ _g2404624220_)))
                                      _g2404624220_)))
                                  (_g2404124248_
                                   (lambda (_g2404624236_)
                                     ((lambda (_L24239_)
                                        (if (gx#underscore? _L24239_)
                                            (cons 'any: '())
                                            (_g2404224232_ _g2404624236_)))
                                      _g2404624236_)))
                                  (_g2404024280_
                                   (lambda (_g2404624252_)
                                     (if (gx#stx-pair? _g2404624252_)
                                         (let ((_e2417624255_
                                                (gx#syntax-e _g2404624252_)))
                                           (let ((_hd2417724259_
                                                  (##car _e2417624255_))
                                                 (_tl2417824262_
                                                  (##cdr _e2417624255_)))
                                             ((lambda (_L24265_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L24265_)
                                                    (_parse123672_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L24265_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd24019_)
                                                       (let ((_$e24276_
                                                              (gx#stx-source
                                                               _hd24019_)))
                                                         (if _$e24276_
                                                             _$e24276_
                                                             (gx#stx-source
                                                              _stx23668_))))))
                                                    (_g2404124248_
                                                     _g2404624252_)))
                                              _hd2417724259_)))
                                         (_g2404124248_ _g2404624252_))))
                                  (_g2403924334_
                                   (lambda (_g2404624284_)
                                     (if (gx#stx-pair? _g2404624284_)
                                         (let ((_e2416624287_
                                                (gx#syntax-e _g2404624284_)))
                                           (let ((_hd2416724291_
                                                  (##car _e2416624287_))
                                                 (_tl2416824294_
                                                  (##cdr _e2416624287_)))
                                             (if (gx#identifier?
                                                  _hd2416724291_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31714_|
                                                      _hd2416724291_)
                                                     (if (gx#stx-pair?
                                                          _tl2416824294_)
                                                         (let ((_e2416924297_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2416824294_)))
                   (let ((_hd2417024301_ (##car _e2416924297_))
                         (_tl2417124304_ (##cdr _e2416924297_)))
                     (if (gx#stx-pair? _tl2417124304_)
                         (let ((_e2417224307_ (gx#syntax-e _tl2417124304_)))
                           (let ((_hd2417324311_ (##car _e2417224307_))
                                 (_tl2417424314_ (##cdr _e2417224307_)))
                             (if (gx#stx-null? _tl2417424314_)
                                 ((lambda (_L24317_ _L24319_)
                                    (cons 'apply:
                                          (cons _L24319_
                                                (cons (_parse123672_ _L24317_)
                                                      '()))))
                                  _hd2417324311_
                                  _hd2417024301_)
                                 (_g2404024280_ _g2404624284_))))
                         (_g2404024280_ _g2404624284_))))
                 (_g2404024280_ _g2404624284_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2404024280_
                                                      _g2404624284_))
                                                 (_g2404024280_
                                                  _g2404624284_))))
                                         (_g2404024280_ _g2404624284_))))
                                  (_g2403824374_
                                   (lambda (_g2404624338_)
                                     (if (gx#stx-pair? _g2404624338_)
                                         (let ((_e2415824341_
                                                (gx#syntax-e _g2404624338_)))
                                           (let ((_hd2415924345_
                                                  (##car _e2415824341_))
                                                 (_tl2416024348_
                                                  (##cdr _e2415824341_)))
                                             (if (gx#identifier?
                                                  _hd2415924345_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31715_|
                                                      _hd2415924345_)
                                                     (if (gx#stx-pair?
                                                          _tl2416024348_)
                                                         (let ((_e2416124351_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2416024348_)))
                   (let ((_hd2416224355_ (##car _e2416124351_))
                         (_tl2416324358_ (##cdr _e2416124351_)))
                     (if (gx#stx-null? _tl2416324358_)
                         ((lambda (_L24361_) (_parse-qq23678_ _L24361_))
                          _hd2416224355_)
                         (_g2403924334_ _g2404624338_))))
                 (_g2403924334_ _g2404624338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403924334_
                                                      _g2404624338_))
                                                 (_g2403924334_
                                                  _g2404624338_))))
                                         (_g2403924334_ _g2404624338_))))
                                  (_g2403724414_
                                   (lambda (_g2404624378_)
                                     (if (gx#stx-pair? _g2404624378_)
                                         (let ((_e2415124381_
                                                (gx#syntax-e _g2404624378_)))
                                           (let ((_hd2415224385_
                                                  (##car _e2415124381_))
                                                 (_tl2415324388_
                                                  (##cdr _e2415124381_)))
                                             (if (gx#identifier?
                                                  _hd2415224385_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31716_|
                                                      _hd2415224385_)
                                                     (if (gx#stx-pair?
                                                          _tl2415324388_)
                                                         (let ((_e2415424391_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2415324388_)))
                   (let ((_hd2415524395_ (##car _e2415424391_))
                         (_tl2415624398_ (##cdr _e2415424391_)))
                     (if (gx#stx-null? _tl2415624398_)
                         ((lambda (_L24401_)
                            (cons 'datum: (cons (gx#stx-e _L24401_) '())))
                          _hd2415524395_)
                         (_g2403824374_ _g2404624378_))))
                 (_g2403824374_ _g2404624378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403824374_
                                                      _g2404624378_))
                                                 (_g2403824374_
                                                  _g2404624378_))))
                                         (_g2403824374_ _g2404624378_))))
                                  (_g2403624464_
                                   (lambda (_g2404624418_)
                                     (if (gx#stx-pair? _g2404624418_)
                                         (let ((_e2414424421_
                                                (gx#syntax-e _g2404624418_)))
                                           (let ((_hd2414524425_
                                                  (##car _e2414424421_))
                                                 (_tl2414624428_
                                                  (##cdr _e2414424421_)))
                                             (if (gx#stx-pair? _tl2414624428_)
                                                 (let ((_e2414724431_
                                                        (gx#syntax-e
                                                         _tl2414624428_)))
                                                   (let ((_hd2414824435_
                                                          (##car _e2414724431_))
                                                         (_tl2414924438_
                                                          (##cdr _e2414724431_)))
                                                     (if (gx#stx-null?
                                                          _tl2414924438_)
                                                         ((lambda (_L24441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24443_)
                    (if (if (gx#identifier? _L24443_)
                            (let ((_$e24456_
                                   (gx#free-identifier=?
                                    _L24443_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e24456_
                                  _$e24456_
                                  (let ((_$e24460_
                                         (gx#free-identifier=?
                                          _L24443_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e24460_
                                        _$e24460_
                                        (gx#free-identifier=?
                                         _L24443_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L24443_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L24441_ '()))))
                                    '()))
                        (_g2403724414_ _g2404624418_)))
                  _hd2414824435_
                  _hd2414524425_)
                 (_g2403724414_ _g2404624418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2403724414_
                                                  _g2404624418_))))
                                         (_g2403724414_ _g2404624418_))))
                                  (_g2403524494_
                                   (lambda (_g2404624468_)
                                     (if (gx#stx-pair? _g2404624468_)
                                         (let ((_e2413924471_
                                                (gx#syntax-e _g2404624468_)))
                                           (let ((_hd2414024475_
                                                  (##car _e2413924471_))
                                                 (_tl2414124478_
                                                  (##cdr _e2413924471_)))
                                             ((lambda (_L24481_ _L24483_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L24483_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24483_)
                        (cons (_parse-class-body23677_ _L24481_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2403624464_
                                                     _g2404624468_)))
                                              _tl2414124478_
                                              _hd2414024475_)))
                                         (_g2403624464_ _g2404624468_))))
                                  (_g2403424524_
                                   (lambda (_g2404624498_)
                                     (if (gx#stx-pair? _g2404624498_)
                                         (let ((_e2413424501_
                                                (gx#syntax-e _g2404624498_)))
                                           (let ((_hd2413524505_
                                                  (##car _e2413424501_))
                                                 (_tl2413624508_
                                                  (##cdr _e2413424501_)))
                                             ((lambda (_L24511_ _L24513_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24513_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24513_)
                        (cons (_parse-vector23675_ _L24511_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2403524494_
                                                     _g2404624498_)))
                                              _tl2413624508_
                                              _hd2413524505_)))
                                         (_g2403524494_ _g2404624498_))))
                                  (_g2403324587_
                                   (lambda (_g2404624528_)
                                     (if (gx#stx-vector? _g2404624528_)
                                         (let ((_e2412224531_
                                                (vector->list
                                                 (gx#syntax-e _g2404624528_))))
                                           (if (gx#stx-pair/null?
                                                _e2412224531_)
                                               (if (fx>= (gx#stx-length
                                                          _e2412224531_)
                                                         '0)
                                                   (let ((_g31717_
                                                          (gx#syntax-split-splice
                                                           _e2412224531_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31718_
                                                              (values-count
                                                               _g31717_)))
                                                         (if (not (fx= _g31718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31718_)))
               (let ((_target2412324535_ (values-ref _g31717_ 0))
                     (_tl2412524538_ (values-ref _g31717_ 1)))
                 (if (gx#stx-null? _tl2412524538_)
                     (letrec ((_loop2412624541_
                               (lambda (_hd2412424545_ _body2413024548_)
                                 (if (gx#stx-pair? _hd2412424545_)
                                     (let ((_e2412724551_
                                            (gx#syntax-e _hd2412424545_)))
                                       (let ((_lp-hd2412824555_
                                              (##car _e2412724551_))
                                             (_lp-tl2412924558_
                                              (##cdr _e2412724551_)))
                                         (_loop2412624541_
                                          _lp-tl2412924558_
                                          (cons _lp-hd2412824555_
                                                _body2413024548_))))
                                     (let ((_body2413124561_
                                            (reverse _body2413024548_)))
                                       ((lambda (_L24565_)
                                          (cons 'vector:
                                                (cons (_parse-vector23675_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2457824581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2457924584_)
                          (cons _g2457824581_ _g2457924584_))
                        '()
                        _L24565_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2413124561_))))))
                       (_loop2412624541_ _target2412324535_ '()))
                     (_g2403424524_ _g2404624528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2403424524_
                                                    _g2404624528_))
                                               (_g2403424524_ _g2404624528_)))
                                         (_g2403424524_ _g2404624528_))))
                                  (_g2403224615_
                                   (lambda (_g2404624591_)
                                     (if (gx#stx-pair? _g2404624591_)
                                         (let ((_e2411824594_
                                                (gx#syntax-e _g2404624591_)))
                                           (let ((_hd2411924598_
                                                  (##car _e2411824594_))
                                                 (_tl2412024601_
                                                  (##cdr _e2411824594_)))
                                             (if (gx#identifier?
                                                  _hd2411924598_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31719_|
                                                      _hd2411924598_)
                                                     ((lambda (_L24604_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24604_)
                            '())))
              _tl2412024601_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403324587_
                                                      _g2404624591_))
                                                 (_g2403324587_
                                                  _g2404624591_))))
                                         (_g2403324587_ _g2404624591_))))
                                  (_g2403124643_
                                   (lambda (_g2404624619_)
                                     (if (gx#stx-pair? _g2404624619_)
                                         (let ((_e2411424622_
                                                (gx#syntax-e _g2404624619_)))
                                           (let ((_hd2411524626_
                                                  (##car _e2411424622_))
                                                 (_tl2411624629_
                                                  (##cdr _e2411424622_)))
                                             (if (gx#identifier?
                                                  _hd2411524626_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31720_|
                                                      _hd2411524626_)
                                                     ((lambda (_L24632_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24632_)
                            '())))
              _tl2411624629_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403224615_
                                                      _g2404624619_))
                                                 (_g2403224615_
                                                  _g2404624619_))))
                                         (_g2403224615_ _g2404624619_))))
                                  (_g2403024683_
                                   (lambda (_g2404624647_)
                                     (if (gx#stx-pair? _g2404624647_)
                                         (let ((_e2410724650_
                                                (gx#syntax-e _g2404624647_)))
                                           (let ((_hd2410824654_
                                                  (##car _e2410724650_))
                                                 (_tl2410924657_
                                                  (##cdr _e2410724650_)))
                                             (if (gx#identifier?
                                                  _hd2410824654_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31721_|
                                                      _hd2410824654_)
                                                     (if (gx#stx-pair?
                                                          _tl2410924657_)
                                                         (let ((_e2411024660_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2410924657_)))
                   (let ((_hd2411124664_ (##car _e2411024660_))
                         (_tl2411224667_ (##cdr _e2411024660_)))
                     (if (gx#stx-null? _tl2411224667_)
                         ((lambda (_L24670_) (_parse123672_ _L24670_))
                          _hd2411124664_)
                         (_g2403124643_ _g2404624647_))))
                 (_g2403124643_ _g2404624647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403124643_
                                                      _g2404624647_))
                                                 (_g2403124643_
                                                  _g2404624647_))))
                                         (_g2403124643_ _g2404624647_))))
                                  (_g2402924704_
                                   (lambda (_g2404624687_)
                                     (if (gx#stx-box? _g2404624687_)
                                         (let ((_e2410524690_
                                                (unbox (gx#syntax-e
                                                        _g2404624687_))))
                                           ((lambda (_L24694_)
                                              (cons 'box:
                                                    (cons (_parse123672_
                                                           _L24694_)
                                                          '())))
                                            _e2410524690_))
                                         (_g2403024683_ _g2404624687_))))
                                  (_g2402824744_
                                   (lambda (_g2404624708_)
                                     (if (gx#stx-pair? _g2404624708_)
                                         (let ((_e2409824711_
                                                (gx#syntax-e _g2404624708_)))
                                           (let ((_hd2409924715_
                                                  (##car _e2409824711_))
                                                 (_tl2410024718_
                                                  (##cdr _e2409824711_)))
                                             (if (gx#identifier?
                                                  _hd2409924715_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31722_|
                                                      _hd2409924715_)
                                                     (if (gx#stx-pair?
                                                          _tl2410024718_)
                                                         (let ((_e2410124721_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2410024718_)))
                   (let ((_hd2410224725_ (##car _e2410124721_))
                         (_tl2410324728_ (##cdr _e2410124721_)))
                     (if (gx#stx-null? _tl2410324728_)
                         ((lambda (_L24731_)
                            (cons 'box: (cons (_parse123672_ _L24731_) '())))
                          _hd2410224725_)
                         (_g2402924704_ _g2404624708_))))
                 (_g2402924704_ _g2404624708_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402924704_
                                                      _g2404624708_))
                                                 (_g2402924704_
                                                  _g2404624708_))))
                                         (_g2402924704_ _g2404624708_))))
                                  (_g2402724772_
                                   (lambda (_g2404624748_)
                                     (if (gx#stx-pair? _g2404624748_)
                                         (let ((_e2409424751_
                                                (gx#syntax-e _g2404624748_)))
                                           (let ((_hd2409524755_
                                                  (##car _e2409424751_))
                                                 (_tl2409624758_
                                                  (##cdr _e2409424751_)))
                                             (if (gx#identifier?
                                                  _hd2409524755_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31723_|
                                                      _hd2409524755_)
                                                     ((lambda (_L24761_)
                                                        (_parse-list23674_
                                                         _L24761_))
                                                      _tl2409624758_)
                                                     (_g2402824744_
                                                      _g2404624748_))
                                                 (_g2402824744_
                                                  _g2404624748_))))
                                         (_g2402824744_ _g2404624748_))))
                                  (_g2402624828_
                                   (lambda (_g2404624776_)
                                     (if (gx#stx-pair? _g2404624776_)
                                         (let ((_e2408424779_
                                                (gx#syntax-e _g2404624776_)))
                                           (let ((_hd2408524783_
                                                  (##car _e2408424779_))
                                                 (_tl2408624786_
                                                  (##cdr _e2408424779_)))
                                             (if (gx#identifier?
                                                  _hd2408524783_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31724_|
                                                      _hd2408524783_)
                                                     (if (gx#stx-pair?
                                                          _tl2408624786_)
                                                         (let ((_e2408724789_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2408624786_)))
                   (let ((_hd2408824793_ (##car _e2408724789_))
                         (_tl2408924796_ (##cdr _e2408724789_)))
                     (if (gx#stx-pair? _tl2408924796_)
                         (let ((_e2409024799_ (gx#syntax-e _tl2408924796_)))
                           (let ((_hd2409124803_ (##car _e2409024799_))
                                 (_tl2409224806_ (##cdr _e2409024799_)))
                             ((lambda (_L24809_ _L24811_ _L24812_)
                                (if (gx#stx-null? _L24809_)
                                    (cons 'cons:
                                          (cons (_parse123672_ _L24812_)
                                                (cons (_parse123672_ _L24811_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123672_ _L24812_)
                                                (cons (_parse123672_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24809_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2409224806_
                              _hd2409124803_
                              _hd2408824793_)))
                         (_g2402724772_ _g2404624776_))))
                 (_g2402724772_ _g2404624776_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402724772_
                                                      _g2404624776_))
                                                 (_g2402724772_
                                                  _g2404624776_))))
                                         (_g2402724772_ _g2404624776_))))
                                  (_g2402524882_
                                   (lambda (_g2404624832_)
                                     (if (gx#stx-pair? _g2404624832_)
                                         (let ((_e2407224835_
                                                (gx#syntax-e _g2404624832_)))
                                           (let ((_hd2407324839_
                                                  (##car _e2407224835_))
                                                 (_tl2407424842_
                                                  (##cdr _e2407224835_)))
                                             (if (gx#identifier?
                                                  _hd2407324839_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31725_|
                                                      _hd2407324839_)
                                                     (if (gx#stx-pair?
                                                          _tl2407424842_)
                                                         (let ((_e2407524845_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2407424842_)))
                   (let ((_hd2407624849_ (##car _e2407524845_))
                         (_tl2407724852_ (##cdr _e2407524845_)))
                     (if (gx#stx-pair? _tl2407724852_)
                         (let ((_e2407824855_ (gx#syntax-e _tl2407724852_)))
                           (let ((_hd2407924859_ (##car _e2407824855_))
                                 (_tl2408024862_ (##cdr _e2407824855_)))
                             (if (gx#stx-null? _tl2408024862_)
                                 ((lambda (_L24865_ _L24867_)
                                    (cons 'cons:
                                          (cons (_parse123672_ _L24867_)
                                                (cons (_parse123672_ _L24865_)
                                                      '()))))
                                  _hd2407924859_
                                  _hd2407624849_)
                                 (_g2402624828_ _g2404624832_))))
                         (_g2402624828_ _g2404624832_))))
                 (_g2402624828_ _g2404624832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402624828_
                                                      _g2404624832_))
                                                 (_g2402624828_
                                                  _g2404624832_))))
                                         (_g2402624828_ _g2404624832_))))
                                  (_g2402424922_
                                   (lambda (_g2404624886_)
                                     (if (gx#stx-pair? _g2404624886_)
                                         (let ((_e2406424889_
                                                (gx#syntax-e _g2404624886_)))
                                           (let ((_hd2406524893_
                                                  (##car _e2406424889_))
                                                 (_tl2406624896_
                                                  (##cdr _e2406424889_)))
                                             (if (gx#identifier?
                                                  _hd2406524893_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31726_|
                                                      _hd2406524893_)
                                                     (if (gx#stx-pair?
                                                          _tl2406624896_)
                                                         (let ((_e2406724899_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2406624896_)))
                   (let ((_hd2406824903_ (##car _e2406724899_))
                         (_tl2406924906_ (##cdr _e2406724899_)))
                     (if (gx#stx-null? _tl2406924906_)
                         ((lambda (_L24909_)
                            (cons 'not: (cons (_parse123672_ _L24909_) '())))
                          _hd2406824903_)
                         (_g2402524882_ _g2404624886_))))
                 (_g2402524882_ _g2404624886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402524882_
                                                      _g2404624886_))
                                                 (_g2402524882_
                                                  _g2404624886_))))
                                         (_g2402524882_ _g2404624886_))))
                                  (_g2402325007_
                                   (lambda (_g2404624926_)
                                     (if (gx#stx-pair? _g2404624926_)
                                         (let ((_e2406024929_
                                                (gx#syntax-e _g2404624926_)))
                                           (let ((_hd2406124933_
                                                  (##car _e2406024929_))
                                                 (_tl2406224936_
                                                  (##cdr _e2406024929_)))
                                             (if (gx#identifier?
                                                  _hd2406124933_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31727_|
                                                      _hd2406124933_)
                                                     ((lambda (_L24939_)
                                                        (if (gx#stx-list?
                                                             _L24939_)
                                                            (let* ((_g2495124962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2495224958_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2495224958_)))
                           (_g2495024973_
                            (lambda (_g2495224966_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123672_ _L24939_))))))
                           (_g2494925003_
                            (lambda (_g2495224977_)
                              (if (gx#stx-pair? _g2495224977_)
                                  (let ((_e2495424980_
                                         (gx#syntax-e _g2495224977_)))
                                    (let ((_hd2495524984_
                                           (##car _e2495424980_))
                                          (_tl2495624987_
                                           (##cdr _e2495424980_)))
                                      (if (gx#stx-null? _tl2495624987_)
                                          ((lambda (_L24990_)
                                             (_parse123672_ _L24990_))
                                           _hd2495524984_)
                                          (_g2495024973_ _g2495224977_))))
                                  (_g2495024973_ _g2495224977_)))))
                      (_g2494925003_ _L24939_))
                    (_g2402424922_ _g2404624926_)))
              _tl2406224936_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402424922_
                                                      _g2404624926_))
                                                 (_g2402424922_
                                                  _g2404624926_))))
                                         (_g2402424922_ _g2404624926_))))
                                  (_g2402225092_
                                   (lambda (_g2404625011_)
                                     (if (gx#stx-pair? _g2404625011_)
                                         (let ((_e2405625014_
                                                (gx#syntax-e _g2404625011_)))
                                           (let ((_hd2405725018_
                                                  (##car _e2405625014_))
                                                 (_tl2405825021_
                                                  (##cdr _e2405625014_)))
                                             (if (gx#identifier?
                                                  _hd2405725018_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31728_|
                                                      _hd2405725018_)
                                                     ((lambda (_L25024_)
                                                        (if (gx#stx-list?
                                                             _L25024_)
                                                            (let* ((_g2503625047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2503725043_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2503725043_)))
                           (_g2503525058_
                            (lambda (_g2503725051_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123672_ _L25024_))))))
                           (_g2503425088_
                            (lambda (_g2503725062_)
                              (if (gx#stx-pair? _g2503725062_)
                                  (let ((_e2503925065_
                                         (gx#syntax-e _g2503725062_)))
                                    (let ((_hd2504025069_
                                           (##car _e2503925065_))
                                          (_tl2504125072_
                                           (##cdr _e2503925065_)))
                                      (if (gx#stx-null? _tl2504125072_)
                                          ((lambda (_L25075_)
                                             (_parse123672_ _L25075_))
                                           _hd2504025069_)
                                          (_g2503525058_ _g2503725062_))))
                                  (_g2503525058_ _g2503725062_)))))
                      (_g2503425088_ _L25024_))
                    (_g2402325007_ _g2404625011_)))
              _tl2405825021_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402325007_
                                                      _g2404625011_))
                                                 (_g2402325007_
                                                  _g2404625011_))))
                                         (_g2402325007_ _g2404625011_))))
                                  (_g2402125332_
                                   (lambda (_g2404625096_)
                                     (if (gx#stx-pair? _g2404625096_)
                                         (let ((_e2404925099_
                                                (gx#syntax-e _g2404625096_)))
                                           (let ((_hd2405025103_
                                                  (##car _e2404925099_))
                                                 (_tl2405125106_
                                                  (##cdr _e2404925099_)))
                                             (if (gx#identifier?
                                                  _hd2405025103_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31729_|
                                                      _hd2405025103_)
                                                     (if (gx#stx-pair?
                                                          _tl2405125106_)
                                                         (let ((_e2405225109_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2405125106_)))
                   (let ((_hd2405325113_ (##car _e2405225109_))
                         (_tl2405425116_ (##cdr _e2405225109_)))
                     ((lambda (_L25119_ _L25121_)
                        (let* ((_g2513825170_
                                (lambda (_g2513925166_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2513925166_)))
                               (_g2513725181_
                                (lambda (_g2513925174_)
                                  ((lambda ()
                                     (_parse-error23679_ _hd24019_)))))
                               (_g2513625249_
                                (lambda (_g2513925185_)
                                  (if (gx#stx-pair? _g2513925185_)
                                      (let ((_e2515325188_
                                             (gx#syntax-e _g2513925185_)))
                                        (let ((_hd2515425192_
                                               (##car _e2515325188_))
                                              (_tl2515525195_
                                               (##cdr _e2515325188_)))
                                          (if (gx#stx-datum? _hd2515425192_)
                                              (if (equal? (gx#stx-e
                                                           _hd2515425192_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2515525195_)
                                                      (let ((_e2515625198_
                                                             (gx#syntax-e
                                                              _tl2515525195_)))
                                                        (let ((_hd2515725202_
                                                               (##car _e2515625198_))
                                                              (_tl2515825205_
                                                               (##cdr _e2515625198_)))
                                                          (if (gx#stx-pair?
                                                               _tl2515825205_)
                                                              (let ((_e2515925208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2515825205_)))
                        (let ((_hd2516025212_ (##car _e2515925208_))
                              (_tl2516125215_ (##cdr _e2515925208_)))
                          (if (gx#identifier? _hd2516025212_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31730_|
                                   _hd2516025212_)
                                  (if (gx#stx-pair? _tl2516125215_)
                                      (let ((_e2516225218_
                                             (gx#syntax-e _tl2516125215_)))
                                        (let ((_hd2516325222_
                                               (##car _e2516225218_))
                                              (_tl2516425225_
                                               (##cdr _e2516225218_)))
                                          (if (gx#stx-null? _tl2516425225_)
                                              ((lambda (_L25228_ _L25230_)
                                                 (cons '?:
                                                       (cons _L25121_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L25230_
                                 (cons '=>:
                                       (cons (_parse123672_ _L25228_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2516325222_
                                               _hd2515725202_)
                                              (_g2513725181_ _g2513925185_))))
                                      (_g2513725181_ _g2513925185_))
                                  (_g2513725181_ _g2513925185_))
                              (_g2513725181_ _g2513925185_))))
                      (_g2513725181_ _g2513925185_))))
              (_g2513725181_ _g2513925185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2513725181_
                                                   _g2513925185_))
                                              (_g2513725181_ _g2513925185_))))
                                      (_g2513725181_ _g2513925185_))))
                               (_g2513525289_
                                (lambda (_g2513925253_)
                                  (if (gx#stx-pair? _g2513925253_)
                                      (let ((_e2514525256_
                                             (gx#syntax-e _g2513925253_)))
                                        (let ((_hd2514625260_
                                               (##car _e2514525256_))
                                              (_tl2514725263_
                                               (##cdr _e2514525256_)))
                                          (if (gx#identifier? _hd2514625260_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31731_|
                                                   _hd2514625260_)
                                                  (if (gx#stx-pair?
                                                       _tl2514725263_)
                                                      (let ((_e2514825266_
                                                             (gx#syntax-e
                                                              _tl2514725263_)))
                                                        (let ((_hd2514925270_
                                                               (##car _e2514825266_))
                                                              (_tl2515025273_
                                                               (##cdr _e2514825266_)))
                                                          (if (gx#stx-null?
                                                               _tl2515025273_)
                                                              ((lambda (_L25276_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L25121_
                                     (cons '=>:
                                           (cons (_parse123672_ _L25276_)
                                                 '())))))
                       _hd2514925270_)
                      (_g2513625249_ _g2513925253_))))
              (_g2513625249_ _g2513925253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2513625249_
                                                   _g2513925253_))
                                              (_g2513625249_ _g2513925253_))))
                                      (_g2513625249_ _g2513925253_))))
                               (_g2513425317_
                                (lambda (_g2513925293_)
                                  (if (gx#stx-pair? _g2513925293_)
                                      (let ((_e2514125296_
                                             (gx#syntax-e _g2513925293_)))
                                        (let ((_hd2514225300_
                                               (##car _e2514125296_))
                                              (_tl2514325303_
                                               (##cdr _e2514125296_)))
                                          (if (gx#stx-null? _tl2514325303_)
                                              ((lambda (_L25306_)
                                                 (cons '?:
                                                       (cons _L25121_
                                                             (cons (_parse123672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L25306_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2514225300_)
                                              (_g2513525289_ _g2513925293_))))
                                      (_g2513525289_ _g2513925293_))))
                               (_g2513325328_
                                (lambda (_g2513925321_)
                                  (if (gx#stx-null? _g2513925321_)
                                      ((lambda ()
                                         (cons '?: (cons _L25121_ '()))))
                                      (_g2513425317_ _g2513925321_)))))
                          (_g2513325328_ _L25119_)))
                      _tl2405425116_
                      _hd2405325113_)))
                 (_g2402225092_ _g2404625096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402225092_
                                                      _g2404625096_))
                                                 (_g2402225092_
                                                  _g2404625096_))))
                                         (_g2402225092_ _g2404625096_)))))
                             (_g2402125332_ _hd24019_))))
                        (_parse-list23674_
                         (lambda (_body23854_)
                           (let* ((_g2386023888_
                                   (lambda (_g2386123884_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2386123884_)))
                                  (_g2385923899_
                                   (lambda (_g2386123892_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23854_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23854_))
                                                (_parse123672_ _body23854_)
                                                (_parse-error23679_
                                                 _body23854_)))))))
                                  (_g2385823931_
                                   (lambda (_g2386123903_)
                                     (if (gx#stx-pair? _g2386123903_)
                                         (let ((_e2388023906_
                                                (gx#syntax-e _g2386123903_)))
                                           (let ((_hd2388123910_
                                                  (##car _e2388023906_))
                                                 (_tl2388223913_
                                                  (##cdr _e2388023906_)))
                                             ((lambda (_L23916_ _L23918_)
                                                (if (not (gx#ellipsis?
                                                          _L23918_))
                                                    (cons 'cons:
                                                          (cons (_parse123672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23918_)
                        (cons (_parse-list23674_ _L23916_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2385923899_
                                                     _g2386123903_)))
                                              _tl2388223913_
                                              _hd2388123910_)))
                                         (_g2385923899_ _g2386123903_))))
                                  (_g2385723975_
                                   (lambda (_g2386123935_)
                                     (if (gx#stx-pair? _g2386123935_)
                                         (let ((_e2387223938_
                                                (gx#syntax-e _g2386123935_)))
                                           (let ((_hd2387323942_
                                                  (##car _e2387223938_))
                                                 (_tl2387423945_
                                                  (##cdr _e2387223938_)))
                                             (if (gx#stx-pair? _tl2387423945_)
                                                 (let ((_e2387523948_
                                                        (gx#syntax-e
                                                         _tl2387423945_)))
                                                   (let ((_hd2387623952_
                                                          (##car _e2387523948_))
                                                         (_tl2387723955_
                                                          (##cdr _e2387523948_)))
                                                     ((lambda (_L23958_
                                                               _L23960_
                                                               _L23961_)
                                                        (if (gx#ellipsis?
                                                             _L23960_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123672_ _L23961_)
                                (cons (_parse-list23674_ _L23958_) '())))
                    (_g2385823931_ _g2386123935_)))
              _tl2387723955_
              _hd2387623952_
              _hd2387323942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2385823931_
                                                  _g2386123935_))))
                                         (_g2385823931_ _g2386123935_))))
                                  (_g2385624015_
                                   (lambda (_g2386123979_)
                                     (if (gx#stx-pair? _g2386123979_)
                                         (let ((_e2386323982_
                                                (gx#syntax-e _g2386123979_)))
                                           (let ((_hd2386423986_
                                                  (##car _e2386323982_))
                                                 (_tl2386523989_
                                                  (##cdr _e2386323982_)))
                                             (if (gx#stx-datum? _hd2386423986_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2386423986_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2386523989_)
                                                         (let ((_e2386623992_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2386523989_)))
                   (let ((_hd2386723996_ (##car _e2386623992_))
                         (_tl2386823999_ (##cdr _e2386623992_)))
                     (if (gx#stx-null? _tl2386823999_)
                         ((lambda (_L24002_) (_parse123672_ _L24002_))
                          _hd2386723996_)
                         (_g2385723975_ _g2386123979_))))
                 (_g2385723975_ _g2386123979_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2385723975_
                                                      _g2386123979_))
                                                 (_g2385723975_
                                                  _g2386123979_))))
                                         (_g2385723975_ _g2386123979_)))))
                             (_g2385624015_ _body23854_))))
                        (_parse-vector23675_
                         (lambda (_body23851_)
                           (if (_simple-vector?23676_ _body23851_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123672_
                                            _body23851_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23674_ _body23851_)
                                           '())))))
                        (_simple-vector?23676_
                         (lambda (_body23788_)
                           (let* ((_g2379223804_
                                   (lambda (_g2379323800_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2379323800_)))
                                  (_g2379123815_
                                   (lambda (_g2379323808_)
                                     ((lambda () (gx#stx-null? _body23788_)))))
                                  (_g2379023847_
                                   (lambda (_g2379323819_)
                                     (if (gx#stx-pair? _g2379323819_)
                                         (let ((_e2379623822_
                                                (gx#syntax-e _g2379323819_)))
                                           (let ((_hd2379723826_
                                                  (##car _e2379623822_))
                                                 (_tl2379823829_
                                                  (##cdr _e2379623822_)))
                                             ((lambda (_L23832_ _L23834_)
                                                (if (not (gx#ellipsis?
                                                          _L23834_))
                                                    (_simple-vector?23676_
                                                     _L23832_)
                                                    '#f))
                                              _tl2379823829_
                                              _hd2379723826_)))
                                         (_g2379123815_ _g2379323819_)))))
                             (_g2379023847_ _body23788_))))
                        (_parse-class-body23677_
                         (lambda (_body23697_)
                           (let _recur23700_ ((_rest23703_ _body23697_))
                             (let* ((_g2370723723_
                                     (lambda (_g2370823719_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2370823719_)))
                                    (_g2370623734_
                                     (lambda (_g2370823727_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23703_)
                                              '()
                                              (_parse-error23679_
                                               _rest23703_))))))
                                    (_g2370523784_
                                     (lambda (_g2370823738_)
                                       (if (gx#stx-pair? _g2370823738_)
                                           (let ((_e2371223741_
                                                  (gx#syntax-e _g2370823738_)))
                                             (let ((_hd2371323745_
                                                    (##car _e2371223741_))
                                                   (_tl2371423748_
                                                    (##cdr _e2371223741_)))
                                               (if (gx#stx-pair?
                                                    _tl2371423748_)
                                                   (let ((_e2371523751_
                                                          (gx#syntax-e
                                                           _tl2371423748_)))
                                                     (let ((_hd2371623755_
                                                            (##car _e2371523751_))
                                                           (_tl2371723758_
                                                            (##cdr _e2371523751_)))
                                                       ((lambda (_L23761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23763_
                         _L23764_)
                  (if (gx#stx-keyword? _L23764_)
                      (cons* _L23764_
                             (_parse123672_ _L23763_)
                             (_recur23700_ _L23761_))
                      (_g2370623734_ _g2370823738_)))
                _tl2371723758_
                _hd2371623755_
                _hd2371323745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2370623734_
                                                    _g2370823738_))))
                                           (_g2370623734_ _g2370823738_)))))
                               (_g2370523784_ _rest23703_)))))
                        (_parse-qq23678_
                         (lambda (_hd23684_)
                           (let ((_g2368623693_
                                  (lambda (_g2368723689_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2368723689_))))
                             (_g2368623693_ _hd23684_))))
                        (_parse-error23679_
                         (lambda (_hd23681_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23670_
                                      (cons _match-stx23670_
                                            (cons _stx23668_
                                                  (cons _hd23681_ '())))
                                      (cons _stx23668_
                                            (cons _hd23681_ '())))))))
                 (_parse123672_ _stx23668_)))))
        (lambda _g31733_
          (let ((_g31732_ (length _g31733_)))
            (cond ((fx= _g31732_ 1)
                   (apply (lambda (_stx25340_)
                            (let ((_match-stx25343_ '#f))
                              (_opt-lambda2366625336_
                               _stx25340_
                               _match-stx25343_)))
                          _g31733_))
                  ((fx= _g31732_ 2) (apply _opt-lambda2366625336_ _g31733_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g31733_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23652_)
        (call-with-escape
         (lambda (_E23656_)
           (with-exception-handler
            (let ((_E!23659_ (current-exception-handler)))
              (lambda (_e23662_)
                (if (gx#syntax-error? _e23662_)
                    (_E23656_ '#f)
                    (_E!23659_ _e23662_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23652_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree22441_)
        (letrec ((_loop22444_
                  (lambda (_ptree22719_ _vars22721_ _K22722_)
                    (let* ((_g2273522836_
                            (lambda (_g2273622832_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2273622832_)))
                           (_g2273422847_
                            (lambda (_g2273622840_)
                              ((lambda () (_K22722_ _vars22721_)))))
                           (_g2273322894_
                            (lambda (_g2273622851_)
                              (if (gx#stx-pair? _g2273622851_)
                                  (let ((_e2282522854_
                                         (gx#syntax-e _g2273622851_)))
                                    (let ((_hd2282622858_
                                           (##car _e2282522854_))
                                          (_tl2282722861_
                                           (##cdr _e2282522854_)))
                                      (if (gx#stx-datum? _hd2282622858_)
                                          (if (equal? (gx#stx-e _hd2282622858_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2282722861_)
                                                  (let ((_e2282822864_
                                                         (gx#syntax-e
                                                          _tl2282722861_)))
                                                    (let ((_hd2282922868_
                                                           (##car _e2282822864_))
                                                          (_tl2283022871_
                                                           (##cdr _e2282822864_)))
                                                      (if (gx#stx-null?
                                                           _tl2283022871_)
                                                          ((lambda (_L22874_)
                                                             (if (find (lambda (_g2288822890_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2288822890_
                                  _L22874_))
                               _vars22721_)
                         (_K22722_ _vars22721_)
                         (_K22722_ (cons _L22874_ _vars22721_))))
                   _hd2282922868_)
                  (_g2273422847_ _g2273622851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2273422847_
                                                   _g2273622851_))
                                              (_g2273422847_ _g2273622851_))
                                          (_g2273422847_ _g2273622851_))))
                                  (_g2273422847_ _g2273622851_))))
                           (_g2273222948_
                            (lambda (_g2273622898_)
                              (if (gx#stx-pair? _g2273622898_)
                                  (let ((_e2281522901_
                                         (gx#syntax-e _g2273622898_)))
                                    (let ((_hd2281622905_
                                           (##car _e2281522901_))
                                          (_tl2281722908_
                                           (##cdr _e2281522901_)))
                                      (if (gx#stx-datum? _hd2281622905_)
                                          (if (equal? (gx#stx-e _hd2281622905_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2281722908_)
                                                  (let ((_e2281822911_
                                                         (gx#syntax-e
                                                          _tl2281722908_)))
                                                    (let ((_hd2281922915_
                                                           (##car _e2281822911_))
                                                          (_tl2282022918_
                                                           (##cdr _e2281822911_)))
                                                      (if (gx#stx-pair?
                                                           _tl2282022918_)
                                                          (let ((_e2282122921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2282022918_)))
                    (let ((_hd2282222925_ (##car _e2282122921_))
                          (_tl2282322928_ (##cdr _e2282122921_)))
                      (if (gx#stx-null? _tl2282322928_)
                          ((lambda (_L22931_ _L22933_)
                             (_loop22444_ _L22931_ _vars22721_ _K22722_))
                           _hd2282222925_
                           _hd2281922915_)
                          (_g2273322894_ _g2273622898_))))
                  (_g2273322894_ _g2273622898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2273322894_
                                                   _g2273622898_))
                                              (_g2273322894_ _g2273622898_))
                                          (_g2273322894_ _g2273622898_))))
                                  (_g2273322894_ _g2273622898_))))
                           (_g2273123000_
                            (lambda (_g2273622952_)
                              (if (gx#stx-pair? _g2273622952_)
                                  (let ((_e2280422955_
                                         (gx#syntax-e _g2273622952_)))
                                    (let ((_hd2280522959_
                                           (##car _e2280422955_))
                                          (_tl2280622962_
                                           (##cdr _e2280422955_)))
                                      (if (gx#stx-datum? _hd2280522959_)
                                          (if (equal? (gx#stx-e _hd2280522959_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2280622962_)
                                                  (let ((_e2280722965_
                                                         (gx#syntax-e
                                                          _tl2280622962_)))
                                                    (let ((_hd2280822969_
                                                           (##car _e2280722965_))
                                                          (_tl2280922972_
                                                           (##cdr _e2280722965_)))
                                                      (if (gx#stx-pair?
                                                           _tl2280922972_)
                                                          (let ((_e2281022975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2280922972_)))
                    (let ((_hd2281122979_ (##car _e2281022975_))
                          (_tl2281222982_ (##cdr _e2281022975_)))
                      (if (gx#stx-null? _tl2281222982_)
                          ((lambda (_L22985_)
                             (_loop-class-list22448_
                              _L22985_
                              _vars22721_
                              _K22722_))
                           _hd2281122979_)
                          (_g2273222948_ _g2273622952_))))
                  (_g2273222948_ _g2273622952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2273222948_
                                                   _g2273622952_))
                                              (_g2273222948_ _g2273622952_))
                                          (_g2273222948_ _g2273622952_))))
                                  (_g2273222948_ _g2273622952_))))
                           (_g2273023052_
                            (lambda (_g2273623004_)
                              (if (gx#stx-pair? _g2273623004_)
                                  (let ((_e2279423007_
                                         (gx#syntax-e _g2273623004_)))
                                    (let ((_hd2279523011_
                                           (##car _e2279423007_))
                                          (_tl2279623014_
                                           (##cdr _e2279423007_)))
                                      (if (gx#stx-datum? _hd2279523011_)
                                          (if (equal? (gx#stx-e _hd2279523011_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2279623014_)
                                                  (let ((_e2279723017_
                                                         (gx#syntax-e
                                                          _tl2279623014_)))
                                                    (let ((_hd2279823021_
                                                           (##car _e2279723017_))
                                                          (_tl2279923024_
                                                           (##cdr _e2279723017_)))
                                                      (if (gx#stx-pair?
                                                           _tl2279923024_)
                                                          (let ((_e2280023027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2279923024_)))
                    (let ((_hd2280123031_ (##car _e2280023027_))
                          (_tl2280223034_ (##cdr _e2280023027_)))
                      (if (gx#stx-null? _tl2280223034_)
                          ((lambda (_L23037_)
                             (_loop-vector22446_
                              _L23037_
                              _vars22721_
                              _K22722_))
                           _hd2280123031_)
                          (_g2273123000_ _g2273623004_))))
                  (_g2273123000_ _g2273623004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2273123000_
                                                   _g2273623004_))
                                              (_g2273123000_ _g2273623004_))
                                          (_g2273123000_ _g2273623004_))))
                                  (_g2273123000_ _g2273623004_))))
                           (_g2272923098_
                            (lambda (_g2273623056_)
                              (if (gx#stx-pair? _g2273623056_)
                                  (let ((_e2278723059_
                                         (gx#syntax-e _g2273623056_)))
                                    (let ((_hd2278823063_
                                           (##car _e2278723059_))
                                          (_tl2278923066_
                                           (##cdr _e2278723059_)))
                                      (if (gx#stx-pair? _tl2278923066_)
                                          (let ((_e2279023069_
                                                 (gx#syntax-e _tl2278923066_)))
                                            (let ((_hd2279123073_
                                                   (##car _e2279023069_))
                                                  (_tl2279223076_
                                                   (##cdr _e2279023069_)))
                                              (if (gx#stx-null? _tl2279223076_)
                                                  ((lambda (_L23079_ _L23081_)
                                                     (if (let ((_$e23094_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L23081_)))
                   (if _$e23094_ _$e23094_ (gx#stx-eq? 'vector: _L23081_)))
                 (_loop-vector22446_ _L23079_ _vars22721_ _K22722_)
                 (_g2273023052_ _g2273623056_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2279123073_
                                                   _hd2278823063_)
                                                  (_g2273023052_
                                                   _g2273623056_))))
                                          (_g2273023052_ _g2273623056_))))
                                  (_g2273023052_ _g2273623056_))))
                           (_g2272823138_
                            (lambda (_g2273623102_)
                              (if (gx#stx-pair? _g2273623102_)
                                  (let ((_e2277923105_
                                         (gx#syntax-e _g2273623102_)))
                                    (let ((_hd2278023109_
                                           (##car _e2277923105_))
                                          (_tl2278123112_
                                           (##cdr _e2277923105_)))
                                      (if (gx#stx-datum? _hd2278023109_)
                                          (if (equal? (gx#stx-e _hd2278023109_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2278123112_)
                                                  (let ((_e2278223115_
                                                         (gx#syntax-e
                                                          _tl2278123112_)))
                                                    (let ((_hd2278323119_
                                                           (##car _e2278223115_))
                                                          (_tl2278423122_
                                                           (##cdr _e2278223115_)))
                                                      (if (gx#stx-null?
                                                           _tl2278423122_)
                                                          ((lambda (_L23125_)
                                                             (_loop22444_
                                                              _L23125_
                                                              _vars22721_
                                                              _K22722_))
                                                           _hd2278323119_)
                                                          (_g2272923098_
                                                           _g2273623102_))))
                                                  (_g2272923098_
                                                   _g2273623102_))
                                              (_g2272923098_ _g2273623102_))
                                          (_g2272923098_ _g2273623102_))))
                                  (_g2272923098_ _g2273623102_))))
                           (_g2272723197_
                            (lambda (_g2273623142_)
                              (if (gx#stx-pair? _g2273623142_)
                                  (let ((_e2276923145_
                                         (gx#syntax-e _g2273623142_)))
                                    (let ((_hd2277023149_
                                           (##car _e2276923145_))
                                          (_tl2277123152_
                                           (##cdr _e2276923145_)))
                                      (if (gx#stx-datum? _hd2277023149_)
                                          (if (equal? (gx#stx-e _hd2277023149_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2277123152_)
                                                  (let ((_e2277223155_
                                                         (gx#syntax-e
                                                          _tl2277123152_)))
                                                    (let ((_hd2277323159_
                                                           (##car _e2277223155_))
                                                          (_tl2277423162_
                                                           (##cdr _e2277223155_)))
                                                      (if (gx#stx-pair?
                                                           _tl2277423162_)
                                                          (let ((_e2277523165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2277423162_)))
                    (let ((_hd2277623169_ (##car _e2277523165_))
                          (_tl2277723172_ (##cdr _e2277523165_)))
                      (if (gx#stx-null? _tl2277723172_)
                          ((lambda (_L23175_ _L23177_)
                             (_loop22444_
                              _L23177_
                              _vars22721_
                              (lambda (_g2319123193_)
                                (_loop22444_
                                 _L23175_
                                 _g2319123193_
                                 _K22722_))))
                           _hd2277623169_
                           _hd2277323159_)
                          (_g2272823138_ _g2273623142_))))
                  (_g2272823138_ _g2273623142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2272823138_
                                                   _g2273623142_))
                                              (_g2272823138_ _g2273623142_))
                                          (_g2272823138_ _g2273623142_))))
                                  (_g2272823138_ _g2273623142_))))
                           (_g2272623256_
                            (lambda (_g2273623201_)
                              (if (gx#stx-pair? _g2273623201_)
                                  (let ((_e2275823204_
                                         (gx#syntax-e _g2273623201_)))
                                    (let ((_hd2275923208_
                                           (##car _e2275823204_))
                                          (_tl2276023211_
                                           (##cdr _e2275823204_)))
                                      (if (gx#stx-datum? _hd2275923208_)
                                          (if (equal? (gx#stx-e _hd2275923208_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2276023211_)
                                                  (let ((_e2276123214_
                                                         (gx#syntax-e
                                                          _tl2276023211_)))
                                                    (let ((_hd2276223218_
                                                           (##car _e2276123214_))
                                                          (_tl2276323221_
                                                           (##cdr _e2276123214_)))
                                                      (if (gx#stx-pair?
                                                           _tl2276323221_)
                                                          (let ((_e2276423224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2276323221_)))
                    (let ((_hd2276523228_ (##car _e2276423224_))
                          (_tl2276623231_ (##cdr _e2276423224_)))
                      (if (gx#stx-null? _tl2276623231_)
                          ((lambda (_L23234_ _L23236_)
                             (_loop22444_
                              _L23236_
                              _vars22721_
                              (lambda (_g2325023252_)
                                (_loop22444_
                                 _L23234_
                                 _g2325023252_
                                 _K22722_))))
                           _hd2276523228_
                           _hd2276223218_)
                          (_g2272723197_ _g2273623201_))))
                  (_g2272723197_ _g2273623201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2272723197_
                                                   _g2273623201_))
                                              (_g2272723197_ _g2273623201_))
                                          (_g2272723197_ _g2273623201_))))
                                  (_g2272723197_ _g2273623201_))))
                           (_g2272523296_
                            (lambda (_g2273623260_)
                              (if (gx#stx-pair? _g2273623260_)
                                  (let ((_e2275023263_
                                         (gx#syntax-e _g2273623260_)))
                                    (let ((_hd2275123267_
                                           (##car _e2275023263_))
                                          (_tl2275223270_
                                           (##cdr _e2275023263_)))
                                      (if (gx#stx-datum? _hd2275123267_)
                                          (if (equal? (gx#stx-e _hd2275123267_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2275223270_)
                                                  (let ((_e2275323273_
                                                         (gx#syntax-e
                                                          _tl2275223270_)))
                                                    (let ((_hd2275423277_
                                                           (##car _e2275323273_))
                                                          (_tl2275523280_
                                                           (##cdr _e2275323273_)))
                                                      (if (gx#stx-null?
                                                           _tl2275523280_)
                                                          ((lambda (_L23283_)
                                                             (_loop22444_
                                                              _L23283_
                                                              _vars22721_
                                                              _K22722_))
                                                           _hd2275423277_)
                                                          (_g2272623256_
                                                           _g2273623260_))))
                                                  (_g2272623256_
                                                   _g2273623260_))
                                              (_g2272623256_ _g2273623260_))
                                          (_g2272623256_ _g2273623260_))))
                                  (_g2272623256_ _g2273623260_))))
                           (_g2272423395_
                            (lambda (_g2273623300_)
                              (if (gx#stx-pair? _g2273623300_)
                                  (let ((_e2274623303_
                                         (gx#syntax-e _g2273623300_)))
                                    (let ((_hd2274723307_
                                           (##car _e2274623303_))
                                          (_tl2274823310_
                                           (##cdr _e2274623303_)))
                                      ((lambda (_L23313_ _L23315_)
                                         (if (let ((_$e23326_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L23315_)))
                                               (if _$e23326_
                                                   _$e23326_
                                                   (gx#stx-eq? 'or: _L23315_)))
                                             (let* ((_g2333123343_
                                                     (lambda (_g2333223339_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2333223339_)))
                                                    (_g2333023354_
                                                     (lambda (_g2333223347_)
                                                       ((lambda ()
                                                          (_K22722_
                                                           _vars22721_)))))
                                                    (_g2332923391_
                                                     (lambda (_g2333223358_)
                                                       (if (gx#stx-pair?
                                                            _g2333223358_)
                                                           (let ((_e2333523361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2333223358_)))
                     (let ((_hd2333623365_ (##car _e2333523361_))
                           (_tl2333723368_ (##cdr _e2333523361_)))
                       ((lambda (_L23371_ _L23373_)
                          (_loop22444_
                           _L23373_
                           _vars22721_
                           (lambda (_g2338523387_)
                             (_loop22444_
                              (cons _L23315_ _L23371_)
                              _g2338523387_
                              _K22722_))))
                        _tl2333723368_
                        _hd2333623365_)))
                   (_g2333023354_ _g2333223358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2332923391_ _L23313_))
                                             (_g2272523296_ _g2273623300_)))
                                       _tl2274823310_
                                       _hd2274723307_)))
                                  (_g2272523296_ _g2273623300_))))
                           (_g2272323648_
                            (lambda (_g2273623399_)
                              (if (gx#stx-pair? _g2273623399_)
                                  (let ((_e2273823402_
                                         (gx#syntax-e _g2273623399_)))
                                    (let ((_hd2273923406_
                                           (##car _e2273823402_))
                                          (_tl2274023409_
                                           (##cdr _e2273823402_)))
                                      (if (gx#stx-datum? _hd2273923406_)
                                          (if (equal? (gx#stx-e _hd2273923406_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2274023409_)
                                                  (let ((_e2274123412_
                                                         (gx#syntax-e
                                                          _tl2274023409_)))
                                                    (let ((_hd2274223416_
                                                           (##car _e2274123412_))
                                                          (_tl2274323419_
                                                           (##cdr _e2274123412_)))
                                                      ((lambda (_L23422_)
                                                         (let* ((_g2343823475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2343923471_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2343923471_)))
                        (_g2343723486_
                         (lambda (_g2343923479_)
                           ((lambda () (_K22722_ _vars22721_)))))
                        (_g2343623564_
                         (lambda (_g2343923490_)
                           (if (gx#stx-pair? _g2343923490_)
                               (let ((_e2345523493_
                                      (gx#syntax-e _g2343923490_)))
                                 (let ((_hd2345623497_ (##car _e2345523493_))
                                       (_tl2345723500_ (##cdr _e2345523493_)))
                                   (if (gx#stx-pair? _tl2345723500_)
                                       (let ((_e2345823503_
                                              (gx#syntax-e _tl2345723500_)))
                                         (let ((_hd2345923507_
                                                (##car _e2345823503_))
                                               (_tl2346023510_
                                                (##cdr _e2345823503_)))
                                           (if (gx#stx-datum? _hd2345923507_)
                                               (if (equal? (gx#stx-e
                                                            _hd2345923507_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2346023510_)
                                                       (let ((_e2346123513_
                                                              (gx#syntax-e
                                                               _tl2346023510_)))
                                                         (let ((_hd2346223517_
                                                                (##car _e2346123513_))
                                                               (_tl2346323520_
                                                                (##cdr _e2346123513_)))
                                                           (if (gx#stx-pair?
                                                                _tl2346323520_)
                                                               (let ((_e2346423523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2346323520_)))
                         (let ((_hd2346523527_ (##car _e2346423523_))
                               (_tl2346623530_ (##cdr _e2346423523_)))
                           (if (gx#stx-datum? _hd2346523527_)
                               (if (equal? (gx#stx-e _hd2346523527_) '=>:)
                                   (if (gx#stx-pair? _tl2346623530_)
                                       (let ((_e2346723533_
                                              (gx#syntax-e _tl2346623530_)))
                                         (let ((_hd2346823537_
                                                (##car _e2346723533_))
                                               (_tl2346923540_
                                                (##cdr _e2346723533_)))
                                           (if (gx#stx-null? _tl2346923540_)
                                               ((lambda (_L23543_)
                                                  (_loop22444_
                                                   _L23543_
                                                   _vars22721_
                                                   _K22722_))
                                                _hd2346823537_)
                                               (_g2343723486_ _g2343923490_))))
                                       (_g2343723486_ _g2343923490_))
                                   (_g2343723486_ _g2343923490_))
                               (_g2343723486_ _g2343923490_))))
                       (_g2343723486_ _g2343923490_))))
               (_g2343723486_ _g2343923490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2343723486_
                                                    _g2343923490_))
                                               (_g2343723486_ _g2343923490_))))
                                       (_g2343723486_ _g2343923490_))))
                               (_g2343723486_ _g2343923490_))))
                        (_g2343523616_
                         (lambda (_g2343923568_)
                           (if (gx#stx-pair? _g2343923568_)
                               (let ((_e2344523571_
                                      (gx#syntax-e _g2343923568_)))
                                 (let ((_hd2344623575_ (##car _e2344523571_))
                                       (_tl2344723578_ (##cdr _e2344523571_)))
                                   (if (gx#stx-pair? _tl2344723578_)
                                       (let ((_e2344823581_
                                              (gx#syntax-e _tl2344723578_)))
                                         (let ((_hd2344923585_
                                                (##car _e2344823581_))
                                               (_tl2345023588_
                                                (##cdr _e2344823581_)))
                                           (if (gx#stx-datum? _hd2344923585_)
                                               (if (equal? (gx#stx-e
                                                            _hd2344923585_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2345023588_)
                                                       (let ((_e2345123591_
                                                              (gx#syntax-e
                                                               _tl2345023588_)))
                                                         (let ((_hd2345223595_
                                                                (##car _e2345123591_))
                                                               (_tl2345323598_
                                                                (##cdr _e2345123591_)))
                                                           (if (gx#stx-null?
                                                                _tl2345323598_)
                                                               ((lambda (_L23601_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop22444_ _L23601_ _vars22721_ _K22722_))
                        _hd2345223595_)
                       (_g2343623564_ _g2343923568_))))
               (_g2343623564_ _g2343923568_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2343623564_
                                                    _g2343923568_))
                                               (_g2343623564_ _g2343923568_))))
                                       (_g2343623564_ _g2343923568_))))
                               (_g2343623564_ _g2343923568_))))
                        (_g2343423644_
                         (lambda (_g2343923620_)
                           (if (gx#stx-pair? _g2343923620_)
                               (let ((_e2344123623_
                                      (gx#syntax-e _g2343923620_)))
                                 (let ((_hd2344223627_ (##car _e2344123623_))
                                       (_tl2344323630_ (##cdr _e2344123623_)))
                                   (if (gx#stx-null? _tl2344323630_)
                                       ((lambda (_L23633_)
                                          (_loop22444_
                                           _L23633_
                                           _vars22721_
                                           _K22722_))
                                        _hd2344223627_)
                                       (_g2343523616_ _g2343923620_))))
                               (_g2343523616_ _g2343923620_)))))
                   (_g2343423644_ _L23422_)))
               _tl2274323419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2272423395_
                                                   _g2273623399_))
                                              (_g2272423395_ _g2273623399_))
                                          (_g2272423395_ _g2273623399_))))
                                  (_g2272423395_ _g2273623399_)))))
                      (_g2272323648_ _ptree22719_))))
                 (_loop-vector22446_
                  (lambda (_body22607_ _vars22609_ _K22610_)
                    (let* ((_g2261322634_
                            (lambda (_g2261422630_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2261422630_)))
                           (_g2261222675_
                            (lambda (_g2261422638_)
                              (if (gx#stx-pair? _g2261422638_)
                                  (let ((_e2262322641_
                                         (gx#syntax-e _g2261422638_)))
                                    (let ((_hd2262422645_
                                           (##car _e2262322641_))
                                          (_tl2262522648_
                                           (##cdr _e2262322641_)))
                                      (if (gx#stx-datum? _hd2262422645_)
                                          (if (equal? (gx#stx-e _hd2262422645_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2262522648_)
                                                  (let ((_e2262622651_
                                                         (gx#syntax-e
                                                          _tl2262522648_)))
                                                    (let ((_hd2262722655_
                                                           (##car _e2262622651_))
                                                          (_tl2262822658_
                                                           (##cdr _e2262622651_)))
                                                      (if (gx#stx-null?
                                                           _tl2262822658_)
                                                          ((lambda (_L22661_)
                                                             (_loop22444_
                                                              _L22661_
                                                              _vars22609_
                                                              _K22610_))
                                                           _hd2262722655_)
                                                          (_g2261322634_
                                                           _g2261422638_))))
                                                  (_g2261322634_
                                                   _g2261422638_))
                                              (_g2261322634_ _g2261422638_))
                                          (_g2261322634_ _g2261422638_))))
                                  (_g2261322634_ _g2261422638_))))
                           (_g2261122715_
                            (lambda (_g2261422679_)
                              (if (gx#stx-pair? _g2261422679_)
                                  (let ((_e2261622682_
                                         (gx#syntax-e _g2261422679_)))
                                    (let ((_hd2261722686_
                                           (##car _e2261622682_))
                                          (_tl2261822689_
                                           (##cdr _e2261622682_)))
                                      (if (gx#stx-datum? _hd2261722686_)
                                          (if (equal? (gx#stx-e _hd2261722686_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2261822689_)
                                                  (let ((_e2261922692_
                                                         (gx#syntax-e
                                                          _tl2261822689_)))
                                                    (let ((_hd2262022696_
                                                           (##car _e2261922692_))
                                                          (_tl2262122699_
                                                           (##cdr _e2261922692_)))
                                                      (if (gx#stx-null?
                                                           _tl2262122699_)
                                                          ((lambda (_L22702_)
                                                             (_loop-list22447_
                                                              _L22702_
                                                              _vars22609_
                                                              _K22610_))
                                                           _hd2262022696_)
                                                          (_g2261222675_
                                                           _g2261422679_))))
                                                  (_g2261222675_
                                                   _g2261422679_))
                                              (_g2261222675_ _g2261422679_))
                                          (_g2261222675_ _g2261422679_))))
                                  (_g2261222675_ _g2261422679_)))))
                      (_g2261122715_ _body22607_))))
                 (_loop-list22447_
                  (lambda (_rest22537_ _vars22539_ _K22540_)
                    (let* ((_g2254322555_
                            (lambda (_g2254422551_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2254422551_)))
                           (_g2254222566_
                            (lambda (_g2254422559_)
                              ((lambda () (_K22540_ _vars22539_)))))
                           (_g2254122603_
                            (lambda (_g2254422570_)
                              (if (gx#stx-pair? _g2254422570_)
                                  (let ((_e2254722573_
                                         (gx#syntax-e _g2254422570_)))
                                    (let ((_hd2254822577_
                                           (##car _e2254722573_))
                                          (_tl2254922580_
                                           (##cdr _e2254722573_)))
                                      ((lambda (_L22583_ _L22585_)
                                         (_loop22444_
                                          _L22585_
                                          _vars22539_
                                          (lambda (_g2259722599_)
                                            (_loop-list22447_
                                             _L22583_
                                             _g2259722599_
                                             _K22540_))))
                                       _tl2254922580_
                                       _hd2254822577_)))
                                  (_g2254222566_ _g2254422570_)))))
                      (_g2254122603_ _rest22537_))))
                 (_loop-class-list22448_
                  (lambda (_rest22450_ _vars22452_ _K22453_)
                    (let* ((_g2245622471_
                            (lambda (_g2245722467_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2245722467_)))
                           (_g2245522482_
                            (lambda (_g2245722475_)
                              ((lambda () (_K22453_ _vars22452_)))))
                           (_g2245422533_
                            (lambda (_g2245722486_)
                              (if (gx#stx-pair? _g2245722486_)
                                  (let ((_e2246022489_
                                         (gx#syntax-e _g2245722486_)))
                                    (let ((_hd2246122493_
                                           (##car _e2246022489_))
                                          (_tl2246222496_
                                           (##cdr _e2246022489_)))
                                      (if (gx#stx-pair? _tl2246222496_)
                                          (let ((_e2246322499_
                                                 (gx#syntax-e _tl2246222496_)))
                                            (let ((_hd2246422503_
                                                   (##car _e2246322499_))
                                                  (_tl2246522506_
                                                   (##cdr _e2246322499_)))
                                              ((lambda (_L22509_ _L22511_)
                                                 (_loop22444_
                                                  _L22511_
                                                  _vars22452_
                                                  (lambda (_g2252722529_)
                                                    (_loop-class-list22448_
                                                     _L22509_
                                                     _g2252722529_
                                                     _K22453_))))
                                               _tl2246522506_
                                               _hd2246422503_)))
                                          (_g2245522482_ _g2245722486_))))
                                  (_g2245522482_ _g2245722486_)))))
                      (_g2245422533_ _rest22450_)))))
          (_loop22444_ _ptree22441_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx19257_ _tgt19259_ _ptree19260_ _K19261_ _E19262_)
        (letrec ((_generate119264_
                  (lambda (_tgt20794_ _ptree20796_ _K20797_ _E20798_)
                    (let* ((_g2080020808_
                            (lambda (_g2080120804_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2080120804_)))
                           (_g2079922437_
                            (lambda (_g2080120812_)
                              ((lambda (_L20815_)
                                 (let ()
                                   (let* ((_g2084220968_
                                           (lambda (_g2084320964_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2084320964_)))
                                          (_g2084120989_
                                           (lambda (_g2084320972_)
                                             (if (gx#stx-pair? _g2084320972_)
                                                 (let ((_e2096020975_
                                                        (gx#syntax-e
                                                         _g2084320972_)))
                                                   (let ((_hd2096120979_
                                                          (##car _e2096020975_))
                                                         (_tl2096220982_
                                                          (##cdr _e2096020975_)))
                                                     (if (gx#stx-datum?
                                                          _hd2096120979_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2096120979_)
                             'any:)
                     (if (gx#stx-null? _tl2096220982_)
                         ((lambda () _K20797_))
                         (_g2084220968_ _g2084320972_))
                     (_g2084220968_ _g2084320972_))
                 (_g2084220968_ _g2084320972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2084220968_
                                                  _g2084320972_))))
                                          (_g2084021032_
                                           (lambda (_g2084320993_)
                                             (if (gx#stx-pair? _g2084320993_)
                                                 (let ((_e2095420996_
                                                        (gx#syntax-e
                                                         _g2084320993_)))
                                                   (let ((_hd2095521000_
                                                          (##car _e2095420996_))
                                                         (_tl2095621003_
                                                          (##cdr _e2095420996_)))
                                                     (if (gx#stx-datum?
                                                          _hd2095521000_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2095521000_)
                             'var:)
                     (if (gx#stx-pair? _tl2095621003_)
                         (let ((_e2095721006_ (gx#syntax-e _tl2095621003_)))
                           (let ((_hd2095821010_ (##car _e2095721006_))
                                 (_tl2095921013_ (##cdr _e2095721006_)))
                             (if (gx#stx-null? _tl2095921013_)
                                 ((lambda (_L21016_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L21016_
                                                            (cons _L20815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20797_ '()))))
                                  _hd2095821010_)
                                 (_g2084120989_ _g2084320993_))))
                         (_g2084120989_ _g2084320993_))
                     (_g2084120989_ _g2084320993_))
                 (_g2084120989_ _g2084320993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2084120989_
                                                  _g2084320993_))))
                                          (_g2083921117_
                                           (lambda (_g2084321036_)
                                             (if (gx#stx-pair? _g2084321036_)
                                                 (let ((_e2094421039_
                                                        (gx#syntax-e
                                                         _g2084321036_)))
                                                   (let ((_hd2094521043_
                                                          (##car _e2094421039_))
                                                         (_tl2094621046_
                                                          (##cdr _e2094421039_)))
                                                     (if (gx#stx-datum?
                                                          _hd2094521043_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2094521043_)
                             'apply:)
                     (if (gx#stx-pair? _tl2094621046_)
                         (let ((_e2094721049_ (gx#syntax-e _tl2094621046_)))
                           (let ((_hd2094821053_ (##car _e2094721049_))
                                 (_tl2094921056_ (##cdr _e2094721049_)))
                             (if (gx#stx-pair? _tl2094921056_)
                                 (let ((_e2095021059_
                                        (gx#syntax-e _tl2094921056_)))
                                   (let ((_hd2095121063_ (##car _e2095021059_))
                                         (_tl2095221066_
                                          (##cdr _e2095021059_)))
                                     (if (gx#stx-null? _tl2095221066_)
                                         ((lambda (_L21069_ _L21071_)
                                            (let* ((_g2108621094_
                                                    (lambda (_g2108721090_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2108721090_)))
                                                   (_g2108521113_
                                                    (lambda (_g2108721098_)
                                                      ((lambda (_L21101_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L21101_
                                           (cons (cons _L21071_
                                                       (cons _L20815_ '()))
                                                 '()))
                                     '())
                               (cons (_generate119264_
                                      _L21101_
                                      _L21069_
                                      _K20797_
                                      _E20798_)
                                     '())))))
               _g2108721098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2108521113_
                                               (gx#genident 'e))))
                                          _hd2095121063_
                                          _hd2094821053_)
                                         (_g2084021032_ _g2084321036_))))
                                 (_g2084021032_ _g2084321036_))))
                         (_g2084021032_ _g2084321036_))
                     (_g2084021032_ _g2084321036_))
                 (_g2084021032_ _g2084321036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2084021032_
                                                  _g2084321036_))))
                                          (_g2083821199_
                                           (lambda (_g2084321121_)
                                             (if (gx#stx-pair? _g2084321121_)
                                                 (let ((_e2093621124_
                                                        (gx#syntax-e
                                                         _g2084321121_)))
                                                   (let ((_hd2093721128_
                                                          (##car _e2093621124_))
                                                         (_tl2093821131_
                                                          (##cdr _e2093621124_)))
                                                     (if (gx#stx-datum?
                                                          _hd2093721128_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2093721128_)
                             'datum:)
                     (if (gx#stx-pair? _tl2093821131_)
                         (let ((_e2093921134_ (gx#syntax-e _tl2093821131_)))
                           (let ((_hd2094021138_ (##car _e2093921134_))
                                 (_tl2094121141_ (##cdr _e2093921134_)))
                             (if (gx#stx-null? _tl2094121141_)
                                 ((lambda (_L21144_)
                                    (let* ((_g2115721165_
                                            (lambda (_g2115821161_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2115821161_)))
                                           (_g2115621184_
                                            (lambda (_g2115821169_)
                                              ((lambda (_L21172_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L21172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20815_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L21144_ '()))
                                         '())))
                       (cons _K20797_ (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2115821169_))))
                                      (_g2115621184_
                                       (let ((_e21188_ (gx#stx-e _L21144_)))
                                         (if (let ((_$e21191_
                                                    (symbol? _e21188_)))
                                               (if _$e21191_
                                                   _$e21191_
                                                   (let ((_$e21195_
                                                          (keyword? _e21188_)))
                                                     (if _$e21195_
                                                         _$e21195_
                                                         (immediate?
                                                          _e21188_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e21188_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2094021138_)
                                 (_g2083921117_ _g2084321121_))))
                         (_g2083921117_ _g2084321121_))
                     (_g2083921117_ _g2084321121_))
                 (_g2083921117_ _g2084321121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083921117_
                                                  _g2084321121_))))
                                          (_g2083721253_
                                           (lambda (_g2084321203_)
                                             (if (gx#stx-pair? _g2084321203_)
                                                 (let ((_e2092621206_
                                                        (gx#syntax-e
                                                         _g2084321203_)))
                                                   (let ((_hd2092721210_
                                                          (##car _e2092621206_))
                                                         (_tl2092821213_
                                                          (##cdr _e2092621206_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092721210_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092721210_)
                             'class:)
                     (if (gx#stx-pair? _tl2092821213_)
                         (let ((_e2092921216_ (gx#syntax-e _tl2092821213_)))
                           (let ((_hd2093021220_ (##car _e2092921216_))
                                 (_tl2093121223_ (##cdr _e2092921216_)))
                             (if (gx#stx-pair? _tl2093121223_)
                                 (let ((_e2093221226_
                                        (gx#syntax-e _tl2093121223_)))
                                   (let ((_hd2093321230_ (##car _e2093221226_))
                                         (_tl2093421233_
                                          (##cdr _e2093221226_)))
                                     (if (gx#stx-null? _tl2093421233_)
                                         ((lambda (_L21236_ _L21238_)
                                            (_generate-class19270_
                                             (gx#stx-e _L21238_)
                                             _tgt20794_
                                             _L21236_
                                             _K20797_
                                             _E20798_))
                                          _hd2093321230_
                                          _hd2093021220_)
                                         (_g2083821199_ _g2084321203_))))
                                 (_g2083821199_ _g2084321203_))))
                         (_g2083821199_ _g2084321203_))
                     (_g2083821199_ _g2084321203_))
                 (_g2083821199_ _g2084321203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083821199_
                                                  _g2084321203_))))
                                          (_g2083621307_
                                           (lambda (_g2084321257_)
                                             (if (gx#stx-pair? _g2084321257_)
                                                 (let ((_e2091521260_
                                                        (gx#syntax-e
                                                         _g2084321257_)))
                                                   (let ((_hd2091621264_
                                                          (##car _e2091521260_))
                                                         (_tl2091721267_
                                                          (##cdr _e2091521260_)))
                                                     (if (gx#stx-datum?
                                                          _hd2091621264_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2091621264_)
                             'struct:)
                     (if (gx#stx-pair? _tl2091721267_)
                         (let ((_e2091821270_ (gx#syntax-e _tl2091721267_)))
                           (let ((_hd2091921274_ (##car _e2091821270_))
                                 (_tl2092021277_ (##cdr _e2091821270_)))
                             (if (gx#stx-pair? _tl2092021277_)
                                 (let ((_e2092121280_
                                        (gx#syntax-e _tl2092021277_)))
                                   (let ((_hd2092221284_ (##car _e2092121280_))
                                         (_tl2092321287_
                                          (##cdr _e2092121280_)))
                                     (if (gx#stx-null? _tl2092321287_)
                                         ((lambda (_L21290_ _L21292_)
                                            (_generate-struct19269_
                                             (gx#stx-e _L21292_)
                                             _tgt20794_
                                             _L21290_
                                             _K20797_
                                             _E20798_))
                                          _hd2092221284_
                                          _hd2091921274_)
                                         (_g2083721253_ _g2084321257_))))
                                 (_g2083721253_ _g2084321257_))))
                         (_g2083721253_ _g2084321257_))
                     (_g2083721253_ _g2084321257_))
                 (_g2083721253_ _g2084321257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083721253_
                                                  _g2084321257_))))
                                          (_g2083521485_
                                           (lambda (_g2084321311_)
                                             (if (gx#stx-pair? _g2084321311_)
                                                 (let ((_e2090721314_
                                                        (gx#syntax-e
                                                         _g2084321311_)))
                                                   (let ((_hd2090821318_
                                                          (##car _e2090721314_))
                                                         (_tl2090921321_
                                                          (##cdr _e2090721314_)))
                                                     (if (gx#stx-datum?
                                                          _hd2090821318_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2090821318_)
                             'vector:)
                     (if (gx#stx-pair? _tl2090921321_)
                         (let ((_e2091021324_ (gx#syntax-e _tl2090921321_)))
                           (let ((_hd2091121328_ (##car _e2091021324_))
                                 (_tl2091221331_ (##cdr _e2091021324_)))
                             (if (gx#stx-null? _tl2091221331_)
                                 ((lambda (_L21334_)
                                    (let* ((_g2134821369_
                                            (lambda (_g2134921365_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2134921365_)))
                                           (_g2134721410_
                                            (lambda (_g2134921373_)
                                              (if (gx#stx-pair? _g2134921373_)
                                                  (let ((_e2135821376_
                                                         (gx#syntax-e
                                                          _g2134921373_)))
                                                    (let ((_hd2135921380_
                                                           (##car _e2135821376_))
                                                          (_tl2136021383_
                                                           (##cdr _e2135821376_)))
                                                      (if (gx#stx-datum?
                                                           _hd2135921380_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2135921380_)
                              'list:)
                      (if (gx#stx-pair? _tl2136021383_)
                          (let ((_e2136121386_ (gx#syntax-e _tl2136021383_)))
                            (let ((_hd2136221390_ (##car _e2136121386_))
                                  (_tl2136321393_ (##cdr _e2136121386_)))
                              (if (gx#stx-null? _tl2136321393_)
                                  ((lambda (_L21396_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20815_ '()))
                                                 (cons (_generate-list-vector19268_
                                                        _tgt20794_
                                                        _L21396_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20797_
                                                        _E20798_)
                                                       (cons _E20798_ '())))))
                                   _hd2136221390_)
                                  (_g2134821369_ _g2134921373_))))
                          (_g2134821369_ _g2134921373_))
                      (_g2134821369_ _g2134921373_))
                  (_g2134821369_ _g2134921373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2134821369_
                                                   _g2134921373_))))
                                           (_g2134621481_
                                            (lambda (_g2134921414_)
                                              (if (gx#stx-pair? _g2134921414_)
                                                  (let ((_e2135121417_
                                                         (gx#syntax-e
                                                          _g2134921414_)))
                                                    (let ((_hd2135221421_
                                                           (##car _e2135121417_))
                                                          (_tl2135321424_
                                                           (##cdr _e2135121417_)))
                                                      (if (gx#stx-datum?
                                                           _hd2135221421_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2135221421_)
                              'simple:)
                      (if (gx#stx-pair? _tl2135321424_)
                          (let ((_e2135421427_ (gx#syntax-e _tl2135321424_)))
                            (let ((_hd2135521431_ (##car _e2135421427_))
                                  (_tl2135621434_ (##cdr _e2135421427_)))
                              (if (gx#stx-null? _tl2135621434_)
                                  ((lambda (_L21437_)
                                     (let* ((_g2145021458_
                                             (lambda (_g2145121454_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2145121454_)))
                                            (_g2144921477_
                                             (lambda (_g2145121462_)
                                               ((lambda (_L21465_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20815_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L21465_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector19267_
                               _tgt20794_
                               _L21437_
                               '0
                               _K20797_
                               _E20798_)
                              (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2145121462_))))
                                       (_g2144921477_
                                        (gx#stx-length _L21437_))))
                                   _hd2135521431_)
                                  (_g2134721410_ _g2134921414_))))
                          (_g2134721410_ _g2134921414_))
                      (_g2134721410_ _g2134921414_))
                  (_g2134721410_ _g2134921414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2134721410_
                                                   _g2134921414_)))))
                                      (_g2134621481_ _L21334_)))
                                  _hd2091121328_)
                                 (_g2083621307_ _g2084321311_))))
                         (_g2083621307_ _g2084321311_))
                     (_g2083621307_ _g2084321311_))
                 (_g2083621307_ _g2084321311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083621307_
                                                  _g2084321311_))))
                                          (_g2083421663_
                                           (lambda (_g2084321489_)
                                             (if (gx#stx-pair? _g2084321489_)
                                                 (let ((_e2090021492_
                                                        (gx#syntax-e
                                                         _g2084321489_)))
                                                   (let ((_hd2090121496_
                                                          (##car _e2090021492_))
                                                         (_tl2090221499_
                                                          (##cdr _e2090021492_)))
                                                     (if (gx#stx-datum?
                                                          _hd2090121496_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2090121496_)
                             'values:)
                     (if (gx#stx-pair? _tl2090221499_)
                         (let ((_e2090321502_ (gx#syntax-e _tl2090221499_)))
                           (let ((_hd2090421506_ (##car _e2090321502_))
                                 (_tl2090521509_ (##cdr _e2090321502_)))
                             (if (gx#stx-null? _tl2090521509_)
                                 ((lambda (_L21512_)
                                    (let* ((_g2152621547_
                                            (lambda (_g2152721543_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2152721543_)))
                                           (_g2152521588_
                                            (lambda (_g2152721551_)
                                              (if (gx#stx-pair? _g2152721551_)
                                                  (let ((_e2153621554_
                                                         (gx#syntax-e
                                                          _g2152721551_)))
                                                    (let ((_hd2153721558_
                                                           (##car _e2153621554_))
                                                          (_tl2153821561_
                                                           (##cdr _e2153621554_)))
                                                      (if (gx#stx-datum?
                                                           _hd2153721558_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2153721558_)
                              'list:)
                      (if (gx#stx-pair? _tl2153821561_)
                          (let ((_e2153921564_ (gx#syntax-e _tl2153821561_)))
                            (let ((_hd2154021568_ (##car _e2153921564_))
                                  (_tl2154121571_ (##cdr _e2153921564_)))
                              (if (gx#stx-null? _tl2154121571_)
                                  ((lambda (_L21574_)
                                     (_generate-list-vector19268_
                                      _tgt20794_
                                      _L21574_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20797_
                                      _E20798_))
                                   _hd2154021568_)
                                  (_g2152621547_ _g2152721551_))))
                          (_g2152621547_ _g2152721551_))
                      (_g2152621547_ _g2152721551_))
                  (_g2152621547_ _g2152721551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2152621547_
                                                   _g2152721551_))))
                                           (_g2152421659_
                                            (lambda (_g2152721592_)
                                              (if (gx#stx-pair? _g2152721592_)
                                                  (let ((_e2152921595_
                                                         (gx#syntax-e
                                                          _g2152721592_)))
                                                    (let ((_hd2153021599_
                                                           (##car _e2152921595_))
                                                          (_tl2153121602_
                                                           (##cdr _e2152921595_)))
                                                      (if (gx#stx-datum?
                                                           _hd2153021599_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2153021599_)
                              'simple:)
                      (if (gx#stx-pair? _tl2153121602_)
                          (let ((_e2153221605_ (gx#syntax-e _tl2153121602_)))
                            (let ((_hd2153321609_ (##car _e2153221605_))
                                  (_tl2153421612_ (##cdr _e2153221605_)))
                              (if (gx#stx-null? _tl2153421612_)
                                  ((lambda (_L21615_)
                                     (let* ((_g2162821636_
                                             (lambda (_g2162921632_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2162921632_)))
                                            (_g2162721655_
                                             (lambda (_g2162921640_)
                                               ((lambda (_L21643_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20815_ '()))
                                    (cons _L21643_ '())))
                        (cons (_generate-simple-vector19267_
                               _tgt20794_
                               _L21615_
                               '0
                               _K20797_
                               _E20798_)
                              (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2162921640_))))
                                       (_g2162721655_
                                        (gx#stx-length _L21615_))))
                                   _hd2153321609_)
                                  (_g2152521588_ _g2152721592_))))
                          (_g2152521588_ _g2152721592_))
                      (_g2152521588_ _g2152721592_))
                  (_g2152521588_ _g2152721592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2152521588_
                                                   _g2152721592_)))))
                                      (_g2152421659_ _L21512_)))
                                  _hd2090421506_)
                                 (_g2083521485_ _g2084321489_))))
                         (_g2083521485_ _g2084321489_))
                     (_g2083521485_ _g2084321489_))
                 (_g2083521485_ _g2084321489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083521485_
                                                  _g2084321489_))))
                                          (_g2083321734_
                                           (lambda (_g2084321667_)
                                             (if (gx#stx-pair? _g2084321667_)
                                                 (let ((_e2089321670_
                                                        (gx#syntax-e
                                                         _g2084321667_)))
                                                   (let ((_hd2089421674_
                                                          (##car _e2089321670_))
                                                         (_tl2089521677_
                                                          (##cdr _e2089321670_)))
                                                     (if (gx#stx-datum?
                                                          _hd2089421674_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2089421674_)
                             'box:)
                     (if (gx#stx-pair? _tl2089521677_)
                         (let ((_e2089621680_ (gx#syntax-e _tl2089521677_)))
                           (let ((_hd2089721684_ (##car _e2089621680_))
                                 (_tl2089821687_ (##cdr _e2089621680_)))
                             (if (gx#stx-null? _tl2089821687_)
                                 ((lambda (_L21690_)
                                    (let* ((_g2170321711_
                                            (lambda (_g2170421707_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2170421707_)))
                                           (_g2170221730_
                                            (lambda (_g2170421715_)
                                              ((lambda (_L21718_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20815_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21718_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20815_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate119264_
                                                _L21718_
                                                _L21690_
                                                _K20797_
                                                _E20798_)
                                               '())))
                             (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2170421715_))))
                                      (_g2170221730_ (gx#genident 'e))))
                                  _hd2089721684_)
                                 (_g2083421663_ _g2084321667_))))
                         (_g2083421663_ _g2084321667_))
                     (_g2083421663_ _g2084321667_))
                 (_g2083421663_ _g2084321667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083421663_
                                                  _g2084321667_))))
                                          (_g2083221788_
                                           (lambda (_g2084321738_)
                                             (if (gx#stx-pair? _g2084321738_)
                                                 (let ((_e2088321741_
                                                        (gx#syntax-e
                                                         _g2084321738_)))
                                                   (let ((_hd2088421745_
                                                          (##car _e2088321741_))
                                                         (_tl2088521748_
                                                          (##cdr _e2088321741_)))
                                                     (if (gx#stx-datum?
                                                          _hd2088421745_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2088421745_)
                             'splice:)
                     (if (gx#stx-pair? _tl2088521748_)
                         (let ((_e2088621751_ (gx#syntax-e _tl2088521748_)))
                           (let ((_hd2088721755_ (##car _e2088621751_))
                                 (_tl2088821758_ (##cdr _e2088621751_)))
                             (if (gx#stx-pair? _tl2088821758_)
                                 (let ((_e2088921761_
                                        (gx#syntax-e _tl2088821758_)))
                                   (let ((_hd2089021765_ (##car _e2088921761_))
                                         (_tl2089121768_
                                          (##cdr _e2088921761_)))
                                     (if (gx#stx-null? _tl2089121768_)
                                         ((lambda (_L21771_ _L21773_)
                                            (_generate-splice19266_
                                             _tgt20794_
                                             _L21773_
                                             _L21771_
                                             _K20797_
                                             _E20798_))
                                          _hd2089021765_
                                          _hd2088721755_)
                                         (_g2083321734_ _g2084321738_))))
                                 (_g2083321734_ _g2084321738_))))
                         (_g2083321734_ _g2084321738_))
                     (_g2083321734_ _g2084321738_))
                 (_g2083321734_ _g2084321738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083321734_
                                                  _g2084321738_))))
                                          (_g2083121809_
                                           (lambda (_g2084321792_)
                                             (if (gx#stx-pair? _g2084321792_)
                                                 (let ((_e2087821795_
                                                        (gx#syntax-e
                                                         _g2084321792_)))
                                                   (let ((_hd2087921799_
                                                          (##car _e2087821795_))
                                                         (_tl2088021802_
                                                          (##cdr _e2087821795_)))
                                                     (if (gx#stx-datum?
                                                          _hd2087921799_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2087921799_)
                             'null:)
                     (if (gx#stx-null? _tl2088021802_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20815_ '()))
                                        (cons _K20797_ (cons _E20798_ '()))))))
                         (_g2083221788_ _g2084321792_))
                     (_g2083221788_ _g2084321792_))
                 (_g2083221788_ _g2084321792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083221788_
                                                  _g2084321792_))))
                                          (_g2083021928_
                                           (lambda (_g2084321813_)
                                             (if (gx#stx-pair? _g2084321813_)
                                                 (let ((_e2086921816_
                                                        (gx#syntax-e
                                                         _g2084321813_)))
                                                   (let ((_hd2087021820_
                                                          (##car _e2086921816_))
                                                         (_tl2087121823_
                                                          (##cdr _e2086921816_)))
                                                     (if (gx#stx-datum?
                                                          _hd2087021820_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2087021820_)
                             'cons:)
                     (if (gx#stx-pair? _tl2087121823_)
                         (let ((_e2087221826_ (gx#syntax-e _tl2087121823_)))
                           (let ((_hd2087321830_ (##car _e2087221826_))
                                 (_tl2087421833_ (##cdr _e2087221826_)))
                             (if (gx#stx-pair? _tl2087421833_)
                                 (let ((_e2087521836_
                                        (gx#syntax-e _tl2087421833_)))
                                   (let ((_hd2087621840_ (##car _e2087521836_))
                                         (_tl2087721843_
                                          (##cdr _e2087521836_)))
                                     (if (gx#stx-null? _tl2087721843_)
                                         ((lambda (_L21846_ _L21848_)
                                            (let* ((_g2186421879_
                                                    (lambda (_g2186521875_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2186521875_)))
                                                   (_g2186321924_
                                                    (lambda (_g2186521883_)
                                                      (if (gx#stx-pair?
                                                           _g2186521883_)
                                                          (let ((_e2186821886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2186521883_)))
                    (let ((_hd2186921890_ (##car _e2186821886_))
                          (_tl2187021893_ (##cdr _e2186821886_)))
                      (if (gx#stx-pair? _tl2187021893_)
                          (let ((_e2187121896_ (gx#syntax-e _tl2187021893_)))
                            (let ((_hd2187221900_ (##car _e2187121896_))
                                  (_tl2187321903_ (##cdr _e2187121896_)))
                              (if (gx#stx-null? _tl2187321903_)
                                  ((lambda (_L21906_ _L21908_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20815_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20815_ '()))
                                               '()))
                                   (cons (cons _L21906_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20815_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate119264_
                                    _L21908_
                                    _L21848_
                                    (_generate119264_
                                     _L21906_
                                     _L21846_
                                     _K20797_
                                     _E20798_)
                                    _E20798_)
                                   '())))
                 (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2187221900_
                                   _hd2186921890_)
                                  (_g2186421879_ _g2186521883_))))
                          (_g2186421879_ _g2186521883_))))
                  (_g2186421879_ _g2186521883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186321924_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2087621840_
                                          _hd2087321830_)
                                         (_g2083121809_ _g2084321813_))))
                                 (_g2083121809_ _g2084321813_))))
                         (_g2083121809_ _g2084321813_))
                     (_g2083121809_ _g2084321813_))
                 (_g2083121809_ _g2084321813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083121809_
                                                  _g2084321813_))))
                                          (_g2082921968_
                                           (lambda (_g2084321932_)
                                             (if (gx#stx-pair? _g2084321932_)
                                                 (let ((_e2086121935_
                                                        (gx#syntax-e
                                                         _g2084321932_)))
                                                   (let ((_hd2086221939_
                                                          (##car _e2086121935_))
                                                         (_tl2086321942_
                                                          (##cdr _e2086121935_)))
                                                     (if (gx#stx-datum?
                                                          _hd2086221939_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2086221939_)
                             'not:)
                     (if (gx#stx-pair? _tl2086321942_)
                         (let ((_e2086421945_ (gx#syntax-e _tl2086321942_)))
                           (let ((_hd2086521949_ (##car _e2086421945_))
                                 (_tl2086621952_ (##cdr _e2086421945_)))
                             (if (gx#stx-null? _tl2086621952_)
                                 ((lambda (_L21955_)
                                    (_generate119264_
                                     _tgt20794_
                                     _L21955_
                                     _E20798_
                                     _K20797_))
                                  _hd2086521949_)
                                 (_g2083021928_ _g2084321932_))))
                         (_g2083021928_ _g2084321932_))
                     (_g2083021928_ _g2084321932_))
                 (_g2083021928_ _g2084321932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2083021928_
                                                  _g2084321932_))))
                                          (_g2082822056_
                                           (lambda (_g2084321972_)
                                             (if (gx#stx-pair? _g2084321972_)
                                                 (let ((_e2085721975_
                                                        (gx#syntax-e
                                                         _g2084321972_)))
                                                   (let ((_hd2085821979_
                                                          (##car _e2085721975_))
                                                         (_tl2085921982_
                                                          (##cdr _e2085721975_)))
                                                     (if (gx#stx-datum?
                                                          _hd2085821979_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2085821979_)
                             'or:)
                     ((lambda (_L21985_)
                        (let* ((_g2199722009_
                                (lambda (_g2199822005_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2199822005_)))
                               (_g2199622020_
                                (lambda (_g2199822013_)
                                  ((lambda () _E20798_))))
                               (_g2199522052_
                                (lambda (_g2199822024_)
                                  (if (gx#stx-pair? _g2199822024_)
                                      (let ((_e2200122027_
                                             (gx#syntax-e _g2199822024_)))
                                        (let ((_hd2200222031_
                                               (##car _e2200122027_))
                                              (_tl2200322034_
                                               (##cdr _e2200122027_)))
                                          ((lambda (_L22037_ _L22039_)
                                             (_generate119264_
                                              _tgt20794_
                                              _L22039_
                                              _K20797_
                                              (_generate119264_
                                               _tgt20794_
                                               (cons 'or: _L22037_)
                                               _K20797_
                                               _E20798_)))
                                           _tl2200322034_
                                           _hd2200222031_)))
                                      (_g2199622020_ _g2199822024_)))))
                          (_g2199522052_ _L21985_)))
                      _tl2085921982_)
                     (_g2082921968_ _g2084321972_))
                 (_g2082921968_ _g2084321972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082921968_
                                                  _g2084321972_))))
                                          (_g2082722144_
                                           (lambda (_g2084322060_)
                                             (if (gx#stx-pair? _g2084322060_)
                                                 (let ((_e2085322063_
                                                        (gx#syntax-e
                                                         _g2084322060_)))
                                                   (let ((_hd2085422067_
                                                          (##car _e2085322063_))
                                                         (_tl2085522070_
                                                          (##cdr _e2085322063_)))
                                                     (if (gx#stx-datum?
                                                          _hd2085422067_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2085422067_)
                             'and:)
                     ((lambda (_L22073_)
                        (let* ((_g2208522097_
                                (lambda (_g2208622093_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2208622093_)))
                               (_g2208422108_
                                (lambda (_g2208622101_)
                                  ((lambda () _K20797_))))
                               (_g2208322140_
                                (lambda (_g2208622112_)
                                  (if (gx#stx-pair? _g2208622112_)
                                      (let ((_e2208922115_
                                             (gx#syntax-e _g2208622112_)))
                                        (let ((_hd2209022119_
                                               (##car _e2208922115_))
                                              (_tl2209122122_
                                               (##cdr _e2208922115_)))
                                          ((lambda (_L22125_ _L22127_)
                                             (_generate119264_
                                              _tgt20794_
                                              _L22127_
                                              (_generate119264_
                                               _tgt20794_
                                               (cons 'and: _L22125_)
                                               _K20797_
                                               _E20798_)
                                              _E20798_))
                                           _tl2209122122_
                                           _hd2209022119_)))
                                      (_g2208422108_ _g2208622112_)))))
                          (_g2208322140_ _L22073_)))
                      _tl2085522070_)
                     (_g2082822056_ _g2084322060_))
                 (_g2082822056_ _g2084322060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082822056_
                                                  _g2084322060_))))
                                          (_g2082622433_
                                           (lambda (_g2084322148_)
                                             (if (gx#stx-pair? _g2084322148_)
                                                 (let ((_e2084622151_
                                                        (gx#syntax-e
                                                         _g2084322148_)))
                                                   (let ((_hd2084722155_
                                                          (##car _e2084622151_))
                                                         (_tl2084822158_
                                                          (##cdr _e2084622151_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084722155_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084722155_)
                             '?:)
                     (if (gx#stx-pair? _tl2084822158_)
                         (let ((_e2084922161_ (gx#syntax-e _tl2084822158_)))
                           (let ((_hd2085022165_ (##car _e2084922161_))
                                 (_tl2085122168_ (##cdr _e2084922161_)))
                             ((lambda (_L22171_ _L22173_)
                                (let* ((_g2218922221_
                                        (lambda (_g2219022217_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2219022217_)))
                                       (_g2218822319_
                                        (lambda (_g2219022225_)
                                          (if (gx#stx-pair? _g2219022225_)
                                              (let ((_e2220422228_
                                                     (gx#syntax-e
                                                      _g2219022225_)))
                                                (let ((_hd2220522232_
                                                       (##car _e2220422228_))
                                                      (_tl2220622235_
                                                       (##cdr _e2220422228_)))
                                                  (if (gx#stx-datum?
                                                       _hd2220522232_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2220522232_)
                          '::)
                  (if (gx#stx-pair? _tl2220622235_)
                      (let ((_e2220722238_ (gx#syntax-e _tl2220622235_)))
                        (let ((_hd2220822242_ (##car _e2220722238_))
                              (_tl2220922245_ (##cdr _e2220722238_)))
                          (if (gx#stx-pair? _tl2220922245_)
                              (let ((_e2221022248_
                                     (gx#syntax-e _tl2220922245_)))
                                (let ((_hd2221122252_ (##car _e2221022248_))
                                      (_tl2221222255_ (##cdr _e2221022248_)))
                                  (if (gx#stx-datum? _hd2221122252_)
                                      (if (equal? (gx#stx-e _hd2221122252_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2221222255_)
                                              (let ((_e2221322258_
                                                     (gx#syntax-e
                                                      _tl2221222255_)))
                                                (let ((_hd2221422262_
                                                       (##car _e2221322258_))
                                                      (_tl2221522265_
                                                       (##cdr _e2221322258_)))
                                                  (if (gx#stx-null?
                                                       _tl2221522265_)
                                                      ((lambda (_L22268_
                                                                _L22270_)
                                                         (let* ((_g2228822296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2228922292_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2228922292_)))
                        (_g2228722315_
                         (lambda (_g2228922300_)
                           ((lambda (_L22303_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L22173_
                                                        (cons _L20815_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L22303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L22270_ (cons _L20815_ '()))
                                        '()))
                            '())
                      (cons (_generate119264_
                             _L22303_
                             _L22268_
                             _K20797_
                             _E20798_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20798_ '()))))))
                            _g2228922300_))))
                   (_g2228722315_ (gx#genident 'e))))
               _hd2221422262_
               _hd2220822242_)
              (_g2218922221_ _g2219022225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218922221_ _g2219022225_))
                                          (_g2218922221_ _g2219022225_))
                                      (_g2218922221_ _g2219022225_))))
                              (_g2218922221_ _g2219022225_))))
                      (_g2218922221_ _g2219022225_))
                  (_g2218922221_ _g2219022225_))
              (_g2218922221_ _g2219022225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218922221_ _g2219022225_))))
                                       (_g2218722390_
                                        (lambda (_g2219022323_)
                                          (if (gx#stx-pair? _g2219022323_)
                                              (let ((_e2219622326_
                                                     (gx#syntax-e
                                                      _g2219022323_)))
                                                (let ((_hd2219722330_
                                                       (##car _e2219622326_))
                                                      (_tl2219822333_
                                                       (##cdr _e2219622326_)))
                                                  (if (gx#stx-datum?
                                                       _hd2219722330_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2219722330_)
                          '=>:)
                  (if (gx#stx-pair? _tl2219822333_)
                      (let ((_e2219922336_ (gx#syntax-e _tl2219822333_)))
                        (let ((_hd2220022340_ (##car _e2219922336_))
                              (_tl2220122343_ (##cdr _e2219922336_)))
                          (if (gx#stx-null? _tl2220122343_)
                              ((lambda (_L22346_)
                                 (let* ((_g2235922367_
                                         (lambda (_g2236022363_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2236022363_)))
                                        (_g2235822386_
                                         (lambda (_g2236022371_)
                                           ((lambda (_L22374_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L22173_ (cons _L20815_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22374_
                                      (cons (_generate119264_
                                             _L22374_
                                             _L22346_
                                             _K20797_
                                             _E20798_)
                                            (cons _E20798_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2236022371_))))
                                   (_g2235822386_ (gx#genident 'e))))
                               _hd2220022340_)
                              (_g2218822319_ _g2219022323_))))
                      (_g2218822319_ _g2219022323_))
                  (_g2218822319_ _g2219022323_))
              (_g2218822319_ _g2219022323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218822319_ _g2219022323_))))
                                       (_g2218622418_
                                        (lambda (_g2219022394_)
                                          (if (gx#stx-pair? _g2219022394_)
                                              (let ((_e2219222397_
                                                     (gx#syntax-e
                                                      _g2219022394_)))
                                                (let ((_hd2219322401_
                                                       (##car _e2219222397_))
                                                      (_tl2219422404_
                                                       (##cdr _e2219222397_)))
                                                  (if (gx#stx-null?
                                                       _tl2219422404_)
                                                      ((lambda (_L22407_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L22173_ (cons _L20815_ '())))
                             (cons (_generate119264_
                                    _tgt20794_
                                    _L22407_
                                    _K20797_
                                    _E20798_)
                                   (cons _E20798_ '())))))
               _hd2219322401_)
              (_g2218722390_ _g2219022394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218722390_ _g2219022394_))))
                                       (_g2218522429_
                                        (lambda (_g2219022422_)
                                          (if (gx#stx-null? _g2219022422_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L22173_ (cons _L20815_ '())))
                     (cons _K20797_ (cons _E20798_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218622418_ _g2219022422_)))))
                                  (_g2218522429_ _L22171_)))
                              _tl2085122168_
                              _hd2085022165_)))
                         (_g2082722144_ _g2084322148_))
                     (_g2082722144_ _g2084322148_))
                 (_g2082722144_ _g2084322148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082722144_
                                                  _g2084322148_)))))
                                     (_g2082622433_ _ptree20796_))))
                               _g2080120812_))))
                      (_g2079922437_ _tgt20794_))))
                 (_generate-splice19266_
                  (lambda (_tgt20166_ _hd20168_ _rest20169_ _K20170_ _E20171_)
                    (let* ((_g2017320190_
                            (lambda (_g2017420186_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2017420186_)))
                           (_g2017220790_
                            (lambda (_g2017420194_)
                              (if (gx#stx-pair/null? _g2017420194_)
                                  (if (fx>= (gx#stx-length _g2017420194_) '0)
                                      (let ((_g31734_
                                             (gx#syntax-split-splice
                                              _g2017420194_
                                              '0)))
                                        (begin
                                          (let ((_g31735_
                                                 (values-count _g31734_)))
                                            (if (not (fx= _g31735_ 2))
                                                (error "Context expects 2 values"
                                                       _g31735_)))
                                          (let ((_target2017620197_
                                                 (values-ref _g31734_ 0))
                                                (_tl2017820200_
                                                 (values-ref _g31734_ 1)))
                                            (if (gx#stx-null? _tl2017820200_)
                                                (letrec ((_loop2017920203_
                                                          (lambda (_hd2017720207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2018320210_)
                    (if (gx#stx-pair? _hd2017720207_)
                        (let ((_e2018020213_ (gx#syntax-e _hd2017720207_)))
                          (let ((_lp-hd2018120217_ (##car _e2018020213_))
                                (_lp-tl2018220220_ (##cdr _e2018020213_)))
                            (_loop2017920203_
                             _lp-tl2018220220_
                             (cons _lp-hd2018120217_ _var2018320210_))))
                        (let ((_var2018420223_ (reverse _var2018320210_)))
                          ((lambda (_L20227_)
                             (let ()
                               (let* ((_g2024320260_
                                       (lambda (_g2024420256_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2024420256_)))
                                      (_g2024220778_
                                       (lambda (_g2024420264_)
                                         (if (gx#stx-pair/null? _g2024420264_)
                                             (if (fx>= (gx#stx-length
                                                        _g2024420264_)
                                                       '0)
                                                 (let ((_g31736_
                                                        (gx#syntax-split-splice
                                                         _g2024420264_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31737_
                                                            (values-count
                                                             _g31736_)))
                                                       (if (not (fx= _g31737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2024620267_
                                                            (values-ref
                                                             _g31736_
                                                             0))
                                                           (_tl2024820270_
                                                            (values-ref
                                                             _g31736_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2024820270_)
                                                           (letrec ((_loop2024920273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2024720277_ _var-r2025320280_)
                               (if (gx#stx-pair? _hd2024720277_)
                                   (let ((_e2025020283_
                                          (gx#syntax-e _hd2024720277_)))
                                     (let ((_lp-hd2025120287_
                                            (##car _e2025020283_))
                                           (_lp-tl2025220290_
                                            (##cdr _e2025020283_)))
                                       (_loop2024920273_
                                        _lp-tl2025220290_
                                        (cons _lp-hd2025120287_
                                              _var-r2025320280_))))
                                   (let ((_var-r2025420293_
                                          (reverse _var-r2025320280_)))
                                     ((lambda (_L20297_)
                                        (let ()
                                          (let* ((_g2031420331_
                                                  (lambda (_g2031520327_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2031520327_)))
                                                 (_g2031320766_
                                                  (lambda (_g2031520335_)
                                                    (if (gx#stx-pair/null?
                                                         _g2031520335_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2031520335_)
                          '0)
                    (let ((_g31738_ (gx#syntax-split-splice _g2031520335_ '0)))
                      (begin
                        (let ((_g31739_ (values-count _g31738_)))
                          (if (not (fx= _g31739_ 2))
                              (error "Context expects 2 values" _g31739_)))
                        (let ((_target2031720338_ (values-ref _g31738_ 0))
                              (_tl2031920341_ (values-ref _g31738_ 1)))
                          (if (gx#stx-null? _tl2031920341_)
                              (letrec ((_loop2032020344_
                                        (lambda (_hd2031820348_
                                                 _init2032420351_)
                                          (if (gx#stx-pair? _hd2031820348_)
                                              (let ((_e2032120354_
                                                     (gx#syntax-e
                                                      _hd2031820348_)))
                                                (let ((_lp-hd2032220358_
                                                       (##car _e2032120354_))
                                                      (_lp-tl2032320361_
                                                       (##cdr _e2032120354_)))
                                                  (_loop2032020344_
                                                   _lp-tl2032320361_
                                                   (cons _lp-hd2032220358_
                                                         _init2032420351_))))
                                              (let ((_init2032520364_
                                                     (reverse _init2032420351_)))
                                                ((lambda (_L20368_)
                                                   (let ()
                                                     (let* ((_g2038520393_
                                                             (lambda (_g2038620389_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2038620389_)))
                                                            (_g2038420762_
                                                             (lambda (_g2038620397_)
                                                               ((lambda (_L20400_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2041320421_
                                    (lambda (_g2041420417_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2041420417_)))
                                   (_g2041220758_
                                    (lambda (_g2041420425_)
                                      ((lambda (_L20428_)
                                         (let ()
                                           (let* ((_g2044120449_
                                                   (lambda (_g2044220445_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2044220445_)))
                                                  (_g2044020754_
                                                   (lambda (_g2044220453_)
                                                     ((lambda (_L20456_)
                                                        (let ()
                                                          (let* ((_g2046920477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2047020473_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2047020473_)))
                         (_g2046820750_
                          (lambda (_g2047020481_)
                            ((lambda (_L20484_)
                               (let ()
                                 (let* ((_g2049720505_
                                         (lambda (_g2049820501_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2049820501_)))
                                        (_g2049620746_
                                         (lambda (_g2049820509_)
                                           ((lambda (_L20512_)
                                              (let ()
                                                (let* ((_g2052520533_
                                                        (lambda (_g2052620529_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2052620529_)))
                                                       (_g2052420742_
                                                        (lambda (_g2052620537_)
                                                          ((lambda (_L20540_)
                                                             (let ()
                                                               (let* ((_g2055320561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2055420557_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2055420557_)))
                              (_g2055220738_
                               (lambda (_g2055420565_)
                                 ((lambda (_L20568_)
                                    (let ()
                                      (let* ((_g2058120589_
                                              (lambda (_g2058220585_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2058220585_)))
                                             (_g2058020723_
                                              (lambda (_g2058220593_)
                                                ((lambda (_L20596_)
                                                   (let ()
                                                     (let* ((_g2060920617_
                                                             (lambda (_g2061020613_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2061020613_)))
                                                            (_g2060820711_
                                                             (lambda (_g2061020621_)
                                                               ((lambda (_L20624_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2063720645_
                                    (lambda (_g2063820641_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2063820641_)))
                                   (_g2063620707_
                                    (lambda (_g2063820649_)
                                      ((lambda (_L20652_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L20428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20540_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2066620677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2066720680_)
                        (cons _g2066620677_ _g2066720680_))
                      '()
                      _L20227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20568_ '())))
                                   '()))
                       (cons (cons _L20484_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20512_
                                                           (cons _L20540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2066820683_ _g2066920686_)
                                    (cons _g2066820683_ _g2066920686_))
                                  '()
                                  _L20297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20652_ '())))
                                         '()))
                             (cons (cons _L20456_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2067020689_ _g2067120692_)
                                    (cons _g2067020689_ _g2067120692_))
                                  '()
                                  _L20297_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20540_ '()))
                                     (cons (cons _L20484_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20540_
                     (begin
                       '#!void
                       (foldr (lambda (_g2067220695_ _g2067320698_)
                                (cons _g2067220695_ _g2067320698_))
                              '()
                              _L20297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20624_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L20456_
                             (cons _L20400_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2067420701_
                                                     _g2067520704_)
                                              (cons _g2067420701_
                                                    _g2067520704_))
                                            '()
                                            _L20368_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2063820649_))))
                              (_g2063620707_
                               (_generate119264_
                                _L20512_
                                _hd20168_
                                _L20596_
                                _L20624_)))))
                        _g2061020621_))))
               (_g2060820711_
                (cons _L20428_
                      (cons _L20540_
                            (begin
                              '#!void
                              (foldr (lambda (_g2071420717_ _g2071520720_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2071420717_ '()))
                                             _g2071520720_))
                                     '()
                                     _L20297_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2058220593_))))
                                        (_g2058020723_
                                         (cons _L20456_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20540_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L20297_
                                                        _L20227_)
                                                       (foldr (lambda (_g2072620730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2072720733_
                               _g2072820735_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2072720733_
                                          (cons _g2072620730_ '())))
                              _g2072820735_))
                      '()
                      _L20297_
                      _L20227_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2055420565_))))
                         (_g2055220738_
                          (_generate119264_
                           _L20540_
                           _rest20169_
                           _K20170_
                           _E20171_)))))
                   _g2052620537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2052420742_
                                                   (gx#genident 'rest)))))
                                            _g2049820509_))))
                                   (_g2049620746_ (gx#genident 'hd)))))
                             _g2047020481_))))
                    (_g2046820750_ (gx#genident 'splice-try)))))
              _g2044220453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2044020754_
                                              (gx#genident 'splice-loop)))))
                                       _g2041420425_))))
                              (_g2041220758_ (gx#genident 'splice-rest)))))
                        _g2038620397_))))
               (_g2038420762_ _tgt20166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2032520364_))))))
                                (_loop2032020344_ _target2031720338_ '()))
                              (_g2031420331_ _g2031520335_)))))
                    (_g2031420331_ _g2031520335_))
                (_g2031420331_ _g2031520335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2031320766_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2076920772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2077020775_)
                  (cons _g2076920772_ _g2077020775_))
                '()
                _L20227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2025420293_))))))
                     (_loop2024920273_ _target2024620267_ '()))
                   (_g2024320260_ _g2024420264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2024320260_ _g2024420264_))
                                             (_g2024320260_ _g2024420264_)))))
                                 (_g2024220778_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2078120784_
                                                     _g2078220787_)
                                              (cons _g2078120784_
                                                    _g2078220787_))
                                            '()
                                            _L20227_)))))))
                           _var2018420223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2017920203_
                                                   _target2017620197_
                                                   '()))
                                                (_g2017320190_
                                                 _g2017420194_)))))
                                      (_g2017320190_ _g2017420194_))
                                  (_g2017320190_ _g2017420194_)))))
                      (_g2017220790_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd20168_)))))
                 (_generate-simple-vector19267_
                  (lambda (_tgt20008_
                           _body20010_
                           _start20011_
                           _K20012_
                           _E20013_)
                    (let _recur20015_ ((_rest20018_ _body20010_)
                                       (_off20020_ _start20011_))
                      (let* ((_g2002320035_
                              (lambda (_g2002420031_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2002420031_)))
                             (_g2002220046_
                              (lambda (_g2002420039_) ((lambda () _K20012_))))
                             (_g2002120162_
                              (lambda (_g2002420050_)
                                (if (gx#stx-pair? _g2002420050_)
                                    (let ((_e2002720053_
                                           (gx#syntax-e _g2002420050_)))
                                      (let ((_hd2002820057_
                                             (##car _e2002720053_))
                                            (_tl2002920060_
                                             (##cdr _e2002720053_)))
                                        ((lambda (_L20063_ _L20065_)
                                           (let* ((_g2008020099_
                                                   (lambda (_g2008120095_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2008120095_)))
                                                  (_g2007920158_
                                                   (lambda (_g2008120103_)
                                                     (if (gx#stx-pair?
                                                          _g2008120103_)
                                                         (let ((_e2008520106_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2008120103_)))
                   (let ((_hd2008620110_ (##car _e2008520106_))
                         (_tl2008720113_ (##cdr _e2008520106_)))
                     (if (gx#stx-pair? _tl2008720113_)
                         (let ((_e2008820116_ (gx#syntax-e _tl2008720113_)))
                           (let ((_hd2008920120_ (##car _e2008820116_))
                                 (_tl2009020123_ (##cdr _e2008820116_)))
                             (if (gx#stx-pair? _tl2009020123_)
                                 (let ((_e2009120126_
                                        (gx#syntax-e _tl2009020123_)))
                                   (let ((_hd2009220130_ (##car _e2009120126_))
                                         (_tl2009320133_
                                          (##cdr _e2009120126_)))
                                     (if (gx#stx-null? _tl2009320133_)
                                         ((lambda (_L20136_ _L20138_ _L20139_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L20138_ (cons _L20136_ '())))
                                    '()))
                        '())
                  (cons (_generate119264_
                         _L20139_
                         _L20065_
                         (_recur20015_ _L20063_ (fx1+ _off20020_))
                         _E20013_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2009220130_
                                          _hd2008920120_
                                          _hd2008620110_)
                                         (_g2008020099_ _g2008120103_))))
                                 (_g2008020099_ _g2008120103_))))
                         (_g2008020099_ _g2008120103_))))
                 (_g2008020099_ _g2008120103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2007920158_
                                              (list (gx#genident 'e)
                                                    _tgt20008_
                                                    _off20020_))))
                                         _tl2002920060_
                                         _hd2002820057_)))
                                    (_g2002220046_ _g2002420050_)))))
                        (_g2002120162_ _rest20018_)))))
                 (_generate-list-vector19268_
                  (lambda (_tgt19918_
                           _body19920_
                           _tgt->list19921_
                           _start19922_
                           _K19923_
                           _E19924_)
                    (let* ((_g1992619945_
                            (lambda (_g1992719941_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1992719941_)))
                           (_g1992520004_
                            (lambda (_g1992719949_)
                              (if (gx#stx-pair? _g1992719949_)
                                  (let ((_e1993119952_
                                         (gx#syntax-e _g1992719949_)))
                                    (let ((_hd1993219956_
                                           (##car _e1993119952_))
                                          (_tl1993319959_
                                           (##cdr _e1993119952_)))
                                      (if (gx#stx-pair? _tl1993319959_)
                                          (let ((_e1993419962_
                                                 (gx#syntax-e _tl1993319959_)))
                                            (let ((_hd1993519966_
                                                   (##car _e1993419962_))
                                                  (_tl1993619969_
                                                   (##cdr _e1993419962_)))
                                              (if (gx#stx-pair? _tl1993619969_)
                                                  (let ((_e1993719972_
                                                         (gx#syntax-e
                                                          _tl1993619969_)))
                                                    (let ((_hd1993819976_
                                                           (##car _e1993719972_))
                                                          (_tl1993919979_
                                                           (##cdr _e1993719972_)))
                                                      (if (gx#stx-null?
                                                           _tl1993919979_)
                                                          ((lambda (_L19982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19984_
                            _L19985_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19985_
                                               (cons (cons _L19982_
                                                           (cons _L19984_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate119264_
                                          _L19985_
                                          _body19920_
                                          _K19923_
                                          _E19924_)
                                         '())))))
                   _hd1993819976_
                   _hd1993519966_
                   _hd1993219956_)
                  (_g1992619945_ _g1992719949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1992619945_
                                                   _g1992719949_))))
                                          (_g1992619945_ _g1992719949_))))
                                  (_g1992619945_ _g1992719949_)))))
                      (_g1992520004_
                       (list (gx#genident 'e) _tgt19918_ _tgt->list19921_)))))
                 (_generate-struct19269_
                  (lambda (_info19651_
                           _tgt19653_
                           _body19654_
                           _K19655_
                           _E19656_)
                    (let* ((_rtd19658_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19651_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19651_)
                                '#f))
                           (_fields19668_
                            (let _lp19661_ ((_rtd19664_ _rtd19658_)
                                            (_k19666_ '0))
                              (if _rtd19664_
                                  (_lp19661_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19664_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19664_))
                                        _k19666_))
                                  _k19666_)))
                           (_final?19671_
                            (if _rtd19658_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19658_))
                                '#f))
                           (_g1967419682_
                            (lambda (_g1967519678_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1967519678_)))
                           (_g1967319914_
                            (lambda (_g1967519686_)
                              ((lambda (_L19689_)
                                 (let ()
                                   (let* ((_g1970419712_
                                           (lambda (_g1970519708_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1970519708_)))
                                          (_g1970319910_
                                           (lambda (_g1970519716_)
                                             ((lambda (_L19719_)
                                                (let ()
                                                  (let* ((_g1973219740_
                                                          (lambda (_g1973319736_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1973319736_)))
                                                         (_g1973119906_
                                                          (lambda (_g1973319744_)
                                                            ((lambda (_L19747_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1976319784_
                                   (lambda (_g1976419780_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1976419780_)))
                                  (_g1976219827_
                                   (lambda (_g1976419788_)
                                     (if (gx#stx-pair? _g1976419788_)
                                         (let ((_e1977319791_
                                                (gx#syntax-e _g1976419788_)))
                                           (let ((_hd1977419795_
                                                  (##car _e1977319791_))
                                                 (_tl1977519798_
                                                  (##cdr _e1977319791_)))
                                             (if (gx#stx-datum? _hd1977419795_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1977419795_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1977519798_)
                                                         (let ((_e1977619801_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1977519798_)))
                   (let ((_hd1977719805_ (##car _e1977619801_))
                         (_tl1977819808_ (##cdr _e1977619801_)))
                     (if (gx#stx-null? _tl1977819808_)
                         ((lambda (_L19811_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19747_
                                              (cons _L19719_
                                                    (cons _L19689_ '())))
                                        (cons (_generate-list-vector19268_
                                               _tgt19653_
                                               _L19811_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19655_
                                               _E19656_)
                                              (cons _E19656_ '())))))
                          _hd1977719805_)
                         (_g1976319784_ _g1976419788_))))
                 (_g1976319784_ _g1976419788_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1976319784_
                                                      _g1976419788_))
                                                 (_g1976319784_
                                                  _g1976419788_))))
                                         (_g1976319784_ _g1976419788_))))
                                  (_g1976119902_
                                   (lambda (_g1976419831_)
                                     (if (gx#stx-pair? _g1976419831_)
                                         (let ((_e1976619834_
                                                (gx#syntax-e _g1976419831_)))
                                           (let ((_hd1976719838_
                                                  (##car _e1976619834_))
                                                 (_tl1976819841_
                                                  (##cdr _e1976619834_)))
                                             (if (gx#stx-datum? _hd1976719838_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1976719838_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1976819841_)
                                                         (let ((_e1976919844_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1976819841_)))
                   (let ((_hd1977019848_ (##car _e1976919844_))
                         (_tl1977119851_ (##cdr _e1976919844_)))
                     (if (gx#stx-null? _tl1977119851_)
                         ((lambda (_L19854_)
                            (let ((_K19867_
                                   (_generate-simple-vector19267_
                                    _tgt19653_
                                    _L19854_
                                    '1
                                    _K19655_
                                    _E19656_)))
                              (if (if _rtd19658_
                                      (fx<= (gx#stx-length _L19854_)
                                            _fields19668_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19747_
                                                    (cons _L19719_
                                                          (cons _L19689_ '())))
                                              (cons _K19867_
                                                    (cons _E19656_ '()))))
                                  (let* ((_g1987019878_
                                          (lambda (_g1987119874_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1987119874_)))
                                         (_g1986919898_
                                          (lambda (_g1987119882_)
                                            ((lambda (_L19885_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19747_
                                       (cons _L19719_ (cons _L19689_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19885_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19867_ (cons _E19656_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1987119882_))))
                                    (_g1986919898_
                                     (gx#stx-length _L19854_))))))
                          _hd1977019848_)
                         (_g1976219827_ _g1976419831_))))
                 (_g1976219827_ _g1976419831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1976219827_
                                                      _g1976419831_))
                                                 (_g1976219827_
                                                  _g1976419831_))))
                                         (_g1976219827_ _g1976419831_)))))
                             (_g1976119902_ _body19654_)))))
                     _g1973319744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1973119906_
                                                     (if _final?19671_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1970519716_))))
                                     (_g1970319910_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19651_)))))
                               _g1967519686_))))
                      (_g1967319914_ _tgt19653_))))
                 (_generate-class19270_
                  (lambda (_info19272_
                           _tgt19274_
                           _body19275_
                           _K19276_
                           _E19277_)
                    (letrec* ((_rtd19279_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info19272_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info19272_)
                                   '#f))
                              (_known-slot?19281_
                               (if _rtd19279_
                                   (lambda (_key19645_)
                                     (let ((_slot19648_
                                            (keyword->symbol
                                             (gx#stx-e _key19645_))))
                                       (_rtd-known-slot?19283_
                                        _rtd19279_
                                        _slot19648_)))
                                   false))
                              (_final?19282_
                               (if _rtd19279_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd19279_))
                                   '#f))
                              (_rtd-known-slot?19283_
                               (lambda (_rtd19632_ _slot19634_)
                                 (if _rtd19632_
                                     (let ((_$e19636_
                                            (memq _slot19634_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19632_))))
                                       (if _$e19636_
                                           _$e19636_
                                           (ormap (lambda (_g1963919641_)
                                                    (_rtd-known-slot?19283_
                                                     _g1963919641_
                                                     _slot19634_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19632_)))))
                                     '#f)))
                              (_recur19284_
                               (lambda (_klass19418_ _rest19420_)
                                 (let* ((_g1942319439_
                                         (lambda (_g1942419435_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1942419435_)))
                                        (_g1942219450_
                                         (lambda (_g1942419443_)
                                           ((lambda () _K19276_))))
                                        (_g1942119628_
                                         (lambda (_g1942419454_)
                                           (if (gx#stx-pair? _g1942419454_)
                                               (let ((_e1942819457_
                                                      (gx#syntax-e
                                                       _g1942419454_)))
                                                 (let ((_hd1942919461_
                                                        (##car _e1942819457_))
                                                       (_tl1943019464_
                                                        (##cdr _e1942819457_)))
                                                   (if (gx#stx-pair?
                                                        _tl1943019464_)
                                                       (let ((_e1943119467_
                                                              (gx#syntax-e
                                                               _tl1943019464_)))
                                                         (let ((_hd1943219471_
                                                                (##car _e1943119467_))
                                                               (_tl1943319474_
                                                                (##cdr _e1943119467_)))
                                                           ((lambda (_L19477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19479_
                             _L19480_)
                      (let* ((_g1949619504_
                              (lambda (_g1949719500_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1949719500_)))
                             (_g1949519624_
                              (lambda (_g1949719508_)
                                ((lambda (_L19511_)
                                   (let ()
                                     (let* ((_g1952319531_
                                             (lambda (_g1952419527_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1952419527_)))
                                            (_g1952219620_
                                             (lambda (_g1952419535_)
                                               ((lambda (_L19538_)
                                                  (let ()
                                                    (let* ((_g1955119559_
                                                            (lambda (_g1955219555_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1955219555_)))
                                                           (_g1955019616_
                                                            (lambda (_g1955219563_)
                                                              ((lambda (_L19566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1957919587_
                                   (lambda (_g1958019583_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1958019583_)))
                                  (_g1957819612_
                                   (lambda (_g1958019591_)
                                     ((lambda (_L19594_)
                                        (let ()
                                          (let ((_K19607_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19511_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate119264_
                            _L19594_
                            _L19479_
                            (_recur19284_ _klass19418_ _L19477_)
                            _E19277_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?19281_ _L19480_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19538_
                                                  (cons _L19480_ '())))
                                      '()))
                          '())
                    (cons _K19607_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19538_
                                                  (cons _L19480_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19566_
                                      (cons _K19607_ (cons _E19277_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1958019591_))))
                             (_g1957819612_ (gx#genident 'e)))))
                       _g1955219563_))))
              (_g1955019616_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1952419535_))))
                                       (_g1952219620_ _klass19418_))))
                                 _g1949719508_))))
                        (_g1949519624_ _tgt19274_)))
                    _tl1943319474_
                    _hd1943219471_
                    _hd1942919461_)))
               (_g1942219450_ _g1942419454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1942219450_
                                                _g1942419454_)))))
                                   (_g1942119628_ _rest19420_)))))
                      (let* ((_g1928619294_
                              (lambda (_g1928719290_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1928719290_)))
                             (_g1928519414_
                              (lambda (_g1928719298_)
                                ((lambda (_L19301_)
                                   (let ()
                                     (let* ((_g1931619324_
                                             (lambda (_g1931719320_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1931719320_)))
                                            (_g1931519410_
                                             (lambda (_g1931719328_)
                                               ((lambda (_L19331_)
                                                  (let ()
                                                    (let* ((_g1934419352_
                                                            (lambda (_g1934519348_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1934519348_)))
                                                           (_g1934319406_
                                                            (lambda (_g1934519356_)
                                                              ((lambda (_L19359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1937219380_
                                   (lambda (_g1937319376_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1937319376_)))
                                  (_g1937119402_
                                   (lambda (_g1937319384_)
                                     ((lambda (_L19387_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L19387_
                                                              (cons _L19359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L19331_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L19301_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L19331_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur19284_ _L19301_ _body19275_)
                                        '())))
                      (cons _E19277_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1937319384_))))
                             (_g1937119402_
                              (if _final?19282_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1934519356_))))
              (_g1934319406_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info19272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1931719328_))))
                                       (_g1931519410_ _tgt19274_))))
                                 _g1928719298_))))
                        (_g1928519414_ (gx#genident 'class)))))))
          (_generate119264_ _tgt19259_ _ptree19260_ _K19261_ _E19262_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx18256_ _tgt-lst18258_ _clauses18259_)
        (letrec ((_parse-body18261_
                  (lambda (_hd-len19079_)
                    (let _lp19082_ ((_rest19085_ _clauses18259_)
                                    (_r19087_ '()))
                      (let* ((_g1909019102_
                              (lambda (_g1909119098_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1909119098_)))
                             (_g1908919113_
                              (lambda (_g1909119106_) ((lambda () _r19087_))))
                             (_g1908819253_
                              (lambda (_g1909119117_)
                                (if (gx#stx-pair? _g1909119117_)
                                    (let ((_e1909419120_
                                           (gx#syntax-e _g1909119117_)))
                                      (let ((_hd1909519124_
                                             (##car _e1909419120_))
                                            (_tl1909619127_
                                             (##cdr _e1909419120_)))
                                        ((lambda (_L19130_ _L19132_)
                                           (let* ((_g1914919165_
                                                   (lambda (_g1915019161_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1915019161_)))
                                                  (_g1914819176_
                                                   (lambda (_g1915019169_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx18256_
                                                         _L19132_)))))
                                                  (_g1914719217_
                                                   (lambda (_g1915019180_)
                                                     (if (gx#stx-pair?
                                                          _g1915019180_)
                                                         (let ((_e1915719183_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1915019180_)))
                   (let ((_hd1915819187_ (##car _e1915719183_))
                         (_tl1915919190_ (##cdr _e1915719183_)))
                     ((lambda (_L19193_ _L19195_)
                        (if (if (gx#stx-list? _L19195_)
                                (if (fx= (gx#stx-length _L19195_)
                                         _hd-len19079_)
                                    (if (gx#stx-list? _L19193_)
                                        (not (gx#stx-null? _L19193_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp19082_
                             _L19130_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1920719209_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1920719209_
                                                   _stx18256_))
                                                _L19195_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L19193_)
                                                      (let ((_$e19213_
                                                             (gx#stx-source
                                                              _L19132_)))
                                                        (if _$e19213_
                                                            _$e19213_
                                                            (gx#stx-source
                                                             _stx18256_))))
                                                     '())))
                                   _r19087_))
                            (_g1914819176_ _g1915019180_)))
                      _tl1915919190_
                      _hd1915819187_)))
                 (_g1914819176_ _g1915019180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1914619249_
                                                   (lambda (_g1915019221_)
                                                     (if (gx#stx-pair?
                                                          _g1915019221_)
                                                         (let ((_e1915219224_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1915019221_)))
                   (let ((_hd1915319228_ (##car _e1915219224_))
                         (_tl1915419231_ (##cdr _e1915219224_)))
                     (if (gx#identifier? _hd1915319228_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g31740_|
                              _hd1915319228_)
                             ((lambda (_L19234_)
                                (if (if (gx#stx-list? _L19234_)
                                        (not (gx#stx-null? _L19234_))
                                        '#f)
                                    (if (gx#stx-null? _L19130_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L19234_)
                         (let ((_$e19245_ (gx#stx-source _L19132_)))
                           (if _$e19245_
                               _$e19245_
                               (gx#stx-source _stx18256_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r19087_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx18256_
                                         _L19132_))
                                    (_g1914719217_ _g1915019221_)))
                              _tl1915419231_)
                             (_g1914719217_ _g1915019221_))
                         (_g1914719217_ _g1915019221_))))
                 (_g1914719217_ _g1915019221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1914619249_ _L19132_)))
                                         _tl1909619127_
                                         _hd1909519124_)))
                                    (_g1908919113_ _g1909119117_)))))
                        (_g1908819253_ _rest19085_)))))
                 (_generate-body18263_
                  (lambda (_body18896_)
                    (let* ((_g1889918907_
                            (lambda (_g1890018903_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1890018903_)))
                           (_g1889819075_
                            (lambda (_g1890018911_)
                              ((lambda (_L18914_)
                                 (let ()
                                   (let* ((_g1892618943_
                                           (lambda (_g1892718939_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1892718939_)))
                                          (_g1892519071_
                                           (lambda (_g1892718947_)
                                             (if (gx#stx-pair/null?
                                                  _g1892718947_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1892718947_)
                                                           '0)
                                                     (let ((_g31741_
                                                            (gx#syntax-split-splice
                                                             _g1892718947_
                                                             '0)))
                                                       (begin
                                                         (let ((_g31742_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31741_)))
                   (if (not (fx= _g31742_ 2))
                       (error "Context expects 2 values" _g31742_)))
                 (let ((_target1892918950_ (values-ref _g31741_ 0))
                       (_tl1893118953_ (values-ref _g31741_ 1)))
                   (if (gx#stx-null? _tl1893118953_)
                       (letrec ((_loop1893218956_
                                 (lambda (_hd1893018960_ _target1893618963_)
                                   (if (gx#stx-pair? _hd1893018960_)
                                       (let ((_e1893318966_
                                              (gx#syntax-e _hd1893018960_)))
                                         (let ((_lp-hd1893418970_
                                                (##car _e1893318966_))
                                               (_lp-tl1893518973_
                                                (##cdr _e1893318966_)))
                                           (_loop1893218956_
                                            _lp-tl1893518973_
                                            (cons _lp-hd1893418970_
                                                  _target1893618963_))))
                                       (let ((_target1893718976_
                                              (reverse _target1893618963_)))
                                         ((lambda (_L18980_)
                                            (let ()
                                              (let* ((_g1899719005_
                                                      (lambda (_g1899819001_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1899819001_)))
                                                     (_g1899619059_
                                                      (lambda (_g1899819009_)
                                                        ((lambda (_L19012_)
                                                           (let ()
                                                             (let* ((_g1902519033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1902619029_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1902619029_)))
                            (_g1902419055_
                             (lambda (_g1902619037_)
                               ((lambda (_L19040_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18914_
                                                              (cons _L19012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L19040_ '()))))))
                                _g1902619037_))))
                       (_g1902419055_
                        (_generate-clauses18264_
                         _body18896_
                         (cons _L18914_ '()))))))
                 _g1899819009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1899619059_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'error)
                                  (cons '"No clause matching"
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1906219065_
                                                          _g1906319068_)
                                                   (cons _g1906219065_
                                                         _g1906319068_))
                                                 '()
                                                 _L18980_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx18256_))))))
                                          _target1893718976_))))))
                         (_loop1893218956_ _target1892918950_ '()))
                       (_g1892618943_ _g1892718947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1892618943_
                                                      _g1892718947_))
                                                 (_g1892618943_
                                                  _g1892718947_)))))
                                     (_g1892519071_ _tgt-lst18258_))))
                               _g1890018911_))))
                      (_g1889819075_ (gx#genident 'E)))))
                 (_generate-clauses18264_
                  (lambda (_rest18578_ _E18580_)
                    (let* ((_g1858418600_
                            (lambda (_g1858518596_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1858518596_)))
                           (_g1858318611_
                            (lambda (_g1858518604_) ((lambda () _E18580_))))
                           (_g1858218787_
                            (lambda (_g1858518615_)
                              (if (gx#stx-pair? _g1858518615_)
                                  (let ((_e1859218618_
                                         (gx#syntax-e _g1858518615_)))
                                    (let ((_hd1859318622_
                                           (##car _e1859218618_))
                                          (_tl1859418625_
                                           (##cdr _e1859218618_)))
                                      ((lambda (_L18628_ _L18630_)
                                         (let* ((_g1864318662_
                                                 (lambda (_g1864418658_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1864418658_)))
                                                (_g1864218783_
                                                 (lambda (_g1864418666_)
                                                   (if (gx#stx-pair?
                                                        _g1864418666_)
                                                       (let ((_e1864818669_
                                                              (gx#syntax-e
                                                               _g1864418666_)))
                                                         (let ((_hd1864918673_
                                                                (##car _e1864818669_))
                                                               (_tl1865018676_
                                                                (##cdr _e1864818669_)))
                                                           (if (gx#stx-pair?
                                                                _tl1865018676_)
                                                               (let ((_e1865118679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1865018676_)))
                         (let ((_hd1865218683_ (##car _e1865118679_))
                               (_tl1865318686_ (##cdr _e1865118679_)))
                           (if (gx#stx-pair? _tl1865318686_)
                               (let ((_e1865418689_
                                      (gx#syntax-e _tl1865318686_)))
                                 (let ((_hd1865518693_ (##car _e1865418689_))
                                       (_tl1865618696_ (##cdr _e1865418689_)))
                                   (if (gx#stx-null? _tl1865618696_)
                                       ((lambda (_L18699_ _L18701_ _L18702_)
                                          (let* ((_g1871918734_
                                                  (lambda (_g1872018730_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1872018730_)))
                                                 (_g1871818779_
                                                  (lambda (_g1872018738_)
                                                    (if (gx#stx-pair?
                                                         _g1872018738_)
                                                        (let ((_e1872318741_
                                                               (gx#syntax-e
                                                                _g1872018738_)))
                                                          (let ((_hd1872418745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1872318741_))
                        (_tl1872518748_ (##cdr _e1872318741_)))
                    (if (gx#stx-pair? _tl1872518748_)
                        (let ((_e1872618751_ (gx#syntax-e _tl1872518748_)))
                          (let ((_hd1872718755_ (##car _e1872618751_))
                                (_tl1872818758_ (##cdr _e1872618751_)))
                            (if (gx#stx-null? _tl1872818758_)
                                ((lambda (_L18761_ _L18763_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18702_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18763_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18761_ '())))))
                                 _hd1872718755_
                                 _hd1872418745_)
                                (_g1871918734_ _g1872018738_))))
                        (_g1871918734_ _g1872018738_))))
                (_g1871918734_ _g1872018738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1871818779_
                                             (list (if (gx#stx-e _L18701_)
                                                       (_generate118265_
                                                        _L18701_
                                                        _L18699_
                                                        _E18580_)
                                                       _L18699_)
                                                   (_generate-clauses18264_
                                                    _L18628_
                                                    (cons _L18702_ '()))))))
                                        _hd1865518693_
                                        _hd1865218683_
                                        _hd1864918673_)
                                       (_g1864318662_ _g1864418666_))))
                               (_g1864318662_ _g1864418666_))))
                       (_g1864318662_ _g1864418666_))))
               (_g1864318662_ _g1864418666_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1864218783_ _L18630_)))
                                       _tl1859418625_
                                       _hd1859318622_)))
                                  (_g1858318611_ _g1858518615_))))
                           (_g1858118892_
                            (lambda (_g1858518791_)
                              (if (gx#stx-pair? _g1858518791_)
                                  (let ((_e1858718794_
                                         (gx#syntax-e _g1858518791_)))
                                    (let ((_hd1858818798_
                                           (##car _e1858718794_))
                                          (_tl1858918801_
                                           (##cdr _e1858718794_)))
                                      (if (gx#stx-null? _tl1858918801_)
                                          ((lambda (_L18804_)
                                             (let* ((_g1881518833_
                                                     (lambda (_g1881618829_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1881618829_)))
                                                    (_g1881418888_
                                                     (lambda (_g1881618837_)
                                                       (if (gx#stx-pair?
                                                            _g1881618837_)
                                                           (let ((_e1881918840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1881618837_)))
                     (let ((_hd1882018844_ (##car _e1881918840_))
                           (_tl1882118847_ (##cdr _e1881918840_)))
                       (if (gx#stx-pair? _tl1882118847_)
                           (let ((_e1882218850_ (gx#syntax-e _tl1882118847_)))
                             (let ((_hd1882318854_ (##car _e1882218850_))
                                   (_tl1882418857_ (##cdr _e1882218850_)))
                               (if (gx#stx-pair? _tl1882418857_)
                                   (let ((_e1882518860_
                                          (gx#syntax-e _tl1882418857_)))
                                     (let ((_hd1882618864_
                                            (##car _e1882518860_))
                                           (_tl1882718867_
                                            (##cdr _e1882518860_)))
                                       (if (gx#stx-null? _tl1882718867_)
                                           ((lambda (_L18870_ _L18872_)
                                              (if (gx#stx-e _L18872_)
                                                  (_generate118265_
                                                   _L18872_
                                                   _L18870_
                                                   _E18580_)
                                                  _L18870_))
                                            _hd1882618864_
                                            _hd1882318854_)
                                           (_g1881518833_ _g1881618837_))))
                                   (_g1881518833_ _g1881618837_))))
                           (_g1881518833_ _g1881618837_))))
                   (_g1881518833_ _g1881618837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1881418888_ _L18804_)))
                                           _hd1858818798_)
                                          (_g1858218787_ _g1858518791_))))
                                  (_g1858218787_ _g1858518791_)))))
                      (_g1858118892_ _rest18578_))))
                 (_generate118265_
                  (lambda (_clause18267_ _body18269_ _E18270_)
                    (let _recur18272_ ((_rest18275_ _clause18267_)
                                       (_rest-targets18277_ _tgt-lst18258_))
                      (let* ((_g1828018292_
                              (lambda (_g1828118288_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1828118288_)))
                             (_g1827918303_
                              (lambda (_g1828118296_)
                                ((lambda () _body18269_))))
                             (_g1827818574_
                              (lambda (_g1828118307_)
                                (if (gx#stx-pair? _g1828118307_)
                                    (let ((_e1828418310_
                                           (gx#syntax-e _g1828118307_)))
                                      (let ((_hd1828518314_
                                             (##car _e1828418310_))
                                            (_tl1828618317_
                                             (##cdr _e1828418310_)))
                                        ((lambda (_L18320_ _L18322_)
                                           (let* ((_g1833918351_
                                                   (lambda (_g1834018347_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1834018347_)))
                                                  (_g1833818570_
                                                   (lambda (_g1834018355_)
                                                     (if (gx#stx-pair?
                                                          _g1834018355_)
                                                         (let ((_e1834318358_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1834018355_)))
                   (let ((_hd1834418362_ (##car _e1834318358_))
                         (_tl1834518365_ (##cdr _e1834318358_)))
                     ((lambda (_L18368_ _L18370_)
                        (let* ((_g1838218390_
                                (lambda (_g1838318386_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1838318386_)))
                               (_g1838118566_
                                (lambda (_g1838318394_)
                                  ((lambda (_L18397_)
                                     (let ()
                                       (let* ((_g1840918426_
                                               (lambda (_g1841018422_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1841018422_)))
                                              (_g1840818562_
                                               (lambda (_g1841018430_)
                                                 (if (gx#stx-pair/null?
                                                      _g1841018430_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1841018430_)
                                                               '0)
                                                         (let ((_g31743_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1841018430_
                         '0)))
                   (begin
                     (let ((_g31744_ (values-count _g31743_)))
                       (if (not (fx= _g31744_ 2))
                           (error "Context expects 2 values" _g31744_)))
                     (let ((_target1841218433_ (values-ref _g31743_ 0))
                           (_tl1841418436_ (values-ref _g31743_ 1)))
                       (if (gx#stx-null? _tl1841418436_)
                           (letrec ((_loop1841518439_
                                     (lambda (_hd1841318443_ _var1841918446_)
                                       (if (gx#stx-pair? _hd1841318443_)
                                           (let ((_e1841618449_
                                                  (gx#syntax-e
                                                   _hd1841318443_)))
                                             (let ((_lp-hd1841718453_
                                                    (##car _e1841618449_))
                                                   (_lp-tl1841818456_
                                                    (##cdr _e1841618449_)))
                                               (_loop1841518439_
                                                _lp-tl1841818456_
                                                (cons _lp-hd1841718453_
                                                      _var1841918446_))))
                                           (let ((_var1842018459_
                                                  (reverse _var1841918446_)))
                                             ((lambda (_L18463_)
                                                (let ()
                                                  (let* ((_g1848018488_
                                                          (lambda (_g1848118484_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1848118484_)))
                                                         (_g1847918558_
                                                          (lambda (_g1848118492_)
                                                            ((lambda (_L18495_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1850818516_
                                 (lambda (_g1850918512_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1850918512_)))
                                (_g1850718546_
                                 (lambda (_g1850918520_)
                                   ((lambda (_L18523_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L18397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1853718540_
                                                              _g1853818543_)
                                                       (cons _g1853718540_
                                                             _g1853818543_))
                                                     '()
                                                     _L18463_))
                                            (cons _L18495_ '())))
                                '()))
                    '())
              (cons _L18523_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1850918520_))))
                           (_g1850718546_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx18256_
                             _L18370_
                             _L18322_
                             (cons _L18397_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1854918552_
                                                     _g1855018555_)
                                              (cons _g1854918552_
                                                    _g1855018555_))
                                            '()
                                            _L18463_)))
                             _E18270_)))))
                     _g1848118492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1847918558_
                                                     (_recur18272_
                                                      _L18320_
                                                      _L18368_)))))
                                              _var1842018459_))))))
                             (_loop1841518439_ _target1841218433_ '()))
                           (_g1840918426_ _g1841018430_)))))
                 (_g1840918426_ _g1841018430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1840918426_
                                                      _g1841018430_)))))
                                         (_g1840818562_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L18322_)))))
                                   _g1838318394_))))
                          (_g1838118566_ (gx#genident 'K))))
                      _tl1834518365_
                      _hd1834418362_)))
                 (_g1833918351_ _g1834018355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1833818570_
                                              _rest-targets18277_)))
                                         _tl1828618317_
                                         _hd1828518314_)))
                                    (_g1827918303_ _g1828118307_)))))
                        (_g1827818574_ _rest18275_))))))
          (_generate-body18263_
           (_parse-body18261_ (gx#stx-length _tgt-lst18258_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx18158_ _tgt18160_ _clauses18161_)
        (letrec ((_reclause18163_
                  (lambda (_clause18166_)
                    (let* ((_g1817118186_
                            (lambda (_g1817218182_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1817218182_)))
                           (_g1817018197_
                            (lambda (_g1817218190_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx18158_
                                  _clause18166_)))))
                           (_g1816918231_
                            (lambda (_g1817218201_)
                              (if (gx#stx-pair? _g1817218201_)
                                  (let ((_e1817818204_
                                         (gx#syntax-e _g1817218201_)))
                                    (let ((_hd1817918208_
                                           (##car _e1817818204_))
                                          (_tl1818018211_
                                           (##cdr _e1817818204_)))
                                      ((lambda (_L18214_ _L18216_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L18216_ '()) _L18214_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1818018211_
                                       _hd1817918208_)))
                                  (_g1817018197_ _g1817218201_))))
                           (_g1816818252_
                            (lambda (_g1817218235_)
                              (if (gx#stx-pair? _g1817218235_)
                                  (let ((_e1817318238_
                                         (gx#syntax-e _g1817218235_)))
                                    (let ((_hd1817418242_
                                           (##car _e1817318238_))
                                          (_tl1817518245_
                                           (##cdr _e1817318238_)))
                                      (if (gx#identifier? _hd1817418242_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g31745_|
                                               _hd1817418242_)
                                              ((lambda () _clause18166_))
                                              (_g1816918231_ _g1817218235_))
                                          (_g1816918231_ _g1817218235_))))
                                  (_g1816918231_ _g1817218235_)))))
                      (_g1816818252_ _clause18166_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx18158_
           (cons _tgt18160_ '())
           (gx#stx-map _reclause18163_ _clauses18161_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx25365_)
        (let* ((_g2537025399_
                (lambda (_g2537125395_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2537125395_)))
               (_g2536925507_
                (lambda (_g2537125403_)
                  (if (gx#stx-pair? _g2537125403_)
                      (let ((_e2538825406_ (gx#syntax-e _g2537125403_)))
                        (let ((_hd2538925410_ (##car _e2538825406_))
                              (_tl2539025413_ (##cdr _e2538825406_)))
                          (if (gx#stx-pair? _tl2539025413_)
                              (let ((_e2539125416_
                                     (gx#syntax-e _tl2539025413_)))
                                (let ((_hd2539225420_ (##car _e2539125416_))
                                      (_tl2539325423_ (##cdr _e2539125416_)))
                                  ((lambda (_L25426_ _L25428_)
                                     (if (gx#stx-list? _L25426_)
                                         (let* ((_g2544225450_
                                                 (lambda (_g2544325446_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2544325446_)))
                                                (_g2544125503_
                                                 (lambda (_g2544325454_)
                                                   ((lambda (_L25457_)
                                                      (let ()
                                                        (let* ((_g2546925477_
                                                                (lambda (_g2547025473_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2547025473_)))
                       (_g2546825499_
                        (lambda (_g2547025481_)
                          ((lambda (_L25484_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L25457_
                                                         (cons _L25428_ '()))
                                                   '())
                                             (cons _L25484_ '()))))))
                           _g2547025481_))))
                  (_g2546825499_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx25365_
                    _L25457_
                    _L25426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2544325454_))))
                                           (_g2544125503_
                                            (gx#genident _L25428_)))
                                         (_g2537025399_ _g2537125403_)))
                                   _tl2539325423_
                                   _hd2539225420_)))
                              (_g2537025399_ _g2537125403_))))
                      (_g2537025399_ _g2537125403_))))
               (_g2536825612_
                (lambda (_g2537125511_)
                  (if (gx#stx-pair? _g2537125511_)
                      (let ((_e2538025514_ (gx#syntax-e _g2537125511_)))
                        (let ((_hd2538125518_ (##car _e2538025514_))
                              (_tl2538225521_ (##cdr _e2538025514_)))
                          (if (gx#stx-pair? _tl2538225521_)
                              (let ((_e2538325524_
                                     (gx#syntax-e _tl2538225521_)))
                                (let ((_hd2538425528_ (##car _e2538325524_))
                                      (_tl2538525531_ (##cdr _e2538325524_)))
                                  (if (gx#identifier? _hd2538425528_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31746_|
                                           _hd2538425528_)
                                          ((lambda (_L25534_)
                                             (if (gx#stx-list? _L25534_)
                                                 (let* ((_g2554725555_
                                                         (lambda (_g2554825551_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2554825551_)))
                                                        (_g2554625608_
                                                         (lambda (_g2554825559_)
                                                           ((lambda (_L25562_)
                                                              (let ()
                                                                (let* ((_g2557425582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2557525578_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2557525578_)))
                               (_g2557325604_
                                (lambda (_g2557525586_)
                                  ((lambda (_L25589_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25562_
                                                     (cons _L25589_ '()))))))
                                   _g2557525586_))))
                          (_g2557325604_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25562_ _L25534_))
                            (gx#stx-source _stx25365_))))))
                    _g2554825559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2554625608_
                                                    (gx#genident 'args)))
                                                 (_g2536925507_
                                                  _g2537125511_)))
                                           _tl2538525531_)
                                          (_g2536925507_ _g2537125511_))
                                      (_g2536925507_ _g2537125511_))))
                              (_g2536925507_ _g2537125511_))))
                      (_g2536925507_ _g2537125511_))))
               (_g2536725717_
                (lambda (_g2537125616_)
                  (if (gx#stx-pair? _g2537125616_)
                      (let ((_e2537325619_ (gx#syntax-e _g2537125616_)))
                        (let ((_hd2537425623_ (##car _e2537325619_))
                              (_tl2537525626_ (##cdr _e2537325619_)))
                          (if (gx#stx-pair? _tl2537525626_)
                              (let ((_e2537625629_
                                     (gx#syntax-e _tl2537525626_)))
                                (let ((_hd2537725633_ (##car _e2537625629_))
                                      (_tl2537825636_ (##cdr _e2537625629_)))
                                  (if (gx#identifier? _hd2537725633_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31747_|
                                           _hd2537725633_)
                                          ((lambda (_L25639_)
                                             (if (gx#stx-list? _L25639_)
                                                 (let* ((_g2565225660_
                                                         (lambda (_g2565325656_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2565325656_)))
                                                        (_g2565125713_
                                                         (lambda (_g2565325664_)
                                                           ((lambda (_L25667_)
                                                              (let ()
                                                                (let* ((_g2567925687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2568025683_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2568025683_)))
                               (_g2567825709_
                                (lambda (_g2568025691_)
                                  ((lambda (_L25694_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25667_ '())
                                                     (cons _L25694_ '()))))))
                                   _g2568025691_))))
                          (_g2567825709_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25667_ _L25639_))
                            (gx#stx-source _stx25365_))))))
                    _g2565325664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2565125713_
                                                    (gx#genident 'e)))
                                                 (_g2536825612_
                                                  _g2537125616_)))
                                           _tl2537825636_)
                                          (_g2536825612_ _g2537125616_))
                                      (_g2536825612_ _g2537125616_))))
                              (_g2536825612_ _g2537125616_))))
                      (_g2536825612_ _g2537125616_)))))
          (_g2536725717_ _stx25365_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25721_)
        (let* ((_g2572425748_
                (lambda (_g2572525744_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2572525744_)))
               (_g2572325960_
                (lambda (_g2572525752_)
                  (if (gx#stx-pair? _g2572525752_)
                      (let ((_e2572825755_ (gx#syntax-e _g2572525752_)))
                        (let ((_hd2572925759_ (##car _e2572825755_))
                              (_tl2573025762_ (##cdr _e2572825755_)))
                          (if (gx#stx-pair? _tl2573025762_)
                              (let ((_e2573125765_
                                     (gx#syntax-e _tl2573025762_)))
                                (let ((_hd2573225769_ (##car _e2573125765_))
                                      (_tl2573325772_ (##cdr _e2573125765_)))
                                  (if (gx#stx-pair/null? _hd2573225769_)
                                      (if (fx>= (gx#stx-length _hd2573225769_)
                                                '0)
                                          (let ((_g31748_
                                                 (gx#syntax-split-splice
                                                  _hd2573225769_
                                                  '0)))
                                            (begin
                                              (let ((_g31749_
                                                     (values-count _g31748_)))
                                                (if (not (fx= _g31749_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31749_)))
                                              (let ((_target2573425775_
                                                     (values-ref _g31748_ 0))
                                                    (_tl2573625778_
                                                     (values-ref _g31748_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2573625778_)
                                                    (letrec ((_loop2573725781_
                                                              (lambda (_hd2573525785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2574125788_)
                        (if (gx#stx-pair? _hd2573525785_)
                            (let ((_e2573825791_ (gx#syntax-e _hd2573525785_)))
                              (let ((_lp-hd2573925795_ (##car _e2573825791_))
                                    (_lp-tl2574025798_ (##cdr _e2573825791_)))
                                (_loop2573725781_
                                 _lp-tl2574025798_
                                 (cons _lp-hd2573925795_ _e2574125788_))))
                            (let ((_e2574225801_ (reverse _e2574125788_)))
                              ((lambda (_L25805_ _L25807_)
                                 (if (gx#stx-list? _L25805_)
                                     (let* ((_g2582525842_
                                             (lambda (_g2582625838_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2582625838_)))
                                            (_g2582425948_
                                             (lambda (_g2582625846_)
                                               (if (gx#stx-pair/null?
                                                    _g2582625846_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2582625846_)
                                                             '0)
                                                       (let ((_g31750_
                                                              (gx#syntax-split-splice
                                                               _g2582625846_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31750_)))
                     (if (not (fx= _g31751_ 2))
                         (error "Context expects 2 values" _g31751_)))
                   (let ((_target2582825849_ (values-ref _g31750_ 0))
                         (_tl2583025852_ (values-ref _g31750_ 1)))
                     (if (gx#stx-null? _tl2583025852_)
                         (letrec ((_loop2583125855_
                                   (lambda (_hd2582925859_ _$e2583525862_)
                                     (if (gx#stx-pair? _hd2582925859_)
                                         (let ((_e2583225865_
                                                (gx#syntax-e _hd2582925859_)))
                                           (let ((_lp-hd2583325869_
                                                  (##car _e2583225865_))
                                                 (_lp-tl2583425872_
                                                  (##cdr _e2583225865_)))
                                             (_loop2583125855_
                                              _lp-tl2583425872_
                                              (cons _lp-hd2583325869_
                                                    _$e2583525862_))))
                                         (let ((_$e2583625875_
                                                (reverse _$e2583525862_)))
                                           ((lambda (_L25879_)
                                              (let ()
                                                (let* ((_g2589525903_
                                                        (lambda (_g2589625899_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2589625899_)))
                                                       (_g2589425936_
                                                        (lambda (_g2589625907_)
                                                          ((lambda (_L25910_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25807_
                                        _L25879_)
                                       (foldr (lambda (_g2592425928_
                                                       _g2592525931_
                                                       _g2592625933_)
                                                (cons (cons _g2592525931_
                                                            (cons _g2592425928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2592625933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25807_
                                              _L25879_))
                                     (cons _L25910_ '()))))))
                   _g2589625907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2589425936_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25721_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2593925942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2594025945_)
                       (cons _g2593925942_ _g2594025945_))
                     '()
                     _L25879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25805_)))))
                                            _$e2583625875_))))))
                           (_loop2583125855_ _target2582825849_ '()))
                         (_g2582525842_ _g2582625846_)))))
               (_g2582525842_ _g2582625846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2582525842_
                                                    _g2582625846_)))))
                                       (_g2582425948_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2595125954_
                                                           _g2595225957_)
                                                    (cons _g2595125954_
                                                          _g2595225957_))
                                                  '()
                                                  _L25807_)))))
                                     (_g2572425748_ _g2572525752_)))
                               _tl2573325772_
                               _e2574225801_))))))
              (_loop2573725781_ _target2573425775_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2572425748_
                                                     _g2572525752_)))))
                                          (_g2572425748_ _g2572525752_))
                                      (_g2572425748_ _g2572525752_))))
                              (_g2572425748_ _g2572525752_))))
                      (_g2572425748_ _g2572525752_)))))
          (_g2572325960_ _stx25721_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25966_)
        (let* ((_g2597226055_
                (lambda (_g2597326051_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2597326051_)))
               (_g2597126216_
                (lambda (_g2597326059_)
                  (if (gx#stx-pair? _g2597326059_)
                      (let ((_e2601826062_ (gx#syntax-e _g2597326059_)))
                        (let ((_hd2601926066_ (##car _e2601826062_))
                              (_tl2602026069_ (##cdr _e2601826062_)))
                          (if (gx#stx-pair? _tl2602026069_)
                              (let ((_e2602126072_
                                     (gx#syntax-e _tl2602026069_)))
                                (let ((_hd2602226076_ (##car _e2602126072_))
                                      (_tl2602326079_ (##cdr _e2602126072_)))
                                  (if (gx#stx-pair/null? _hd2602226076_)
                                      (if (fx>= (gx#stx-length _hd2602226076_)
                                                '0)
                                          (let ((_g31752_
                                                 (gx#syntax-split-splice
                                                  _hd2602226076_
                                                  '0)))
                                            (begin
                                              (let ((_g31753_
                                                     (values-count _g31752_)))
                                                (if (not (fx= _g31753_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31753_)))
                                              (let ((_target2602426082_
                                                     (values-ref _g31752_ 0))
                                                    (_tl2602626085_
                                                     (values-ref _g31752_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2602626085_)
                                                    (letrec ((_loop2602726088_
                                                              (lambda (_hd2602526092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2603126095_
                               _hd2603226097_)
                        (if (gx#stx-pair? _hd2602526092_)
                            (let ((_e2602826100_ (gx#syntax-e _hd2602526092_)))
                              (let ((_lp-hd2602926104_ (##car _e2602826100_))
                                    (_lp-tl2603026107_ (##cdr _e2602826100_)))
                                (if (gx#stx-pair? _lp-hd2602926104_)
                                    (let ((_e2603526110_
                                           (gx#syntax-e _lp-hd2602926104_)))
                                      (let ((_hd2603626114_
                                             (##car _e2603526110_))
                                            (_tl2603726117_
                                             (##cdr _e2603526110_)))
                                        (if (gx#stx-pair? _tl2603726117_)
                                            (let ((_e2603826120_
                                                   (gx#syntax-e
                                                    _tl2603726117_)))
                                              (let ((_hd2603926124_
                                                     (##car _e2603826120_))
                                                    (_tl2604026127_
                                                     (##cdr _e2603826120_)))
                                                (if (gx#stx-null?
                                                     _tl2604026127_)
                                                    (_loop2602726088_
                                                     _lp-tl2603026107_
                                                     (cons _hd2603926124_
                                                           _expr2603126095_)
                                                     (cons _hd2603626114_
                                                           _hd2603226097_))
                                                    (_g2597226055_
                                                     _g2597326059_))))
                                            (_g2597226055_ _g2597326059_))))
                                    (_g2597226055_ _g2597326059_))))
                            (let ((_expr2603326130_ (reverse _expr2603126095_))
                                  (_hd2603426133_ (reverse _hd2603226097_)))
                              (if (gx#stx-pair/null? _tl2602326079_)
                                  (if (fx>= (gx#stx-length _tl2602326079_) '0)
                                      (let ((_g31754_
                                             (gx#syntax-split-splice
                                              _tl2602326079_
                                              '0)))
                                        (begin
                                          (let ((_g31755_
                                                 (values-count _g31754_)))
                                            (if (not (fx= _g31755_ 2))
                                                (error "Context expects 2 values"
                                                       _g31755_)))
                                          (let ((_target2604126136_
                                                 (values-ref _g31754_ 0))
                                                (_tl2604326139_
                                                 (values-ref _g31754_ 1)))
                                            (if (gx#stx-null? _tl2604326139_)
                                                (letrec ((_loop2604426142_
                                                          (lambda (_hd2604226146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2604826149_)
                    (if (gx#stx-pair? _hd2604226146_)
                        (let ((_e2604526152_ (gx#syntax-e _hd2604226146_)))
                          (let ((_lp-hd2604626156_ (##car _e2604526152_))
                                (_lp-tl2604726159_ (##cdr _e2604526152_)))
                            (_loop2604426142_
                             _lp-tl2604726159_
                             (cons _lp-hd2604626156_ _body2604826149_))))
                        (let ((_body2604926162_ (reverse _body2604826149_)))
                          ((lambda (_L26166_ _L26168_ _L26169_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2619126198_
                                                           _g2619226201_)
                                                    (cons _g2619126198_
                                                          _g2619226201_))
                                                  '()
                                                  _L26168_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2619326204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2619426207_)
                        (cons _g2619326204_ _g2619426207_))
                      '()
                      _L26169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2619526210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2619626213_)
                        (cons _g2619526210_ _g2619626213_))
                      '()
                      _L26166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2604926162_
                           _expr2603326130_
                           _hd2603426133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2604426142_
                                                   _target2604126136_
                                                   '()))
                                                (_g2597226055_
                                                 _g2597326059_)))))
                                      (_g2597226055_ _g2597326059_))
                                  (_g2597226055_ _g2597326059_)))))))
              (_loop2602726088_ _target2602426082_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2597226055_
                                                     _g2597326059_)))))
                                          (_g2597226055_ _g2597326059_))
                                      (_g2597226055_ _g2597326059_))))
                              (_g2597226055_ _g2597326059_))))
                      (_g2597226055_ _g2597326059_))))
               (_g2597026328_
                (lambda (_g2597326220_)
                  (if (gx#stx-pair? _g2597326220_)
                      (let ((_e2599426223_ (gx#syntax-e _g2597326220_)))
                        (let ((_hd2599526227_ (##car _e2599426223_))
                              (_tl2599626230_ (##cdr _e2599426223_)))
                          (if (gx#stx-pair? _tl2599626230_)
                              (let ((_e2599726233_
                                     (gx#syntax-e _tl2599626230_)))
                                (let ((_hd2599826237_ (##car _e2599726233_))
                                      (_tl2599926240_ (##cdr _e2599726233_)))
                                  (if (gx#stx-pair? _hd2599826237_)
                                      (let ((_e2600026243_
                                             (gx#syntax-e _hd2599826237_)))
                                        (let ((_hd2600126247_
                                               (##car _e2600026243_))
                                              (_tl2600226250_
                                               (##cdr _e2600026243_)))
                                          (if (gx#stx-pair? _tl2600226250_)
                                              (let ((_e2600326253_
                                                     (gx#syntax-e
                                                      _tl2600226250_)))
                                                (let ((_hd2600426257_
                                                       (##car _e2600326253_))
                                                      (_tl2600526260_
                                                       (##cdr _e2600326253_)))
                                                  (if (gx#stx-null?
                                                       _tl2600526260_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2599926240_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2599926240_)
                            '0)
                      (let ((_g31756_
                             (gx#syntax-split-splice _tl2599926240_ '0)))
                        (begin
                          (let ((_g31757_ (values-count _g31756_)))
                            (if (not (fx= _g31757_ 2))
                                (error "Context expects 2 values" _g31757_)))
                          (let ((_target2600626263_ (values-ref _g31756_ 0))
                                (_tl2600826266_ (values-ref _g31756_ 1)))
                            (if (gx#stx-null? _tl2600826266_)
                                (letrec ((_loop2600926269_
                                          (lambda (_hd2600726273_
                                                   _body2601326276_)
                                            (if (gx#stx-pair? _hd2600726273_)
                                                (let ((_e2601026279_
                                                       (gx#syntax-e
                                                        _hd2600726273_)))
                                                  (let ((_lp-hd2601126283_
                                                         (##car _e2601026279_))
                                                        (_lp-tl2601226286_
                                                         (##cdr _e2601026279_)))
                                                    (_loop2600926269_
                                                     _lp-tl2601226286_
                                                     (cons _lp-hd2601126283_
                                                           _body2601326276_))))
                                                (let ((_body2601426289_
                                                       (reverse _body2601326276_)))
                                                  ((lambda (_L26293_
                                                            _L26295_
                                                            _L26296_
                                                            _L26297_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L26296_)
                                                         (cons _L26297_
                                                               (cons (cons (cons _L26296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L26295_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2631926322_ _g2632026325_)
                                        (cons _g2631926322_ _g2632026325_))
                                      '()
                                      _L26293_))))
                 (_g2597126216_ _g2597326220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2601426289_
                                                   _hd2600426257_
                                                   _hd2600126247_
                                                   _hd2599526227_))))))
                                  (_loop2600926269_ _target2600626263_ '()))
                                (_g2597126216_ _g2597326220_)))))
                      (_g2597126216_ _g2597326220_))
                  (_g2597126216_ _g2597326220_))
              (_g2597126216_ _g2597326220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2597126216_ _g2597326220_))))
                                      (_g2597126216_ _g2597326220_))))
                              (_g2597126216_ _g2597326220_))))
                      (_g2597126216_ _g2597326220_))))
               (_g2596926410_
                (lambda (_g2597326332_)
                  (if (gx#stx-pair? _g2597326332_)
                      (let ((_e2597526335_ (gx#syntax-e _g2597326332_)))
                        (let ((_hd2597626339_ (##car _e2597526335_))
                              (_tl2597726342_ (##cdr _e2597526335_)))
                          (if (gx#stx-pair? _tl2597726342_)
                              (let ((_e2597826345_
                                     (gx#syntax-e _tl2597726342_)))
                                (let ((_hd2597926349_ (##car _e2597826345_))
                                      (_tl2598026352_ (##cdr _e2597826345_)))
                                  (if (gx#stx-null? _hd2597926349_)
                                      (if (gx#stx-pair/null? _tl2598026352_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2598026352_)
                                                    '0)
                                              (let ((_g31758_
                                                     (gx#syntax-split-splice
                                                      _tl2598026352_
                                                      '0)))
                                                (begin
                                                  (let ((_g31759_
                                                         (values-count
                                                          _g31758_)))
                                                    (if (not (fx= _g31759_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31759_)))
                                                  (let ((_target2598126355_
                                                         (values-ref
                                                          _g31758_
                                                          0))
                                                        (_tl2598326358_
                                                         (values-ref
                                                          _g31758_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2598326358_)
                                                        (letrec ((_loop2598426361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2598226365_ _body2598826368_)
                            (if (gx#stx-pair? _hd2598226365_)
                                (let ((_e2598526371_
                                       (gx#syntax-e _hd2598226365_)))
                                  (let ((_lp-hd2598626375_
                                         (##car _e2598526371_))
                                        (_lp-tl2598726378_
                                         (##cdr _e2598526371_)))
                                    (_loop2598426361_
                                     _lp-tl2598726378_
                                     (cons _lp-hd2598626375_
                                           _body2598826368_))))
                                (let ((_body2598926381_
                                       (reverse _body2598826368_)))
                                  ((lambda (_L26385_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2640126404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2640226407_)
                    (cons _g2640126404_ _g2640226407_))
                  '()
                  _L26385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2598926381_))))))
                  (_loop2598426361_ _target2598126355_ '()))
                (_g2597026328_ _g2597326332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2597026328_ _g2597326332_))
                                          (_g2597026328_ _g2597326332_))
                                      (_g2597026328_ _g2597326332_))))
                              (_g2597026328_ _g2597326332_))))
                      (_g2597026328_ _g2597326332_)))))
          (_g2596926410_ _$stx25966_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx26418_)
        (let* ((_g2642326475_
                (lambda (_g2642426471_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2642426471_)))
               (_g2642226558_
                (lambda (_g2642426479_)
                  (if (gx#stx-pair? _g2642426479_)
                      (let ((_e2645526482_ (gx#syntax-e _g2642426479_)))
                        (let ((_hd2645626486_ (##car _e2645526482_))
                              (_tl2645726489_ (##cdr _e2645526482_)))
                          (if (gx#stx-pair? _tl2645726489_)
                              (let ((_e2645826492_
                                     (gx#syntax-e _tl2645726489_)))
                                (let ((_hd2645926496_ (##car _e2645826492_))
                                      (_tl2646026499_ (##cdr _e2645826492_)))
                                  (if (gx#stx-null? _hd2645926496_)
                                      (if (gx#stx-pair/null? _tl2646026499_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2646026499_)
                                                    '0)
                                              (let ((_g31760_
                                                     (gx#syntax-split-splice
                                                      _tl2646026499_
                                                      '0)))
                                                (begin
                                                  (let ((_g31761_
                                                         (values-count
                                                          _g31760_)))
                                                    (if (not (fx= _g31761_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31761_)))
                                                  (let ((_target2646126502_
                                                         (values-ref
                                                          _g31760_
                                                          0))
                                                        (_tl2646326505_
                                                         (values-ref
                                                          _g31760_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2646326505_)
                                                        (letrec ((_loop2646426508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2646226512_ _body2646826515_)
                            (if (gx#stx-pair? _hd2646226512_)
                                (let ((_e2646526518_
                                       (gx#syntax-e _hd2646226512_)))
                                  (let ((_lp-hd2646626522_
                                         (##car _e2646526518_))
                                        (_lp-tl2646726525_
                                         (##cdr _e2646526518_)))
                                    (_loop2646426508_
                                     _lp-tl2646726525_
                                     (cons _lp-hd2646626522_
                                           _body2646826515_))))
                                (let ((_body2646926528_
                                       (reverse _body2646826515_)))
                                  ((lambda (_L26532_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2654926552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2655026555_)
                    (cons _g2654926552_ _g2655026555_))
                  '()
                  _L26532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2646926528_))))))
                  (_loop2646426508_ _target2646126502_ '()))
                (_g2642326475_ _g2642426479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2642326475_ _g2642426479_))
                                          (_g2642326475_ _g2642426479_))
                                      (_g2642326475_ _g2642426479_))))
                              (_g2642326475_ _g2642426479_))))
                      (_g2642326475_ _g2642426479_))))
               (_g2642126684_
                (lambda (_g2642426562_)
                  (if (gx#stx-pair? _g2642426562_)
                      (let ((_e2643026565_ (gx#syntax-e _g2642426562_)))
                        (let ((_hd2643126569_ (##car _e2643026565_))
                              (_tl2643226572_ (##cdr _e2643026565_)))
                          (if (gx#stx-pair? _tl2643226572_)
                              (let ((_e2643326575_
                                     (gx#syntax-e _tl2643226572_)))
                                (let ((_hd2643426579_ (##car _e2643326575_))
                                      (_tl2643526582_ (##cdr _e2643326575_)))
                                  (if (gx#stx-pair? _hd2643426579_)
                                      (let ((_e2643626585_
                                             (gx#syntax-e _hd2643426579_)))
                                        (let ((_hd2643726589_
                                               (##car _e2643626585_))
                                              (_tl2643826592_
                                               (##cdr _e2643626585_)))
                                          (if (gx#stx-pair? _hd2643726589_)
                                              (let ((_e2643926595_
                                                     (gx#syntax-e
                                                      _hd2643726589_)))
                                                (let ((_hd2644026599_
                                                       (##car _e2643926595_))
                                                      (_tl2644126602_
                                                       (##cdr _e2643926595_)))
                                                  (if (gx#stx-pair?
                                                       _tl2644126602_)
                                                      (let ((_e2644226605_
                                                             (gx#syntax-e
                                                              _tl2644126602_)))
                                                        (let ((_hd2644326609_
                                                               (##car _e2644226605_))
                                                              (_tl2644426612_
                                                               (##cdr _e2644226605_)))
                                                          (if (gx#stx-null?
                                                               _tl2644426612_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2643526582_)
                          (if (fx>= (gx#stx-length _tl2643526582_) '0)
                              (let ((_g31762_
                                     (gx#syntax-split-splice
                                      _tl2643526582_
                                      '0)))
                                (begin
                                  (let ((_g31763_ (values-count _g31762_)))
                                    (if (not (fx= _g31763_ 2))
                                        (error "Context expects 2 values"
                                               _g31763_)))
                                  (let ((_target2644526615_
                                         (values-ref _g31762_ 0))
                                        (_tl2644726618_
                                         (values-ref _g31762_ 1)))
                                    (if (gx#stx-null? _tl2644726618_)
                                        (letrec ((_loop2644826621_
                                                  (lambda (_hd2644626625_
                                                           _body2645226628_)
                                                    (if (gx#stx-pair?
                                                         _hd2644626625_)
                                                        (let ((_e2644926631_
                                                               (gx#syntax-e
                                                                _hd2644626625_)))
                                                          (let ((_lp-hd2645026635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2644926631_))
                        (_lp-tl2645126638_ (##cdr _e2644926631_)))
                    (_loop2644826621_
                     _lp-tl2645126638_
                     (cons _lp-hd2645026635_ _body2645226628_))))
                (let ((_body2645326641_ (reverse _body2645226628_)))
                  ((lambda (_L26645_ _L26647_ _L26648_ _L26649_ _L26650_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26649_ (cons _L26648_ '())) '())
                                 (cons (cons _L26650_
                                             (cons _L26647_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2667526678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2667626681_)
                      (cons _g2667526678_ _g2667626681_))
                    '()
                    _L26645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2645326641_
                   _tl2643826592_
                   _hd2644326609_
                   _hd2644026599_
                   _hd2643126569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2644826621_
                                           _target2644526615_
                                           '()))
                                        (_g2642226558_ _g2642426562_)))))
                              (_g2642226558_ _g2642426562_))
                          (_g2642226558_ _g2642426562_))
                      (_g2642226558_ _g2642426562_))))
              (_g2642226558_ _g2642426562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2642226558_ _g2642426562_))))
                                      (_g2642226558_ _g2642426562_))))
                              (_g2642226558_ _g2642426562_))))
                      (_g2642226558_ _g2642426562_)))))
          (_g2642126684_ _$stx26418_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26690_)
        (let* ((_g2670126845_
                (lambda (_g2670226841_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2670226841_)))
               (_g2670026940_
                (lambda (_g2670226849_)
                  (if (gx#stx-pair? _g2670226849_)
                      (let ((_e2682226852_ (gx#syntax-e _g2670226849_)))
                        (let ((_hd2682326856_ (##car _e2682226852_))
                              (_tl2682426859_ (##cdr _e2682226852_)))
                          (if (gx#stx-pair? _tl2682426859_)
                              (let ((_e2682526862_
                                     (gx#syntax-e _tl2682426859_)))
                                (let ((_hd2682626866_ (##car _e2682526862_))
                                      (_tl2682726869_ (##cdr _e2682526862_)))
                                  (if (gx#stx-pair? _tl2682726869_)
                                      (let ((_e2682826872_
                                             (gx#syntax-e _tl2682726869_)))
                                        (let ((_hd2682926876_
                                               (##car _e2682826872_))
                                              (_tl2683026879_
                                               (##cdr _e2682826872_)))
                                          (if (gx#stx-datum? _hd2682926876_)
                                              (if (equal? (gx#stx-e
                                                           _hd2682926876_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2683026879_)
                                                      (let ((_e2683126882_
                                                             (gx#syntax-e
                                                              _tl2683026879_)))
                                                        (let ((_hd2683226886_
                                                               (##car _e2683126882_))
                                                              (_tl2683326889_
                                                               (##cdr _e2683126882_)))
                                                          (if (gx#stx-pair?
                                                               _tl2683326889_)
                                                              (let ((_e2683426892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2683326889_)))
                        (let ((_hd2683526896_ (##car _e2683426892_))
                              (_tl2683626899_ (##cdr _e2683426892_)))
                          (if (gx#identifier? _hd2683526896_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31764_|
                                   _hd2683526896_)
                                  (if (gx#stx-pair? _tl2683626899_)
                                      (let ((_e2683726902_
                                             (gx#syntax-e _tl2683626899_)))
                                        (let ((_hd2683826906_
                                               (##car _e2683726902_))
                                              (_tl2683926909_
                                               (##cdr _e2683726902_)))
                                          (if (gx#stx-null? _tl2683926909_)
                                              ((lambda (_L26912_
                                                        _L26914_
                                                        _L26915_
                                                        _L26916_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26916_
                                             (cons _L26915_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26912_
                                                   (cons (cons _L26914_
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
                                               _hd2683826906_
                                               _hd2683226886_
                                               _hd2682626866_
                                               _hd2682326856_)
                                              (_g2670126845_ _g2670226849_))))
                                      (_g2670126845_ _g2670226849_))
                                  (_g2670126845_ _g2670226849_))
                              (_g2670126845_ _g2670226849_))))
                      (_g2670126845_ _g2670226849_))))
              (_g2670126845_ _g2670226849_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2670126845_
                                                   _g2670226849_))
                                              (_g2670126845_ _g2670226849_))))
                                      (_g2670126845_ _g2670226849_))))
                              (_g2670126845_ _g2670226849_))))
                      (_g2670126845_ _g2670226849_))))
               (_g2669927008_
                (lambda (_g2670226944_)
                  (if (gx#stx-pair? _g2670226944_)
                      (let ((_e2680626947_ (gx#syntax-e _g2670226944_)))
                        (let ((_hd2680726951_ (##car _e2680626947_))
                              (_tl2680826954_ (##cdr _e2680626947_)))
                          (if (gx#stx-pair? _tl2680826954_)
                              (let ((_e2680926957_
                                     (gx#syntax-e _tl2680826954_)))
                                (let ((_hd2681026961_ (##car _e2680926957_))
                                      (_tl2681126964_ (##cdr _e2680926957_)))
                                  (if (gx#stx-pair? _tl2681126964_)
                                      (let ((_e2681226967_
                                             (gx#syntax-e _tl2681126964_)))
                                        (let ((_hd2681326971_
                                               (##car _e2681226967_))
                                              (_tl2681426974_
                                               (##cdr _e2681226967_)))
                                          (if (gx#stx-datum? _hd2681326971_)
                                              (if (equal? (gx#stx-e
                                                           _hd2681326971_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2681426974_)
                                                      (let ((_e2681526977_
                                                             (gx#syntax-e
                                                              _tl2681426974_)))
                                                        (let ((_hd2681626981_
                                                               (##car _e2681526977_))
                                                              (_tl2681726984_
                                                               (##cdr _e2681526977_)))
                                                          (if (gx#stx-null?
                                                               _tl2681726984_)
                                                              ((lambda (_L26987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26989_
                                _L26990_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26989_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26987_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2681626981_
                       _hd2681026961_
                       _hd2680726951_)
                      (_g2670026940_ _g2670226944_))))
              (_g2670026940_ _g2670226944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2670026940_
                                                   _g2670226944_))
                                              (_g2670026940_ _g2670226944_))))
                                      (_g2670026940_ _g2670226944_))))
                              (_g2670026940_ _g2670226944_))))
                      (_g2670026940_ _g2670226944_))))
               (_g2669827076_
                (lambda (_g2670227012_)
                  (if (gx#stx-pair? _g2670227012_)
                      (let ((_e2679127015_ (gx#syntax-e _g2670227012_)))
                        (let ((_hd2679227019_ (##car _e2679127015_))
                              (_tl2679327022_ (##cdr _e2679127015_)))
                          (if (gx#stx-pair? _tl2679327022_)
                              (let ((_e2679427025_
                                     (gx#syntax-e _tl2679327022_)))
                                (let ((_hd2679527029_ (##car _e2679427025_))
                                      (_tl2679627032_ (##cdr _e2679427025_)))
                                  (if (gx#stx-pair? _tl2679627032_)
                                      (let ((_e2679727035_
                                             (gx#syntax-e _tl2679627032_)))
                                        (let ((_hd2679827039_
                                               (##car _e2679727035_))
                                              (_tl2679927042_
                                               (##cdr _e2679727035_)))
                                          (if (gx#identifier? _hd2679827039_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31765_|
                                                   _hd2679827039_)
                                                  (if (gx#stx-pair?
                                                       _tl2679927042_)
                                                      (let ((_e2680027045_
                                                             (gx#syntax-e
                                                              _tl2679927042_)))
                                                        (let ((_hd2680127049_
                                                               (##car _e2680027045_))
                                                              (_tl2680227052_
                                                               (##cdr _e2680027045_)))
                                                          (if (gx#stx-null?
                                                               _tl2680227052_)
                                                              ((lambda (_L27055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L27057_
                                _L27058_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L27058_
                                                             (cons _L27057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L27055_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2680127049_
                       _hd2679527029_
                       _hd2679227019_)
                      (_g2669927008_ _g2670227012_))))
              (_g2669927008_ _g2670227012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669927008_
                                                   _g2670227012_))
                                              (_g2669927008_ _g2670227012_))))
                                      (_g2669927008_ _g2670227012_))))
                              (_g2669927008_ _g2670227012_))))
                      (_g2669927008_ _g2670227012_))))
               (_g2669727118_
                (lambda (_g2670227080_)
                  (if (gx#stx-pair? _g2670227080_)
                      (let ((_e2678227083_ (gx#syntax-e _g2670227080_)))
                        (let ((_hd2678327087_ (##car _e2678227083_))
                              (_tl2678427090_ (##cdr _e2678227083_)))
                          (if (gx#stx-pair? _tl2678427090_)
                              (let ((_e2678527093_
                                     (gx#syntax-e _tl2678427090_)))
                                (let ((_hd2678627097_ (##car _e2678527093_))
                                      (_tl2678727100_ (##cdr _e2678527093_)))
                                  (if (gx#stx-null? _tl2678727100_)
                                      ((lambda (_L27103_ _L27105_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L27105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L27103_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2678627097_
                                       _hd2678327087_)
                                      (_g2669827076_ _g2670227080_))))
                              (_g2669827076_ _g2670227080_))))
                      (_g2669827076_ _g2670227080_))))
               (_g2669627172_
                (lambda (_g2670227122_)
                  (if (gx#stx-pair? _g2670227122_)
                      (let ((_e2677127125_ (gx#syntax-e _g2670227122_)))
                        (let ((_hd2677227129_ (##car _e2677127125_))
                              (_tl2677327132_ (##cdr _e2677127125_)))
                          (if (gx#stx-pair? _tl2677327132_)
                              (let ((_e2677427135_
                                     (gx#syntax-e _tl2677327132_)))
                                (let ((_hd2677527139_ (##car _e2677427135_))
                                      (_tl2677627142_ (##cdr _e2677427135_)))
                                  (if (gx#stx-pair? _tl2677627142_)
                                      (let ((_e2677727145_
                                             (gx#syntax-e _tl2677627142_)))
                                        (let ((_hd2677827149_
                                               (##car _e2677727145_))
                                              (_tl2677927152_
                                               (##cdr _e2677727145_)))
                                          (if (gx#stx-null? _tl2677927152_)
                                              ((lambda (_L27155_ _L27157_)
                                                 (cons _L27157_
                                                       (cons _L27155_ '())))
                                               _hd2677827149_
                                               _hd2677527139_)
                                              (_g2669727118_ _g2670227122_))))
                                      (_g2669727118_ _g2670227122_))))
                              (_g2669727118_ _g2670227122_))))
                      (_g2669727118_ _g2670227122_))))
               (_g2669527252_
                (lambda (_g2670227176_)
                  (if (gx#stx-pair? _g2670227176_)
                      (let ((_e2675427179_ (gx#syntax-e _g2670227176_)))
                        (let ((_hd2675527183_ (##car _e2675427179_))
                              (_tl2675627186_ (##cdr _e2675427179_)))
                          (if (gx#stx-pair? _tl2675627186_)
                              (let ((_e2675727189_
                                     (gx#syntax-e _tl2675627186_)))
                                (let ((_hd2675827193_ (##car _e2675727189_))
                                      (_tl2675927196_ (##cdr _e2675727189_)))
                                  (if (gx#stx-pair? _hd2675827193_)
                                      (let ((_e2676027199_
                                             (gx#syntax-e _hd2675827193_)))
                                        (let ((_hd2676127203_
                                               (##car _e2676027199_))
                                              (_tl2676227206_
                                               (##cdr _e2676027199_)))
                                          (if (gx#identifier? _hd2676127203_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31766_|
                                                   _hd2676127203_)
                                                  (if (gx#stx-pair?
                                                       _tl2676227206_)
                                                      (let ((_e2676327209_
                                                             (gx#syntax-e
                                                              _tl2676227206_)))
                                                        (let ((_hd2676427213_
                                                               (##car _e2676327209_))
                                                              (_tl2676527216_
                                                               (##cdr _e2676327209_)))
                                                          (if (gx#stx-null?
                                                               _tl2676527216_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2675927196_)
                          (let ((_e2676627219_ (gx#syntax-e _tl2675927196_)))
                            (let ((_hd2676727223_ (##car _e2676627219_))
                                  (_tl2676827226_ (##cdr _e2676627219_)))
                              (if (gx#stx-null? _tl2676827226_)
                                  ((lambda (_L27229_ _L27231_ _L27232_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L27232_
                                                       (cons _L27231_
                                                             (cons _L27229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2676727223_
                                   _hd2676427213_
                                   _hd2675527183_)
                                  (_g2669627172_ _g2670227176_))))
                          (_g2669627172_ _g2670227176_))
                      (_g2669627172_ _g2670227176_))))
              (_g2669627172_ _g2670227176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669627172_
                                                   _g2670227176_))
                                              (_g2669627172_ _g2670227176_))))
                                      (_g2669627172_ _g2670227176_))))
                              (_g2669627172_ _g2670227176_))))
                      (_g2669627172_ _g2670227176_))))
               (_g2669427362_
                (lambda (_g2670227256_)
                  (if (gx#stx-pair? _g2670227256_)
                      (let ((_e2673027259_ (gx#syntax-e _g2670227256_)))
                        (let ((_hd2673127263_ (##car _e2673027259_))
                              (_tl2673227266_ (##cdr _e2673027259_)))
                          (if (gx#stx-pair? _tl2673227266_)
                              (let ((_e2673327269_
                                     (gx#syntax-e _tl2673227266_)))
                                (let ((_hd2673427273_ (##car _e2673327269_))
                                      (_tl2673527276_ (##cdr _e2673327269_)))
                                  (if (gx#stx-pair? _hd2673427273_)
                                      (let ((_e2673627279_
                                             (gx#syntax-e _hd2673427273_)))
                                        (let ((_hd2673727283_
                                               (##car _e2673627279_))
                                              (_tl2673827286_
                                               (##cdr _e2673627279_)))
                                          (if (gx#identifier? _hd2673727283_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31767_|
                                                   _hd2673727283_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2673827286_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2673827286_)
                        '0)
                  (let ((_g31768_ (gx#syntax-split-splice _tl2673827286_ '0)))
                    (begin
                      (let ((_g31769_ (values-count _g31768_)))
                        (if (not (fx= _g31769_ 2))
                            (error "Context expects 2 values" _g31769_)))
                      (let ((_target2673927289_ (values-ref _g31768_ 0))
                            (_tl2674127292_ (values-ref _g31768_ 1)))
                        (if (gx#stx-null? _tl2674127292_)
                            (letrec ((_loop2674227295_
                                      (lambda (_hd2674027299_ _pred2674627302_)
                                        (if (gx#stx-pair? _hd2674027299_)
                                            (let ((_e2674327305_
                                                   (gx#syntax-e
                                                    _hd2674027299_)))
                                              (let ((_lp-hd2674427309_
                                                     (##car _e2674327305_))
                                                    (_lp-tl2674527312_
                                                     (##cdr _e2674327305_)))
                                                (_loop2674227295_
                                                 _lp-tl2674527312_
                                                 (cons _lp-hd2674427309_
                                                       _pred2674627302_))))
                                            (let ((_pred2674727315_
                                                   (reverse _pred2674627302_)))
                                              (if (gx#stx-pair? _tl2673527276_)
                                                  (let ((_e2674827319_
                                                         (gx#syntax-e
                                                          _tl2673527276_)))
                                                    (let ((_hd2674927323_
                                                           (##car _e2674827319_))
                                                          (_tl2675027326_
                                                           (##cdr _e2674827319_)))
                                                      (if (gx#stx-null?
                                                           _tl2675027326_)
                                                          ((lambda (_L27329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27331_
                            _L27332_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2735327356_ _g2735427359_)
                                      (cons (cons _L27332_
                                                  (cons _g2735327356_
                                                        (cons _L27329_ '())))
                                            _g2735427359_))
                                    '()
                                    _L27331_))))
                   _hd2674927323_
                   _pred2674727315_
                   _hd2673127263_)
                  (_g2669527252_ _g2670227256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669527252_
                                                   _g2670227256_)))))))
                              (_loop2674227295_ _target2673927289_ '()))
                            (_g2669527252_ _g2670227256_)))))
                  (_g2669527252_ _g2670227256_))
              (_g2669527252_ _g2670227256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669527252_
                                                   _g2670227256_))
                                              (_g2669527252_ _g2670227256_))))
                                      (_g2669527252_ _g2670227256_))))
                              (_g2669527252_ _g2670227256_))))
                      (_g2669527252_ _g2670227256_))))
               (_g2669327472_
                (lambda (_g2670227366_)
                  (if (gx#stx-pair? _g2670227366_)
                      (let ((_e2670627369_ (gx#syntax-e _g2670227366_)))
                        (let ((_hd2670727373_ (##car _e2670627369_))
                              (_tl2670827376_ (##cdr _e2670627369_)))
                          (if (gx#stx-pair? _tl2670827376_)
                              (let ((_e2670927379_
                                     (gx#syntax-e _tl2670827376_)))
                                (let ((_hd2671027383_ (##car _e2670927379_))
                                      (_tl2671127386_ (##cdr _e2670927379_)))
                                  (if (gx#stx-pair? _hd2671027383_)
                                      (let ((_e2671227389_
                                             (gx#syntax-e _hd2671027383_)))
                                        (let ((_hd2671327393_
                                               (##car _e2671227389_))
                                              (_tl2671427396_
                                               (##cdr _e2671227389_)))
                                          (if (gx#identifier? _hd2671327393_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31770_|
                                                   _hd2671327393_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2671427396_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2671427396_)
                        '0)
                  (let ((_g31771_ (gx#syntax-split-splice _tl2671427396_ '0)))
                    (begin
                      (let ((_g31772_ (values-count _g31771_)))
                        (if (not (fx= _g31772_ 2))
                            (error "Context expects 2 values" _g31772_)))
                      (let ((_target2671527399_ (values-ref _g31771_ 0))
                            (_tl2671727402_ (values-ref _g31771_ 1)))
                        (if (gx#stx-null? _tl2671727402_)
                            (letrec ((_loop2671827405_
                                      (lambda (_hd2671627409_ _pred2672227412_)
                                        (if (gx#stx-pair? _hd2671627409_)
                                            (let ((_e2671927415_
                                                   (gx#syntax-e
                                                    _hd2671627409_)))
                                              (let ((_lp-hd2672027419_
                                                     (##car _e2671927415_))
                                                    (_lp-tl2672127422_
                                                     (##cdr _e2671927415_)))
                                                (_loop2671827405_
                                                 _lp-tl2672127422_
                                                 (cons _lp-hd2672027419_
                                                       _pred2672227412_))))
                                            (let ((_pred2672327425_
                                                   (reverse _pred2672227412_)))
                                              (if (gx#stx-pair? _tl2671127386_)
                                                  (let ((_e2672427429_
                                                         (gx#syntax-e
                                                          _tl2671127386_)))
                                                    (let ((_hd2672527433_
                                                           (##car _e2672427429_))
                                                          (_tl2672627436_
                                                           (##cdr _e2672427429_)))
                                                      (if (gx#stx-null?
                                                           _tl2672627436_)
                                                          ((lambda (_L27439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27441_
                            _L27442_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2746327466_ _g2746427469_)
                                      (cons (cons _L27442_
                                                  (cons _g2746327466_
                                                        (cons _L27439_ '())))
                                            _g2746427469_))
                                    '()
                                    _L27441_))))
                   _hd2672527433_
                   _pred2672327425_
                   _hd2670727373_)
                  (_g2669427362_ _g2670227366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669427362_
                                                   _g2670227366_)))))))
                              (_loop2671827405_ _target2671527399_ '()))
                            (_g2669427362_ _g2670227366_)))))
                  (_g2669427362_ _g2670227366_))
              (_g2669427362_ _g2670227366_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2669427362_
                                                   _g2670227366_))
                                              (_g2669427362_ _g2670227366_))))
                                      (_g2669427362_ _g2670227366_))))
                              (_g2669427362_ _g2670227366_))))
                      (_g2669427362_ _g2670227366_)))))
          (_g2669327472_ _$stx26690_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx27478_)
        (let* ((_g2748327517_
                (lambda (_g2748427513_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2748427513_)))
               (_g2748227574_
                (lambda (_g2748427521_)
                  (if (gx#stx-pair? _g2748427521_)
                      (let ((_e2750327524_ (gx#syntax-e _g2748427521_)))
                        (let ((_hd2750427528_ (##car _e2750327524_))
                              (_tl2750527531_ (##cdr _e2750327524_)))
                          (if (gx#stx-pair? _tl2750527531_)
                              (let ((_e2750627534_
                                     (gx#syntax-e _tl2750527531_)))
                                (let ((_hd2750727538_ (##car _e2750627534_))
                                      (_tl2750827541_ (##cdr _e2750627534_)))
                                  (if (gx#stx-pair? _tl2750827541_)
                                      (let ((_e2750927544_
                                             (gx#syntax-e _tl2750827541_)))
                                        (let ((_hd2751027548_
                                               (##car _e2750927544_))
                                              (_tl2751127551_
                                               (##cdr _e2750927544_)))
                                          (if (gx#stx-null? _tl2751127551_)
                                              ((lambda (_L27554_
                                                        _L27556_
                                                        _L27557_)
                                                 (cons _L27557_
                                                       (cons _L27556_
                                                             (cons _L27554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
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
                                               _hd2751027548_
                                               _hd2750727538_
                                               _hd2750427528_)
                                              (_g2748327517_ _g2748427521_))))
                                      (_g2748327517_ _g2748427521_))))
                              (_g2748327517_ _g2748427521_))))
                      (_g2748327517_ _g2748427521_))))
               (_g2748127642_
                (lambda (_g2748427578_)
                  (if (gx#stx-pair? _g2748427578_)
                      (let ((_e2748827581_ (gx#syntax-e _g2748427578_)))
                        (let ((_hd2748927585_ (##car _e2748827581_))
                              (_tl2749027588_ (##cdr _e2748827581_)))
                          (if (gx#stx-pair? _tl2749027588_)
                              (let ((_e2749127591_
                                     (gx#syntax-e _tl2749027588_)))
                                (let ((_hd2749227595_ (##car _e2749127591_))
                                      (_tl2749327598_ (##cdr _e2749127591_)))
                                  (if (gx#stx-pair? _tl2749327598_)
                                      (let ((_e2749427601_
                                             (gx#syntax-e _tl2749327598_)))
                                        (let ((_hd2749527605_
                                               (##car _e2749427601_))
                                              (_tl2749627608_
                                               (##cdr _e2749427601_)))
                                          (if (gx#stx-pair? _tl2749627608_)
                                              (let ((_e2749727611_
                                                     (gx#syntax-e
                                                      _tl2749627608_)))
                                                (let ((_hd2749827615_
                                                       (##car _e2749727611_))
                                                      (_tl2749927618_
                                                       (##cdr _e2749727611_)))
                                                  (if (gx#stx-null?
                                                       _tl2749927618_)
                                                      ((lambda (_L27621_
                                                                _L27623_
                                                                _L27624_)
                                                         (if (gx#identifier?
                                                              _L27624_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27624_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _L27623_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27621_ '()))
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
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
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
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_g2748227574_ _g2748427578_)))
               _hd2749827615_
               _hd2749527605_
               _hd2749227595_)
              (_g2748227574_ _g2748427578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2748227574_ _g2748427578_))))
                                      (_g2748227574_ _g2748427578_))))
                              (_g2748227574_ _g2748427578_))))
                      (_g2748227574_ _g2748427578_)))))
          (_g2748127642_ _$stx27478_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27646_)
        (let* ((_g2765027665_
                (lambda (_g2765127661_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2765127661_)))
               (_g2764927708_
                (lambda (_g2765127669_)
                  (if (gx#stx-pair? _g2765127669_)
                      (let ((_e2765427672_ (gx#syntax-e _g2765127669_)))
                        (let ((_hd2765527676_ (##car _e2765427672_))
                              (_tl2765627679_ (##cdr _e2765427672_)))
                          (if (gx#stx-pair? _tl2765627679_)
                              (let ((_e2765727682_
                                     (gx#syntax-e _tl2765627679_)))
                                (let ((_hd2765827686_ (##car _e2765727682_))
                                      (_tl2765927689_ (##cdr _e2765727682_)))
                                  ((lambda (_L27692_ _L27694_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27694_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27692_)
                                                       '()))))
                                   _tl2765927689_
                                   _hd2765827686_)))
                              (_g2765027665_ _g2765127669_))))
                      (_g2765027665_ _g2765127669_)))))
          (_g2764927708_ _$stx27646_))))))
