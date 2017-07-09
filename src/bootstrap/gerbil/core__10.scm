(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g30009_| (gx#core-quote-syntax 'apply))
  (define |gerbil/core::<match>[1]#_g30010_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g30011_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g30014_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g30015_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30016_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30017_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g30018_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g30019_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g30020_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g30021_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30022_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30023_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g30024_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g30025_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30026_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30039_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30040_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30041_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g30042_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g30059_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30060_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30061_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30062_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30065_| (gx#core-quote-syntax 'and))
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
      (lambda _$args24116_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args24116_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx24113_)
        (if (gx#identifier? _stx24113_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx24113_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2242924099_
             (lambda (_stx22431_ _match-stx22433_)
               (let ((_parse-qq22441_
                      (lambda (_hd22447_)
                        (let ((_g2244922456_
                               (lambda (_g2245022452_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2245022452_))))
                          (_g2244922456_ _hd22447_)))))
                 (let ((_parse-error22442_
                        (lambda (_hd22444_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22433_
                                     (cons _match-stx22433_
                                           (cons _stx22431_
                                                 (cons _hd22444_ '())))
                                     (cons _stx22431_
                                           (cons _hd22444_ '())))))))
                   (letrec ((_parse122435_
                             (lambda (_hd22782_)
                               (let ((_g2280822950_
                                      (lambda (_g2280922946_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2280922946_))))
                                 (let ((_g2280722961_
                                        (lambda (_g2280922954_)
                                          ((lambda ()
                                             (_parse-error22442_
                                              _hd22782_))))))
                                   (let ((_g2280622979_
                                          (lambda (_g2280922965_)
                                            ((lambda (_L22968_)
                                               (if (gx#stx-datum? _L22968_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22968_)
                                                               '()))
                                                   (_g2280722961_
                                                    _g2280922965_)))
                                             _g2280922965_))))
                                     (let ((_g2280522995_
                                            (lambda (_g2280922983_)
                                              ((lambda (_L22986_)
                                                 (if (if (gx#identifier?
                                                          _L22986_)
                                                         (not (gx#ellipsis?
                                                               _L22986_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22986_ '()))
                                                     (_g2280622979_
                                                      _g2280922983_)))
                                               _g2280922983_))))
                                       (let ((_g2280423011_
                                              (lambda (_g2280922999_)
                                                ((lambda (_L23002_)
                                                   (if (gx#underscore?
                                                        _L23002_)
                                                       (cons 'any: '())
                                                       (_g2280522995_
                                                        _g2280922999_)))
                                                 _g2280922999_))))
                                         (let ((_g2280323043_
                                                (lambda (_g2280923015_)
                                                  (if (gx#stx-pair?
                                                       _g2280923015_)
                                                      (let ((_e2293923018_
                                                             (gx#syntax-e
                                                              _g2280923015_)))
                                                        (let ((_hd2294023022_
                                                               (##car _e2293923018_))
                                                              (_tl2294123025_
                                                               (##cdr _e2293923018_)))
                                                          ((lambda (_L23028_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23028_)
                         (_parse122435_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L23028_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22782_)
                            (let ((_$e23039_ (gx#stx-source _hd22782_)))
                              (if _$e23039_
                                  _$e23039_
                                  (gx#stx-source _stx22431_))))))
                         (_g2280423011_ _g2280923015_)))
                   _hd2294023022_)))
              (_g2280423011_ _g2280923015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2280223097_
                                                  (lambda (_g2280923047_)
                                                    (if (gx#stx-pair?
                                                         _g2280923047_)
                                                        (let ((_e2292923050_
                                                               (gx#syntax-e
                                                                _g2280923047_)))
                                                          (let ((_hd2293023054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2292923050_))
                        (_tl2293123057_ (##cdr _e2292923050_)))
                    (if (gx#identifier? _hd2293023054_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g30009_|
                             _hd2293023054_)
                            (if (gx#stx-pair? _tl2293123057_)
                                (let ((_e2293223060_
                                       (gx#syntax-e _tl2293123057_)))
                                  (let ((_hd2293323064_ (##car _e2293223060_))
                                        (_tl2293423067_ (##cdr _e2293223060_)))
                                    (if (gx#stx-pair? _tl2293423067_)
                                        (let ((_e2293523070_
                                               (gx#syntax-e _tl2293423067_)))
                                          (let ((_hd2293623074_
                                                 (##car _e2293523070_))
                                                (_tl2293723077_
                                                 (##cdr _e2293523070_)))
                                            (if (gx#stx-null? _tl2293723077_)
                                                ((lambda (_L23080_ _L23082_)
                                                   (cons 'apply:
                                                         (cons _L23082_
                                                               (cons (_parse122435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23080_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2293623074_
                                                 _hd2293323064_)
                                                (_g2280323043_
                                                 _g2280923047_))))
                                        (_g2280323043_ _g2280923047_))))
                                (_g2280323043_ _g2280923047_))
                            (_g2280323043_ _g2280923047_))
                        (_g2280323043_ _g2280923047_))))
                (_g2280323043_ _g2280923047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2280123137_
                                                    (lambda (_g2280923101_)
                                                      (if (gx#stx-pair?
                                                           _g2280923101_)
                                                          (let ((_e2292123104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2280923101_)))
                    (let ((_hd2292223108_ (##car _e2292123104_))
                          (_tl2292323111_ (##cdr _e2292123104_)))
                      (if (gx#identifier? _hd2292223108_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g30010_|
                               _hd2292223108_)
                              (if (gx#stx-pair? _tl2292323111_)
                                  (let ((_e2292423114_
                                         (gx#syntax-e _tl2292323111_)))
                                    (let ((_hd2292523118_
                                           (##car _e2292423114_))
                                          (_tl2292623121_
                                           (##cdr _e2292423114_)))
                                      (if (gx#stx-null? _tl2292623121_)
                                          ((lambda (_L23124_)
                                             (_parse-qq22441_ _L23124_))
                                           _hd2292523118_)
                                          (_g2280223097_ _g2280923101_))))
                                  (_g2280223097_ _g2280923101_))
                              (_g2280223097_ _g2280923101_))
                          (_g2280223097_ _g2280923101_))))
                  (_g2280223097_ _g2280923101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2280023177_
                                                      (lambda (_g2280923141_)
                                                        (if (gx#stx-pair?
                                                             _g2280923141_)
                                                            (let ((_e2291423144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2280923141_)))
                      (let ((_hd2291523148_ (##car _e2291423144_))
                            (_tl2291623151_ (##cdr _e2291423144_)))
                        (if (gx#identifier? _hd2291523148_)
                            (if (gx#free-identifier=?
                                 |gerbil/core::<match>[1]#_g30011_|
                                 _hd2291523148_)
                                (if (gx#stx-pair? _tl2291623151_)
                                    (let ((_e2291723154_
                                           (gx#syntax-e _tl2291623151_)))
                                      (let ((_hd2291823158_
                                             (##car _e2291723154_))
                                            (_tl2291923161_
                                             (##cdr _e2291723154_)))
                                        (if (gx#stx-null? _tl2291923161_)
                                            ((lambda (_L23164_)
                                               (cons 'datum:
                                                     (cons (gx#stx-e _L23164_)
                                                           '())))
                                             _hd2291823158_)
                                            (_g2280123137_ _g2280923141_))))
                                    (_g2280123137_ _g2280923141_))
                                (_g2280123137_ _g2280923141_))
                            (_g2280123137_ _g2280923141_))))
                    (_g2280123137_ _g2280923141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2279923227_
                                                        (lambda (_g2280923181_)
                                                          (if (gx#stx-pair?
                                                               _g2280923181_)
                                                              (let ((_e2290723184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2280923181_)))
                        (let ((_hd2290823188_ (##car _e2290723184_))
                              (_tl2290923191_ (##cdr _e2290723184_)))
                          (if (gx#stx-pair? _tl2290923191_)
                              (let ((_e2291023194_
                                     (gx#syntax-e _tl2290923191_)))
                                (let ((_hd2291123198_ (##car _e2291023194_))
                                      (_tl2291223201_ (##cdr _e2291023194_)))
                                  (if (gx#stx-null? _tl2291223201_)
                                      ((lambda (_L23204_ _L23206_)
                                         (if (if (gx#identifier? _L23206_)
                                                 (let ((_$e23219_
                                                        (gx#free-identifier=?
                                                         _L23206_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))))
                                                   (if _$e23219_
                                                       _$e23219_
                                                       (let ((_$e23223_
                                                              (gx#free-identifier=?
                                                               _L23206_
                                                               (gx#datum->syntax
                                                                '#f
                                                                'eqv?))))
                                                         (if _$e23223_
                                                             _$e23223_
                                                             (gx#free-identifier=?
                                                              _L23206_
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))))))
                                                 '#f)
                                             (cons '?:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cut)
                                                               (cons _L23206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '<>)
                                   (cons _L23204_ '()))))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2280023177_ _g2280923181_)))
                                       _hd2291123198_
                                       _hd2290823188_)
                                      (_g2280023177_ _g2280923181_))))
                              (_g2280023177_ _g2280923181_))))
                      (_g2280023177_ _g2280923181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2279823257_
                                                          (lambda (_g2280923231_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2280923231_)
                        (let ((_e2290223234_ (gx#syntax-e _g2280923231_)))
                          (let ((_hd2290323238_ (##car _e2290223234_))
                                (_tl2290423241_ (##cdr _e2290223234_)))
                            ((lambda (_L23244_ _L23246_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                    _L23246_)
                                   (cons 'class:
                                         (cons (gx#syntax-local-value _L23246_)
                                               (cons (_parse-class-body22440_
                                                      _L23244_)
                                                     '())))
                                   (_g2279923227_ _g2280923231_)))
                             _tl2290423241_
                             _hd2290323238_)))
                        (_g2279923227_ _g2280923231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2279723287_
                                                            (lambda (_g2280923261_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2280923261_)
                          (let ((_e2289723264_ (gx#syntax-e _g2280923261_)))
                            (let ((_hd2289823268_ (##car _e2289723264_))
                                  (_tl2289923271_ (##cdr _e2289723264_)))
                              ((lambda (_L23274_ _L23276_)
                                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                      _L23276_)
                                     (cons 'struct:
                                           (cons (gx#syntax-local-value
                                                  _L23276_)
                                                 (cons (_parse-vector22438_
                                                        _L23274_)
                                                       '())))
                                     (_g2279823257_ _g2280923261_)))
                               _tl2289923271_
                               _hd2289823268_)))
                          (_g2279823257_ _g2280923261_)))))
               (let ((_g2279623350_
                      (lambda (_g2280923291_)
                        (if (gx#stx-vector? _g2280923291_)
                            (let ((_e2288523294_
                                   (vector->list (gx#syntax-e _g2280923291_))))
                              (if (gx#stx-pair/null? _e2288523294_)
                                  (if (fx>= (gx#stx-length _e2288523294_) '0)
                                      (let ((_g30012_
                                             (gx#syntax-split-splice
                                              _e2288523294_
                                              '0)))
                                        (begin
                                          (let ((_g30013_
                                                 (values-count _g30012_)))
                                            (if (not (fx= _g30013_ 2))
                                                (error "Context expects 2 values"
                                                       _g30013_)))
                                          (let ((_target2288623298_
                                                 (values-ref _g30012_ 0))
                                                (_tl2288823301_
                                                 (values-ref _g30012_ 1)))
                                            (if (gx#stx-null? _tl2288823301_)
                                                (letrec ((_loop2288923304_
                                                          (lambda (_hd2288723308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2289323311_)
                    (if (gx#stx-pair? _hd2288723308_)
                        (let ((_e2289023314_ (gx#syntax-e _hd2288723308_)))
                          (let ((_lp-hd2289123318_ (##car _e2289023314_))
                                (_lp-tl2289223321_ (##cdr _e2289023314_)))
                            (_loop2288923304_
                             _lp-tl2289223321_
                             (cons _lp-hd2289123318_ _body2289323311_))))
                        (let ((_body2289423324_ (reverse _body2289323311_)))
                          ((lambda (_L23328_)
                             (cons 'vector:
                                   (cons (_parse-vector22438_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2334123344_
                                                            _g2334223347_)
                                                     (cons _g2334123344_
                                                           _g2334223347_))
                                                   '()
                                                   _L23328_)))
                                         '())))
                           _body2289423324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2288923304_
                                                   _target2288623298_
                                                   '()))
                                                (_g2279723287_
                                                 _g2280923291_)))))
                                      (_g2279723287_ _g2280923291_))
                                  (_g2279723287_ _g2280923291_)))
                            (_g2279723287_ _g2280923291_)))))
                 (let ((_g2279523378_
                        (lambda (_g2280923354_)
                          (if (gx#stx-pair? _g2280923354_)
                              (let ((_e2288123357_
                                     (gx#syntax-e _g2280923354_)))
                                (let ((_hd2288223361_ (##car _e2288123357_))
                                      (_tl2288323364_ (##cdr _e2288123357_)))
                                  (if (gx#identifier? _hd2288223361_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g30014_|
                                           _hd2288223361_)
                                          ((lambda (_L23367_)
                                             (cons 'vector:
                                                   (cons (_parse-vector22438_
                                                          _L23367_)
                                                         '())))
                                           _tl2288323364_)
                                          (_g2279623350_ _g2280923354_))
                                      (_g2279623350_ _g2280923354_))))
                              (_g2279623350_ _g2280923354_)))))
                   (let ((_g2279423406_
                          (lambda (_g2280923382_)
                            (if (gx#stx-pair? _g2280923382_)
                                (let ((_e2287723385_
                                       (gx#syntax-e _g2280923382_)))
                                  (let ((_hd2287823389_ (##car _e2287723385_))
                                        (_tl2287923392_ (##cdr _e2287723385_)))
                                    (if (gx#identifier? _hd2287823389_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g30015_|
                                             _hd2287823389_)
                                            ((lambda (_L23395_)
                                               (cons 'values:
                                                     (cons (_parse-vector22438_
                                                            _L23395_)
                                                           '())))
                                             _tl2287923392_)
                                            (_g2279523378_ _g2280923382_))
                                        (_g2279523378_ _g2280923382_))))
                                (_g2279523378_ _g2280923382_)))))
                     (let ((_g2279323446_
                            (lambda (_g2280923410_)
                              (if (gx#stx-pair? _g2280923410_)
                                  (let ((_e2287023413_
                                         (gx#syntax-e _g2280923410_)))
                                    (let ((_hd2287123417_
                                           (##car _e2287023413_))
                                          (_tl2287223420_
                                           (##cdr _e2287023413_)))
                                      (if (gx#identifier? _hd2287123417_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g30016_|
                                               _hd2287123417_)
                                              (if (gx#stx-pair? _tl2287223420_)
                                                  (let ((_e2287323423_
                                                         (gx#syntax-e
                                                          _tl2287223420_)))
                                                    (let ((_hd2287423427_
                                                           (##car _e2287323423_))
                                                          (_tl2287523430_
                                                           (##cdr _e2287323423_)))
                                                      (if (gx#stx-null?
                                                           _tl2287523430_)
                                                          ((lambda (_L23433_)
                                                             (_parse122435_
                                                              _L23433_))
                                                           _hd2287423427_)
                                                          (_g2279423406_
                                                           _g2280923410_))))
                                                  (_g2279423406_
                                                   _g2280923410_))
                                              (_g2279423406_ _g2280923410_))
                                          (_g2279423406_ _g2280923410_))))
                                  (_g2279423406_ _g2280923410_)))))
                       (let ((_g2279223467_
                              (lambda (_g2280923450_)
                                (if (gx#stx-box? _g2280923450_)
                                    (let ((_e2286823453_
                                           (unbox (gx#syntax-e
                                                   _g2280923450_))))
                                      ((lambda (_L23457_)
                                         (cons 'box:
                                               (cons (_parse122435_ _L23457_)
                                                     '())))
                                       _e2286823453_))
                                    (_g2279323446_ _g2280923450_)))))
                         (let ((_g2279123507_
                                (lambda (_g2280923471_)
                                  (if (gx#stx-pair? _g2280923471_)
                                      (let ((_e2286123474_
                                             (gx#syntax-e _g2280923471_)))
                                        (let ((_hd2286223478_
                                               (##car _e2286123474_))
                                              (_tl2286323481_
                                               (##cdr _e2286123474_)))
                                          (if (gx#identifier? _hd2286223478_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g30017_|
                                                   _hd2286223478_)
                                                  (if (gx#stx-pair?
                                                       _tl2286323481_)
                                                      (let ((_e2286423484_
                                                             (gx#syntax-e
                                                              _tl2286323481_)))
                                                        (let ((_hd2286523488_
                                                               (##car _e2286423484_))
                                                              (_tl2286623491_
                                                               (##cdr _e2286423484_)))
                                                          (if (gx#stx-null?
                                                               _tl2286623491_)
                                                              ((lambda (_L23494_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'box: (cons (_parse122435_ _L23494_) '())))
                       _hd2286523488_)
                      (_g2279223467_ _g2280923471_))))
              (_g2279223467_ _g2280923471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2279223467_
                                                   _g2280923471_))
                                              (_g2279223467_ _g2280923471_))))
                                      (_g2279223467_ _g2280923471_)))))
                           (let ((_g2279023535_
                                  (lambda (_g2280923511_)
                                    (if (gx#stx-pair? _g2280923511_)
                                        (let ((_e2285723514_
                                               (gx#syntax-e _g2280923511_)))
                                          (let ((_hd2285823518_
                                                 (##car _e2285723514_))
                                                (_tl2285923521_
                                                 (##cdr _e2285723514_)))
                                            (if (gx#identifier? _hd2285823518_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g30018_|
                                                     _hd2285823518_)
                                                    ((lambda (_L23524_)
                                                       (_parse-list22437_
                                                        _L23524_))
                                                     _tl2285923521_)
                                                    (_g2279123507_
                                                     _g2280923511_))
                                                (_g2279123507_
                                                 _g2280923511_))))
                                        (_g2279123507_ _g2280923511_)))))
                             (let ((_g2278923591_
                                    (lambda (_g2280923539_)
                                      (if (gx#stx-pair? _g2280923539_)
                                          (let ((_e2284723542_
                                                 (gx#syntax-e _g2280923539_)))
                                            (let ((_hd2284823546_
                                                   (##car _e2284723542_))
                                                  (_tl2284923549_
                                                   (##cdr _e2284723542_)))
                                              (if (gx#identifier?
                                                   _hd2284823546_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g30019_|
                                                       _hd2284823546_)
                                                      (if (gx#stx-pair?
                                                           _tl2284923549_)
                                                          (let ((_e2285023552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2284923549_)))
                    (let ((_hd2285123556_ (##car _e2285023552_))
                          (_tl2285223559_ (##cdr _e2285023552_)))
                      (if (gx#stx-pair? _tl2285223559_)
                          (let ((_e2285323562_ (gx#syntax-e _tl2285223559_)))
                            (let ((_hd2285423566_ (##car _e2285323562_))
                                  (_tl2285523569_ (##cdr _e2285323562_)))
                              ((lambda (_L23572_ _L23574_ _L23575_)
                                 (if (gx#stx-null? _L23572_)
                                     (cons 'cons:
                                           (cons (_parse122435_ _L23575_)
                                                 (cons (_parse122435_ _L23574_)
                                                       '())))
                                     (cons 'cons:
                                           (cons (_parse122435_ _L23575_)
                                                 (cons (_parse122435_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'cons*)
                                                              (cons _L23574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23572_)))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _tl2285523569_
                               _hd2285423566_
                               _hd2285123556_)))
                          (_g2279023535_ _g2280923539_))))
                  (_g2279023535_ _g2280923539_))
              (_g2279023535_ _g2280923539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2279023535_
                                                   _g2280923539_))))
                                          (_g2279023535_ _g2280923539_)))))
                               (let ((_g2278823645_
                                      (lambda (_g2280923595_)
                                        (if (gx#stx-pair? _g2280923595_)
                                            (let ((_e2283523598_
                                                   (gx#syntax-e
                                                    _g2280923595_)))
                                              (let ((_hd2283623602_
                                                     (##car _e2283523598_))
                                                    (_tl2283723605_
                                                     (##cdr _e2283523598_)))
                                                (if (gx#identifier?
                                                     _hd2283623602_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g30020_|
                                                         _hd2283623602_)
                                                        (if (gx#stx-pair?
                                                             _tl2283723605_)
                                                            (let ((_e2283823608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2283723605_)))
                      (let ((_hd2283923612_ (##car _e2283823608_))
                            (_tl2284023615_ (##cdr _e2283823608_)))
                        (if (gx#stx-pair? _tl2284023615_)
                            (let ((_e2284123618_ (gx#syntax-e _tl2284023615_)))
                              (let ((_hd2284223622_ (##car _e2284123618_))
                                    (_tl2284323625_ (##cdr _e2284123618_)))
                                (if (gx#stx-null? _tl2284323625_)
                                    ((lambda (_L23628_ _L23630_)
                                       (cons 'cons:
                                             (cons (_parse122435_ _L23630_)
                                                   (cons (_parse122435_
                                                          _L23628_)
                                                         '()))))
                                     _hd2284223622_
                                     _hd2283923612_)
                                    (_g2278923591_ _g2280923595_))))
                            (_g2278923591_ _g2280923595_))))
                    (_g2278923591_ _g2280923595_))
                (_g2278923591_ _g2280923595_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2278923591_
                                                     _g2280923595_))))
                                            (_g2278923591_ _g2280923595_)))))
                                 (let ((_g2278723685_
                                        (lambda (_g2280923649_)
                                          (if (gx#stx-pair? _g2280923649_)
                                              (let ((_e2282723652_
                                                     (gx#syntax-e
                                                      _g2280923649_)))
                                                (let ((_hd2282823656_
                                                       (##car _e2282723652_))
                                                      (_tl2282923659_
                                                       (##cdr _e2282723652_)))
                                                  (if (gx#identifier?
                                                       _hd2282823656_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g30021_|
                                                           _hd2282823656_)
                                                          (if (gx#stx-pair?
                                                               _tl2282923659_)
                                                              (let ((_e2283023662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2282923659_)))
                        (let ((_hd2283123666_ (##car _e2283023662_))
                              (_tl2283223669_ (##cdr _e2283023662_)))
                          (if (gx#stx-null? _tl2283223669_)
                              ((lambda (_L23672_)
                                 (cons 'not:
                                       (cons (_parse122435_ _L23672_) '())))
                               _hd2283123666_)
                              (_g2278823645_ _g2280923649_))))
                      (_g2278823645_ _g2280923649_))
                  (_g2278823645_ _g2280923649_))
              (_g2278823645_ _g2280923649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2278823645_ _g2280923649_)))))
                                   (let ((_g2278623770_
                                          (lambda (_g2280923689_)
                                            (if (gx#stx-pair? _g2280923689_)
                                                (let ((_e2282323692_
                                                       (gx#syntax-e
                                                        _g2280923689_)))
                                                  (let ((_hd2282423696_
                                                         (##car _e2282323692_))
                                                        (_tl2282523699_
                                                         (##cdr _e2282323692_)))
                                                    (if (gx#identifier?
                                                         _hd2282423696_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g30022_|
                                                             _hd2282423696_)
                                                            ((lambda (_L23702_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23702_)
                           (let ((_g2371423725_
                                  (lambda (_g2371523721_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2371523721_))))
                             (let ((_g2371323736_
                                    (lambda (_g2371523729_)
                                      ((lambda ()
                                         (cons 'or:
                                               (gx#stx-map
                                                _parse122435_
                                                _L23702_)))))))
                               (let ((_g2371223766_
                                      (lambda (_g2371523740_)
                                        (if (gx#stx-pair? _g2371523740_)
                                            (let ((_e2371723743_
                                                   (gx#syntax-e
                                                    _g2371523740_)))
                                              (let ((_hd2371823747_
                                                     (##car _e2371723743_))
                                                    (_tl2371923750_
                                                     (##cdr _e2371723743_)))
                                                (if (gx#stx-null?
                                                     _tl2371923750_)
                                                    ((lambda (_L23753_)
                                                       (_parse122435_
                                                        _L23753_))
                                                     _hd2371823747_)
                                                    (_g2371323736_
                                                     _g2371523740_))))
                                            (_g2371323736_ _g2371523740_)))))
                                 (_g2371223766_ _L23702_))))
                           (_g2278723685_ _g2280923689_)))
                     _tl2282523699_)
                    (_g2278723685_ _g2280923689_))
                (_g2278723685_ _g2280923689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2278723685_
                                                 _g2280923689_)))))
                                     (let ((_g2278523855_
                                            (lambda (_g2280923774_)
                                              (if (gx#stx-pair? _g2280923774_)
                                                  (let ((_e2281923777_
                                                         (gx#syntax-e
                                                          _g2280923774_)))
                                                    (let ((_hd2282023781_
                                                           (##car _e2281923777_))
                                                          (_tl2282123784_
                                                           (##cdr _e2281923777_)))
                                                      (if (gx#identifier?
                                                           _hd2282023781_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g30023_|
                                                               _hd2282023781_)
                                                              ((lambda (_L23787_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-list? _L23787_)
                             (let ((_g2379923810_
                                    (lambda (_g2380023806_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2380023806_))))
                               (let ((_g2379823821_
                                      (lambda (_g2380023814_)
                                        ((lambda ()
                                           (cons 'and:
                                                 (gx#stx-map
                                                  _parse122435_
                                                  _L23787_)))))))
                                 (let ((_g2379723851_
                                        (lambda (_g2380023825_)
                                          (if (gx#stx-pair? _g2380023825_)
                                              (let ((_e2380223828_
                                                     (gx#syntax-e
                                                      _g2380023825_)))
                                                (let ((_hd2380323832_
                                                       (##car _e2380223828_))
                                                      (_tl2380423835_
                                                       (##cdr _e2380223828_)))
                                                  (if (gx#stx-null?
                                                       _tl2380423835_)
                                                      ((lambda (_L23838_)
                                                         (_parse122435_
                                                          _L23838_))
                                                       _hd2380323832_)
                                                      (_g2379823821_
                                                       _g2380023825_))))
                                              (_g2379823821_ _g2380023825_)))))
                                   (_g2379723851_ _L23787_))))
                             (_g2278623770_ _g2280923774_)))
                       _tl2282123784_)
                      (_g2278623770_ _g2280923774_))
                  (_g2278623770_ _g2280923774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2278623770_
                                                   _g2280923774_)))))
                                       (let ((_g2278424095_
                                              (lambda (_g2280923859_)
                                                (if (gx#stx-pair?
                                                     _g2280923859_)
                                                    (let ((_e2281223862_
                                                           (gx#syntax-e
                                                            _g2280923859_)))
                                                      (let ((_hd2281323866_
                                                             (##car _e2281223862_))
                                                            (_tl2281423869_
                                                             (##cdr _e2281223862_)))
                                                        (if (gx#identifier?
                                                             _hd2281323866_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g30024_|
                         _hd2281323866_)
                        (if (gx#stx-pair? _tl2281423869_)
                            (let ((_e2281523872_ (gx#syntax-e _tl2281423869_)))
                              (let ((_hd2281623876_ (##car _e2281523872_))
                                    (_tl2281723879_ (##cdr _e2281523872_)))
                                ((lambda (_L23882_ _L23884_)
                                   (let ((_g2390123933_
                                          (lambda (_g2390223929_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2390223929_))))
                                     (let ((_g2390023944_
                                            (lambda (_g2390223937_)
                                              ((lambda ()
                                                 (_parse-error22442_
                                                  _hd22782_))))))
                                       (let ((_g2389924012_
                                              (lambda (_g2390223948_)
                                                (if (gx#stx-pair?
                                                     _g2390223948_)
                                                    (let ((_e2391623951_
                                                           (gx#syntax-e
                                                            _g2390223948_)))
                                                      (let ((_hd2391723955_
                                                             (##car _e2391623951_))
                                                            (_tl2391823958_
                                                             (##cdr _e2391623951_)))
                                                        (if (gx#stx-datum?
                                                             _hd2391723955_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2391723955_)
                                '::)
                        (if (gx#stx-pair? _tl2391823958_)
                            (let ((_e2391923961_ (gx#syntax-e _tl2391823958_)))
                              (let ((_hd2392023965_ (##car _e2391923961_))
                                    (_tl2392123968_ (##cdr _e2391923961_)))
                                (if (gx#stx-pair? _tl2392123968_)
                                    (let ((_e2392223971_
                                           (gx#syntax-e _tl2392123968_)))
                                      (let ((_hd2392323975_
                                             (##car _e2392223971_))
                                            (_tl2392423978_
                                             (##cdr _e2392223971_)))
                                        (if (gx#identifier? _hd2392323975_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30025_|
                                                 _hd2392323975_)
                                                (if (gx#stx-pair?
                                                     _tl2392423978_)
                                                    (let ((_e2392523981_
                                                           (gx#syntax-e
                                                            _tl2392423978_)))
                                                      (let ((_hd2392623985_
                                                             (##car _e2392523981_))
                                                            (_tl2392723988_
                                                             (##cdr _e2392523981_)))
                                                        (if (gx#stx-null?
                                                             _tl2392723988_)
                                                            ((lambda (_L23991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23993_)
                       (cons '?:
                             (cons _L23884_
                                   (cons '::
                                         (cons _L23993_
                                               (cons '=>:
                                                     (cons (_parse122435_
                                                            _L23991_)
                                                           '())))))))
                     _hd2392623985_
                     _hd2392023965_)
                    (_g2390023944_ _g2390223948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2390023944_
                                                     _g2390223948_))
                                                (_g2390023944_ _g2390223948_))
                                            (_g2390023944_ _g2390223948_))))
                                    (_g2390023944_ _g2390223948_))))
                            (_g2390023944_ _g2390223948_))
                        (_g2390023944_ _g2390223948_))
                    (_g2390023944_ _g2390223948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2390023944_
                                                     _g2390223948_)))))
                                         (let ((_g2389824052_
                                                (lambda (_g2390224016_)
                                                  (if (gx#stx-pair?
                                                       _g2390224016_)
                                                      (let ((_e2390824019_
                                                             (gx#syntax-e
                                                              _g2390224016_)))
                                                        (let ((_hd2390924023_
                                                               (##car _e2390824019_))
                                                              (_tl2391024026_
                                                               (##cdr _e2390824019_)))
                                                          (if (gx#identifier?
                                                               _hd2390924023_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core::<match>[1]#_g30026_|
                           _hd2390924023_)
                          (if (gx#stx-pair? _tl2391024026_)
                              (let ((_e2391124029_
                                     (gx#syntax-e _tl2391024026_)))
                                (let ((_hd2391224033_ (##car _e2391124029_))
                                      (_tl2391324036_ (##cdr _e2391124029_)))
                                  (if (gx#stx-null? _tl2391324036_)
                                      ((lambda (_L24039_)
                                         (cons '?:
                                               (cons _L23884_
                                                     (cons '=>:
                                                           (cons (_parse122435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24039_)
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2391224033_)
                                      (_g2389924012_ _g2390224016_))))
                              (_g2389924012_ _g2390224016_))
                          (_g2389924012_ _g2390224016_))
                      (_g2389924012_ _g2390224016_))))
              (_g2389924012_ _g2390224016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2389724080_
                                                  (lambda (_g2390224056_)
                                                    (if (gx#stx-pair?
                                                         _g2390224056_)
                                                        (let ((_e2390424059_
                                                               (gx#syntax-e
                                                                _g2390224056_)))
                                                          (let ((_hd2390524063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2390424059_))
                        (_tl2390624066_ (##cdr _e2390424059_)))
                    (if (gx#stx-null? _tl2390624066_)
                        ((lambda (_L24069_)
                           (cons '?:
                                 (cons _L23884_
                                       (cons (_parse122435_ _L24069_) '()))))
                         _hd2390524063_)
                        (_g2389824052_ _g2390224056_))))
                (_g2389824052_ _g2390224056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2389624091_
                                                    (lambda (_g2390224084_)
                                                      (if (gx#stx-null?
                                                           _g2390224084_)
                                                          ((lambda ()
                                                             (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L23884_ '()))))
                  (_g2389724080_ _g2390224084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2389624091_ _L23882_))))))))
                                 _tl2281723879_
                                 _hd2281623876_)))
                            (_g2278523855_ _g2280923859_))
                        (_g2278523855_ _g2280923859_))
                    (_g2278523855_ _g2280923859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2278523855_
                                                     _g2280923859_)))))
                                         (_g2278424095_
                                          _hd22782_))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22437_
                             (lambda (_body22617_)
                               (let ((_g2262322651_
                                      (lambda (_g2262422647_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2262422647_))))
                                 (let ((_g2262222662_
                                        (lambda (_g2262422655_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22617_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22617_))
                                                     (_parse122435_
                                                      _body22617_)
                                                     (_parse-error22442_
                                                      _body22617_))))))))
                                   (let ((_g2262122694_
                                          (lambda (_g2262422666_)
                                            (if (gx#stx-pair? _g2262422666_)
                                                (let ((_e2264322669_
                                                       (gx#syntax-e
                                                        _g2262422666_)))
                                                  (let ((_hd2264422673_
                                                         (##car _e2264322669_))
                                                        (_tl2264522676_
                                                         (##cdr _e2264322669_)))
                                                    ((lambda (_L22679_
                                                              _L22681_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22681_))
                   (cons 'cons:
                         (cons (_parse122435_ _L22681_)
                               (cons (_parse-list22437_ _L22679_) '())))
                   (_g2262222662_ _g2262422666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2264522676_
                                                     _hd2264422673_)))
                                                (_g2262222662_
                                                 _g2262422666_)))))
                                     (let ((_g2262022738_
                                            (lambda (_g2262422698_)
                                              (if (gx#stx-pair? _g2262422698_)
                                                  (let ((_e2263522701_
                                                         (gx#syntax-e
                                                          _g2262422698_)))
                                                    (let ((_hd2263622705_
                                                           (##car _e2263522701_))
                                                          (_tl2263722708_
                                                           (##cdr _e2263522701_)))
                                                      (if (gx#stx-pair?
                                                           _tl2263722708_)
                                                          (let ((_e2263822711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2263722708_)))
                    (let ((_hd2263922715_ (##car _e2263822711_))
                          (_tl2264022718_ (##cdr _e2263822711_)))
                      ((lambda (_L22721_ _L22723_ _L22724_)
                         (if (gx#ellipsis? _L22723_)
                             (cons 'splice:
                                   (cons (_parse122435_ _L22724_)
                                         (cons (_parse-list22437_ _L22721_)
                                               '())))
                             (_g2262122694_ _g2262422698_)))
                       _tl2264022718_
                       _hd2263922715_
                       _hd2263622705_)))
                  (_g2262122694_ _g2262422698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2262122694_
                                                   _g2262422698_)))))
                                       (let ((_g2261922778_
                                              (lambda (_g2262422742_)
                                                (if (gx#stx-pair?
                                                     _g2262422742_)
                                                    (let ((_e2262622745_
                                                           (gx#syntax-e
                                                            _g2262422742_)))
                                                      (let ((_hd2262722749_
                                                             (##car _e2262622745_))
                                                            (_tl2262822752_
                                                             (##cdr _e2262622745_)))
                                                        (if (gx#stx-datum?
                                                             _hd2262722749_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2262722749_)
                                '::)
                        (if (gx#stx-pair? _tl2262822752_)
                            (let ((_e2262922755_ (gx#syntax-e _tl2262822752_)))
                              (let ((_hd2263022759_ (##car _e2262922755_))
                                    (_tl2263122762_ (##cdr _e2262922755_)))
                                (if (gx#stx-null? _tl2263122762_)
                                    ((lambda (_L22765_)
                                       (_parse122435_ _L22765_))
                                     _hd2263022759_)
                                    (_g2262022738_ _g2262422742_))))
                            (_g2262022738_ _g2262422742_))
                        (_g2262022738_ _g2262422742_))
                    (_g2262022738_ _g2262422742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2262022738_
                                                     _g2262422742_)))))
                                         (_g2261922778_ _body22617_))))))))
                            (_parse-vector22438_
                             (lambda (_body22614_)
                               (if (_simple-vector?22439_ _body22614_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122435_
                                                _body22614_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22437_ _body22614_)
                                               '())))))
                            (_simple-vector?22439_
                             (lambda (_body22551_)
                               (let ((_g2255522567_
                                      (lambda (_g2255622563_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2255622563_))))
                                 (let ((_g2255422578_
                                        (lambda (_g2255622571_)
                                          ((lambda ()
                                             (gx#stx-null? _body22551_))))))
                                   (let ((_g2255322610_
                                          (lambda (_g2255622582_)
                                            (if (gx#stx-pair? _g2255622582_)
                                                (let ((_e2255922585_
                                                       (gx#syntax-e
                                                        _g2255622582_)))
                                                  (let ((_hd2256022589_
                                                         (##car _e2255922585_))
                                                        (_tl2256122592_
                                                         (##cdr _e2255922585_)))
                                                    ((lambda (_L22595_
                                                              _L22597_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22597_))
                   (_simple-vector?22439_ _L22595_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2256122592_
                                                     _hd2256022589_)))
                                                (_g2255422578_
                                                 _g2255622582_)))))
                                     (_g2255322610_ _body22551_))))))
                            (_parse-class-body22440_
                             (lambda (_body22460_)
                               ((letrec ((_recur22463_
                                          (lambda (_rest22466_)
                                            (let ((_g2247022486_
                                                   (lambda (_g2247122482_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2247122482_))))
                                              (let ((_g2246922497_
                                                     (lambda (_g2247122490_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22466_)
                                                              '()
                                                              (_parse-error22442_
                                                               _rest22466_)))))))
                                                (let ((_g2246822547_
                                                       (lambda (_g2247122501_)
                                                         (if (gx#stx-pair?
                                                              _g2247122501_)
                                                             (let ((_e2247522504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2247122501_)))
                       (let ((_hd2247622508_ (##car _e2247522504_))
                             (_tl2247722511_ (##cdr _e2247522504_)))
                         (if (gx#stx-pair? _tl2247722511_)
                             (let ((_e2247822514_
                                    (gx#syntax-e _tl2247722511_)))
                               (let ((_hd2247922518_ (##car _e2247822514_))
                                     (_tl2248022521_ (##cdr _e2247822514_)))
                                 ((lambda (_L22524_ _L22526_ _L22527_)
                                    (if (gx#stx-keyword? _L22527_)
                                        (cons* _L22527_
                                               (_parse122435_ _L22526_)
                                               (_recur22463_ _L22524_))
                                        (_g2246922497_ _g2247122501_)))
                                  _tl2248022521_
                                  _hd2247922518_
                                  _hd2247622508_)))
                             (_g2246922497_ _g2247122501_))))
                     (_g2246922497_ _g2247122501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2246822547_
                                                   _rest22466_)))))))
                                  _recur22463_)
                                _body22460_))))
                     (_parse122435_ _stx22431_)))))))
        (lambda _g30028_
          (let ((_g30027_ (length _g30028_)))
            (cond ((fx= _g30027_ 1)
                   (apply (lambda (_stx24103_)
                            (let ((_match-stx24106_ '#f))
                              (_opt-lambda2242924099_
                               _stx24103_
                               _match-stx24106_)))
                          _g30028_))
                  ((fx= _g30027_ 2) (apply _opt-lambda2242924099_ _g30028_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<match>[1]#parse-match-pattern|
                    _g30028_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22415_)
        (call-with-escape
         (lambda (_E22419_)
           (with-exception-handler
            (let ((_E!22422_ (current-exception-handler)))
              (lambda (_e22425_)
                (if (gx#syntax-error? _e22425_)
                    (_E22419_ '#f)
                    (_E!22422_ _e22425_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22415_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree21204_)
        (letrec ((_loop21207_
                  (lambda (_ptree21482_ _vars21484_ _K21485_)
                    (let ((_g2149821599_
                           (lambda (_g2149921595_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2149921595_))))
                      (let ((_g2149721610_
                             (lambda (_g2149921603_)
                               ((lambda () (_K21485_ _vars21484_))))))
                        (let ((_g2149621657_
                               (lambda (_g2149921614_)
                                 (if (gx#stx-pair? _g2149921614_)
                                     (let ((_e2158821617_
                                            (gx#syntax-e _g2149921614_)))
                                       (let ((_hd2158921621_
                                              (##car _e2158821617_))
                                             (_tl2159021624_
                                              (##cdr _e2158821617_)))
                                         (if (gx#stx-datum? _hd2158921621_)
                                             (if (equal? (gx#stx-e
                                                          _hd2158921621_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2159021624_)
                                                     (let ((_e2159121627_
                                                            (gx#syntax-e
                                                             _tl2159021624_)))
                                                       (let ((_hd2159221631_
                                                              (##car _e2159121627_))
                                                             (_tl2159321634_
                                                              (##cdr _e2159121627_)))
                                                         (if (gx#stx-null?
                                                              _tl2159321634_)
                                                             ((lambda (_L21637_)
                                                                (if (find (lambda (_g2165121653_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2165121653_
                                     _L21637_))
                                  _vars21484_)
                            (_K21485_ _vars21484_)
                            (_K21485_ (cons _L21637_ _vars21484_))))
                      _hd2159221631_)
                     (_g2149721610_ _g2149921614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2149721610_
                                                      _g2149921614_))
                                                 (_g2149721610_ _g2149921614_))
                                             (_g2149721610_ _g2149921614_))))
                                     (_g2149721610_ _g2149921614_)))))
                          (let ((_g2149521711_
                                 (lambda (_g2149921661_)
                                   (if (gx#stx-pair? _g2149921661_)
                                       (let ((_e2157821664_
                                              (gx#syntax-e _g2149921661_)))
                                         (let ((_hd2157921668_
                                                (##car _e2157821664_))
                                               (_tl2158021671_
                                                (##cdr _e2157821664_)))
                                           (if (gx#stx-datum? _hd2157921668_)
                                               (if (equal? (gx#stx-e
                                                            _hd2157921668_)
                                                           'apply:)
                                                   (if (gx#stx-pair?
                                                        _tl2158021671_)
                                                       (let ((_e2158121674_
                                                              (gx#syntax-e
                                                               _tl2158021671_)))
                                                         (let ((_hd2158221678_
                                                                (##car _e2158121674_))
                                                               (_tl2158321681_
                                                                (##cdr _e2158121674_)))
                                                           (if (gx#stx-pair?
                                                                _tl2158321681_)
                                                               (let ((_e2158421684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2158321681_)))
                         (let ((_hd2158521688_ (##car _e2158421684_))
                               (_tl2158621691_ (##cdr _e2158421684_)))
                           (if (gx#stx-null? _tl2158621691_)
                               ((lambda (_L21694_ _L21696_)
                                  (_loop21207_ _L21694_ _vars21484_ _K21485_))
                                _hd2158521688_
                                _hd2158221678_)
                               (_g2149621657_ _g2149921661_))))
                       (_g2149621657_ _g2149921661_))))
               (_g2149621657_ _g2149921661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2149621657_
                                                    _g2149921661_))
                                               (_g2149621657_ _g2149921661_))))
                                       (_g2149621657_ _g2149921661_)))))
                            (let ((_g2149421763_
                                   (lambda (_g2149921715_)
                                     (if (gx#stx-pair? _g2149921715_)
                                         (let ((_e2156721718_
                                                (gx#syntax-e _g2149921715_)))
                                           (let ((_hd2156821722_
                                                  (##car _e2156721718_))
                                                 (_tl2156921725_
                                                  (##cdr _e2156721718_)))
                                             (if (gx#stx-datum? _hd2156821722_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2156821722_)
                                                             'class:)
                                                     (if (gx#stx-pair?
                                                          _tl2156921725_)
                                                         (let ((_e2157021728_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2156921725_)))
                   (let ((_hd2157121732_ (##car _e2157021728_))
                         (_tl2157221735_ (##cdr _e2157021728_)))
                     (if (gx#stx-pair? _tl2157221735_)
                         (let ((_e2157321738_ (gx#syntax-e _tl2157221735_)))
                           (let ((_hd2157421742_ (##car _e2157321738_))
                                 (_tl2157521745_ (##cdr _e2157321738_)))
                             (if (gx#stx-null? _tl2157521745_)
                                 ((lambda (_L21748_)
                                    (_loop-class-list21211_
                                     _L21748_
                                     _vars21484_
                                     _K21485_))
                                  _hd2157421742_)
                                 (_g2149521711_ _g2149921715_))))
                         (_g2149521711_ _g2149921715_))))
                 (_g2149521711_ _g2149921715_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2149521711_
                                                      _g2149921715_))
                                                 (_g2149521711_
                                                  _g2149921715_))))
                                         (_g2149521711_ _g2149921715_)))))
                              (let ((_g2149321815_
                                     (lambda (_g2149921767_)
                                       (if (gx#stx-pair? _g2149921767_)
                                           (let ((_e2155721770_
                                                  (gx#syntax-e _g2149921767_)))
                                             (let ((_hd2155821774_
                                                    (##car _e2155721770_))
                                                   (_tl2155921777_
                                                    (##cdr _e2155721770_)))
                                               (if (gx#stx-datum?
                                                    _hd2155821774_)
                                                   (if (equal? (gx#stx-e
                                                                _hd2155821774_)
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _tl2155921777_)
                                                           (let ((_e2156021780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2155921777_)))
                     (let ((_hd2156121784_ (##car _e2156021780_))
                           (_tl2156221787_ (##cdr _e2156021780_)))
                       (if (gx#stx-pair? _tl2156221787_)
                           (let ((_e2156321790_ (gx#syntax-e _tl2156221787_)))
                             (let ((_hd2156421794_ (##car _e2156321790_))
                                   (_tl2156521797_ (##cdr _e2156321790_)))
                               (if (gx#stx-null? _tl2156521797_)
                                   ((lambda (_L21800_)
                                      (_loop-vector21209_
                                       _L21800_
                                       _vars21484_
                                       _K21485_))
                                    _hd2156421794_)
                                   (_g2149421763_ _g2149921767_))))
                           (_g2149421763_ _g2149921767_))))
                   (_g2149421763_ _g2149921767_))
               (_g2149421763_ _g2149921767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2149421763_
                                                    _g2149921767_))))
                                           (_g2149421763_ _g2149921767_)))))
                                (let ((_g2149221861_
                                       (lambda (_g2149921819_)
                                         (if (gx#stx-pair? _g2149921819_)
                                             (let ((_e2155021822_
                                                    (gx#syntax-e
                                                     _g2149921819_)))
                                               (let ((_hd2155121826_
                                                      (##car _e2155021822_))
                                                     (_tl2155221829_
                                                      (##cdr _e2155021822_)))
                                                 (if (gx#stx-pair?
                                                      _tl2155221829_)
                                                     (let ((_e2155321832_
                                                            (gx#syntax-e
                                                             _tl2155221829_)))
                                                       (let ((_hd2155421836_
                                                              (##car _e2155321832_))
                                                             (_tl2155521839_
                                                              (##cdr _e2155321832_)))
                                                         (if (gx#stx-null?
                                                              _tl2155521839_)
                                                             ((lambda (_L21842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21844_)
                        (if (let ((_$e21857_ (gx#stx-eq? 'values: _L21844_)))
                              (if _$e21857_
                                  _$e21857_
                                  (gx#stx-eq? 'vector: _L21844_)))
                            (_loop-vector21209_ _L21842_ _vars21484_ _K21485_)
                            (_g2149321815_ _g2149921819_)))
                      _hd2155421836_
                      _hd2155121826_)
                     (_g2149321815_ _g2149921819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2149321815_
                                                      _g2149921819_))))
                                             (_g2149321815_ _g2149921819_)))))
                                  (let ((_g2149121901_
                                         (lambda (_g2149921865_)
                                           (if (gx#stx-pair? _g2149921865_)
                                               (let ((_e2154221868_
                                                      (gx#syntax-e
                                                       _g2149921865_)))
                                                 (let ((_hd2154321872_
                                                        (##car _e2154221868_))
                                                       (_tl2154421875_
                                                        (##cdr _e2154221868_)))
                                                   (if (gx#stx-datum?
                                                        _hd2154321872_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2154321872_)
                           'box:)
                   (if (gx#stx-pair? _tl2154421875_)
                       (let ((_e2154521878_ (gx#syntax-e _tl2154421875_)))
                         (let ((_hd2154621882_ (##car _e2154521878_))
                               (_tl2154721885_ (##cdr _e2154521878_)))
                           (if (gx#stx-null? _tl2154721885_)
                               ((lambda (_L21888_)
                                  (_loop21207_ _L21888_ _vars21484_ _K21485_))
                                _hd2154621882_)
                               (_g2149221861_ _g2149921865_))))
                       (_g2149221861_ _g2149921865_))
                   (_g2149221861_ _g2149921865_))
               (_g2149221861_ _g2149921865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2149221861_
                                                _g2149921865_)))))
                                    (let ((_g2149021960_
                                           (lambda (_g2149921905_)
                                             (if (gx#stx-pair? _g2149921905_)
                                                 (let ((_e2153221908_
                                                        (gx#syntax-e
                                                         _g2149921905_)))
                                                   (let ((_hd2153321912_
                                                          (##car _e2153221908_))
                                                         (_tl2153421915_
                                                          (##cdr _e2153221908_)))
                                                     (if (gx#stx-datum?
                                                          _hd2153321912_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2153321912_)
                             'splice:)
                     (if (gx#stx-pair? _tl2153421915_)
                         (let ((_e2153521918_ (gx#syntax-e _tl2153421915_)))
                           (let ((_hd2153621922_ (##car _e2153521918_))
                                 (_tl2153721925_ (##cdr _e2153521918_)))
                             (if (gx#stx-pair? _tl2153721925_)
                                 (let ((_e2153821928_
                                        (gx#syntax-e _tl2153721925_)))
                                   (let ((_hd2153921932_ (##car _e2153821928_))
                                         (_tl2154021935_
                                          (##cdr _e2153821928_)))
                                     (if (gx#stx-null? _tl2154021935_)
                                         ((lambda (_L21938_ _L21940_)
                                            (_loop21207_
                                             _L21940_
                                             _vars21484_
                                             (lambda (_g2195421956_)
                                               (_loop21207_
                                                _L21938_
                                                _g2195421956_
                                                _K21485_))))
                                          _hd2153921932_
                                          _hd2153621922_)
                                         (_g2149121901_ _g2149921905_))))
                                 (_g2149121901_ _g2149921905_))))
                         (_g2149121901_ _g2149921905_))
                     (_g2149121901_ _g2149921905_))
                 (_g2149121901_ _g2149921905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2149121901_
                                                  _g2149921905_)))))
                                      (let ((_g2148922019_
                                             (lambda (_g2149921964_)
                                               (if (gx#stx-pair? _g2149921964_)
                                                   (let ((_e2152121967_
                                                          (gx#syntax-e
                                                           _g2149921964_)))
                                                     (let ((_hd2152221971_
                                                            (##car _e2152121967_))
                                                           (_tl2152321974_
                                                            (##cdr _e2152121967_)))
                                                       (if (gx#stx-datum?
                                                            _hd2152221971_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2152221971_)
                               'cons:)
                       (if (gx#stx-pair? _tl2152321974_)
                           (let ((_e2152421977_ (gx#syntax-e _tl2152321974_)))
                             (let ((_hd2152521981_ (##car _e2152421977_))
                                   (_tl2152621984_ (##cdr _e2152421977_)))
                               (if (gx#stx-pair? _tl2152621984_)
                                   (let ((_e2152721987_
                                          (gx#syntax-e _tl2152621984_)))
                                     (let ((_hd2152821991_
                                            (##car _e2152721987_))
                                           (_tl2152921994_
                                            (##cdr _e2152721987_)))
                                       (if (gx#stx-null? _tl2152921994_)
                                           ((lambda (_L21997_ _L21999_)
                                              (_loop21207_
                                               _L21999_
                                               _vars21484_
                                               (lambda (_g2201322015_)
                                                 (_loop21207_
                                                  _L21997_
                                                  _g2201322015_
                                                  _K21485_))))
                                            _hd2152821991_
                                            _hd2152521981_)
                                           (_g2149021960_ _g2149921964_))))
                                   (_g2149021960_ _g2149921964_))))
                           (_g2149021960_ _g2149921964_))
                       (_g2149021960_ _g2149921964_))
                   (_g2149021960_ _g2149921964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2149021960_
                                                    _g2149921964_)))))
                                        (let ((_g2148822059_
                                               (lambda (_g2149922023_)
                                                 (if (gx#stx-pair?
                                                      _g2149922023_)
                                                     (let ((_e2151322026_
                                                            (gx#syntax-e
                                                             _g2149922023_)))
                                                       (let ((_hd2151422030_
                                                              (##car _e2151322026_))
                                                             (_tl2151522033_
                                                              (##cdr _e2151322026_)))
                                                         (if (gx#stx-datum?
                                                              _hd2151422030_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2151422030_)
                                 'not:)
                         (if (gx#stx-pair? _tl2151522033_)
                             (let ((_e2151622036_
                                    (gx#syntax-e _tl2151522033_)))
                               (let ((_hd2151722040_ (##car _e2151622036_))
                                     (_tl2151822043_ (##cdr _e2151622036_)))
                                 (if (gx#stx-null? _tl2151822043_)
                                     ((lambda (_L22046_)
                                        (_loop21207_
                                         _L22046_
                                         _vars21484_
                                         _K21485_))
                                      _hd2151722040_)
                                     (_g2148922019_ _g2149922023_))))
                             (_g2148922019_ _g2149922023_))
                         (_g2148922019_ _g2149922023_))
                     (_g2148922019_ _g2149922023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2148922019_
                                                      _g2149922023_)))))
                                          (let ((_g2148722158_
                                                 (lambda (_g2149922063_)
                                                   (if (gx#stx-pair?
                                                        _g2149922063_)
                                                       (let ((_e2150922066_
                                                              (gx#syntax-e
                                                               _g2149922063_)))
                                                         (let ((_hd2151022070_
                                                                (##car _e2150922066_))
                                                               (_tl2151122073_
                                                                (##cdr _e2150922066_)))
                                                           ((lambda (_L22076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22078_)
                      (if (let ((_$e22089_ (gx#stx-eq? 'and: _L22078_)))
                            (if _$e22089_
                                _$e22089_
                                (gx#stx-eq? 'or: _L22078_)))
                          (let ((_g2209422106_
                                 (lambda (_g2209522102_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2209522102_))))
                            (let ((_g2209322117_
                                   (lambda (_g2209522110_)
                                     ((lambda () (_K21485_ _vars21484_))))))
                              (let ((_g2209222154_
                                     (lambda (_g2209522121_)
                                       (if (gx#stx-pair? _g2209522121_)
                                           (let ((_e2209822124_
                                                  (gx#syntax-e _g2209522121_)))
                                             (let ((_hd2209922128_
                                                    (##car _e2209822124_))
                                                   (_tl2210022131_
                                                    (##cdr _e2209822124_)))
                                               ((lambda (_L22134_ _L22136_)
                                                  (_loop21207_
                                                   _L22136_
                                                   _vars21484_
                                                   (lambda (_g2214822150_)
                                                     (_loop21207_
                                                      (cons _L22078_ _L22134_)
                                                      _g2214822150_
                                                      _K21485_))))
                                                _tl2210022131_
                                                _hd2209922128_)))
                                           (_g2209322117_ _g2209522121_)))))
                                (_g2209222154_ _L22076_))))
                          (_g2148822059_ _g2149922063_)))
                    _tl2151122073_
                    _hd2151022070_)))
               (_g2148822059_ _g2149922063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2148622411_
                                                   (lambda (_g2149922162_)
                                                     (if (gx#stx-pair?
                                                          _g2149922162_)
                                                         (let ((_e2150122165_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2149922162_)))
                   (let ((_hd2150222169_ (##car _e2150122165_))
                         (_tl2150322172_ (##cdr _e2150122165_)))
                     (if (gx#stx-datum? _hd2150222169_)
                         (if (equal? (gx#stx-e _hd2150222169_) '?:)
                             (if (gx#stx-pair? _tl2150322172_)
                                 (let ((_e2150422175_
                                        (gx#syntax-e _tl2150322172_)))
                                   (let ((_hd2150522179_ (##car _e2150422175_))
                                         (_tl2150622182_
                                          (##cdr _e2150422175_)))
                                     ((lambda (_L22185_)
                                        (let ((_g2220122238_
                                               (lambda (_g2220222234_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2220222234_))))
                                          (let ((_g2220022249_
                                                 (lambda (_g2220222242_)
                                                   ((lambda ()
                                                      (_K21485_
                                                       _vars21484_))))))
                                            (let ((_g2219922327_
                                                   (lambda (_g2220222253_)
                                                     (if (gx#stx-pair?
                                                          _g2220222253_)
                                                         (let ((_e2221822256_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2220222253_)))
                   (let ((_hd2221922260_ (##car _e2221822256_))
                         (_tl2222022263_ (##cdr _e2221822256_)))
                     (if (gx#stx-pair? _tl2222022263_)
                         (let ((_e2222122266_ (gx#syntax-e _tl2222022263_)))
                           (let ((_hd2222222270_ (##car _e2222122266_))
                                 (_tl2222322273_ (##cdr _e2222122266_)))
                             (if (gx#stx-datum? _hd2222222270_)
                                 (if (equal? (gx#stx-e _hd2222222270_) '::)
                                     (if (gx#stx-pair? _tl2222322273_)
                                         (let ((_e2222422276_
                                                (gx#syntax-e _tl2222322273_)))
                                           (let ((_hd2222522280_
                                                  (##car _e2222422276_))
                                                 (_tl2222622283_
                                                  (##cdr _e2222422276_)))
                                             (if (gx#stx-pair? _tl2222622283_)
                                                 (let ((_e2222722286_
                                                        (gx#syntax-e
                                                         _tl2222622283_)))
                                                   (let ((_hd2222822290_
                                                          (##car _e2222722286_))
                                                         (_tl2222922293_
                                                          (##cdr _e2222722286_)))
                                                     (if (gx#stx-datum?
                                                          _hd2222822290_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2222822290_)
                             '=>:)
                     (if (gx#stx-pair? _tl2222922293_)
                         (let ((_e2223022296_ (gx#syntax-e _tl2222922293_)))
                           (let ((_hd2223122300_ (##car _e2223022296_))
                                 (_tl2223222303_ (##cdr _e2223022296_)))
                             (if (gx#stx-null? _tl2223222303_)
                                 ((lambda (_L22306_)
                                    (_loop21207_
                                     _L22306_
                                     _vars21484_
                                     _K21485_))
                                  _hd2223122300_)
                                 (_g2220022249_ _g2220222253_))))
                         (_g2220022249_ _g2220222253_))
                     (_g2220022249_ _g2220222253_))
                 (_g2220022249_ _g2220222253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2220022249_
                                                  _g2220222253_))))
                                         (_g2220022249_ _g2220222253_))
                                     (_g2220022249_ _g2220222253_))
                                 (_g2220022249_ _g2220222253_))))
                         (_g2220022249_ _g2220222253_))))
                 (_g2220022249_ _g2220222253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2219822379_
                                                     (lambda (_g2220222331_)
                                                       (if (gx#stx-pair?
                                                            _g2220222331_)
                                                           (let ((_e2220822334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2220222331_)))
                     (let ((_hd2220922338_ (##car _e2220822334_))
                           (_tl2221022341_ (##cdr _e2220822334_)))
                       (if (gx#stx-pair? _tl2221022341_)
                           (let ((_e2221122344_ (gx#syntax-e _tl2221022341_)))
                             (let ((_hd2221222348_ (##car _e2221122344_))
                                   (_tl2221322351_ (##cdr _e2221122344_)))
                               (if (gx#stx-datum? _hd2221222348_)
                                   (if (equal? (gx#stx-e _hd2221222348_) '=>:)
                                       (if (gx#stx-pair? _tl2221322351_)
                                           (let ((_e2221422354_
                                                  (gx#syntax-e
                                                   _tl2221322351_)))
                                             (let ((_hd2221522358_
                                                    (##car _e2221422354_))
                                                   (_tl2221622361_
                                                    (##cdr _e2221422354_)))
                                               (if (gx#stx-null?
                                                    _tl2221622361_)
                                                   ((lambda (_L22364_)
                                                      (_loop21207_
                                                       _L22364_
                                                       _vars21484_
                                                       _K21485_))
                                                    _hd2221522358_)
                                                   (_g2219922327_
                                                    _g2220222331_))))
                                           (_g2219922327_ _g2220222331_))
                                       (_g2219922327_ _g2220222331_))
                                   (_g2219922327_ _g2220222331_))))
                           (_g2219922327_ _g2220222331_))))
                   (_g2219922327_ _g2220222331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g2219722407_
                                                       (lambda (_g2220222383_)
                                                         (if (gx#stx-pair?
                                                              _g2220222383_)
                                                             (let ((_e2220422386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2220222383_)))
                       (let ((_hd2220522390_ (##car _e2220422386_))
                             (_tl2220622393_ (##cdr _e2220422386_)))
                         (if (gx#stx-null? _tl2220622393_)
                             ((lambda (_L22396_)
                                (_loop21207_ _L22396_ _vars21484_ _K21485_))
                              _hd2220522390_)
                             (_g2219822379_ _g2220222383_))))
                     (_g2219822379_ _g2220222383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2219722407_
                                                   _L22185_)))))))
                                      _tl2150622182_)))
                                 (_g2148722158_ _g2149922162_))
                             (_g2148722158_ _g2149922162_))
                         (_g2148722158_ _g2149922162_))))
                 (_g2148722158_ _g2149922162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2148622411_
                                               _ptree21482_))))))))))))))))
                 (_loop-vector21209_
                  (lambda (_body21370_ _vars21372_ _K21373_)
                    (let ((_g2137621397_
                           (lambda (_g2137721393_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2137721393_))))
                      (let ((_g2137521438_
                             (lambda (_g2137721401_)
                               (if (gx#stx-pair? _g2137721401_)
                                   (let ((_e2138621404_
                                          (gx#syntax-e _g2137721401_)))
                                     (let ((_hd2138721408_
                                            (##car _e2138621404_))
                                           (_tl2138821411_
                                            (##cdr _e2138621404_)))
                                       (if (gx#stx-datum? _hd2138721408_)
                                           (if (equal? (gx#stx-e
                                                        _hd2138721408_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2138821411_)
                                                   (let ((_e2138921414_
                                                          (gx#syntax-e
                                                           _tl2138821411_)))
                                                     (let ((_hd2139021418_
                                                            (##car _e2138921414_))
                                                           (_tl2139121421_
                                                            (##cdr _e2138921414_)))
                                                       (if (gx#stx-null?
                                                            _tl2139121421_)
                                                           ((lambda (_L21424_)
                                                              (_loop21207_
                                                               _L21424_
                                                               _vars21372_
                                                               _K21373_))
                                                            _hd2139021418_)
                                                           (_g2137621397_
                                                            _g2137721401_))))
                                                   (_g2137621397_
                                                    _g2137721401_))
                                               (_g2137621397_ _g2137721401_))
                                           (_g2137621397_ _g2137721401_))))
                                   (_g2137621397_ _g2137721401_)))))
                        (let ((_g2137421478_
                               (lambda (_g2137721442_)
                                 (if (gx#stx-pair? _g2137721442_)
                                     (let ((_e2137921445_
                                            (gx#syntax-e _g2137721442_)))
                                       (let ((_hd2138021449_
                                              (##car _e2137921445_))
                                             (_tl2138121452_
                                              (##cdr _e2137921445_)))
                                         (if (gx#stx-datum? _hd2138021449_)
                                             (if (equal? (gx#stx-e
                                                          _hd2138021449_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2138121452_)
                                                     (let ((_e2138221455_
                                                            (gx#syntax-e
                                                             _tl2138121452_)))
                                                       (let ((_hd2138321459_
                                                              (##car _e2138221455_))
                                                             (_tl2138421462_
                                                              (##cdr _e2138221455_)))
                                                         (if (gx#stx-null?
                                                              _tl2138421462_)
                                                             ((lambda (_L21465_)
                                                                (_loop-list21210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21465_
                         _vars21372_
                         _K21373_))
                      _hd2138321459_)
                     (_g2137521438_ _g2137721442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2137521438_
                                                      _g2137721442_))
                                                 (_g2137521438_ _g2137721442_))
                                             (_g2137521438_ _g2137721442_))))
                                     (_g2137521438_ _g2137721442_)))))
                          (_g2137421478_ _body21370_))))))
                 (_loop-list21210_
                  (lambda (_rest21300_ _vars21302_ _K21303_)
                    (let ((_g2130621318_
                           (lambda (_g2130721314_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2130721314_))))
                      (let ((_g2130521329_
                             (lambda (_g2130721322_)
                               ((lambda () (_K21303_ _vars21302_))))))
                        (let ((_g2130421366_
                               (lambda (_g2130721333_)
                                 (if (gx#stx-pair? _g2130721333_)
                                     (let ((_e2131021336_
                                            (gx#syntax-e _g2130721333_)))
                                       (let ((_hd2131121340_
                                              (##car _e2131021336_))
                                             (_tl2131221343_
                                              (##cdr _e2131021336_)))
                                         ((lambda (_L21346_ _L21348_)
                                            (_loop21207_
                                             _L21348_
                                             _vars21302_
                                             (lambda (_g2136021362_)
                                               (_loop-list21210_
                                                _L21346_
                                                _g2136021362_
                                                _K21303_))))
                                          _tl2131221343_
                                          _hd2131121340_)))
                                     (_g2130521329_ _g2130721333_)))))
                          (_g2130421366_ _rest21300_))))))
                 (_loop-class-list21211_
                  (lambda (_rest21213_ _vars21215_ _K21216_)
                    (let ((_g2121921234_
                           (lambda (_g2122021230_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2122021230_))))
                      (let ((_g2121821245_
                             (lambda (_g2122021238_)
                               ((lambda () (_K21216_ _vars21215_))))))
                        (let ((_g2121721296_
                               (lambda (_g2122021249_)
                                 (if (gx#stx-pair? _g2122021249_)
                                     (let ((_e2122321252_
                                            (gx#syntax-e _g2122021249_)))
                                       (let ((_hd2122421256_
                                              (##car _e2122321252_))
                                             (_tl2122521259_
                                              (##cdr _e2122321252_)))
                                         (if (gx#stx-pair? _tl2122521259_)
                                             (let ((_e2122621262_
                                                    (gx#syntax-e
                                                     _tl2122521259_)))
                                               (let ((_hd2122721266_
                                                      (##car _e2122621262_))
                                                     (_tl2122821269_
                                                      (##cdr _e2122621262_)))
                                                 ((lambda (_L21272_ _L21274_)
                                                    (_loop21207_
                                                     _L21274_
                                                     _vars21215_
                                                     (lambda (_g2129021292_)
                                                       (_loop-class-list21211_
                                                        _L21272_
                                                        _g2129021292_
                                                        _K21216_))))
                                                  _tl2122821269_
                                                  _hd2122721266_)))
                                             (_g2121821245_ _g2122021249_))))
                                     (_g2121821245_ _g2122021249_)))))
                          (_g2121721296_ _rest21213_)))))))
          (_loop21207_ _ptree21204_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx18020_ _tgt18022_ _ptree18023_ _K18024_ _E18025_)
        (letrec ((_generate118027_
                  (lambda (_tgt19557_ _ptree19559_ _K19560_ _E19561_)
                    (let ((_g1956319571_
                           (lambda (_g1956419567_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1956419567_))))
                      (let ((_g1956221200_
                             (lambda (_g1956419575_)
                               ((lambda (_L19578_)
                                  (let ()
                                    (let ((_g1960519731_
                                           (lambda (_g1960619727_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1960619727_))))
                                      (let ((_g1960419752_
                                             (lambda (_g1960619735_)
                                               (if (gx#stx-pair? _g1960619735_)
                                                   (let ((_e1972319738_
                                                          (gx#syntax-e
                                                           _g1960619735_)))
                                                     (let ((_hd1972419742_
                                                            (##car _e1972319738_))
                                                           (_tl1972519745_
                                                            (##cdr _e1972319738_)))
                                                       (if (gx#stx-datum?
                                                            _hd1972419742_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1972419742_)
                               'any:)
                       (if (gx#stx-null? _tl1972519745_)
                           ((lambda () _K19560_))
                           (_g1960519731_ _g1960619735_))
                       (_g1960519731_ _g1960619735_))
                   (_g1960519731_ _g1960619735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1960519731_
                                                    _g1960619735_)))))
                                        (let ((_g1960319795_
                                               (lambda (_g1960619756_)
                                                 (if (gx#stx-pair?
                                                      _g1960619756_)
                                                     (let ((_e1971719759_
                                                            (gx#syntax-e
                                                             _g1960619756_)))
                                                       (let ((_hd1971819763_
                                                              (##car _e1971719759_))
                                                             (_tl1971919766_
                                                              (##cdr _e1971719759_)))
                                                         (if (gx#stx-datum?
                                                              _hd1971819763_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1971819763_)
                                 'var:)
                         (if (gx#stx-pair? _tl1971919766_)
                             (let ((_e1972019769_
                                    (gx#syntax-e _tl1971919766_)))
                               (let ((_hd1972119773_ (##car _e1972019769_))
                                     (_tl1972219776_ (##cdr _e1972019769_)))
                                 (if (gx#stx-null? _tl1972219776_)
                                     ((lambda (_L19779_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19779_
                                                                (cons _L19578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19560_ '()))))
                                      _hd1972119773_)
                                     (_g1960419752_ _g1960619756_))))
                             (_g1960419752_ _g1960619756_))
                         (_g1960419752_ _g1960619756_))
                     (_g1960419752_ _g1960619756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1960419752_
                                                      _g1960619756_)))))
                                          (let ((_g1960219880_
                                                 (lambda (_g1960619799_)
                                                   (if (gx#stx-pair?
                                                        _g1960619799_)
                                                       (let ((_e1970719802_
                                                              (gx#syntax-e
                                                               _g1960619799_)))
                                                         (let ((_hd1970819806_
                                                                (##car _e1970719802_))
                                                               (_tl1970919809_
                                                                (##cdr _e1970719802_)))
                                                           (if (gx#stx-datum?
                                                                _hd1970819806_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1970819806_)
                                   'apply:)
                           (if (gx#stx-pair? _tl1970919809_)
                               (let ((_e1971019812_
                                      (gx#syntax-e _tl1970919809_)))
                                 (let ((_hd1971119816_ (##car _e1971019812_))
                                       (_tl1971219819_ (##cdr _e1971019812_)))
                                   (if (gx#stx-pair? _tl1971219819_)
                                       (let ((_e1971319822_
                                              (gx#syntax-e _tl1971219819_)))
                                         (let ((_hd1971419826_
                                                (##car _e1971319822_))
                                               (_tl1971519829_
                                                (##cdr _e1971319822_)))
                                           (if (gx#stx-null? _tl1971519829_)
                                               ((lambda (_L19832_ _L19834_)
                                                  (let ((_g1984919857_
                                                         (lambda (_g1985019853_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1985019853_))))
                                                    (let ((_g1984819876_
                                                           (lambda (_g1985019861_)
                                                             ((lambda (_L19864_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _L19864_
                                                  (cons (cons _L19834_
                                                              (cons _L19578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (_generate118027_
                                             _L19864_
                                             _L19832_
                                             _K19560_
                                             _E19561_)
                                            '())))))
                      _g1985019861_))))
              (_g1984819876_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1971419826_
                                                _hd1971119816_)
                                               (_g1960319795_ _g1960619799_))))
                                       (_g1960319795_ _g1960619799_))))
                               (_g1960319795_ _g1960619799_))
                           (_g1960319795_ _g1960619799_))
                       (_g1960319795_ _g1960619799_))))
               (_g1960319795_ _g1960619799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1960119962_
                                                   (lambda (_g1960619884_)
                                                     (if (gx#stx-pair?
                                                          _g1960619884_)
                                                         (let ((_e1969919887_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1960619884_)))
                   (let ((_hd1970019891_ (##car _e1969919887_))
                         (_tl1970119894_ (##cdr _e1969919887_)))
                     (if (gx#stx-datum? _hd1970019891_)
                         (if (equal? (gx#stx-e _hd1970019891_) 'datum:)
                             (if (gx#stx-pair? _tl1970119894_)
                                 (let ((_e1970219897_
                                        (gx#syntax-e _tl1970119894_)))
                                   (let ((_hd1970319901_ (##car _e1970219897_))
                                         (_tl1970419904_
                                          (##cdr _e1970219897_)))
                                     (if (gx#stx-null? _tl1970419904_)
                                         ((lambda (_L19907_)
                                            (let ((_g1992019928_
                                                   (lambda (_g1992119924_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1992119924_))))
                                              (let ((_g1991919947_
                                                     (lambda (_g1992119932_)
                                                       ((lambda (_L19935_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons _L19935_
                                      (cons _L19578_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L19907_ '()))
                                                  '())))
                                (cons _K19560_ (cons _E19561_ '()))))))
                _g1992119932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1991919947_
                                                 (let ((_e19951_
                                                        (gx#stx-e _L19907_)))
                                                   (if (let ((_$e19954_
                                                              (symbol? _e19951_)))
                                                         (if _$e19954_
                                                             _$e19954_
                                                             (let ((_$e19958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _e19951_)))
                       (if _$e19958_ _$e19958_ (immediate? _e19951_)))))
               (gx#datum->syntax '#f '##eq?)
               (if (number? _e19951_)
                   (gx#datum->syntax '#f 'eqv?)
                   (gx#datum->syntax '#f 'equal?))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1970319901_)
                                         (_g1960219880_ _g1960619884_))))
                                 (_g1960219880_ _g1960619884_))
                             (_g1960219880_ _g1960619884_))
                         (_g1960219880_ _g1960619884_))))
                 (_g1960219880_ _g1960619884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1960020016_
                                                     (lambda (_g1960619966_)
                                                       (if (gx#stx-pair?
                                                            _g1960619966_)
                                                           (let ((_e1968919969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1960619966_)))
                     (let ((_hd1969019973_ (##car _e1968919969_))
                           (_tl1969119976_ (##cdr _e1968919969_)))
                       (if (gx#stx-datum? _hd1969019973_)
                           (if (equal? (gx#stx-e _hd1969019973_) 'class:)
                               (if (gx#stx-pair? _tl1969119976_)
                                   (let ((_e1969219979_
                                          (gx#syntax-e _tl1969119976_)))
                                     (let ((_hd1969319983_
                                            (##car _e1969219979_))
                                           (_tl1969419986_
                                            (##cdr _e1969219979_)))
                                       (if (gx#stx-pair? _tl1969419986_)
                                           (let ((_e1969519989_
                                                  (gx#syntax-e
                                                   _tl1969419986_)))
                                             (let ((_hd1969619993_
                                                    (##car _e1969519989_))
                                                   (_tl1969719996_
                                                    (##cdr _e1969519989_)))
                                               (if (gx#stx-null?
                                                    _tl1969719996_)
                                                   ((lambda (_L19999_ _L20001_)
                                                      (_generate-class18033_
                                                       (gx#stx-e _L20001_)
                                                       _tgt19557_
                                                       _L19999_
                                                       _K19560_
                                                       _E19561_))
                                                    _hd1969619993_
                                                    _hd1969319983_)
                                                   (_g1960119962_
                                                    _g1960619966_))))
                                           (_g1960119962_ _g1960619966_))))
                                   (_g1960119962_ _g1960619966_))
                               (_g1960119962_ _g1960619966_))
                           (_g1960119962_ _g1960619966_))))
                   (_g1960119962_ _g1960619966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1959920070_
                                                       (lambda (_g1960620020_)
                                                         (if (gx#stx-pair?
                                                              _g1960620020_)
                                                             (let ((_e1967820023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1960620020_)))
                       (let ((_hd1967920027_ (##car _e1967820023_))
                             (_tl1968020030_ (##cdr _e1967820023_)))
                         (if (gx#stx-datum? _hd1967920027_)
                             (if (equal? (gx#stx-e _hd1967920027_) 'struct:)
                                 (if (gx#stx-pair? _tl1968020030_)
                                     (let ((_e1968120033_
                                            (gx#syntax-e _tl1968020030_)))
                                       (let ((_hd1968220037_
                                              (##car _e1968120033_))
                                             (_tl1968320040_
                                              (##cdr _e1968120033_)))
                                         (if (gx#stx-pair? _tl1968320040_)
                                             (let ((_e1968420043_
                                                    (gx#syntax-e
                                                     _tl1968320040_)))
                                               (let ((_hd1968520047_
                                                      (##car _e1968420043_))
                                                     (_tl1968620050_
                                                      (##cdr _e1968420043_)))
                                                 (if (gx#stx-null?
                                                      _tl1968620050_)
                                                     ((lambda (_L20053_
                                                               _L20055_)
                                                        (_generate-struct18032_
                                                         (gx#stx-e _L20055_)
                                                         _tgt19557_
                                                         _L20053_
                                                         _K19560_
                                                         _E19561_))
                                                      _hd1968520047_
                                                      _hd1968220037_)
                                                     (_g1960020016_
                                                      _g1960620020_))))
                                             (_g1960020016_ _g1960620020_))))
                                     (_g1960020016_ _g1960620020_))
                                 (_g1960020016_ _g1960620020_))
                             (_g1960020016_ _g1960620020_))))
                     (_g1960020016_ _g1960620020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1959820248_
                                                         (lambda (_g1960620074_)
                                                           (if (gx#stx-pair?
                                                                _g1960620074_)
                                                               (let ((_e1967020077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1960620074_)))
                         (let ((_hd1967120081_ (##car _e1967020077_))
                               (_tl1967220084_ (##cdr _e1967020077_)))
                           (if (gx#stx-datum? _hd1967120081_)
                               (if (equal? (gx#stx-e _hd1967120081_) 'vector:)
                                   (if (gx#stx-pair? _tl1967220084_)
                                       (let ((_e1967320087_
                                              (gx#syntax-e _tl1967220084_)))
                                         (let ((_hd1967420091_
                                                (##car _e1967320087_))
                                               (_tl1967520094_
                                                (##cdr _e1967320087_)))
                                           (if (gx#stx-null? _tl1967520094_)
                                               ((lambda (_L20097_)
                                                  (let ((_g2011120132_
                                                         (lambda (_g2011220128_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2011220128_))))
                                                    (let ((_g2011020173_
                                                           (lambda (_g2011220136_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2011220136_)
                         (let ((_e2012120139_ (gx#syntax-e _g2011220136_)))
                           (let ((_hd2012220143_ (##car _e2012120139_))
                                 (_tl2012320146_ (##cdr _e2012120139_)))
                             (if (gx#stx-datum? _hd2012220143_)
                                 (if (equal? (gx#stx-e _hd2012220143_) 'list:)
                                     (if (gx#stx-pair? _tl2012320146_)
                                         (let ((_e2012420149_
                                                (gx#syntax-e _tl2012320146_)))
                                           (let ((_hd2012520153_
                                                  (##car _e2012420149_))
                                                 (_tl2012620156_
                                                  (##cdr _e2012420149_)))
                                             (if (gx#stx-null? _tl2012620156_)
                                                 ((lambda (_L20159_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _L19578_ '()))
                        (cons (_generate-list-vector18031_
                               _tgt19557_
                               _L20159_
                               (gx#datum->syntax '#f 'subvector->list)
                               '0
                               _K19560_
                               _E19561_)
                              (cons _E19561_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2012520153_)
                                                 (_g2011120132_
                                                  _g2011220136_))))
                                         (_g2011120132_ _g2011220136_))
                                     (_g2011120132_ _g2011220136_))
                                 (_g2011120132_ _g2011220136_))))
                         (_g2011120132_ _g2011220136_)))))
              (let ((_g2010920244_
                     (lambda (_g2011220177_)
                       (if (gx#stx-pair? _g2011220177_)
                           (let ((_e2011420180_ (gx#syntax-e _g2011220177_)))
                             (let ((_hd2011520184_ (##car _e2011420180_))
                                   (_tl2011620187_ (##cdr _e2011420180_)))
                               (if (gx#stx-datum? _hd2011520184_)
                                   (if (equal? (gx#stx-e _hd2011520184_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl2011620187_)
                                           (let ((_e2011720190_
                                                  (gx#syntax-e
                                                   _tl2011620187_)))
                                             (let ((_hd2011820194_
                                                    (##car _e2011720190_))
                                                   (_tl2011920197_
                                                    (##cdr _e2011720190_)))
                                               (if (gx#stx-null?
                                                    _tl2011920197_)
                                                   ((lambda (_L20200_)
                                                      (let ((_g2021320221_
                                                             (lambda (_g2021420217_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2021420217_))))
                                                        (let ((_g2021220240_
                                                               (lambda (_g2021420225_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20228_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector?)
                                                            (cons _L19578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f '##fx=)
                          (cons (cons (gx#datum->syntax '#f '##vector-length)
                                      (cons _L19578_ '()))
                                (cons _L20228_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector18030_
                                                 _tgt19557_
                                                 _L20200_
                                                 '0
                                                 _K19560_
                                                 _E19561_)
                                                (cons _E19561_ '()))))))
                          _g2021420225_))))
                  (_g2021220240_ (gx#stx-length _L20200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2011820194_)
                                                   (_g2011020173_
                                                    _g2011220177_))))
                                           (_g2011020173_ _g2011220177_))
                                       (_g2011020173_ _g2011220177_))
                                   (_g2011020173_ _g2011220177_))))
                           (_g2011020173_ _g2011220177_)))))
                (_g2010920244_ _L20097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1967420091_)
                                               (_g1959920070_ _g1960620074_))))
                                       (_g1959920070_ _g1960620074_))
                                   (_g1959920070_ _g1960620074_))
                               (_g1959920070_ _g1960620074_))))
                       (_g1959920070_ _g1960620074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1959720426_
                                                           (lambda (_g1960620252_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1960620252_)
                         (let ((_e1966320255_ (gx#syntax-e _g1960620252_)))
                           (let ((_hd1966420259_ (##car _e1966320255_))
                                 (_tl1966520262_ (##cdr _e1966320255_)))
                             (if (gx#stx-datum? _hd1966420259_)
                                 (if (equal? (gx#stx-e _hd1966420259_)
                                             'values:)
                                     (if (gx#stx-pair? _tl1966520262_)
                                         (let ((_e1966620265_
                                                (gx#syntax-e _tl1966520262_)))
                                           (let ((_hd1966720269_
                                                  (##car _e1966620265_))
                                                 (_tl1966820272_
                                                  (##cdr _e1966620265_)))
                                             (if (gx#stx-null? _tl1966820272_)
                                                 ((lambda (_L20275_)
                                                    (let ((_g2028920310_
                                                           (lambda (_g2029020306_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2029020306_))))
                                                      (let ((_g2028820351_
                                                             (lambda (_g2029020314_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2029020314_)
                           (let ((_e2029920317_ (gx#syntax-e _g2029020314_)))
                             (let ((_hd2030020321_ (##car _e2029920317_))
                                   (_tl2030120324_ (##cdr _e2029920317_)))
                               (if (gx#stx-datum? _hd2030020321_)
                                   (if (equal? (gx#stx-e _hd2030020321_)
                                               'list:)
                                       (if (gx#stx-pair? _tl2030120324_)
                                           (let ((_e2030220327_
                                                  (gx#syntax-e
                                                   _tl2030120324_)))
                                             (let ((_hd2030320331_
                                                    (##car _e2030220327_))
                                                   (_tl2030420334_
                                                    (##cdr _e2030220327_)))
                                               (if (gx#stx-null?
                                                    _tl2030420334_)
                                                   ((lambda (_L20337_)
                                                      (_generate-list-vector18031_
                                                       _tgt19557_
                                                       _L20337_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       '0
                                                       _K19560_
                                                       _E19561_))
                                                    _hd2030320331_)
                                                   (_g2028920310_
                                                    _g2029020314_))))
                                           (_g2028920310_ _g2029020314_))
                                       (_g2028920310_ _g2029020314_))
                                   (_g2028920310_ _g2029020314_))))
                           (_g2028920310_ _g2029020314_)))))
                (let ((_g2028720422_
                       (lambda (_g2029020355_)
                         (if (gx#stx-pair? _g2029020355_)
                             (let ((_e2029220358_ (gx#syntax-e _g2029020355_)))
                               (let ((_hd2029320362_ (##car _e2029220358_))
                                     (_tl2029420365_ (##cdr _e2029220358_)))
                                 (if (gx#stx-datum? _hd2029320362_)
                                     (if (equal? (gx#stx-e _hd2029320362_)
                                                 'simple:)
                                         (if (gx#stx-pair? _tl2029420365_)
                                             (let ((_e2029520368_
                                                    (gx#syntax-e
                                                     _tl2029420365_)))
                                               (let ((_hd2029620372_
                                                      (##car _e2029520368_))
                                                     (_tl2029720375_
                                                      (##cdr _e2029520368_)))
                                                 (if (gx#stx-null?
                                                      _tl2029720375_)
                                                     ((lambda (_L20378_)
                                                        (let ((_g2039120399_
                                                               (lambda (_g2039220395_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2039220395_))))
                  (let ((_g2039020418_
                         (lambda (_g2039220403_)
                           ((lambda (_L20406_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L19578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L20406_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector18030_
                                                   _tgt19557_
                                                   _L20378_
                                                   '0
                                                   _K19560_
                                                   _E19561_)
                                                  (cons _E19561_ '()))))))
                            _g2039220403_))))
                    (_g2039020418_ (gx#stx-length _L20378_)))))
              _hd2029620372_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2028820351_
                                                      _g2029020355_))))
                                             (_g2028820351_ _g2029020355_))
                                         (_g2028820351_ _g2029020355_))
                                     (_g2028820351_ _g2029020355_))))
                             (_g2028820351_ _g2029020355_)))))
                  (_g2028720422_ _L20275_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1966720269_)
                                                 (_g1959820248_
                                                  _g1960620252_))))
                                         (_g1959820248_ _g1960620252_))
                                     (_g1959820248_ _g1960620252_))
                                 (_g1959820248_ _g1960620252_))))
                         (_g1959820248_ _g1960620252_)))))
              (let ((_g1959620497_
                     (lambda (_g1960620430_)
                       (if (gx#stx-pair? _g1960620430_)
                           (let ((_e1965620433_ (gx#syntax-e _g1960620430_)))
                             (let ((_hd1965720437_ (##car _e1965620433_))
                                   (_tl1965820440_ (##cdr _e1965620433_)))
                               (if (gx#stx-datum? _hd1965720437_)
                                   (if (equal? (gx#stx-e _hd1965720437_) 'box:)
                                       (if (gx#stx-pair? _tl1965820440_)
                                           (let ((_e1965920443_
                                                  (gx#syntax-e
                                                   _tl1965820440_)))
                                             (let ((_hd1966020447_
                                                    (##car _e1965920443_))
                                                   (_tl1966120450_
                                                    (##cdr _e1965920443_)))
                                               (if (gx#stx-null?
                                                    _tl1966120450_)
                                                   ((lambda (_L20453_)
                                                      (let ((_g2046620474_
                                                             (lambda (_g2046720470_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2046720470_))))
                                                        (let ((_g2046520493_
                                                               (lambda (_g2046720478_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20481_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##box?)
                                                (cons _L19578_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L20481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f '##unbox)
                                            (cons _L19578_ '()))
                                      '()))
                          '())
                    (cons (_generate118027_
                           _L20481_
                           _L20453_
                           _K19560_
                           _E19561_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _E19561_ '()))))))
                          _g2046720478_))))
                  (_g2046520493_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1966020447_)
                                                   (_g1959720426_
                                                    _g1960620430_))))
                                           (_g1959720426_ _g1960620430_))
                                       (_g1959720426_ _g1960620430_))
                                   (_g1959720426_ _g1960620430_))))
                           (_g1959720426_ _g1960620430_)))))
                (let ((_g1959520551_
                       (lambda (_g1960620501_)
                         (if (gx#stx-pair? _g1960620501_)
                             (let ((_e1964620504_ (gx#syntax-e _g1960620501_)))
                               (let ((_hd1964720508_ (##car _e1964620504_))
                                     (_tl1964820511_ (##cdr _e1964620504_)))
                                 (if (gx#stx-datum? _hd1964720508_)
                                     (if (equal? (gx#stx-e _hd1964720508_)
                                                 'splice:)
                                         (if (gx#stx-pair? _tl1964820511_)
                                             (let ((_e1964920514_
                                                    (gx#syntax-e
                                                     _tl1964820511_)))
                                               (let ((_hd1965020518_
                                                      (##car _e1964920514_))
                                                     (_tl1965120521_
                                                      (##cdr _e1964920514_)))
                                                 (if (gx#stx-pair?
                                                      _tl1965120521_)
                                                     (let ((_e1965220524_
                                                            (gx#syntax-e
                                                             _tl1965120521_)))
                                                       (let ((_hd1965320528_
                                                              (##car _e1965220524_))
                                                             (_tl1965420531_
                                                              (##cdr _e1965220524_)))
                                                         (if (gx#stx-null?
                                                              _tl1965420531_)
                                                             ((lambda (_L20534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20536_)
                        (_generate-splice18029_
                         _tgt19557_
                         _L20536_
                         _L20534_
                         _K19560_
                         _E19561_))
                      _hd1965320528_
                      _hd1965020518_)
                     (_g1959620497_ _g1960620501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1959620497_
                                                      _g1960620501_))))
                                             (_g1959620497_ _g1960620501_))
                                         (_g1959620497_ _g1960620501_))
                                     (_g1959620497_ _g1960620501_))))
                             (_g1959620497_ _g1960620501_)))))
                  (let ((_g1959420572_
                         (lambda (_g1960620555_)
                           (if (gx#stx-pair? _g1960620555_)
                               (let ((_e1964120558_
                                      (gx#syntax-e _g1960620555_)))
                                 (let ((_hd1964220562_ (##car _e1964120558_))
                                       (_tl1964320565_ (##cdr _e1964120558_)))
                                   (if (gx#stx-datum? _hd1964220562_)
                                       (if (equal? (gx#stx-e _hd1964220562_)
                                                   'null:)
                                           (if (gx#stx-null? _tl1964320565_)
                                               ((lambda ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##null?)
                            (cons _L19578_ '()))
                      (cons _K19560_ (cons _E19561_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1959520551_ _g1960620555_))
                                           (_g1959520551_ _g1960620555_))
                                       (_g1959520551_ _g1960620555_))))
                               (_g1959520551_ _g1960620555_)))))
                    (let ((_g1959320691_
                           (lambda (_g1960620576_)
                             (if (gx#stx-pair? _g1960620576_)
                                 (let ((_e1963220579_
                                        (gx#syntax-e _g1960620576_)))
                                   (let ((_hd1963320583_ (##car _e1963220579_))
                                         (_tl1963420586_
                                          (##cdr _e1963220579_)))
                                     (if (gx#stx-datum? _hd1963320583_)
                                         (if (equal? (gx#stx-e _hd1963320583_)
                                                     'cons:)
                                             (if (gx#stx-pair? _tl1963420586_)
                                                 (let ((_e1963520589_
                                                        (gx#syntax-e
                                                         _tl1963420586_)))
                                                   (let ((_hd1963620593_
                                                          (##car _e1963520589_))
                                                         (_tl1963720596_
                                                          (##cdr _e1963520589_)))
                                                     (if (gx#stx-pair?
                                                          _tl1963720596_)
                                                         (let ((_e1963820599_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1963720596_)))
                   (let ((_hd1963920603_ (##car _e1963820599_))
                         (_tl1964020606_ (##cdr _e1963820599_)))
                     (if (gx#stx-null? _tl1964020606_)
                         ((lambda (_L20609_ _L20611_)
                            (let ((_g2062720642_
                                   (lambda (_g2062820638_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2062820638_))))
                              (let ((_g2062620687_
                                     (lambda (_g2062820646_)
                                       (if (gx#stx-pair? _g2062820646_)
                                           (let ((_e2063120649_
                                                  (gx#syntax-e _g2062820646_)))
                                             (let ((_hd2063220653_
                                                    (##car _e2063120649_))
                                                   (_tl2063320656_
                                                    (##cdr _e2063120649_)))
                                               (if (gx#stx-pair?
                                                    _tl2063320656_)
                                                   (let ((_e2063420659_
                                                          (gx#syntax-e
                                                           _tl2063320656_)))
                                                     (let ((_hd2063520663_
                                                            (##car _e2063420659_))
                                                           (_tl2063620666_
                                                            (##cdr _e2063420659_)))
                                                       (if (gx#stx-null?
                                                            _tl2063620666_)
                                                           ((lambda (_L20669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20671_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f '##pair?)
                                          (cons _L19578_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f '##car)
                                      (cons _L19578_ '()))
                                '()))
                    (cons (cons _L20669_
                                (cons (cons (gx#datum->syntax '#f '##cdr)
                                            (cons _L19578_ '()))
                                      '()))
                          '()))
              (cons (_generate118027_
                     _L20671_
                     _L20611_
                     (_generate118027_ _L20669_ _L20609_ _K19560_ _E19561_)
                     _E19561_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19561_ '()))))))
                    _hd2063520663_
                    _hd2063220653_)
                   (_g2062720642_ _g2062820646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2062720642_
                                                    _g2062820646_))))
                                           (_g2062720642_ _g2062820646_)))))
                                (_g2062620687_
                                 (list (gx#genident 'hd) (gx#genident 'tl))))))
                          _hd1963920603_
                          _hd1963620593_)
                         (_g1959420572_ _g1960620576_))))
                 (_g1959420572_ _g1960620576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1959420572_ _g1960620576_))
                                             (_g1959420572_ _g1960620576_))
                                         (_g1959420572_ _g1960620576_))))
                                 (_g1959420572_ _g1960620576_)))))
                      (let ((_g1959220731_
                             (lambda (_g1960620695_)
                               (if (gx#stx-pair? _g1960620695_)
                                   (let ((_e1962420698_
                                          (gx#syntax-e _g1960620695_)))
                                     (let ((_hd1962520702_
                                            (##car _e1962420698_))
                                           (_tl1962620705_
                                            (##cdr _e1962420698_)))
                                       (if (gx#stx-datum? _hd1962520702_)
                                           (if (equal? (gx#stx-e
                                                        _hd1962520702_)
                                                       'not:)
                                               (if (gx#stx-pair?
                                                    _tl1962620705_)
                                                   (let ((_e1962720708_
                                                          (gx#syntax-e
                                                           _tl1962620705_)))
                                                     (let ((_hd1962820712_
                                                            (##car _e1962720708_))
                                                           (_tl1962920715_
                                                            (##cdr _e1962720708_)))
                                                       (if (gx#stx-null?
                                                            _tl1962920715_)
                                                           ((lambda (_L20718_)
                                                              (_generate118027_
                                                               _tgt19557_
                                                               _L20718_
                                                               _E19561_
                                                               _K19560_))
                                                            _hd1962820712_)
                                                           (_g1959320691_
                                                            _g1960620695_))))
                                                   (_g1959320691_
                                                    _g1960620695_))
                                               (_g1959320691_ _g1960620695_))
                                           (_g1959320691_ _g1960620695_))))
                                   (_g1959320691_ _g1960620695_)))))
                        (let ((_g1959120819_
                               (lambda (_g1960620735_)
                                 (if (gx#stx-pair? _g1960620735_)
                                     (let ((_e1962020738_
                                            (gx#syntax-e _g1960620735_)))
                                       (let ((_hd1962120742_
                                              (##car _e1962020738_))
                                             (_tl1962220745_
                                              (##cdr _e1962020738_)))
                                         (if (gx#stx-datum? _hd1962120742_)
                                             (if (equal? (gx#stx-e
                                                          _hd1962120742_)
                                                         'or:)
                                                 ((lambda (_L20748_)
                                                    (let ((_g2076020772_
                                                           (lambda (_g2076120768_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2076120768_))))
                                                      (let ((_g2075920783_
                                                             (lambda (_g2076120776_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _E19561_)))))
                (let ((_g2075820815_
                       (lambda (_g2076120787_)
                         (if (gx#stx-pair? _g2076120787_)
                             (let ((_e2076420790_ (gx#syntax-e _g2076120787_)))
                               (let ((_hd2076520794_ (##car _e2076420790_))
                                     (_tl2076620797_ (##cdr _e2076420790_)))
                                 ((lambda (_L20800_ _L20802_)
                                    (_generate118027_
                                     _tgt19557_
                                     _L20802_
                                     _K19560_
                                     (_generate118027_
                                      _tgt19557_
                                      (cons 'or: _L20800_)
                                      _K19560_
                                      _E19561_)))
                                  _tl2076620797_
                                  _hd2076520794_)))
                             (_g2075920783_ _g2076120787_)))))
                  (_g2075820815_ _L20748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1962220745_)
                                                 (_g1959220731_ _g1960620735_))
                                             (_g1959220731_ _g1960620735_))))
                                     (_g1959220731_ _g1960620735_)))))
                          (let ((_g1959020907_
                                 (lambda (_g1960620823_)
                                   (if (gx#stx-pair? _g1960620823_)
                                       (let ((_e1961620826_
                                              (gx#syntax-e _g1960620823_)))
                                         (let ((_hd1961720830_
                                                (##car _e1961620826_))
                                               (_tl1961820833_
                                                (##cdr _e1961620826_)))
                                           (if (gx#stx-datum? _hd1961720830_)
                                               (if (equal? (gx#stx-e
                                                            _hd1961720830_)
                                                           'and:)
                                                   ((lambda (_L20836_)
                                                      (let ((_g2084820860_
                                                             (lambda (_g2084920856_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2084920856_))))
                                                        (let ((_g2084720871_
                                                               (lambda (_g2084920864_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda () _K19560_)))))
                  (let ((_g2084620903_
                         (lambda (_g2084920875_)
                           (if (gx#stx-pair? _g2084920875_)
                               (let ((_e2085220878_
                                      (gx#syntax-e _g2084920875_)))
                                 (let ((_hd2085320882_ (##car _e2085220878_))
                                       (_tl2085420885_ (##cdr _e2085220878_)))
                                   ((lambda (_L20888_ _L20890_)
                                      (_generate118027_
                                       _tgt19557_
                                       _L20890_
                                       (_generate118027_
                                        _tgt19557_
                                        (cons 'and: _L20888_)
                                        _K19560_
                                        _E19561_)
                                       _E19561_))
                                    _tl2085420885_
                                    _hd2085320882_)))
                               (_g2084720871_ _g2084920875_)))))
                    (_g2084620903_ _L20836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1961820833_)
                                                   (_g1959120819_
                                                    _g1960620823_))
                                               (_g1959120819_ _g1960620823_))))
                                       (_g1959120819_ _g1960620823_)))))
                            (let ((_g1958921196_
                                   (lambda (_g1960620911_)
                                     (if (gx#stx-pair? _g1960620911_)
                                         (let ((_e1960920914_
                                                (gx#syntax-e _g1960620911_)))
                                           (let ((_hd1961020918_
                                                  (##car _e1960920914_))
                                                 (_tl1961120921_
                                                  (##cdr _e1960920914_)))
                                             (if (gx#stx-datum? _hd1961020918_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1961020918_)
                                                             '?:)
                                                     (if (gx#stx-pair?
                                                          _tl1961120921_)
                                                         (let ((_e1961220924_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1961120921_)))
                   (let ((_hd1961320928_ (##car _e1961220924_))
                         (_tl1961420931_ (##cdr _e1961220924_)))
                     ((lambda (_L20934_ _L20936_)
                        (let ((_g2095220984_
                               (lambda (_g2095320980_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2095320980_))))
                          (let ((_g2095121082_
                                 (lambda (_g2095320988_)
                                   (if (gx#stx-pair? _g2095320988_)
                                       (let ((_e2096720991_
                                              (gx#syntax-e _g2095320988_)))
                                         (let ((_hd2096820995_
                                                (##car _e2096720991_))
                                               (_tl2096920998_
                                                (##cdr _e2096720991_)))
                                           (if (gx#stx-datum? _hd2096820995_)
                                               (if (equal? (gx#stx-e
                                                            _hd2096820995_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2096920998_)
                                                       (let ((_e2097021001_
                                                              (gx#syntax-e
                                                               _tl2096920998_)))
                                                         (let ((_hd2097121005_
                                                                (##car _e2097021001_))
                                                               (_tl2097221008_
                                                                (##cdr _e2097021001_)))
                                                           (if (gx#stx-pair?
                                                                _tl2097221008_)
                                                               (let ((_e2097321011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2097221008_)))
                         (let ((_hd2097421015_ (##car _e2097321011_))
                               (_tl2097521018_ (##cdr _e2097321011_)))
                           (if (gx#stx-datum? _hd2097421015_)
                               (if (equal? (gx#stx-e _hd2097421015_) '=>:)
                                   (if (gx#stx-pair? _tl2097521018_)
                                       (let ((_e2097621021_
                                              (gx#syntax-e _tl2097521018_)))
                                         (let ((_hd2097721025_
                                                (##car _e2097621021_))
                                               (_tl2097821028_
                                                (##cdr _e2097621021_)))
                                           (if (gx#stx-null? _tl2097821028_)
                                               ((lambda (_L21031_ _L21033_)
                                                  (let ((_g2105121059_
                                                         (lambda (_g2105221055_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2105221055_))))
                                                    (let ((_g2105021078_
                                                           (lambda (_g2105221063_)
                                                             ((lambda (_L21066_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '?)
                                            (cons _L20936_
                                                  (cons _L19578_ '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21033_ (cons _L19578_ '())) '()))
                      '())
                (cons (_generate118027_ _L21066_ _L21031_ _K19560_ _E19561_)
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _E19561_ '()))))))
                      _g2105221063_))))
              (_g2105021078_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2097721025_
                                                _hd2097121005_)
                                               (_g2095220984_ _g2095320988_))))
                                       (_g2095220984_ _g2095320988_))
                                   (_g2095220984_ _g2095320988_))
                               (_g2095220984_ _g2095320988_))))
                       (_g2095220984_ _g2095320988_))))
               (_g2095220984_ _g2095320988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2095220984_
                                                    _g2095320988_))
                                               (_g2095220984_ _g2095320988_))))
                                       (_g2095220984_ _g2095320988_)))))
                            (let ((_g2095021153_
                                   (lambda (_g2095321086_)
                                     (if (gx#stx-pair? _g2095321086_)
                                         (let ((_e2095921089_
                                                (gx#syntax-e _g2095321086_)))
                                           (let ((_hd2096021093_
                                                  (##car _e2095921089_))
                                                 (_tl2096121096_
                                                  (##cdr _e2095921089_)))
                                             (if (gx#stx-datum? _hd2096021093_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2096021093_)
                                                             '=>:)
                                                     (if (gx#stx-pair?
                                                          _tl2096121096_)
                                                         (let ((_e2096221099_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2096121096_)))
                   (let ((_hd2096321103_ (##car _e2096221099_))
                         (_tl2096421106_ (##cdr _e2096221099_)))
                     (if (gx#stx-null? _tl2096421106_)
                         ((lambda (_L21109_)
                            (let ((_g2112221130_
                                   (lambda (_g2112321126_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2112321126_))))
                              (let ((_g2112121149_
                                     (lambda (_g2112321134_)
                                       ((lambda (_L21137_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L20936_ (cons _L19578_ '())) '()))
                      '())
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons _L21137_
                                  (cons (_generate118027_
                                         _L21137_
                                         _L21109_
                                         _K19560_
                                         _E19561_)
                                        (cons _E19561_ '()))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2112321134_))))
                                (_g2112121149_ (gx#genident 'e)))))
                          _hd2096321103_)
                         (_g2095121082_ _g2095321086_))))
                 (_g2095121082_ _g2095321086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2095121082_
                                                      _g2095321086_))
                                                 (_g2095121082_
                                                  _g2095321086_))))
                                         (_g2095121082_ _g2095321086_)))))
                              (let ((_g2094921181_
                                     (lambda (_g2095321157_)
                                       (if (gx#stx-pair? _g2095321157_)
                                           (let ((_e2095521160_
                                                  (gx#syntax-e _g2095321157_)))
                                             (let ((_hd2095621164_
                                                    (##car _e2095521160_))
                                                   (_tl2095721167_
                                                    (##cdr _e2095521160_)))
                                               (if (gx#stx-null?
                                                    _tl2095721167_)
                                                   ((lambda (_L21170_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '?)
                                (cons _L20936_ (cons _L19578_ '())))
                          (cons (_generate118027_
                                 _tgt19557_
                                 _L21170_
                                 _K19560_
                                 _E19561_)
                                (cons _E19561_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2095621164_)
                                                   (_g2095021153_
                                                    _g2095321157_))))
                                           (_g2095021153_ _g2095321157_)))))
                                (let ((_g2094821192_
                                       (lambda (_g2095321185_)
                                         (if (gx#stx-null? _g2095321185_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '?)
                          (cons _L20936_ (cons _L19578_ '())))
                    (cons _K19560_ (cons _E19561_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2094921181_ _g2095321185_)))))
                                  (_g2094821192_ _L20934_)))))))
                      _tl1961420931_
                      _hd1961320928_)))
                 (_g1959020907_ _g1960620911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1959020907_
                                                      _g1960620911_))
                                                 (_g1959020907_
                                                  _g1960620911_))))
                                         (_g1959020907_ _g1960620911_)))))
                              (_g1958921196_ _ptree19559_))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1956419575_))))
                        (_g1956221200_ _tgt19557_)))))
                 (_generate-splice18029_
                  (lambda (_tgt18929_ _hd18931_ _rest18932_ _K18933_ _E18934_)
                    (let ((_g1893618953_
                           (lambda (_g1893718949_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1893718949_))))
                      (let ((_g1893519553_
                             (lambda (_g1893718957_)
                               (if (gx#stx-pair/null? _g1893718957_)
                                   (if (fx>= (gx#stx-length _g1893718957_) '0)
                                       (let ((_g30029_
                                              (gx#syntax-split-splice
                                               _g1893718957_
                                               '0)))
                                         (begin
                                           (let ((_g30030_
                                                  (values-count _g30029_)))
                                             (if (not (fx= _g30030_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30030_)))
                                           (let ((_target1893918960_
                                                  (values-ref _g30029_ 0))
                                                 (_tl1894118963_
                                                  (values-ref _g30029_ 1)))
                                             (if (gx#stx-null? _tl1894118963_)
                                                 (letrec ((_loop1894218966_
                                                           (lambda (_hd1894018970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1894618973_)
                     (if (gx#stx-pair? _hd1894018970_)
                         (let ((_e1894318976_ (gx#syntax-e _hd1894018970_)))
                           (let ((_lp-hd1894418980_ (##car _e1894318976_))
                                 (_lp-tl1894518983_ (##cdr _e1894318976_)))
                             (_loop1894218966_
                              _lp-tl1894518983_
                              (cons _lp-hd1894418980_ _var1894618973_))))
                         (let ((_var1894718986_ (reverse _var1894618973_)))
                           ((lambda (_L18990_)
                              (let ()
                                (let ((_g1900619023_
                                       (lambda (_g1900719019_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1900719019_))))
                                  (let ((_g1900519541_
                                         (lambda (_g1900719027_)
                                           (if (gx#stx-pair/null?
                                                _g1900719027_)
                                               (if (fx>= (gx#stx-length
                                                          _g1900719027_)
                                                         '0)
                                                   (let ((_g30031_
                                                          (gx#syntax-split-splice
                                                           _g1900719027_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30032_
                                                              (values-count
                                                               _g30031_)))
                                                         (if (not (fx= _g30032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30032_)))
               (let ((_target1900919030_ (values-ref _g30031_ 0))
                     (_tl1901119033_ (values-ref _g30031_ 1)))
                 (if (gx#stx-null? _tl1901119033_)
                     (letrec ((_loop1901219036_
                               (lambda (_hd1901019040_ _var-r1901619043_)
                                 (if (gx#stx-pair? _hd1901019040_)
                                     (let ((_e1901319046_
                                            (gx#syntax-e _hd1901019040_)))
                                       (let ((_lp-hd1901419050_
                                              (##car _e1901319046_))
                                             (_lp-tl1901519053_
                                              (##cdr _e1901319046_)))
                                         (_loop1901219036_
                                          _lp-tl1901519053_
                                          (cons _lp-hd1901419050_
                                                _var-r1901619043_))))
                                     (let ((_var-r1901719056_
                                            (reverse _var-r1901619043_)))
                                       ((lambda (_L19060_)
                                          (let ()
                                            (let ((_g1907719094_
                                                   (lambda (_g1907819090_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1907819090_))))
                                              (let ((_g1907619529_
                                                     (lambda (_g1907819098_)
                                                       (if (gx#stx-pair/null?
                                                            _g1907819098_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1907819098_)
                             '0)
                       (let ((_g30033_
                              (gx#syntax-split-splice _g1907819098_ '0)))
                         (begin
                           (let ((_g30034_ (values-count _g30033_)))
                             (if (not (fx= _g30034_ 2))
                                 (error "Context expects 2 values" _g30034_)))
                           (let ((_target1908019101_ (values-ref _g30033_ 0))
                                 (_tl1908219104_ (values-ref _g30033_ 1)))
                             (if (gx#stx-null? _tl1908219104_)
                                 (letrec ((_loop1908319107_
                                           (lambda (_hd1908119111_
                                                    _init1908719114_)
                                             (if (gx#stx-pair? _hd1908119111_)
                                                 (let ((_e1908419117_
                                                        (gx#syntax-e
                                                         _hd1908119111_)))
                                                   (let ((_lp-hd1908519121_
                                                          (##car _e1908419117_))
                                                         (_lp-tl1908619124_
                                                          (##cdr _e1908419117_)))
                                                     (_loop1908319107_
                                                      _lp-tl1908619124_
                                                      (cons _lp-hd1908519121_
                                                            _init1908719114_))))
                                                 (let ((_init1908819127_
                                                        (reverse _init1908719114_)))
                                                   ((lambda (_L19131_)
                                                      (let ()
                                                        (let ((_g1914819156_
                                                               (lambda (_g1914919152_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1914919152_))))
                  (let ((_g1914719525_
                         (lambda (_g1914919160_)
                           ((lambda (_L19163_)
                              (let ()
                                (let ((_g1917619184_
                                       (lambda (_g1917719180_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1917719180_))))
                                  (let ((_g1917519521_
                                         (lambda (_g1917719188_)
                                           ((lambda (_L19191_)
                                              (let ()
                                                (let ((_g1920419212_
                                                       (lambda (_g1920519208_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1920519208_))))
                                                  (let ((_g1920319517_
                                                         (lambda (_g1920519216_)
                                                           ((lambda (_L19219_)
                                                              (let ()
                                                                (let ((_g1923219240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1923319236_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1923319236_))))
                          (let ((_g1923119513_
                                 (lambda (_g1923319244_)
                                   ((lambda (_L19247_)
                                      (let ()
                                        (let ((_g1926019268_
                                               (lambda (_g1926119264_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1926119264_))))
                                          (let ((_g1925919509_
                                                 (lambda (_g1926119272_)
                                                   ((lambda (_L19275_)
                                                      (let ()
                                                        (let ((_g1928819296_
                                                               (lambda (_g1928919292_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1928919292_))))
                  (let ((_g1928719505_
                         (lambda (_g1928919300_)
                           ((lambda (_L19303_)
                              (let ()
                                (let ((_g1931619324_
                                       (lambda (_g1931719320_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1931719320_))))
                                  (let ((_g1931519501_
                                         (lambda (_g1931719328_)
                                           ((lambda (_L19331_)
                                              (let ()
                                                (let ((_g1934419352_
                                                       (lambda (_g1934519348_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1934519348_))))
                                                  (let ((_g1934319486_
                                                         (lambda (_g1934519356_)
                                                           ((lambda (_L19359_)
                                                              (let ()
                                                                (let ((_g1937219380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1937319376_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1937319376_))))
                          (let ((_g1937119474_
                                 (lambda (_g1937319384_)
                                   ((lambda (_L19387_)
                                      (let ()
                                        (let ((_g1940019408_
                                               (lambda (_g1940119404_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1940119404_))))
                                          (let ((_g1939919470_
                                                 (lambda (_g1940119412_)
                                                   ((lambda (_L19415_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L19191_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1942919440_ _g1943019443_)
                                     (cons _g1942919440_ _g1943019443_))
                                   '()
                                   _L18990_)))
                    (cons _L19331_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19247_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19303_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1943119446_
                                                        _g1943219449_)
                                                 (cons _g1943119446_
                                                       _g1943219449_))
                                               '()
                                               _L19060_))))
                          (cons _L19415_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L19219_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19303_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1943319452_
                                                        _g1943419455_)
                                                 (cons _g1943319452_
                                                       _g1943419455_))
                                               '()
                                               _L19060_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19303_ '()))
                                                  (cons (cons _L19247_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19303_ '()))
                            (cons _L19303_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1943519458_
                                                    _g1943619461_)
                                             (cons _g1943519458_
                                                   _g1943619461_))
                                           '()
                                           _L19060_)))))
                (cons _L19387_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L19219_
                                          (cons _L19163_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1943719464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1943819467_)
                   (cons _g1943719464_ _g1943819467_))
                 '()
                 _L19131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1940119412_))))
                                            (_g1939919470_
                                             (_generate118027_
                                              _L19275_
                                              _hd18931_
                                              _L19359_
                                              _L19387_))))))
                                    _g1937319384_))))
                            (_g1937119474_
                             (cons _L19191_
                                   (cons _L19303_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1947719480_
                                                           _g1947819483_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1947719480_ '()))
                  _g1947819483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19060_)))))))))
                    _g1934519356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1934319486_
                                                     (cons _L19219_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19303_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L19060_ _L18990_)
                           (foldr (lambda (_g1948919493_
                                           _g1949019496_
                                           _g1949119498_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1949019496_
                                                      (cons _g1948919493_
                                                            '())))
                                          _g1949119498_))
                                  '()
                                  _L19060_
                                  _L18990_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1931719328_))))
                                    (_g1931519501_
                                     (_generate118027_
                                      _L19303_
                                      _rest18932_
                                      _K18933_
                                      _E18934_))))))
                            _g1928919300_))))
                    (_g1928719505_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1926119272_))))
                                            (_g1925919509_
                                             (gx#genident 'hd))))))
                                    _g1923319244_))))
                            (_g1923119513_ (gx#genident 'splice-try))))))
                    _g1920519216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1920319517_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1917719188_))))
                                    (_g1917519521_
                                     (gx#genident 'splice-rest))))))
                            _g1914919160_))))
                    (_g1914719525_ _tgt18929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1908819127_))))))
                                   (_loop1908319107_ _target1908019101_ '()))
                                 (_g1907719094_ _g1907819098_)))))
                       (_g1907719094_ _g1907819098_))
                   (_g1907719094_ _g1907819098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1907619529_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1953219535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1953319538_)
                      (cons _g1953219535_ _g1953319538_))
                    '()
                    _L18990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1901719056_))))))
                       (_loop1901219036_ _target1900919030_ '()))
                     (_g1900619023_ _g1900719027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1900619023_
                                                    _g1900719027_))
                                               (_g1900619023_
                                                _g1900719027_)))))
                                    (_g1900519541_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1954419547_
                                                        _g1954519550_)
                                                 (cons _g1954419547_
                                                       _g1954519550_))
                                               '()
                                               _L18990_))))))))
                            _var1894718986_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1894218966_
                                                    _target1893918960_
                                                    '()))
                                                 (_g1893618953_
                                                  _g1893718957_)))))
                                       (_g1893618953_ _g1893718957_))
                                   (_g1893618953_ _g1893718957_)))))
                        (_g1893519553_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18931_))))))
                 (_generate-simple-vector18030_
                  (lambda (_tgt18771_
                           _body18773_
                           _start18774_
                           _K18775_
                           _E18776_)
                    ((letrec ((_recur18778_
                               (lambda (_rest18781_ _off18783_)
                                 (let ((_g1878618798_
                                        (lambda (_g1878718794_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1878718794_))))
                                   (let ((_g1878518809_
                                          (lambda (_g1878718802_)
                                            ((lambda () _K18775_)))))
                                     (let ((_g1878418925_
                                            (lambda (_g1878718813_)
                                              (if (gx#stx-pair? _g1878718813_)
                                                  (let ((_e1879018816_
                                                         (gx#syntax-e
                                                          _g1878718813_)))
                                                    (let ((_hd1879118820_
                                                           (##car _e1879018816_))
                                                          (_tl1879218823_
                                                           (##cdr _e1879018816_)))
                                                      ((lambda (_L18826_
                                                                _L18828_)
                                                         (let ((_g1884318862_
                                                                (lambda (_g1884418858_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1884418858_))))
                   (let ((_g1884218921_
                          (lambda (_g1884418866_)
                            (if (gx#stx-pair? _g1884418866_)
                                (let ((_e1884818869_
                                       (gx#syntax-e _g1884418866_)))
                                  (let ((_hd1884918873_ (##car _e1884818869_))
                                        (_tl1885018876_ (##cdr _e1884818869_)))
                                    (if (gx#stx-pair? _tl1885018876_)
                                        (let ((_e1885118879_
                                               (gx#syntax-e _tl1885018876_)))
                                          (let ((_hd1885218883_
                                                 (##car _e1885118879_))
                                                (_tl1885318886_
                                                 (##cdr _e1885118879_)))
                                            (if (gx#stx-pair? _tl1885318886_)
                                                (let ((_e1885418889_
                                                       (gx#syntax-e
                                                        _tl1885318886_)))
                                                  (let ((_hd1885518893_
                                                         (##car _e1885418889_))
                                                        (_tl1885618896_
                                                         (##cdr _e1885418889_)))
                                                    (if (gx#stx-null?
                                                         _tl1885618896_)
                                                        ((lambda (_L18899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18901_
                          _L18902_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18902_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18901_
                                                               (cons _L18899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate118027_
                                        _L18902_
                                        _L18828_
                                        (_recur18778_
                                         _L18826_
                                         (fx1+ _off18783_))
                                        _E18776_)
                                       '())))))
                 _hd1885518893_
                 _hd1885218883_
                 _hd1884918873_)
                (_g1884318862_ _g1884418866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1884318862_
                                                 _g1884418866_))))
                                        (_g1884318862_ _g1884418866_))))
                                (_g1884318862_ _g1884418866_)))))
                     (_g1884218921_
                      (list (gx#genident 'e) _tgt18771_ _off18783_)))))
               _tl1879218823_
               _hd1879118820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1878518809_
                                                   _g1878718813_)))))
                                       (_g1878418925_ _rest18781_)))))))
                       _recur18778_)
                     _body18773_
                     _start18774_)))
                 (_generate-list-vector18031_
                  (lambda (_tgt18681_
                           _body18683_
                           _tgt->list18684_
                           _start18685_
                           _K18686_
                           _E18687_)
                    (let ((_g1868918708_
                           (lambda (_g1869018704_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1869018704_))))
                      (let ((_g1868818767_
                             (lambda (_g1869018712_)
                               (if (gx#stx-pair? _g1869018712_)
                                   (let ((_e1869418715_
                                          (gx#syntax-e _g1869018712_)))
                                     (let ((_hd1869518719_
                                            (##car _e1869418715_))
                                           (_tl1869618722_
                                            (##cdr _e1869418715_)))
                                       (if (gx#stx-pair? _tl1869618722_)
                                           (let ((_e1869718725_
                                                  (gx#syntax-e
                                                   _tl1869618722_)))
                                             (let ((_hd1869818729_
                                                    (##car _e1869718725_))
                                                   (_tl1869918732_
                                                    (##cdr _e1869718725_)))
                                               (if (gx#stx-pair?
                                                    _tl1869918732_)
                                                   (let ((_e1870018735_
                                                          (gx#syntax-e
                                                           _tl1869918732_)))
                                                     (let ((_hd1870118739_
                                                            (##car _e1870018735_))
                                                           (_tl1870218742_
                                                            (##cdr _e1870018735_)))
                                                       (if (gx#stx-null?
                                                            _tl1870218742_)
                                                           ((lambda (_L18745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18747_
                             _L18748_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18748_
                                                (cons (cons _L18745_
                                                            (cons _L18747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate118027_
                                           _L18748_
                                           _body18683_
                                           _K18686_
                                           _E18687_)
                                          '())))))
                    _hd1870118739_
                    _hd1869818729_
                    _hd1869518719_)
                   (_g1868918708_ _g1869018712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1868918708_
                                                    _g1869018712_))))
                                           (_g1868918708_ _g1869018712_))))
                                   (_g1868918708_ _g1869018712_)))))
                        (_g1868818767_
                         (list (gx#genident 'e)
                               _tgt18681_
                               _tgt->list18684_))))))
                 (_generate-struct18032_
                  (lambda (_info18414_
                           _tgt18416_
                           _body18417_
                           _K18418_
                           _E18419_)
                    (let ((_rtd18421_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18414_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18414_)
                               '#f)))
                      (let ((_fields18431_
                             ((letrec ((_lp18424_
                                        (lambda (_rtd18427_ _k18429_)
                                          (if _rtd18427_
                                              (_lp18424_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18427_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18427_))
                                                    _k18429_))
                                              _k18429_))))
                                _lp18424_)
                              _rtd18421_
                              '0)))
                        (let ((_final?18434_
                               (if _rtd18421_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18421_))
                                   '#f)))
                          (let ((_g1843718445_
                                 (lambda (_g1843818441_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1843818441_))))
                            (let ((_g1843618677_
                                   (lambda (_g1843818449_)
                                     ((lambda (_L18452_)
                                        (let ()
                                          (let ((_g1846718475_
                                                 (lambda (_g1846818471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1846818471_))))
                                            (let ((_g1846618673_
                                                   (lambda (_g1846818479_)
                                                     ((lambda (_L18482_)
                                                        (let ()
                                                          (let ((_g1849518503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1849618499_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1849618499_))))
                    (let ((_g1849418669_
                           (lambda (_g1849618507_)
                             ((lambda (_L18510_)
                                (let ()
                                  (let ()
                                    (let ((_g1852618547_
                                           (lambda (_g1852718543_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1852718543_))))
                                      (let ((_g1852518590_
                                             (lambda (_g1852718551_)
                                               (if (gx#stx-pair? _g1852718551_)
                                                   (let ((_e1853618554_
                                                          (gx#syntax-e
                                                           _g1852718551_)))
                                                     (let ((_hd1853718558_
                                                            (##car _e1853618554_))
                                                           (_tl1853818561_
                                                            (##cdr _e1853618554_)))
                                                       (if (gx#stx-datum?
                                                            _hd1853718558_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1853718558_)
                               'list:)
                       (if (gx#stx-pair? _tl1853818561_)
                           (let ((_e1853918564_ (gx#syntax-e _tl1853818561_)))
                             (let ((_hd1854018568_ (##car _e1853918564_))
                                   (_tl1854118571_ (##cdr _e1853918564_)))
                               (if (gx#stx-null? _tl1854118571_)
                                   ((lambda (_L18574_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18510_
                                                        (cons _L18482_
                                                              (cons _L18452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector18031_
                                                         _tgt18416_
                                                         _L18574_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18418_
                                                         _E18419_)
                                                        (cons _E18419_ '())))))
                                    _hd1854018568_)
                                   (_g1852618547_ _g1852718551_))))
                           (_g1852618547_ _g1852718551_))
                       (_g1852618547_ _g1852718551_))
                   (_g1852618547_ _g1852718551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1852618547_
                                                    _g1852718551_)))))
                                        (let ((_g1852418665_
                                               (lambda (_g1852718594_)
                                                 (if (gx#stx-pair?
                                                      _g1852718594_)
                                                     (let ((_e1852918597_
                                                            (gx#syntax-e
                                                             _g1852718594_)))
                                                       (let ((_hd1853018601_
                                                              (##car _e1852918597_))
                                                             (_tl1853118604_
                                                              (##cdr _e1852918597_)))
                                                         (if (gx#stx-datum?
                                                              _hd1853018601_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1853018601_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1853118604_)
                             (let ((_e1853218607_
                                    (gx#syntax-e _tl1853118604_)))
                               (let ((_hd1853318611_ (##car _e1853218607_))
                                     (_tl1853418614_ (##cdr _e1853218607_)))
                                 (if (gx#stx-null? _tl1853418614_)
                                     ((lambda (_L18617_)
                                        (let ((_K18630_
                                               (_generate-simple-vector18030_
                                                _tgt18416_
                                                _L18617_
                                                '1
                                                _K18418_
                                                _E18419_)))
                                          (if (if _rtd18421_
                                                  (fx<= (gx#stx-length
                                                         _L18617_)
                                                        _fields18431_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18510_
                                                                (cons _L18482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18452_ '())))
                  (cons _K18630_ (cons _E18419_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1863318641_
                                                     (lambda (_g1863418637_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1863418637_))))
                                                (let ((_g1863218661_
                                                       (lambda (_g1863418645_)
                                                         ((lambda (_L18648_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18510_
                                                    (cons _L18482_
                                                          (cons _L18452_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18648_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18452_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18630_ (cons _E18419_ '()))))))
                  _g1863418645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1863218661_
                                                   (gx#stx-length
                                                    _L18617_)))))))
                                      _hd1853318611_)
                                     (_g1852518590_ _g1852718594_))))
                             (_g1852518590_ _g1852718594_))
                         (_g1852518590_ _g1852718594_))
                     (_g1852518590_ _g1852718594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1852518590_
                                                      _g1852718594_)))))
                                          (_g1852418665_ _body18417_)))))))
                              _g1849618507_))))
                      (_g1849418669_
                       (if _final?18434_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1846818479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1846618673_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18414_))))))
                                      _g1843818449_))))
                              (_g1843618677_ _tgt18416_))))))))
                 (_generate-class18033_
                  (lambda (_info18035_
                           _tgt18037_
                           _body18038_
                           _K18039_
                           _E18040_)
                    (let ((_rtd18042_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info18035_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18035_)
                               '#f)))
                      (let ((_known-slot?18044_ #!void))
                        (letrec ((_rtd-known-slot?18046_
                                  (lambda (_rtd18395_ _slot18397_)
                                    (if _rtd18395_
                                        (let ((_$e18399_
                                               (memq _slot18397_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18395_))))
                                          (if _$e18399_
                                              _$e18399_
                                              (ormap (lambda (_g1840218404_)
                                                       (_rtd-known-slot?18046_
                                                        _g1840218404_
                                                        _slot18397_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18395_)))))
                                        '#f)))
                                 (_recur18047_
                                  (lambda (_klass18181_ _rest18183_)
                                    (let ((_g1818618202_
                                           (lambda (_g1818718198_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1818718198_))))
                                      (let ((_g1818518213_
                                             (lambda (_g1818718206_)
                                               ((lambda () _K18039_)))))
                                        (let ((_g1818418391_
                                               (lambda (_g1818718217_)
                                                 (if (gx#stx-pair?
                                                      _g1818718217_)
                                                     (let ((_e1819118220_
                                                            (gx#syntax-e
                                                             _g1818718217_)))
                                                       (let ((_hd1819218224_
                                                              (##car _e1819118220_))
                                                             (_tl1819318227_
                                                              (##cdr _e1819118220_)))
                                                         (if (gx#stx-pair?
                                                              _tl1819318227_)
                                                             (let ((_e1819418230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1819318227_)))
                       (let ((_hd1819518234_ (##car _e1819418230_))
                             (_tl1819618237_ (##cdr _e1819418230_)))
                         ((lambda (_L18240_ _L18242_ _L18243_)
                            (let ((_g1825918267_
                                   (lambda (_g1826018263_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1826018263_))))
                              (let ((_g1825818387_
                                     (lambda (_g1826018271_)
                                       ((lambda (_L18274_)
                                          (let ()
                                            (let ((_g1828618294_
                                                   (lambda (_g1828718290_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1828718290_))))
                                              (let ((_g1828518383_
                                                     (lambda (_g1828718298_)
                                                       ((lambda (_L18301_)
                                                          (let ()
                                                            (let ((_g1831418322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1831518318_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1831518318_))))
                      (let ((_g1831318379_
                             (lambda (_g1831518326_)
                               ((lambda (_L18329_)
                                  (let ()
                                    (let ((_g1834218350_
                                           (lambda (_g1834318346_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1834318346_))))
                                      (let ((_g1834118375_
                                             (lambda (_g1834318354_)
                                               ((lambda (_L18357_)
                                                  (let ()
                                                    (let ((_K18370_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18357_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18274_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18329_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate118027_
                                      _L18357_
                                      _L18242_
                                      (_recur18047_ _klass18181_ _L18240_)
                                      _E18040_)
                                     '())))))
              (let ()
                (if (_known-slot?18044_ _L18243_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18329_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18301_
                                                              (cons _L18243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18370_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18329_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18301_
                                                              (cons _L18243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18329_
                                                  (cons _K18370_
                                                        (cons _E18040_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1834318354_))))
                                        (_g1834118375_ (gx#genident 'e))))))
                                _g1831518326_))))
                        (_g1831318379_ (gx#genident 'slot))))))
                _g1828718298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1828518383_
                                                 _klass18181_)))))
                                        _g1826018271_))))
                                (_g1825818387_ _tgt18037_))))
                          _tl1819618237_
                          _hd1819518234_
                          _hd1819218224_)))
                     (_g1818518213_ _g1818718217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1818518213_
                                                      _g1818718217_)))))
                                          (_g1818418391_ _rest18183_)))))))
                          (begin
                            (set! _known-slot?18044_
                                  (if _rtd18042_
                                      (lambda (_key18408_)
                                        (let ((_slot18411_
                                               (keyword->symbol
                                                (gx#stx-e _key18408_))))
                                          (_rtd-known-slot?18046_
                                           _rtd18042_
                                           _slot18411_)))
                                      false))
                            (let ((_final?18045_
                                   (if _rtd18042_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd18042_))
                                       '#f)))
                              (let ((_g1804918057_
                                     (lambda (_g1805018053_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1805018053_))))
                                (let ((_g1804818177_
                                       (lambda (_g1805018061_)
                                         ((lambda (_L18064_)
                                            (let ()
                                              (let ((_g1807918087_
                                                     (lambda (_g1808018083_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1808018083_))))
                                                (let ((_g1807818173_
                                                       (lambda (_g1808018091_)
                                                         ((lambda (_L18094_)
                                                            (let ()
                                                              (let ((_g1810718115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1810818111_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1810818111_))))
                        (let ((_g1810618169_
                               (lambda (_g1810818119_)
                                 ((lambda (_L18122_)
                                    (let ()
                                      (let ((_g1813518143_
                                             (lambda (_g1813618139_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1813618139_))))
                                        (let ((_g1813418165_
                                               (lambda (_g1813618147_)
                                                 ((lambda (_L18150_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L18150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L18122_ (cons _L18094_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L18064_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L18094_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur18047_
                                                     _L18064_
                                                     _body18038_)
                                                    '())))
                                  (cons _E18040_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1813618147_))))
                                          (_g1813418165_
                                           (if _final?18045_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1810818119_))))
                          (_g1810618169_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info18035_))))))
                  _g1808018091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1807818173_
                                                   _tgt18037_)))))
                                          _g1805018061_))))
                                  (_g1804818177_
                                   (gx#genident 'class))))))))))))
          (_generate118027_ _tgt18022_ _ptree18023_ _K18024_ _E18025_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx17019_ _tgt-lst17021_ _clauses17022_)
        (let ((_parse-body17024_
               (lambda (_hd-len17842_)
                 ((letrec ((_lp17845_
                            (lambda (_rest17848_ _r17850_)
                              (let ((_g1785317865_
                                     (lambda (_g1785417861_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1785417861_))))
                                (let ((_g1785217876_
                                       (lambda (_g1785417869_)
                                         ((lambda () _r17850_)))))
                                  (let ((_g1785118016_
                                         (lambda (_g1785417880_)
                                           (if (gx#stx-pair? _g1785417880_)
                                               (let ((_e1785717883_
                                                      (gx#syntax-e
                                                       _g1785417880_)))
                                                 (let ((_hd1785817887_
                                                        (##car _e1785717883_))
                                                       (_tl1785917890_
                                                        (##cdr _e1785717883_)))
                                                   ((lambda (_L17893_ _L17895_)
                                                      (let ((_g1791217928_
                                                             (lambda (_g1791317924_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1791317924_))))
                                                        (let ((_g1791117939_
                                                               (lambda (_g1791317932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx17019_
                             _L17895_))))))
                  (let ((_g1791017980_
                         (lambda (_g1791317943_)
                           (if (gx#stx-pair? _g1791317943_)
                               (let ((_e1792017946_
                                      (gx#syntax-e _g1791317943_)))
                                 (let ((_hd1792117950_ (##car _e1792017946_))
                                       (_tl1792217953_ (##cdr _e1792017946_)))
                                   ((lambda (_L17956_ _L17958_)
                                      (if (if (gx#stx-list? _L17958_)
                                              (if (fx= (gx#stx-length _L17958_)
                                                       _hd-len17842_)
                                                  (if (gx#stx-list? _L17956_)
                                                      (not (gx#stx-null?
                                                            _L17956_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17845_
                                           _L17893_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1797017972_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1797017972_
                         _stx17019_))
                      _L17958_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17956_)
                            (let ((_$e17976_ (gx#stx-source _L17895_)))
                              (if _$e17976_
                                  _$e17976_
                                  (gx#stx-source _stx17019_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17850_))
                                          (_g1791117939_ _g1791317943_)))
                                    _tl1792217953_
                                    _hd1792117950_)))
                               (_g1791117939_ _g1791317943_)))))
                    (let ((_g1790918012_
                           (lambda (_g1791317984_)
                             (if (gx#stx-pair? _g1791317984_)
                                 (let ((_e1791517987_
                                        (gx#syntax-e _g1791317984_)))
                                   (let ((_hd1791617991_ (##car _e1791517987_))
                                         (_tl1791717994_
                                          (##cdr _e1791517987_)))
                                     (if (gx#identifier? _hd1791617991_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30039_|
                                              _hd1791617991_)
                                             ((lambda (_L17997_)
                                                (if (if (gx#stx-list? _L17997_)
                                                        (not (gx#stx-null?
                                                              _L17997_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17893_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17997_)
                                         (let ((_$e18008_
                                                (gx#stx-source _L17895_)))
                                           (if _$e18008_
                                               _$e18008_
                                               (gx#stx-source _stx17019_))))
                                        '())))
                      _r17850_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx17019_
                 _L17895_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1791017980_
                                                     _g1791317984_)))
                                              _tl1791717994_)
                                             (_g1791017980_ _g1791317984_))
                                         (_g1791017980_ _g1791317984_))))
                                 (_g1791017980_ _g1791317984_)))))
                      (_g1790918012_ _L17895_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1785917890_
                                                    _hd1785817887_)))
                                               (_g1785217876_
                                                _g1785417880_)))))
                                    (_g1785118016_ _rest17848_)))))))
                    _lp17845_)
                  _clauses17022_
                  '()))))
          (let ((_generate117028_
                 (lambda (_clause17030_ _body17032_ _E17033_)
                   ((letrec ((_recur17035_
                              (lambda (_rest17038_ _rest-targets17040_)
                                (let ((_g1704317055_
                                       (lambda (_g1704417051_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1704417051_))))
                                  (let ((_g1704217066_
                                         (lambda (_g1704417059_)
                                           ((lambda () _body17032_)))))
                                    (let ((_g1704117337_
                                           (lambda (_g1704417070_)
                                             (if (gx#stx-pair? _g1704417070_)
                                                 (let ((_e1704717073_
                                                        (gx#syntax-e
                                                         _g1704417070_)))
                                                   (let ((_hd1704817077_
                                                          (##car _e1704717073_))
                                                         (_tl1704917080_
                                                          (##cdr _e1704717073_)))
                                                     ((lambda (_L17083_
                                                               _L17085_)
                                                        (let ((_g1710217114_
                                                               (lambda (_g1710317110_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1710317110_))))
                  (let ((_g1710117333_
                         (lambda (_g1710317118_)
                           (if (gx#stx-pair? _g1710317118_)
                               (let ((_e1710617121_
                                      (gx#syntax-e _g1710317118_)))
                                 (let ((_hd1710717125_ (##car _e1710617121_))
                                       (_tl1710817128_ (##cdr _e1710617121_)))
                                   ((lambda (_L17131_ _L17133_)
                                      (let ((_g1714517153_
                                             (lambda (_g1714617149_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1714617149_))))
                                        (let ((_g1714417329_
                                               (lambda (_g1714617157_)
                                                 ((lambda (_L17160_)
                                                    (let ()
                                                      (let ((_g1717217189_
                                                             (lambda (_g1717317185_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1717317185_))))
                                                        (let ((_g1717117325_
                                                               (lambda (_g1717317193_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1717317193_)
                             (if (fx>= (gx#stx-length _g1717317193_) '0)
                                 (let ((_g30037_
                                        (gx#syntax-split-splice
                                         _g1717317193_
                                         '0)))
                                   (begin
                                     (let ((_g30038_ (values-count _g30037_)))
                                       (if (not (fx= _g30038_ 2))
                                           (error "Context expects 2 values"
                                                  _g30038_)))
                                     (let ((_target1717517196_
                                            (values-ref _g30037_ 0))
                                           (_tl1717717199_
                                            (values-ref _g30037_ 1)))
                                       (if (gx#stx-null? _tl1717717199_)
                                           (letrec ((_loop1717817202_
                                                     (lambda (_hd1717617206_
                                                              _var1718217209_)
                                                       (if (gx#stx-pair?
                                                            _hd1717617206_)
                                                           (let ((_e1717917212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1717617206_)))
                     (let ((_lp-hd1718017216_ (##car _e1717917212_))
                           (_lp-tl1718117219_ (##cdr _e1717917212_)))
                       (_loop1717817202_
                        _lp-tl1718117219_
                        (cons _lp-hd1718017216_ _var1718217209_))))
                   (let ((_var1718317222_ (reverse _var1718217209_)))
                     ((lambda (_L17226_)
                        (let ()
                          (let ((_g1724317251_
                                 (lambda (_g1724417247_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1724417247_))))
                            (let ((_g1724217321_
                                   (lambda (_g1724417255_)
                                     ((lambda (_L17258_)
                                        (let ()
                                          (let ((_g1727117279_
                                                 (lambda (_g1727217275_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1727217275_))))
                                            (let ((_g1727017309_
                                                   (lambda (_g1727217283_)
                                                     ((lambda (_L17286_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L17160_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1730017303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1730117306_)
                                 (cons _g1730017303_ _g1730117306_))
                               '()
                               _L17226_))
                      (cons _L17258_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17286_ '()))))))
              _g1727217283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1727017309_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx17019_
                                                _L17133_
                                                _L17085_
                                                (cons _L17160_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1731217315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1731317318_)
                         (cons _g1731217315_ _g1731317318_))
                       '()
                       _L17226_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E17033_))))))
                                      _g1724417255_))))
                              (_g1724217321_
                               (_recur17035_ _L17083_ _L17131_))))))
                      _var1718317222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1717817202_
                                              _target1717517196_
                                              '()))
                                           (_g1717217189_ _g1717317193_)))))
                                 (_g1717217189_ _g1717317193_))
                             (_g1717217189_ _g1717317193_)))))
                  (_g1717117325_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L17085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1714617157_))))
                                          (_g1714417329_ (gx#genident 'K)))))
                                    _tl1710817128_
                                    _hd1710717125_)))
                               (_g1710217114_ _g1710317118_)))))
                    (_g1710117333_ _rest-targets17040_))))
              _tl1704917080_
              _hd1704817077_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1704217066_
                                                  _g1704417070_)))))
                                      (_g1704117337_ _rest17038_)))))))
                      _recur17035_)
                    _clause17030_
                    _tgt-lst17021_))))
            (letrec ((_generate-clauses17027_
                      (lambda (_rest17341_ _E17343_)
                        (let ((_g1734717363_
                               (lambda (_g1734817359_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1734817359_))))
                          (let ((_g1734617374_
                                 (lambda (_g1734817367_)
                                   ((lambda () _E17343_)))))
                            (let ((_g1734517550_
                                   (lambda (_g1734817378_)
                                     (if (gx#stx-pair? _g1734817378_)
                                         (let ((_e1735517381_
                                                (gx#syntax-e _g1734817378_)))
                                           (let ((_hd1735617385_
                                                  (##car _e1735517381_))
                                                 (_tl1735717388_
                                                  (##cdr _e1735517381_)))
                                             ((lambda (_L17391_ _L17393_)
                                                (let ((_g1740617425_
                                                       (lambda (_g1740717421_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1740717421_))))
                                                  (let ((_g1740517546_
                                                         (lambda (_g1740717429_)
                                                           (if (gx#stx-pair?
                                                                _g1740717429_)
                                                               (let ((_e1741117432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1740717429_)))
                         (let ((_hd1741217436_ (##car _e1741117432_))
                               (_tl1741317439_ (##cdr _e1741117432_)))
                           (if (gx#stx-pair? _tl1741317439_)
                               (let ((_e1741417442_
                                      (gx#syntax-e _tl1741317439_)))
                                 (let ((_hd1741517446_ (##car _e1741417442_))
                                       (_tl1741617449_ (##cdr _e1741417442_)))
                                   (if (gx#stx-pair? _tl1741617449_)
                                       (let ((_e1741717452_
                                              (gx#syntax-e _tl1741617449_)))
                                         (let ((_hd1741817456_
                                                (##car _e1741717452_))
                                               (_tl1741917459_
                                                (##cdr _e1741717452_)))
                                           (if (gx#stx-null? _tl1741917459_)
                                               ((lambda (_L17462_
                                                         _L17464_
                                                         _L17465_)
                                                  (let ((_g1748217497_
                                                         (lambda (_g1748317493_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1748317493_))))
                                                    (let ((_g1748117542_
                                                           (lambda (_g1748317501_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1748317501_)
                         (let ((_e1748617504_ (gx#syntax-e _g1748317501_)))
                           (let ((_hd1748717508_ (##car _e1748617504_))
                                 (_tl1748817511_ (##cdr _e1748617504_)))
                             (if (gx#stx-pair? _tl1748817511_)
                                 (let ((_e1748917514_
                                        (gx#syntax-e _tl1748817511_)))
                                   (let ((_hd1749017518_ (##car _e1748917514_))
                                         (_tl1749117521_
                                          (##cdr _e1748917514_)))
                                     (if (gx#stx-null? _tl1749117521_)
                                         ((lambda (_L17524_ _L17526_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17526_ '())))
                                    '()))
                        '())
                  (cons _L17524_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1749017518_
                                          _hd1748717508_)
                                         (_g1748217497_ _g1748317501_))))
                                 (_g1748217497_ _g1748317501_))))
                         (_g1748217497_ _g1748317501_)))))
              (_g1748117542_
               (list (if (gx#stx-e _L17464_)
                         (_generate117028_ _L17464_ _L17462_ _E17343_)
                         _L17462_)
                     (_generate-clauses17027_
                      _L17391_
                      (cons _L17465_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1741817456_
                                                _hd1741517446_
                                                _hd1741217436_)
                                               (_g1740617425_ _g1740717429_))))
                                       (_g1740617425_ _g1740717429_))))
                               (_g1740617425_ _g1740717429_))))
                       (_g1740617425_ _g1740717429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1740517546_ _L17393_))))
                                              _tl1735717388_
                                              _hd1735617385_)))
                                         (_g1734617374_ _g1734817378_)))))
                              (let ((_g1734417655_
                                     (lambda (_g1734817554_)
                                       (if (gx#stx-pair? _g1734817554_)
                                           (let ((_e1735017557_
                                                  (gx#syntax-e _g1734817554_)))
                                             (let ((_hd1735117561_
                                                    (##car _e1735017557_))
                                                   (_tl1735217564_
                                                    (##cdr _e1735017557_)))
                                               (if (gx#stx-null?
                                                    _tl1735217564_)
                                                   ((lambda (_L17567_)
                                                      (let ((_g1757817596_
                                                             (lambda (_g1757917592_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1757917592_))))
                                                        (let ((_g1757717651_
                                                               (lambda (_g1757917600_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1757917600_)
                             (let ((_e1758217603_ (gx#syntax-e _g1757917600_)))
                               (let ((_hd1758317607_ (##car _e1758217603_))
                                     (_tl1758417610_ (##cdr _e1758217603_)))
                                 (if (gx#stx-pair? _tl1758417610_)
                                     (let ((_e1758517613_
                                            (gx#syntax-e _tl1758417610_)))
                                       (let ((_hd1758617617_
                                              (##car _e1758517613_))
                                             (_tl1758717620_
                                              (##cdr _e1758517613_)))
                                         (if (gx#stx-pair? _tl1758717620_)
                                             (let ((_e1758817623_
                                                    (gx#syntax-e
                                                     _tl1758717620_)))
                                               (let ((_hd1758917627_
                                                      (##car _e1758817623_))
                                                     (_tl1759017630_
                                                      (##cdr _e1758817623_)))
                                                 (if (gx#stx-null?
                                                      _tl1759017630_)
                                                     ((lambda (_L17633_
                                                               _L17635_)
                                                        (if (gx#stx-e _L17635_)
                                                            (_generate117028_
                                                             _L17635_
                                                             _L17633_
                                                             _E17343_)
                                                            _L17633_))
                                                      _hd1758917627_
                                                      _hd1758617617_)
                                                     (_g1757817596_
                                                      _g1757917600_))))
                                             (_g1757817596_ _g1757917600_))))
                                     (_g1757817596_ _g1757917600_))))
                             (_g1757817596_ _g1757917600_)))))
                  (_g1757717651_ _L17567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1735117561_)
                                                   (_g1734517550_
                                                    _g1734817554_))))
                                           (_g1734517550_ _g1734817554_)))))
                                (_g1734417655_ _rest17341_))))))))
              (let ((_generate-body17026_
                     (lambda (_body17659_)
                       (let ((_g1766217670_
                              (lambda (_g1766317666_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1766317666_))))
                         (let ((_g1766117838_
                                (lambda (_g1766317674_)
                                  ((lambda (_L17677_)
                                     (let ()
                                       (let ((_g1768917706_
                                              (lambda (_g1769017702_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1769017702_))))
                                         (let ((_g1768817834_
                                                (lambda (_g1769017710_)
                                                  (if (gx#stx-pair/null?
                                                       _g1769017710_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1769017710_)
                        '0)
                  (let ((_g30035_ (gx#syntax-split-splice _g1769017710_ '0)))
                    (begin
                      (let ((_g30036_ (values-count _g30035_)))
                        (if (not (fx= _g30036_ 2))
                            (error "Context expects 2 values" _g30036_)))
                      (let ((_target1769217713_ (values-ref _g30035_ 0))
                            (_tl1769417716_ (values-ref _g30035_ 1)))
                        (if (gx#stx-null? _tl1769417716_)
                            (letrec ((_loop1769517719_
                                      (lambda (_hd1769317723_
                                               _target1769917726_)
                                        (if (gx#stx-pair? _hd1769317723_)
                                            (let ((_e1769617729_
                                                   (gx#syntax-e
                                                    _hd1769317723_)))
                                              (let ((_lp-hd1769717733_
                                                     (##car _e1769617729_))
                                                    (_lp-tl1769817736_
                                                     (##cdr _e1769617729_)))
                                                (_loop1769517719_
                                                 _lp-tl1769817736_
                                                 (cons _lp-hd1769717733_
                                                       _target1769917726_))))
                                            (let ((_target1770017739_
                                                   (reverse _target1769917726_)))
                                              ((lambda (_L17743_)
                                                 (let ()
                                                   (let ((_g1776017768_
                                                          (lambda (_g1776117764_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1776117764_))))
                                                     (let ((_g1775917822_
                                                            (lambda (_g1776117772_)
                                                              ((lambda (_L17775_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1778817796_
                                  (lambda (_g1778917792_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1778917792_))))
                             (let ((_g1778717818_
                                    (lambda (_g1778917800_)
                                      ((lambda (_L17803_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17775_ '()))
                       '())
                 (cons _L17803_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1778917800_))))
                               (_g1778717818_
                                (_generate-clauses17027_
                                 _body17659_
                                 (cons _L17677_ '())))))))
                       _g1776117772_))))
               (_g1775917822_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1782517828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1782617831_)
                  (cons _g1782517828_ _g1782617831_))
                '()
                _L17743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx17019_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1770017739_))))))
                              (_loop1769517719_ _target1769217713_ '()))
                            (_g1768917706_ _g1769017710_)))))
                  (_g1768917706_ _g1769017710_))
              (_g1768917706_ _g1769017710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1768817834_ _tgt-lst17021_)))))
                                   _g1766317674_))))
                           (_g1766117838_ (gx#genident 'E)))))))
                (_generate-body17026_
                 (_parse-body17024_ (gx#stx-length _tgt-lst17021_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16921_ _tgt16923_ _clauses16924_)
        (let ((_reclause16926_
               (lambda (_clause16929_)
                 (let ((_g1693416949_
                        (lambda (_g1693516945_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1693516945_))))
                   (let ((_g1693316960_
                          (lambda (_g1693516953_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16921_
                                _clause16929_))))))
                     (let ((_g1693216994_
                            (lambda (_g1693516964_)
                              (if (gx#stx-pair? _g1693516964_)
                                  (let ((_e1694116967_
                                         (gx#syntax-e _g1693516964_)))
                                    (let ((_hd1694216971_
                                           (##car _e1694116967_))
                                          (_tl1694316974_
                                           (##cdr _e1694116967_)))
                                      ((lambda (_L16977_ _L16979_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16979_ '()) _L16977_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1694316974_
                                       _hd1694216971_)))
                                  (_g1693316960_ _g1693516964_)))))
                       (let ((_g1693117015_
                              (lambda (_g1693516998_)
                                (if (gx#stx-pair? _g1693516998_)
                                    (let ((_e1693617001_
                                           (gx#syntax-e _g1693516998_)))
                                      (let ((_hd1693717005_
                                             (##car _e1693617001_))
                                            (_tl1693817008_
                                             (##cdr _e1693617001_)))
                                        (if (gx#identifier? _hd1693717005_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30040_|
                                                 _hd1693717005_)
                                                ((lambda () _clause16929_))
                                                (_g1693216994_ _g1693516998_))
                                            (_g1693216994_ _g1693516998_))))
                                    (_g1693216994_ _g1693516998_)))))
                         (_g1693117015_ _clause16929_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16921_
           (cons _tgt16923_ '())
           (gx#stx-map _reclause16926_ _clauses16924_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx24128_)
        (let ((_g2413324162_
               (lambda (_g2413424158_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2413424158_))))
          (let ((_g2413224270_
                 (lambda (_g2413424166_)
                   (if (gx#stx-pair? _g2413424166_)
                       (let ((_e2415124169_ (gx#syntax-e _g2413424166_)))
                         (let ((_hd2415224173_ (##car _e2415124169_))
                               (_tl2415324176_ (##cdr _e2415124169_)))
                           (if (gx#stx-pair? _tl2415324176_)
                               (let ((_e2415424179_
                                      (gx#syntax-e _tl2415324176_)))
                                 (let ((_hd2415524183_ (##car _e2415424179_))
                                       (_tl2415624186_ (##cdr _e2415424179_)))
                                   ((lambda (_L24189_ _L24191_)
                                      (if (gx#stx-list? _L24189_)
                                          (let ((_g2420524213_
                                                 (lambda (_g2420624209_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2420624209_))))
                                            (let ((_g2420424266_
                                                   (lambda (_g2420624217_)
                                                     ((lambda (_L24220_)
                                                        (let ()
                                                          (let ((_g2423224240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2423324236_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2423324236_))))
                    (let ((_g2423124262_
                           (lambda (_g2423324244_)
                             ((lambda (_L24247_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24220_
                                                            (cons _L24191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L24247_ '()))))))
                              _g2423324244_))))
                      (_g2423124262_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx24128_
                        _L24220_
                        _L24189_))))))
              _g2420624217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2420424266_
                                               (gx#genident _L24191_))))
                                          (_g2413324162_ _g2413424166_)))
                                    _tl2415624186_
                                    _hd2415524183_)))
                               (_g2413324162_ _g2413424166_))))
                       (_g2413324162_ _g2413424166_)))))
            (let ((_g2413124375_
                   (lambda (_g2413424274_)
                     (if (gx#stx-pair? _g2413424274_)
                         (let ((_e2414324277_ (gx#syntax-e _g2413424274_)))
                           (let ((_hd2414424281_ (##car _e2414324277_))
                                 (_tl2414524284_ (##cdr _e2414324277_)))
                             (if (gx#stx-pair? _tl2414524284_)
                                 (let ((_e2414624287_
                                        (gx#syntax-e _tl2414524284_)))
                                   (let ((_hd2414724291_ (##car _e2414624287_))
                                         (_tl2414824294_
                                          (##cdr _e2414624287_)))
                                     (if (gx#identifier? _hd2414724291_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30041_|
                                              _hd2414724291_)
                                             ((lambda (_L24297_)
                                                (if (gx#stx-list? _L24297_)
                                                    (let ((_g2431024318_
                                                           (lambda (_g2431124314_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2431124314_))))
                                                      (let ((_g2430924371_
                                                             (lambda (_g2431124322_)
                                                               ((lambda (_L24325_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2433724345_
                                   (lambda (_g2433824341_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2433824341_))))
                              (let ((_g2433624367_
                                     (lambda (_g2433824349_)
                                       ((lambda (_L24352_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L24325_
                                                          (cons _L24352_
                                                                '()))))))
                                        _g2433824349_))))
                                (_g2433624367_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L24325_ _L24297_))
                                  (gx#stx-source _stx24128_)))))))
                        _g2431124322_))))
                (_g2430924371_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2413224270_
                                                     _g2413424274_)))
                                              _tl2414824294_)
                                             (_g2413224270_ _g2413424274_))
                                         (_g2413224270_ _g2413424274_))))
                                 (_g2413224270_ _g2413424274_))))
                         (_g2413224270_ _g2413424274_)))))
              (let ((_g2413024480_
                     (lambda (_g2413424379_)
                       (if (gx#stx-pair? _g2413424379_)
                           (let ((_e2413624382_ (gx#syntax-e _g2413424379_)))
                             (let ((_hd2413724386_ (##car _e2413624382_))
                                   (_tl2413824389_ (##cdr _e2413624382_)))
                               (if (gx#stx-pair? _tl2413824389_)
                                   (let ((_e2413924392_
                                          (gx#syntax-e _tl2413824389_)))
                                     (let ((_hd2414024396_
                                            (##car _e2413924392_))
                                           (_tl2414124399_
                                            (##cdr _e2413924392_)))
                                       (if (gx#identifier? _hd2414024396_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g30042_|
                                                _hd2414024396_)
                                               ((lambda (_L24402_)
                                                  (if (gx#stx-list? _L24402_)
                                                      (let ((_g2441524423_
                                                             (lambda (_g2441624419_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2441624419_))))
                                                        (let ((_g2441424476_
                                                               (lambda (_g2441624427_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L24430_)
                            (let ()
                              (let ((_g2444224450_
                                     (lambda (_g2444324446_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2444324446_))))
                                (let ((_g2444124472_
                                       (lambda (_g2444324454_)
                                         ((lambda (_L24457_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L24430_ '())
                                                            (cons _L24457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2444324454_))))
                                  (_g2444124472_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L24430_ _L24402_))
                                    (gx#stx-source _stx24128_)))))))
                          _g2441624427_))))
                  (_g2441424476_ (gx#genident 'e))))
              (_g2413124375_ _g2413424379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2414124399_)
                                               (_g2413124375_ _g2413424379_))
                                           (_g2413124375_ _g2413424379_))))
                                   (_g2413124375_ _g2413424379_))))
                           (_g2413124375_ _g2413424379_)))))
                (_g2413024480_ _stx24128_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24484_)
        (let ((_g2448724511_
               (lambda (_g2448824507_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2448824507_))))
          (let ((_g2448624723_
                 (lambda (_g2448824515_)
                   (if (gx#stx-pair? _g2448824515_)
                       (let ((_e2449124518_ (gx#syntax-e _g2448824515_)))
                         (let ((_hd2449224522_ (##car _e2449124518_))
                               (_tl2449324525_ (##cdr _e2449124518_)))
                           (if (gx#stx-pair? _tl2449324525_)
                               (let ((_e2449424528_
                                      (gx#syntax-e _tl2449324525_)))
                                 (let ((_hd2449524532_ (##car _e2449424528_))
                                       (_tl2449624535_ (##cdr _e2449424528_)))
                                   (if (gx#stx-pair/null? _hd2449524532_)
                                       (if (fx>= (gx#stx-length _hd2449524532_)
                                                 '0)
                                           (let ((_g30043_
                                                  (gx#syntax-split-splice
                                                   _hd2449524532_
                                                   '0)))
                                             (begin
                                               (let ((_g30044_
                                                      (values-count _g30043_)))
                                                 (if (not (fx= _g30044_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30044_)))
                                               (let ((_target2449724538_
                                                      (values-ref _g30043_ 0))
                                                     (_tl2449924541_
                                                      (values-ref _g30043_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2449924541_)
                                                     (letrec ((_loop2450024544_
                                                               (lambda (_hd2449824548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2450424551_)
                         (if (gx#stx-pair? _hd2449824548_)
                             (let ((_e2450124554_
                                    (gx#syntax-e _hd2449824548_)))
                               (let ((_lp-hd2450224558_ (##car _e2450124554_))
                                     (_lp-tl2450324561_ (##cdr _e2450124554_)))
                                 (_loop2450024544_
                                  _lp-tl2450324561_
                                  (cons _lp-hd2450224558_ _e2450424551_))))
                             (let ((_e2450524564_ (reverse _e2450424551_)))
                               ((lambda (_L24568_ _L24570_)
                                  (if (gx#stx-list? _L24568_)
                                      (let ((_g2458824605_
                                             (lambda (_g2458924601_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2458924601_))))
                                        (let ((_g2458724711_
                                               (lambda (_g2458924609_)
                                                 (if (gx#stx-pair/null?
                                                      _g2458924609_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2458924609_)
                                                               '0)
                                                         (let ((_g30045_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2458924609_
                         '0)))
                   (begin
                     (let ((_g30046_ (values-count _g30045_)))
                       (if (not (fx= _g30046_ 2))
                           (error "Context expects 2 values" _g30046_)))
                     (let ((_target2459124612_ (values-ref _g30045_ 0))
                           (_tl2459324615_ (values-ref _g30045_ 1)))
                       (if (gx#stx-null? _tl2459324615_)
                           (letrec ((_loop2459424618_
                                     (lambda (_hd2459224622_ _$e2459824625_)
                                       (if (gx#stx-pair? _hd2459224622_)
                                           (let ((_e2459524628_
                                                  (gx#syntax-e
                                                   _hd2459224622_)))
                                             (let ((_lp-hd2459624632_
                                                    (##car _e2459524628_))
                                                   (_lp-tl2459724635_
                                                    (##cdr _e2459524628_)))
                                               (_loop2459424618_
                                                _lp-tl2459724635_
                                                (cons _lp-hd2459624632_
                                                      _$e2459824625_))))
                                           (let ((_$e2459924638_
                                                  (reverse _$e2459824625_)))
                                             ((lambda (_L24642_)
                                                (let ()
                                                  (let ((_g2465824666_
                                                         (lambda (_g2465924662_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2465924662_))))
                                                    (let ((_g2465724699_
                                                           (lambda (_g2465924670_)
                                                             ((lambda (_L24673_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24570_
                                           _L24642_)
                                          (foldr (lambda (_g2468724691_
                                                          _g2468824694_
                                                          _g2468924696_)
                                                   (cons (cons _g2468824694_
                                                               (cons _g2468724691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2468924696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24570_
                                                 _L24642_))
                                        (cons _L24673_ '()))))))
                      _g2465924670_))))
              (_g2465724699_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24484_
                (begin
                  '#!void
                  (foldr (lambda (_g2470224705_ _g2470324708_)
                           (cons _g2470224705_ _g2470324708_))
                         '()
                         _L24642_))
                _L24568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2459924638_))))))
                             (_loop2459424618_ _target2459124612_ '()))
                           (_g2458824605_ _g2458924609_)))))
                 (_g2458824605_ _g2458924609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2458824605_
                                                      _g2458924609_)))))
                                          (_g2458724711_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2471424717_
                                                              _g2471524720_)
                                                       (cons _g2471424717_
                                                             _g2471524720_))
                                                     '()
                                                     _L24570_))))))
                                      (_g2448724511_ _g2448824515_)))
                                _tl2449624535_
                                _e2450524564_))))))
               (_loop2450024544_ _target2449724538_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2448724511_
                                                      _g2448824515_)))))
                                           (_g2448724511_ _g2448824515_))
                                       (_g2448724511_ _g2448824515_))))
                               (_g2448724511_ _g2448824515_))))
                       (_g2448724511_ _g2448824515_)))))
            (_g2448624723_ _stx24484_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24729_)
        (let ((_g2473524818_
               (lambda (_g2473624814_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2473624814_))))
          (let ((_g2473424979_
                 (lambda (_g2473624822_)
                   (if (gx#stx-pair? _g2473624822_)
                       (let ((_e2478124825_ (gx#syntax-e _g2473624822_)))
                         (let ((_hd2478224829_ (##car _e2478124825_))
                               (_tl2478324832_ (##cdr _e2478124825_)))
                           (if (gx#stx-pair? _tl2478324832_)
                               (let ((_e2478424835_
                                      (gx#syntax-e _tl2478324832_)))
                                 (let ((_hd2478524839_ (##car _e2478424835_))
                                       (_tl2478624842_ (##cdr _e2478424835_)))
                                   (if (gx#stx-pair/null? _hd2478524839_)
                                       (if (fx>= (gx#stx-length _hd2478524839_)
                                                 '0)
                                           (let ((_g30047_
                                                  (gx#syntax-split-splice
                                                   _hd2478524839_
                                                   '0)))
                                             (begin
                                               (let ((_g30048_
                                                      (values-count _g30047_)))
                                                 (if (not (fx= _g30048_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30048_)))
                                               (let ((_target2478724845_
                                                      (values-ref _g30047_ 0))
                                                     (_tl2478924848_
                                                      (values-ref _g30047_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2478924848_)
                                                     (letrec ((_loop2479024851_
                                                               (lambda (_hd2478824855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2479424858_
                                _hd2479524860_)
                         (if (gx#stx-pair? _hd2478824855_)
                             (let ((_e2479124863_
                                    (gx#syntax-e _hd2478824855_)))
                               (let ((_lp-hd2479224867_ (##car _e2479124863_))
                                     (_lp-tl2479324870_ (##cdr _e2479124863_)))
                                 (if (gx#stx-pair? _lp-hd2479224867_)
                                     (let ((_e2479824873_
                                            (gx#syntax-e _lp-hd2479224867_)))
                                       (let ((_hd2479924877_
                                              (##car _e2479824873_))
                                             (_tl2480024880_
                                              (##cdr _e2479824873_)))
                                         (if (gx#stx-pair? _tl2480024880_)
                                             (let ((_e2480124883_
                                                    (gx#syntax-e
                                                     _tl2480024880_)))
                                               (let ((_hd2480224887_
                                                      (##car _e2480124883_))
                                                     (_tl2480324890_
                                                      (##cdr _e2480124883_)))
                                                 (if (gx#stx-null?
                                                      _tl2480324890_)
                                                     (_loop2479024851_
                                                      _lp-tl2479324870_
                                                      (cons _hd2480224887_
                                                            _expr2479424858_)
                                                      (cons _hd2479924877_
                                                            _hd2479524860_))
                                                     (_g2473524818_
                                                      _g2473624822_))))
                                             (_g2473524818_ _g2473624822_))))
                                     (_g2473524818_ _g2473624822_))))
                             (let ((_expr2479624893_
                                    (reverse _expr2479424858_))
                                   (_hd2479724896_ (reverse _hd2479524860_)))
                               (if (gx#stx-pair/null? _tl2478624842_)
                                   (if (fx>= (gx#stx-length _tl2478624842_) '0)
                                       (let ((_g30049_
                                              (gx#syntax-split-splice
                                               _tl2478624842_
                                               '0)))
                                         (begin
                                           (let ((_g30050_
                                                  (values-count _g30049_)))
                                             (if (not (fx= _g30050_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30050_)))
                                           (let ((_target2480424899_
                                                  (values-ref _g30049_ 0))
                                                 (_tl2480624902_
                                                  (values-ref _g30049_ 1)))
                                             (if (gx#stx-null? _tl2480624902_)
                                                 (letrec ((_loop2480724905_
                                                           (lambda (_hd2480524909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2481124912_)
                     (if (gx#stx-pair? _hd2480524909_)
                         (let ((_e2480824915_ (gx#syntax-e _hd2480524909_)))
                           (let ((_lp-hd2480924919_ (##car _e2480824915_))
                                 (_lp-tl2481024922_ (##cdr _e2480824915_)))
                             (_loop2480724905_
                              _lp-tl2481024922_
                              (cons _lp-hd2480924919_ _body2481124912_))))
                         (let ((_body2481224925_ (reverse _body2481124912_)))
                           ((lambda (_L24929_ _L24931_ _L24932_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2495424961_
                                                            _g2495524964_)
                                                     (cons _g2495424961_
                                                           _g2495524964_))
                                                   '()
                                                   _L24931_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2495624967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2495724970_)
                         (cons _g2495624967_ _g2495724970_))
                       '()
                       _L24932_))
              (begin
                '#!void
                (foldr (lambda (_g2495824973_ _g2495924976_)
                         (cons _g2495824973_ _g2495924976_))
                       '()
                       _L24929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2481224925_
                            _expr2479624893_
                            _hd2479724896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2480724905_
                                                    _target2480424899_
                                                    '()))
                                                 (_g2473524818_
                                                  _g2473624822_)))))
                                       (_g2473524818_ _g2473624822_))
                                   (_g2473524818_ _g2473624822_)))))))
               (_loop2479024851_ _target2478724845_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2473524818_
                                                      _g2473624822_)))))
                                           (_g2473524818_ _g2473624822_))
                                       (_g2473524818_ _g2473624822_))))
                               (_g2473524818_ _g2473624822_))))
                       (_g2473524818_ _g2473624822_)))))
            (let ((_g2473325091_
                   (lambda (_g2473624983_)
                     (if (gx#stx-pair? _g2473624983_)
                         (let ((_e2475724986_ (gx#syntax-e _g2473624983_)))
                           (let ((_hd2475824990_ (##car _e2475724986_))
                                 (_tl2475924993_ (##cdr _e2475724986_)))
                             (if (gx#stx-pair? _tl2475924993_)
                                 (let ((_e2476024996_
                                        (gx#syntax-e _tl2475924993_)))
                                   (let ((_hd2476125000_ (##car _e2476024996_))
                                         (_tl2476225003_
                                          (##cdr _e2476024996_)))
                                     (if (gx#stx-pair? _hd2476125000_)
                                         (let ((_e2476325006_
                                                (gx#syntax-e _hd2476125000_)))
                                           (let ((_hd2476425010_
                                                  (##car _e2476325006_))
                                                 (_tl2476525013_
                                                  (##cdr _e2476325006_)))
                                             (if (gx#stx-pair? _tl2476525013_)
                                                 (let ((_e2476625016_
                                                        (gx#syntax-e
                                                         _tl2476525013_)))
                                                   (let ((_hd2476725020_
                                                          (##car _e2476625016_))
                                                         (_tl2476825023_
                                                          (##cdr _e2476625016_)))
                                                     (if (gx#stx-null?
                                                          _tl2476825023_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2476225003_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2476225003_)
                               '0)
                         (let ((_g30051_
                                (gx#syntax-split-splice _tl2476225003_ '0)))
                           (begin
                             (let ((_g30052_ (values-count _g30051_)))
                               (if (not (fx= _g30052_ 2))
                                   (error "Context expects 2 values"
                                          _g30052_)))
                             (let ((_target2476925026_ (values-ref _g30051_ 0))
                                   (_tl2477125029_ (values-ref _g30051_ 1)))
                               (if (gx#stx-null? _tl2477125029_)
                                   (letrec ((_loop2477225032_
                                             (lambda (_hd2477025036_
                                                      _body2477625039_)
                                               (if (gx#stx-pair?
                                                    _hd2477025036_)
                                                   (let ((_e2477325042_
                                                          (gx#syntax-e
                                                           _hd2477025036_)))
                                                     (let ((_lp-hd2477425046_
                                                            (##car _e2477325042_))
                                                           (_lp-tl2477525049_
                                                            (##cdr _e2477325042_)))
                                                       (_loop2477225032_
                                                        _lp-tl2477525049_
                                                        (cons _lp-hd2477425046_
                                                              _body2477625039_))))
                                                   (let ((_body2477725052_
                                                          (reverse _body2477625039_)))
                                                     ((lambda (_L25056_
                                                               _L25058_
                                                               _L25059_
                                                               _L25060_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L25059_)
                                                            (cons _L25060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L25059_ (cons _L25058_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2508225085_ _g2508325088_)
                                           (cons _g2508225085_ _g2508325088_))
                                         '()
                                         _L25056_))))
                    (_g2473424979_ _g2473624983_)))
              _body2477725052_
              _hd2476725020_
              _hd2476425010_
              _hd2475824990_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2477225032_ _target2476925026_ '()))
                                   (_g2473424979_ _g2473624983_)))))
                         (_g2473424979_ _g2473624983_))
                     (_g2473424979_ _g2473624983_))
                 (_g2473424979_ _g2473624983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2473424979_
                                                  _g2473624983_))))
                                         (_g2473424979_ _g2473624983_))))
                                 (_g2473424979_ _g2473624983_))))
                         (_g2473424979_ _g2473624983_)))))
              (let ((_g2473225173_
                     (lambda (_g2473625095_)
                       (if (gx#stx-pair? _g2473625095_)
                           (let ((_e2473825098_ (gx#syntax-e _g2473625095_)))
                             (let ((_hd2473925102_ (##car _e2473825098_))
                                   (_tl2474025105_ (##cdr _e2473825098_)))
                               (if (gx#stx-pair? _tl2474025105_)
                                   (let ((_e2474125108_
                                          (gx#syntax-e _tl2474025105_)))
                                     (let ((_hd2474225112_
                                            (##car _e2474125108_))
                                           (_tl2474325115_
                                            (##cdr _e2474125108_)))
                                       (if (gx#stx-null? _hd2474225112_)
                                           (if (gx#stx-pair/null?
                                                _tl2474325115_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2474325115_)
                                                         '0)
                                                   (let ((_g30053_
                                                          (gx#syntax-split-splice
                                                           _tl2474325115_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30054_
                                                              (values-count
                                                               _g30053_)))
                                                         (if (not (fx= _g30054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30054_)))
               (let ((_target2474425118_ (values-ref _g30053_ 0))
                     (_tl2474625121_ (values-ref _g30053_ 1)))
                 (if (gx#stx-null? _tl2474625121_)
                     (letrec ((_loop2474725124_
                               (lambda (_hd2474525128_ _body2475125131_)
                                 (if (gx#stx-pair? _hd2474525128_)
                                     (let ((_e2474825134_
                                            (gx#syntax-e _hd2474525128_)))
                                       (let ((_lp-hd2474925138_
                                              (##car _e2474825134_))
                                             (_lp-tl2475025141_
                                              (##cdr _e2474825134_)))
                                         (_loop2474725124_
                                          _lp-tl2475025141_
                                          (cons _lp-hd2474925138_
                                                _body2475125131_))))
                                     (let ((_body2475225144_
                                            (reverse _body2475125131_)))
                                       ((lambda (_L25148_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2516425167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2516525170_)
                         (cons _g2516425167_ _g2516525170_))
                       '()
                       _L25148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2475225144_))))))
                       (_loop2474725124_ _target2474425118_ '()))
                     (_g2473325091_ _g2473625095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473325091_
                                                    _g2473625095_))
                                               (_g2473325091_ _g2473625095_))
                                           (_g2473325091_ _g2473625095_))))
                                   (_g2473325091_ _g2473625095_))))
                           (_g2473325091_ _g2473625095_)))))
                (_g2473225173_ _$stx24729_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx25181_)
        (let ((_g2518625238_
               (lambda (_g2518725234_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2518725234_))))
          (let ((_g2518525321_
                 (lambda (_g2518725242_)
                   (if (gx#stx-pair? _g2518725242_)
                       (let ((_e2521825245_ (gx#syntax-e _g2518725242_)))
                         (let ((_hd2521925249_ (##car _e2521825245_))
                               (_tl2522025252_ (##cdr _e2521825245_)))
                           (if (gx#stx-pair? _tl2522025252_)
                               (let ((_e2522125255_
                                      (gx#syntax-e _tl2522025252_)))
                                 (let ((_hd2522225259_ (##car _e2522125255_))
                                       (_tl2522325262_ (##cdr _e2522125255_)))
                                   (if (gx#stx-null? _hd2522225259_)
                                       (if (gx#stx-pair/null? _tl2522325262_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2522325262_)
                                                     '0)
                                               (let ((_g30055_
                                                      (gx#syntax-split-splice
                                                       _tl2522325262_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30056_
                                                          (values-count
                                                           _g30055_)))
                                                     (if (not (fx= _g30056_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30056_)))
                                                   (let ((_target2522425265_
                                                          (values-ref
                                                           _g30055_
                                                           0))
                                                         (_tl2522625268_
                                                          (values-ref
                                                           _g30055_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2522625268_)
                                                         (letrec ((_loop2522725271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2522525275_ _body2523125278_)
                             (if (gx#stx-pair? _hd2522525275_)
                                 (let ((_e2522825281_
                                        (gx#syntax-e _hd2522525275_)))
                                   (let ((_lp-hd2522925285_
                                          (##car _e2522825281_))
                                         (_lp-tl2523025288_
                                          (##cdr _e2522825281_)))
                                     (_loop2522725271_
                                      _lp-tl2523025288_
                                      (cons _lp-hd2522925285_
                                            _body2523125278_))))
                                 (let ((_body2523225291_
                                        (reverse _body2523125278_)))
                                   ((lambda (_L25295_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2531225315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2531325318_)
                     (cons _g2531225315_ _g2531325318_))
                   '()
                   _L25295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2523225291_))))))
                   (_loop2522725271_ _target2522425265_ '()))
                 (_g2518625238_ _g2518725242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2518625238_ _g2518725242_))
                                           (_g2518625238_ _g2518725242_))
                                       (_g2518625238_ _g2518725242_))))
                               (_g2518625238_ _g2518725242_))))
                       (_g2518625238_ _g2518725242_)))))
            (let ((_g2518425447_
                   (lambda (_g2518725325_)
                     (if (gx#stx-pair? _g2518725325_)
                         (let ((_e2519325328_ (gx#syntax-e _g2518725325_)))
                           (let ((_hd2519425332_ (##car _e2519325328_))
                                 (_tl2519525335_ (##cdr _e2519325328_)))
                             (if (gx#stx-pair? _tl2519525335_)
                                 (let ((_e2519625338_
                                        (gx#syntax-e _tl2519525335_)))
                                   (let ((_hd2519725342_ (##car _e2519625338_))
                                         (_tl2519825345_
                                          (##cdr _e2519625338_)))
                                     (if (gx#stx-pair? _hd2519725342_)
                                         (let ((_e2519925348_
                                                (gx#syntax-e _hd2519725342_)))
                                           (let ((_hd2520025352_
                                                  (##car _e2519925348_))
                                                 (_tl2520125355_
                                                  (##cdr _e2519925348_)))
                                             (if (gx#stx-pair? _hd2520025352_)
                                                 (let ((_e2520225358_
                                                        (gx#syntax-e
                                                         _hd2520025352_)))
                                                   (let ((_hd2520325362_
                                                          (##car _e2520225358_))
                                                         (_tl2520425365_
                                                          (##cdr _e2520225358_)))
                                                     (if (gx#stx-pair?
                                                          _tl2520425365_)
                                                         (let ((_e2520525368_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2520425365_)))
                   (let ((_hd2520625372_ (##car _e2520525368_))
                         (_tl2520725375_ (##cdr _e2520525368_)))
                     (if (gx#stx-null? _tl2520725375_)
                         (if (gx#stx-pair/null? _tl2519825345_)
                             (if (fx>= (gx#stx-length _tl2519825345_) '0)
                                 (let ((_g30057_
                                        (gx#syntax-split-splice
                                         _tl2519825345_
                                         '0)))
                                   (begin
                                     (let ((_g30058_ (values-count _g30057_)))
                                       (if (not (fx= _g30058_ 2))
                                           (error "Context expects 2 values"
                                                  _g30058_)))
                                     (let ((_target2520825378_
                                            (values-ref _g30057_ 0))
                                           (_tl2521025381_
                                            (values-ref _g30057_ 1)))
                                       (if (gx#stx-null? _tl2521025381_)
                                           (letrec ((_loop2521125384_
                                                     (lambda (_hd2520925388_
                                                              _body2521525391_)
                                                       (if (gx#stx-pair?
                                                            _hd2520925388_)
                                                           (let ((_e2521225394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2520925388_)))
                     (let ((_lp-hd2521325398_ (##car _e2521225394_))
                           (_lp-tl2521425401_ (##cdr _e2521225394_)))
                       (_loop2521125384_
                        _lp-tl2521425401_
                        (cons _lp-hd2521325398_ _body2521525391_))))
                   (let ((_body2521625404_ (reverse _body2521525391_)))
                     ((lambda (_L25408_ _L25410_ _L25411_ _L25412_ _L25413_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L25412_ (cons _L25411_ '()))
                                          '())
                                    (cons (cons _L25413_
                                                (cons _L25410_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2543825441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2543925444_)
                         (cons _g2543825441_ _g2543925444_))
                       '()
                       _L25408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2521625404_
                      _tl2520125355_
                      _hd2520625372_
                      _hd2520325362_
                      _hd2519425332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2521125384_
                                              _target2520825378_
                                              '()))
                                           (_g2518525321_ _g2518725325_)))))
                                 (_g2518525321_ _g2518725325_))
                             (_g2518525321_ _g2518725325_))
                         (_g2518525321_ _g2518725325_))))
                 (_g2518525321_ _g2518725325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2518525321_
                                                  _g2518725325_))))
                                         (_g2518525321_ _g2518725325_))))
                                 (_g2518525321_ _g2518725325_))))
                         (_g2518525321_ _g2518725325_)))))
              (_g2518425447_ _$stx25181_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx25453_)
        (let ((_g2546425608_
               (lambda (_g2546525604_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2546525604_))))
          (let ((_g2546325703_
                 (lambda (_g2546525612_)
                   (if (gx#stx-pair? _g2546525612_)
                       (let ((_e2558525615_ (gx#syntax-e _g2546525612_)))
                         (let ((_hd2558625619_ (##car _e2558525615_))
                               (_tl2558725622_ (##cdr _e2558525615_)))
                           (if (gx#stx-pair? _tl2558725622_)
                               (let ((_e2558825625_
                                      (gx#syntax-e _tl2558725622_)))
                                 (let ((_hd2558925629_ (##car _e2558825625_))
                                       (_tl2559025632_ (##cdr _e2558825625_)))
                                   (if (gx#stx-pair? _tl2559025632_)
                                       (let ((_e2559125635_
                                              (gx#syntax-e _tl2559025632_)))
                                         (let ((_hd2559225639_
                                                (##car _e2559125635_))
                                               (_tl2559325642_
                                                (##cdr _e2559125635_)))
                                           (if (gx#stx-datum? _hd2559225639_)
                                               (if (equal? (gx#stx-e
                                                            _hd2559225639_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2559325642_)
                                                       (let ((_e2559425645_
                                                              (gx#syntax-e
                                                               _tl2559325642_)))
                                                         (let ((_hd2559525649_
                                                                (##car _e2559425645_))
                                                               (_tl2559625652_
                                                                (##cdr _e2559425645_)))
                                                           (if (gx#stx-pair?
                                                                _tl2559625652_)
                                                               (let ((_e2559725655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2559625652_)))
                         (let ((_hd2559825659_ (##car _e2559725655_))
                               (_tl2559925662_ (##cdr _e2559725655_)))
                           (if (gx#identifier? _hd2559825659_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g30059_|
                                    _hd2559825659_)
                                   (if (gx#stx-pair? _tl2559925662_)
                                       (let ((_e2560025665_
                                              (gx#syntax-e _tl2559925662_)))
                                         (let ((_hd2560125669_
                                                (##car _e2560025665_))
                                               (_tl2560225672_
                                                (##cdr _e2560025665_)))
                                           (if (gx#stx-null? _tl2560225672_)
                                               ((lambda (_L25675_
                                                         _L25677_
                                                         _L25678_
                                                         _L25679_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25679_
                                              (cons _L25678_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25675_
                                                    (cons (cons _L25677_
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
                                                _hd2560125669_
                                                _hd2559525649_
                                                _hd2558925629_
                                                _hd2558625619_)
                                               (_g2546425608_ _g2546525612_))))
                                       (_g2546425608_ _g2546525612_))
                                   (_g2546425608_ _g2546525612_))
                               (_g2546425608_ _g2546525612_))))
                       (_g2546425608_ _g2546525612_))))
               (_g2546425608_ _g2546525612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2546425608_
                                                    _g2546525612_))
                                               (_g2546425608_ _g2546525612_))))
                                       (_g2546425608_ _g2546525612_))))
                               (_g2546425608_ _g2546525612_))))
                       (_g2546425608_ _g2546525612_)))))
            (let ((_g2546225771_
                   (lambda (_g2546525707_)
                     (if (gx#stx-pair? _g2546525707_)
                         (let ((_e2556925710_ (gx#syntax-e _g2546525707_)))
                           (let ((_hd2557025714_ (##car _e2556925710_))
                                 (_tl2557125717_ (##cdr _e2556925710_)))
                             (if (gx#stx-pair? _tl2557125717_)
                                 (let ((_e2557225720_
                                        (gx#syntax-e _tl2557125717_)))
                                   (let ((_hd2557325724_ (##car _e2557225720_))
                                         (_tl2557425727_
                                          (##cdr _e2557225720_)))
                                     (if (gx#stx-pair? _tl2557425727_)
                                         (let ((_e2557525730_
                                                (gx#syntax-e _tl2557425727_)))
                                           (let ((_hd2557625734_
                                                  (##car _e2557525730_))
                                                 (_tl2557725737_
                                                  (##cdr _e2557525730_)))
                                             (if (gx#stx-datum? _hd2557625734_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2557625734_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2557725737_)
                                                         (let ((_e2557825740_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2557725737_)))
                   (let ((_hd2557925744_ (##car _e2557825740_))
                         (_tl2558025747_ (##cdr _e2557825740_)))
                     (if (gx#stx-null? _tl2558025747_)
                         ((lambda (_L25750_ _L25752_ _L25753_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25753_
                                    (cons _L25752_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25750_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2557925744_
                          _hd2557325724_
                          _hd2557025714_)
                         (_g2546325703_ _g2546525707_))))
                 (_g2546325703_ _g2546525707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2546325703_
                                                      _g2546525707_))
                                                 (_g2546325703_
                                                  _g2546525707_))))
                                         (_g2546325703_ _g2546525707_))))
                                 (_g2546325703_ _g2546525707_))))
                         (_g2546325703_ _g2546525707_)))))
              (let ((_g2546125839_
                     (lambda (_g2546525775_)
                       (if (gx#stx-pair? _g2546525775_)
                           (let ((_e2555425778_ (gx#syntax-e _g2546525775_)))
                             (let ((_hd2555525782_ (##car _e2555425778_))
                                   (_tl2555625785_ (##cdr _e2555425778_)))
                               (if (gx#stx-pair? _tl2555625785_)
                                   (let ((_e2555725788_
                                          (gx#syntax-e _tl2555625785_)))
                                     (let ((_hd2555825792_
                                            (##car _e2555725788_))
                                           (_tl2555925795_
                                            (##cdr _e2555725788_)))
                                       (if (gx#stx-pair? _tl2555925795_)
                                           (let ((_e2556025798_
                                                  (gx#syntax-e
                                                   _tl2555925795_)))
                                             (let ((_hd2556125802_
                                                    (##car _e2556025798_))
                                                   (_tl2556225805_
                                                    (##cdr _e2556025798_)))
                                               (if (gx#identifier?
                                                    _hd2556125802_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g30060_|
                                                        _hd2556125802_)
                                                       (if (gx#stx-pair?
                                                            _tl2556225805_)
                                                           (let ((_e2556325808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2556225805_)))
                     (let ((_hd2556425812_ (##car _e2556325808_))
                           (_tl2556525815_ (##cdr _e2556325808_)))
                       (if (gx#stx-null? _tl2556525815_)
                           ((lambda (_L25818_ _L25820_ _L25821_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25820_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25818_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2556425812_
                            _hd2555825792_
                            _hd2555525782_)
                           (_g2546225771_ _g2546525775_))))
                   (_g2546225771_ _g2546525775_))
               (_g2546225771_ _g2546525775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2546225771_
                                                    _g2546525775_))))
                                           (_g2546225771_ _g2546525775_))))
                                   (_g2546225771_ _g2546525775_))))
                           (_g2546225771_ _g2546525775_)))))
                (let ((_g2546025881_
                       (lambda (_g2546525843_)
                         (if (gx#stx-pair? _g2546525843_)
                             (let ((_e2554525846_ (gx#syntax-e _g2546525843_)))
                               (let ((_hd2554625850_ (##car _e2554525846_))
                                     (_tl2554725853_ (##cdr _e2554525846_)))
                                 (if (gx#stx-pair? _tl2554725853_)
                                     (let ((_e2554825856_
                                            (gx#syntax-e _tl2554725853_)))
                                       (let ((_hd2554925860_
                                              (##car _e2554825856_))
                                             (_tl2555025863_
                                              (##cdr _e2554825856_)))
                                         (if (gx#stx-null? _tl2555025863_)
                                             ((lambda (_L25866_ _L25868_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25868_
                                (cons _L25866_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2554925860_
                                              _hd2554625850_)
                                             (_g2546125839_ _g2546525843_))))
                                     (_g2546125839_ _g2546525843_))))
                             (_g2546125839_ _g2546525843_)))))
                  (let ((_g2545925935_
                         (lambda (_g2546525885_)
                           (if (gx#stx-pair? _g2546525885_)
                               (let ((_e2553425888_
                                      (gx#syntax-e _g2546525885_)))
                                 (let ((_hd2553525892_ (##car _e2553425888_))
                                       (_tl2553625895_ (##cdr _e2553425888_)))
                                   (if (gx#stx-pair? _tl2553625895_)
                                       (let ((_e2553725898_
                                              (gx#syntax-e _tl2553625895_)))
                                         (let ((_hd2553825902_
                                                (##car _e2553725898_))
                                               (_tl2553925905_
                                                (##cdr _e2553725898_)))
                                           (if (gx#stx-pair? _tl2553925905_)
                                               (let ((_e2554025908_
                                                      (gx#syntax-e
                                                       _tl2553925905_)))
                                                 (let ((_hd2554125912_
                                                        (##car _e2554025908_))
                                                       (_tl2554225915_
                                                        (##cdr _e2554025908_)))
                                                   (if (gx#stx-null?
                                                        _tl2554225915_)
                                                       ((lambda (_L25918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25920_)
                  (cons _L25920_ (cons _L25918_ '())))
                _hd2554125912_
                _hd2553825902_)
               (_g2546025881_ _g2546525885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2546025881_ _g2546525885_))))
                                       (_g2546025881_ _g2546525885_))))
                               (_g2546025881_ _g2546525885_)))))
                    (let ((_g2545826015_
                           (lambda (_g2546525939_)
                             (if (gx#stx-pair? _g2546525939_)
                                 (let ((_e2551725942_
                                        (gx#syntax-e _g2546525939_)))
                                   (let ((_hd2551825946_ (##car _e2551725942_))
                                         (_tl2551925949_
                                          (##cdr _e2551725942_)))
                                     (if (gx#stx-pair? _tl2551925949_)
                                         (let ((_e2552025952_
                                                (gx#syntax-e _tl2551925949_)))
                                           (let ((_hd2552125956_
                                                  (##car _e2552025952_))
                                                 (_tl2552225959_
                                                  (##cdr _e2552025952_)))
                                             (if (gx#stx-pair? _hd2552125956_)
                                                 (let ((_e2552325962_
                                                        (gx#syntax-e
                                                         _hd2552125956_)))
                                                   (let ((_hd2552425966_
                                                          (##car _e2552325962_))
                                                         (_tl2552525969_
                                                          (##cdr _e2552325962_)))
                                                     (if (gx#identifier?
                                                          _hd2552425966_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g30061_|
                                                              _hd2552425966_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2552525969_)
                         (let ((_e2552625972_ (gx#syntax-e _tl2552525969_)))
                           (let ((_hd2552725976_ (##car _e2552625972_))
                                 (_tl2552825979_ (##cdr _e2552625972_)))
                             (if (gx#stx-null? _tl2552825979_)
                                 (if (gx#stx-pair? _tl2552225959_)
                                     (let ((_e2552925982_
                                            (gx#syntax-e _tl2552225959_)))
                                       (let ((_hd2553025986_
                                              (##car _e2552925982_))
                                             (_tl2553125989_
                                              (##cdr _e2552925982_)))
                                         (if (gx#stx-null? _tl2553125989_)
                                             ((lambda (_L25992_
                                                       _L25994_
                                                       _L25995_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25994_ (cons _L25992_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2553025986_
                                              _hd2552725976_
                                              _hd2551825946_)
                                             (_g2545925935_ _g2546525939_))))
                                     (_g2545925935_ _g2546525939_))
                                 (_g2545925935_ _g2546525939_))))
                         (_g2545925935_ _g2546525939_))
                     (_g2545925935_ _g2546525939_))
                 (_g2545925935_ _g2546525939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2545925935_
                                                  _g2546525939_))))
                                         (_g2545925935_ _g2546525939_))))
                                 (_g2545925935_ _g2546525939_)))))
                      (let ((_g2545726125_
                             (lambda (_g2546526019_)
                               (if (gx#stx-pair? _g2546526019_)
                                   (let ((_e2549326022_
                                          (gx#syntax-e _g2546526019_)))
                                     (let ((_hd2549426026_
                                            (##car _e2549326022_))
                                           (_tl2549526029_
                                            (##cdr _e2549326022_)))
                                       (if (gx#stx-pair? _tl2549526029_)
                                           (let ((_e2549626032_
                                                  (gx#syntax-e
                                                   _tl2549526029_)))
                                             (let ((_hd2549726036_
                                                    (##car _e2549626032_))
                                                   (_tl2549826039_
                                                    (##cdr _e2549626032_)))
                                               (if (gx#stx-pair?
                                                    _hd2549726036_)
                                                   (let ((_e2549926042_
                                                          (gx#syntax-e
                                                           _hd2549726036_)))
                                                     (let ((_hd2550026046_
                                                            (##car _e2549926042_))
                                                           (_tl2550126049_
                                                            (##cdr _e2549926042_)))
                                                       (if (gx#identifier?
                                                            _hd2550026046_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g30062_|
                                                                _hd2550026046_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2550126049_)
                           (if (fx>= (gx#stx-length _tl2550126049_) '0)
                               (let ((_g30063_
                                      (gx#syntax-split-splice
                                       _tl2550126049_
                                       '0)))
                                 (begin
                                   (let ((_g30064_ (values-count _g30063_)))
                                     (if (not (fx= _g30064_ 2))
                                         (error "Context expects 2 values"
                                                _g30064_)))
                                   (let ((_target2550226052_
                                          (values-ref _g30063_ 0))
                                         (_tl2550426055_
                                          (values-ref _g30063_ 1)))
                                     (if (gx#stx-null? _tl2550426055_)
                                         (letrec ((_loop2550526058_
                                                   (lambda (_hd2550326062_
                                                            _pred2550926065_)
                                                     (if (gx#stx-pair?
                                                          _hd2550326062_)
                                                         (let ((_e2550626068_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2550326062_)))
                   (let ((_lp-hd2550726072_ (##car _e2550626068_))
                         (_lp-tl2550826075_ (##cdr _e2550626068_)))
                     (_loop2550526058_
                      _lp-tl2550826075_
                      (cons _lp-hd2550726072_ _pred2550926065_))))
                 (let ((_pred2551026078_ (reverse _pred2550926065_)))
                   (if (gx#stx-pair? _tl2549826039_)
                       (let ((_e2551126082_ (gx#syntax-e _tl2549826039_)))
                         (let ((_hd2551226086_ (##car _e2551126082_))
                               (_tl2551326089_ (##cdr _e2551126082_)))
                           (if (gx#stx-null? _tl2551326089_)
                               ((lambda (_L26092_ _L26094_ _L26095_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2611626119_
                                                          _g2611726122_)
                                                   (cons (cons _L26095_
                                                               (cons _g2611626119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L26092_ '())))
                 _g2611726122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L26094_))))
                                _hd2551226086_
                                _pred2551026078_
                                _hd2549426026_)
                               (_g2545826015_ _g2546526019_))))
                       (_g2545826015_ _g2546526019_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2550526058_
                                            _target2550226052_
                                            '()))
                                         (_g2545826015_ _g2546526019_)))))
                               (_g2545826015_ _g2546526019_))
                           (_g2545826015_ _g2546526019_))
                       (_g2545826015_ _g2546526019_))
                   (_g2545826015_ _g2546526019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2545826015_
                                                    _g2546526019_))))
                                           (_g2545826015_ _g2546526019_))))
                                   (_g2545826015_ _g2546526019_)))))
                        (let ((_g2545626235_
                               (lambda (_g2546526129_)
                                 (if (gx#stx-pair? _g2546526129_)
                                     (let ((_e2546926132_
                                            (gx#syntax-e _g2546526129_)))
                                       (let ((_hd2547026136_
                                              (##car _e2546926132_))
                                             (_tl2547126139_
                                              (##cdr _e2546926132_)))
                                         (if (gx#stx-pair? _tl2547126139_)
                                             (let ((_e2547226142_
                                                    (gx#syntax-e
                                                     _tl2547126139_)))
                                               (let ((_hd2547326146_
                                                      (##car _e2547226142_))
                                                     (_tl2547426149_
                                                      (##cdr _e2547226142_)))
                                                 (if (gx#stx-pair?
                                                      _hd2547326146_)
                                                     (let ((_e2547526152_
                                                            (gx#syntax-e
                                                             _hd2547326146_)))
                                                       (let ((_hd2547626156_
                                                              (##car _e2547526152_))
                                                             (_tl2547726159_
                                                              (##cdr _e2547526152_)))
                                                         (if (gx#identifier?
                                                              _hd2547626156_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g30065_|
                          _hd2547626156_)
                         (if (gx#stx-pair/null? _tl2547726159_)
                             (if (fx>= (gx#stx-length _tl2547726159_) '0)
                                 (let ((_g30066_
                                        (gx#syntax-split-splice
                                         _tl2547726159_
                                         '0)))
                                   (begin
                                     (let ((_g30067_ (values-count _g30066_)))
                                       (if (not (fx= _g30067_ 2))
                                           (error "Context expects 2 values"
                                                  _g30067_)))
                                     (let ((_target2547826162_
                                            (values-ref _g30066_ 0))
                                           (_tl2548026165_
                                            (values-ref _g30066_ 1)))
                                       (if (gx#stx-null? _tl2548026165_)
                                           (letrec ((_loop2548126168_
                                                     (lambda (_hd2547926172_
                                                              _pred2548526175_)
                                                       (if (gx#stx-pair?
                                                            _hd2547926172_)
                                                           (let ((_e2548226178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2547926172_)))
                     (let ((_lp-hd2548326182_ (##car _e2548226178_))
                           (_lp-tl2548426185_ (##cdr _e2548226178_)))
                       (_loop2548126168_
                        _lp-tl2548426185_
                        (cons _lp-hd2548326182_ _pred2548526175_))))
                   (let ((_pred2548626188_ (reverse _pred2548526175_)))
                     (if (gx#stx-pair? _tl2547426149_)
                         (let ((_e2548726192_ (gx#syntax-e _tl2547426149_)))
                           (let ((_hd2548826196_ (##car _e2548726192_))
                                 (_tl2548926199_ (##cdr _e2548726192_)))
                             (if (gx#stx-null? _tl2548926199_)
                                 ((lambda (_L26202_ _L26204_ _L26205_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2622626229_
                                                            _g2622726232_)
                                                     (cons (cons _L26205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2622626229_ (cons _L26202_ '())))
                   _g2622726232_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L26204_))))
                                  _hd2548826196_
                                  _pred2548626188_
                                  _hd2547026136_)
                                 (_g2545726125_ _g2546526129_))))
                         (_g2545726125_ _g2546526129_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2548126168_
                                              _target2547826162_
                                              '()))
                                           (_g2545726125_ _g2546526129_)))))
                                 (_g2545726125_ _g2546526129_))
                             (_g2545726125_ _g2546526129_))
                         (_g2545726125_ _g2546526129_))
                     (_g2545726125_ _g2546526129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2545726125_
                                                      _g2546526129_))))
                                             (_g2545726125_ _g2546526129_))))
                                     (_g2545726125_ _g2546526129_)))))
                          (_g2545626235_ _$stx25453_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx26241_)
        (let ((_g2624626280_
               (lambda (_g2624726276_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2624726276_))))
          (let ((_g2624526337_
                 (lambda (_g2624726284_)
                   (if (gx#stx-pair? _g2624726284_)
                       (let ((_e2626626287_ (gx#syntax-e _g2624726284_)))
                         (let ((_hd2626726291_ (##car _e2626626287_))
                               (_tl2626826294_ (##cdr _e2626626287_)))
                           (if (gx#stx-pair? _tl2626826294_)
                               (let ((_e2626926297_
                                      (gx#syntax-e _tl2626826294_)))
                                 (let ((_hd2627026301_ (##car _e2626926297_))
                                       (_tl2627126304_ (##cdr _e2626926297_)))
                                   (if (gx#stx-pair? _tl2627126304_)
                                       (let ((_e2627226307_
                                              (gx#syntax-e _tl2627126304_)))
                                         (let ((_hd2627326311_
                                                (##car _e2627226307_))
                                               (_tl2627426314_
                                                (##cdr _e2627226307_)))
                                           (if (gx#stx-null? _tl2627426314_)
                                               ((lambda (_L26317_
                                                         _L26319_
                                                         _L26320_)
                                                  (cons _L26320_
                                                        (cons _L26319_
                                                              (cons _L26317_
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
                                                _hd2627326311_
                                                _hd2627026301_
                                                _hd2626726291_)
                                               (_g2624626280_ _g2624726284_))))
                                       (_g2624626280_ _g2624726284_))))
                               (_g2624626280_ _g2624726284_))))
                       (_g2624626280_ _g2624726284_)))))
            (let ((_g2624426405_
                   (lambda (_g2624726341_)
                     (if (gx#stx-pair? _g2624726341_)
                         (let ((_e2625126344_ (gx#syntax-e _g2624726341_)))
                           (let ((_hd2625226348_ (##car _e2625126344_))
                                 (_tl2625326351_ (##cdr _e2625126344_)))
                             (if (gx#stx-pair? _tl2625326351_)
                                 (let ((_e2625426354_
                                        (gx#syntax-e _tl2625326351_)))
                                   (let ((_hd2625526358_ (##car _e2625426354_))
                                         (_tl2625626361_
                                          (##cdr _e2625426354_)))
                                     (if (gx#stx-pair? _tl2625626361_)
                                         (let ((_e2625726364_
                                                (gx#syntax-e _tl2625626361_)))
                                           (let ((_hd2625826368_
                                                  (##car _e2625726364_))
                                                 (_tl2625926371_
                                                  (##cdr _e2625726364_)))
                                             (if (gx#stx-pair? _tl2625926371_)
                                                 (let ((_e2626026374_
                                                        (gx#syntax-e
                                                         _tl2625926371_)))
                                                   (let ((_hd2626126378_
                                                          (##car _e2626026374_))
                                                         (_tl2626226381_
                                                          (##cdr _e2626026374_)))
                                                     (if (gx#stx-null?
                                                          _tl2626226381_)
                                                         ((lambda (_L26384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L26386_
                           _L26387_)
                    (if (gx#identifier? _L26387_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L26387_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L26386_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L26384_ '()))
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
                        (_g2624526337_ _g2624726341_)))
                  _hd2626126378_
                  _hd2625826368_
                  _hd2625526358_)
                 (_g2624526337_ _g2624726341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2624526337_
                                                  _g2624726341_))))
                                         (_g2624526337_ _g2624726341_))))
                                 (_g2624526337_ _g2624726341_))))
                         (_g2624526337_ _g2624726341_)))))
              (_g2624426405_ _$stx26241_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx26409_)
        (let ((_g2641326428_
               (lambda (_g2641426424_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2641426424_))))
          (let ((_g2641226471_
                 (lambda (_g2641426432_)
                   (if (gx#stx-pair? _g2641426432_)
                       (let ((_e2641726435_ (gx#syntax-e _g2641426432_)))
                         (let ((_hd2641826439_ (##car _e2641726435_))
                               (_tl2641926442_ (##cdr _e2641726435_)))
                           (if (gx#stx-pair? _tl2641926442_)
                               (let ((_e2642026445_
                                      (gx#syntax-e _tl2641926442_)))
                                 (let ((_hd2642126449_ (##car _e2642026445_))
                                       (_tl2642226452_ (##cdr _e2642026445_)))
                                   ((lambda (_L26455_ _L26457_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L26457_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L26455_)
                                                        '()))))
                                    _tl2642226452_
                                    _hd2642126449_)))
                               (_g2641326428_ _g2641426432_))))
                       (_g2641326428_ _g2641426432_)))))
            (_g2641226471_ _$stx26409_)))))))
