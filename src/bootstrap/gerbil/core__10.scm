(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g30988_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30989_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30990_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30993_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30994_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30995_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30996_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30997_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30998_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30999_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31000_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31001_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31002_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31003_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31004_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31005_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31014_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31019_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31020_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31021_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31038_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31039_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31040_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31041_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31044_|
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
      (lambda _$args25032_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args25032_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx25029_)
        (if (gx#identifier? _stx25029_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx25029_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2334525015_
             (lambda (_stx23347_ _match-stx23349_)
               (letrec ((_parse123351_
                         (lambda (_hd23698_)
                           (let* ((_g2372423866_
                                   (lambda (_g2372523862_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2372523862_)))
                                  (_g2372323877_
                                   (lambda (_g2372523870_)
                                     ((lambda ()
                                        (_parse-error23358_ _hd23698_)))))
                                  (_g2372223895_
                                   (lambda (_g2372523881_)
                                     ((lambda (_L23884_)
                                        (if (gx#stx-datum? _L23884_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L23884_)
                                                        '()))
                                            (_g2372323877_ _g2372523881_)))
                                      _g2372523881_)))
                                  (_g2372123911_
                                   (lambda (_g2372523899_)
                                     ((lambda (_L23902_)
                                        (if (if (gx#identifier? _L23902_)
                                                (not (gx#ellipsis? _L23902_))
                                                '#f)
                                            (cons 'var: (cons _L23902_ '()))
                                            (_g2372223895_ _g2372523899_)))
                                      _g2372523899_)))
                                  (_g2372023927_
                                   (lambda (_g2372523915_)
                                     ((lambda (_L23918_)
                                        (if (gx#underscore? _L23918_)
                                            (cons 'any: '())
                                            (_g2372123911_ _g2372523915_)))
                                      _g2372523915_)))
                                  (_g2371923959_
                                   (lambda (_g2372523931_)
                                     (if (gx#stx-pair? _g2372523931_)
                                         (let ((_e2385523934_
                                                (gx#syntax-e _g2372523931_)))
                                           (let ((_hd2385623938_
                                                  (##car _e2385523934_))
                                                 (_tl2385723941_
                                                  (##cdr _e2385523934_)))
                                             ((lambda (_L23944_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L23944_)
                                                    (_parse123351_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L23944_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd23698_)
                                                       (let ((_$e23955_
                                                              (gx#stx-source
                                                               _hd23698_)))
                                                         (if _$e23955_
                                                             _$e23955_
                                                             (gx#stx-source
                                                              _stx23347_))))))
                                                    (_g2372023927_
                                                     _g2372523931_)))
                                              _hd2385623938_)))
                                         (_g2372023927_ _g2372523931_))))
                                  (_g2371824013_
                                   (lambda (_g2372523963_)
                                     (if (gx#stx-pair? _g2372523963_)
                                         (let ((_e2384523966_
                                                (gx#syntax-e _g2372523963_)))
                                           (let ((_hd2384623970_
                                                  (##car _e2384523966_))
                                                 (_tl2384723973_
                                                  (##cdr _e2384523966_)))
                                             (if (gx#identifier?
                                                  _hd2384623970_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30988_|
                                                      _hd2384623970_)
                                                     (if (gx#stx-pair?
                                                          _tl2384723973_)
                                                         (let ((_e2384823976_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2384723973_)))
                   (let ((_hd2384923980_ (##car _e2384823976_))
                         (_tl2385023983_ (##cdr _e2384823976_)))
                     (if (gx#stx-pair? _tl2385023983_)
                         (let ((_e2385123986_ (gx#syntax-e _tl2385023983_)))
                           (let ((_hd2385223990_ (##car _e2385123986_))
                                 (_tl2385323993_ (##cdr _e2385123986_)))
                             (if (gx#stx-null? _tl2385323993_)
                                 ((lambda (_L23996_ _L23998_)
                                    (cons 'apply:
                                          (cons _L23998_
                                                (cons (_parse123351_ _L23996_)
                                                      '()))))
                                  _hd2385223990_
                                  _hd2384923980_)
                                 (_g2371923959_ _g2372523963_))))
                         (_g2371923959_ _g2372523963_))))
                 (_g2371923959_ _g2372523963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371923959_
                                                      _g2372523963_))
                                                 (_g2371923959_
                                                  _g2372523963_))))
                                         (_g2371923959_ _g2372523963_))))
                                  (_g2371724053_
                                   (lambda (_g2372524017_)
                                     (if (gx#stx-pair? _g2372524017_)
                                         (let ((_e2383724020_
                                                (gx#syntax-e _g2372524017_)))
                                           (let ((_hd2383824024_
                                                  (##car _e2383724020_))
                                                 (_tl2383924027_
                                                  (##cdr _e2383724020_)))
                                             (if (gx#identifier?
                                                  _hd2383824024_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30989_|
                                                      _hd2383824024_)
                                                     (if (gx#stx-pair?
                                                          _tl2383924027_)
                                                         (let ((_e2384024030_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2383924027_)))
                   (let ((_hd2384124034_ (##car _e2384024030_))
                         (_tl2384224037_ (##cdr _e2384024030_)))
                     (if (gx#stx-null? _tl2384224037_)
                         ((lambda (_L24040_) (_parse-qq23357_ _L24040_))
                          _hd2384124034_)
                         (_g2371824013_ _g2372524017_))))
                 (_g2371824013_ _g2372524017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371824013_
                                                      _g2372524017_))
                                                 (_g2371824013_
                                                  _g2372524017_))))
                                         (_g2371824013_ _g2372524017_))))
                                  (_g2371624093_
                                   (lambda (_g2372524057_)
                                     (if (gx#stx-pair? _g2372524057_)
                                         (let ((_e2383024060_
                                                (gx#syntax-e _g2372524057_)))
                                           (let ((_hd2383124064_
                                                  (##car _e2383024060_))
                                                 (_tl2383224067_
                                                  (##cdr _e2383024060_)))
                                             (if (gx#identifier?
                                                  _hd2383124064_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30990_|
                                                      _hd2383124064_)
                                                     (if (gx#stx-pair?
                                                          _tl2383224067_)
                                                         (let ((_e2383324070_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2383224067_)))
                   (let ((_hd2383424074_ (##car _e2383324070_))
                         (_tl2383524077_ (##cdr _e2383324070_)))
                     (if (gx#stx-null? _tl2383524077_)
                         ((lambda (_L24080_)
                            (cons 'datum: (cons (gx#stx-e _L24080_) '())))
                          _hd2383424074_)
                         (_g2371724053_ _g2372524057_))))
                 (_g2371724053_ _g2372524057_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371724053_
                                                      _g2372524057_))
                                                 (_g2371724053_
                                                  _g2372524057_))))
                                         (_g2371724053_ _g2372524057_))))
                                  (_g2371524143_
                                   (lambda (_g2372524097_)
                                     (if (gx#stx-pair? _g2372524097_)
                                         (let ((_e2382324100_
                                                (gx#syntax-e _g2372524097_)))
                                           (let ((_hd2382424104_
                                                  (##car _e2382324100_))
                                                 (_tl2382524107_
                                                  (##cdr _e2382324100_)))
                                             (if (gx#stx-pair? _tl2382524107_)
                                                 (let ((_e2382624110_
                                                        (gx#syntax-e
                                                         _tl2382524107_)))
                                                   (let ((_hd2382724114_
                                                          (##car _e2382624110_))
                                                         (_tl2382824117_
                                                          (##cdr _e2382624110_)))
                                                     (if (gx#stx-null?
                                                          _tl2382824117_)
                                                         ((lambda (_L24120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24122_)
                    (if (if (gx#identifier? _L24122_)
                            (let ((_$e24135_
                                   (gx#free-identifier=?
                                    _L24122_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e24135_
                                  _$e24135_
                                  (let ((_$e24139_
                                         (gx#free-identifier=?
                                          _L24122_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e24139_
                                        _$e24139_
                                        (gx#free-identifier=?
                                         _L24122_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L24122_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L24120_ '()))))
                                    '()))
                        (_g2371624093_ _g2372524097_)))
                  _hd2382724114_
                  _hd2382424104_)
                 (_g2371624093_ _g2372524097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2371624093_
                                                  _g2372524097_))))
                                         (_g2371624093_ _g2372524097_))))
                                  (_g2371424173_
                                   (lambda (_g2372524147_)
                                     (if (gx#stx-pair? _g2372524147_)
                                         (let ((_e2381824150_
                                                (gx#syntax-e _g2372524147_)))
                                           (let ((_hd2381924154_
                                                  (##car _e2381824150_))
                                                 (_tl2382024157_
                                                  (##cdr _e2381824150_)))
                                             ((lambda (_L24160_ _L24162_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L24162_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24162_)
                        (cons (_parse-class-body23356_ _L24160_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2371524143_
                                                     _g2372524147_)))
                                              _tl2382024157_
                                              _hd2381924154_)))
                                         (_g2371524143_ _g2372524147_))))
                                  (_g2371324203_
                                   (lambda (_g2372524177_)
                                     (if (gx#stx-pair? _g2372524177_)
                                         (let ((_e2381324180_
                                                (gx#syntax-e _g2372524177_)))
                                           (let ((_hd2381424184_
                                                  (##car _e2381324180_))
                                                 (_tl2381524187_
                                                  (##cdr _e2381324180_)))
                                             ((lambda (_L24190_ _L24192_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24192_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24192_)
                        (cons (_parse-vector23354_ _L24190_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2371424173_
                                                     _g2372524177_)))
                                              _tl2381524187_
                                              _hd2381424184_)))
                                         (_g2371424173_ _g2372524177_))))
                                  (_g2371224266_
                                   (lambda (_g2372524207_)
                                     (if (gx#stx-vector? _g2372524207_)
                                         (let ((_e2380124210_
                                                (vector->list
                                                 (gx#syntax-e _g2372524207_))))
                                           (if (gx#stx-pair/null?
                                                _e2380124210_)
                                               (if (fx>= (gx#stx-length
                                                          _e2380124210_)
                                                         '0)
                                                   (let ((_g30991_
                                                          (gx#syntax-split-splice
                                                           _e2380124210_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30992_
                                                              (values-count
                                                               _g30991_)))
                                                         (if (not (fx= _g30992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30992_)))
               (let ((_target2380224214_ (values-ref _g30991_ 0))
                     (_tl2380424217_ (values-ref _g30991_ 1)))
                 (if (gx#stx-null? _tl2380424217_)
                     (letrec ((_loop2380524220_
                               (lambda (_hd2380324224_ _body2380924227_)
                                 (if (gx#stx-pair? _hd2380324224_)
                                     (let ((_e2380624230_
                                            (gx#syntax-e _hd2380324224_)))
                                       (let ((_lp-hd2380724234_
                                              (##car _e2380624230_))
                                             (_lp-tl2380824237_
                                              (##cdr _e2380624230_)))
                                         (_loop2380524220_
                                          _lp-tl2380824237_
                                          (cons _lp-hd2380724234_
                                                _body2380924227_))))
                                     (let ((_body2381024240_
                                            (reverse _body2380924227_)))
                                       ((lambda (_L24244_)
                                          (cons 'vector:
                                                (cons (_parse-vector23354_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2425724260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2425824263_)
                          (cons _g2425724260_ _g2425824263_))
                        '()
                        _L24244_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2381024240_))))))
                       (_loop2380524220_ _target2380224214_ '()))
                     (_g2371324203_ _g2372524207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2371324203_
                                                    _g2372524207_))
                                               (_g2371324203_ _g2372524207_)))
                                         (_g2371324203_ _g2372524207_))))
                                  (_g2371124294_
                                   (lambda (_g2372524270_)
                                     (if (gx#stx-pair? _g2372524270_)
                                         (let ((_e2379724273_
                                                (gx#syntax-e _g2372524270_)))
                                           (let ((_hd2379824277_
                                                  (##car _e2379724273_))
                                                 (_tl2379924280_
                                                  (##cdr _e2379724273_)))
                                             (if (gx#identifier?
                                                  _hd2379824277_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30993_|
                                                      _hd2379824277_)
                                                     ((lambda (_L24283_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24283_)
                            '())))
              _tl2379924280_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371224266_
                                                      _g2372524270_))
                                                 (_g2371224266_
                                                  _g2372524270_))))
                                         (_g2371224266_ _g2372524270_))))
                                  (_g2371024322_
                                   (lambda (_g2372524298_)
                                     (if (gx#stx-pair? _g2372524298_)
                                         (let ((_e2379324301_
                                                (gx#syntax-e _g2372524298_)))
                                           (let ((_hd2379424305_
                                                  (##car _e2379324301_))
                                                 (_tl2379524308_
                                                  (##cdr _e2379324301_)))
                                             (if (gx#identifier?
                                                  _hd2379424305_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30994_|
                                                      _hd2379424305_)
                                                     ((lambda (_L24311_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24311_)
                            '())))
              _tl2379524308_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371124294_
                                                      _g2372524298_))
                                                 (_g2371124294_
                                                  _g2372524298_))))
                                         (_g2371124294_ _g2372524298_))))
                                  (_g2370924362_
                                   (lambda (_g2372524326_)
                                     (if (gx#stx-pair? _g2372524326_)
                                         (let ((_e2378624329_
                                                (gx#syntax-e _g2372524326_)))
                                           (let ((_hd2378724333_
                                                  (##car _e2378624329_))
                                                 (_tl2378824336_
                                                  (##cdr _e2378624329_)))
                                             (if (gx#identifier?
                                                  _hd2378724333_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30995_|
                                                      _hd2378724333_)
                                                     (if (gx#stx-pair?
                                                          _tl2378824336_)
                                                         (let ((_e2378924339_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2378824336_)))
                   (let ((_hd2379024343_ (##car _e2378924339_))
                         (_tl2379124346_ (##cdr _e2378924339_)))
                     (if (gx#stx-null? _tl2379124346_)
                         ((lambda (_L24349_) (_parse123351_ _L24349_))
                          _hd2379024343_)
                         (_g2371024322_ _g2372524326_))))
                 (_g2371024322_ _g2372524326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371024322_
                                                      _g2372524326_))
                                                 (_g2371024322_
                                                  _g2372524326_))))
                                         (_g2371024322_ _g2372524326_))))
                                  (_g2370824383_
                                   (lambda (_g2372524366_)
                                     (if (gx#stx-box? _g2372524366_)
                                         (let ((_e2378424369_
                                                (unbox (gx#syntax-e
                                                        _g2372524366_))))
                                           ((lambda (_L24373_)
                                              (cons 'box:
                                                    (cons (_parse123351_
                                                           _L24373_)
                                                          '())))
                                            _e2378424369_))
                                         (_g2370924362_ _g2372524366_))))
                                  (_g2370724423_
                                   (lambda (_g2372524387_)
                                     (if (gx#stx-pair? _g2372524387_)
                                         (let ((_e2377724390_
                                                (gx#syntax-e _g2372524387_)))
                                           (let ((_hd2377824394_
                                                  (##car _e2377724390_))
                                                 (_tl2377924397_
                                                  (##cdr _e2377724390_)))
                                             (if (gx#identifier?
                                                  _hd2377824394_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30996_|
                                                      _hd2377824394_)
                                                     (if (gx#stx-pair?
                                                          _tl2377924397_)
                                                         (let ((_e2378024400_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2377924397_)))
                   (let ((_hd2378124404_ (##car _e2378024400_))
                         (_tl2378224407_ (##cdr _e2378024400_)))
                     (if (gx#stx-null? _tl2378224407_)
                         ((lambda (_L24410_)
                            (cons 'box: (cons (_parse123351_ _L24410_) '())))
                          _hd2378124404_)
                         (_g2370824383_ _g2372524387_))))
                 (_g2370824383_ _g2372524387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370824383_
                                                      _g2372524387_))
                                                 (_g2370824383_
                                                  _g2372524387_))))
                                         (_g2370824383_ _g2372524387_))))
                                  (_g2370624451_
                                   (lambda (_g2372524427_)
                                     (if (gx#stx-pair? _g2372524427_)
                                         (let ((_e2377324430_
                                                (gx#syntax-e _g2372524427_)))
                                           (let ((_hd2377424434_
                                                  (##car _e2377324430_))
                                                 (_tl2377524437_
                                                  (##cdr _e2377324430_)))
                                             (if (gx#identifier?
                                                  _hd2377424434_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30997_|
                                                      _hd2377424434_)
                                                     ((lambda (_L24440_)
                                                        (_parse-list23353_
                                                         _L24440_))
                                                      _tl2377524437_)
                                                     (_g2370724423_
                                                      _g2372524427_))
                                                 (_g2370724423_
                                                  _g2372524427_))))
                                         (_g2370724423_ _g2372524427_))))
                                  (_g2370524507_
                                   (lambda (_g2372524455_)
                                     (if (gx#stx-pair? _g2372524455_)
                                         (let ((_e2376324458_
                                                (gx#syntax-e _g2372524455_)))
                                           (let ((_hd2376424462_
                                                  (##car _e2376324458_))
                                                 (_tl2376524465_
                                                  (##cdr _e2376324458_)))
                                             (if (gx#identifier?
                                                  _hd2376424462_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30998_|
                                                      _hd2376424462_)
                                                     (if (gx#stx-pair?
                                                          _tl2376524465_)
                                                         (let ((_e2376624468_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2376524465_)))
                   (let ((_hd2376724472_ (##car _e2376624468_))
                         (_tl2376824475_ (##cdr _e2376624468_)))
                     (if (gx#stx-pair? _tl2376824475_)
                         (let ((_e2376924478_ (gx#syntax-e _tl2376824475_)))
                           (let ((_hd2377024482_ (##car _e2376924478_))
                                 (_tl2377124485_ (##cdr _e2376924478_)))
                             ((lambda (_L24488_ _L24490_ _L24491_)
                                (if (gx#stx-null? _L24488_)
                                    (cons 'cons:
                                          (cons (_parse123351_ _L24491_)
                                                (cons (_parse123351_ _L24490_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123351_ _L24491_)
                                                (cons (_parse123351_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24488_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2377124485_
                              _hd2377024482_
                              _hd2376724472_)))
                         (_g2370624451_ _g2372524455_))))
                 (_g2370624451_ _g2372524455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370624451_
                                                      _g2372524455_))
                                                 (_g2370624451_
                                                  _g2372524455_))))
                                         (_g2370624451_ _g2372524455_))))
                                  (_g2370424561_
                                   (lambda (_g2372524511_)
                                     (if (gx#stx-pair? _g2372524511_)
                                         (let ((_e2375124514_
                                                (gx#syntax-e _g2372524511_)))
                                           (let ((_hd2375224518_
                                                  (##car _e2375124514_))
                                                 (_tl2375324521_
                                                  (##cdr _e2375124514_)))
                                             (if (gx#identifier?
                                                  _hd2375224518_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30999_|
                                                      _hd2375224518_)
                                                     (if (gx#stx-pair?
                                                          _tl2375324521_)
                                                         (let ((_e2375424524_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2375324521_)))
                   (let ((_hd2375524528_ (##car _e2375424524_))
                         (_tl2375624531_ (##cdr _e2375424524_)))
                     (if (gx#stx-pair? _tl2375624531_)
                         (let ((_e2375724534_ (gx#syntax-e _tl2375624531_)))
                           (let ((_hd2375824538_ (##car _e2375724534_))
                                 (_tl2375924541_ (##cdr _e2375724534_)))
                             (if (gx#stx-null? _tl2375924541_)
                                 ((lambda (_L24544_ _L24546_)
                                    (cons 'cons:
                                          (cons (_parse123351_ _L24546_)
                                                (cons (_parse123351_ _L24544_)
                                                      '()))))
                                  _hd2375824538_
                                  _hd2375524528_)
                                 (_g2370524507_ _g2372524511_))))
                         (_g2370524507_ _g2372524511_))))
                 (_g2370524507_ _g2372524511_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370524507_
                                                      _g2372524511_))
                                                 (_g2370524507_
                                                  _g2372524511_))))
                                         (_g2370524507_ _g2372524511_))))
                                  (_g2370324601_
                                   (lambda (_g2372524565_)
                                     (if (gx#stx-pair? _g2372524565_)
                                         (let ((_e2374324568_
                                                (gx#syntax-e _g2372524565_)))
                                           (let ((_hd2374424572_
                                                  (##car _e2374324568_))
                                                 (_tl2374524575_
                                                  (##cdr _e2374324568_)))
                                             (if (gx#identifier?
                                                  _hd2374424572_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31000_|
                                                      _hd2374424572_)
                                                     (if (gx#stx-pair?
                                                          _tl2374524575_)
                                                         (let ((_e2374624578_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2374524575_)))
                   (let ((_hd2374724582_ (##car _e2374624578_))
                         (_tl2374824585_ (##cdr _e2374624578_)))
                     (if (gx#stx-null? _tl2374824585_)
                         ((lambda (_L24588_)
                            (cons 'not: (cons (_parse123351_ _L24588_) '())))
                          _hd2374724582_)
                         (_g2370424561_ _g2372524565_))))
                 (_g2370424561_ _g2372524565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370424561_
                                                      _g2372524565_))
                                                 (_g2370424561_
                                                  _g2372524565_))))
                                         (_g2370424561_ _g2372524565_))))
                                  (_g2370224686_
                                   (lambda (_g2372524605_)
                                     (if (gx#stx-pair? _g2372524605_)
                                         (let ((_e2373924608_
                                                (gx#syntax-e _g2372524605_)))
                                           (let ((_hd2374024612_
                                                  (##car _e2373924608_))
                                                 (_tl2374124615_
                                                  (##cdr _e2373924608_)))
                                             (if (gx#identifier?
                                                  _hd2374024612_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31001_|
                                                      _hd2374024612_)
                                                     ((lambda (_L24618_)
                                                        (if (gx#stx-list?
                                                             _L24618_)
                                                            (let* ((_g2463024641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2463124637_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2463124637_)))
                           (_g2462924652_
                            (lambda (_g2463124645_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123351_ _L24618_))))))
                           (_g2462824682_
                            (lambda (_g2463124656_)
                              (if (gx#stx-pair? _g2463124656_)
                                  (let ((_e2463324659_
                                         (gx#syntax-e _g2463124656_)))
                                    (let ((_hd2463424663_
                                           (##car _e2463324659_))
                                          (_tl2463524666_
                                           (##cdr _e2463324659_)))
                                      (if (gx#stx-null? _tl2463524666_)
                                          ((lambda (_L24669_)
                                             (_parse123351_ _L24669_))
                                           _hd2463424663_)
                                          (_g2462924652_ _g2463124656_))))
                                  (_g2462924652_ _g2463124656_)))))
                      (_g2462824682_ _L24618_))
                    (_g2370324601_ _g2372524605_)))
              _tl2374124615_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370324601_
                                                      _g2372524605_))
                                                 (_g2370324601_
                                                  _g2372524605_))))
                                         (_g2370324601_ _g2372524605_))))
                                  (_g2370124771_
                                   (lambda (_g2372524690_)
                                     (if (gx#stx-pair? _g2372524690_)
                                         (let ((_e2373524693_
                                                (gx#syntax-e _g2372524690_)))
                                           (let ((_hd2373624697_
                                                  (##car _e2373524693_))
                                                 (_tl2373724700_
                                                  (##cdr _e2373524693_)))
                                             (if (gx#identifier?
                                                  _hd2373624697_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31002_|
                                                      _hd2373624697_)
                                                     ((lambda (_L24703_)
                                                        (if (gx#stx-list?
                                                             _L24703_)
                                                            (let* ((_g2471524726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2471624722_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2471624722_)))
                           (_g2471424737_
                            (lambda (_g2471624730_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123351_ _L24703_))))))
                           (_g2471324767_
                            (lambda (_g2471624741_)
                              (if (gx#stx-pair? _g2471624741_)
                                  (let ((_e2471824744_
                                         (gx#syntax-e _g2471624741_)))
                                    (let ((_hd2471924748_
                                           (##car _e2471824744_))
                                          (_tl2472024751_
                                           (##cdr _e2471824744_)))
                                      (if (gx#stx-null? _tl2472024751_)
                                          ((lambda (_L24754_)
                                             (_parse123351_ _L24754_))
                                           _hd2471924748_)
                                          (_g2471424737_ _g2471624741_))))
                                  (_g2471424737_ _g2471624741_)))))
                      (_g2471324767_ _L24703_))
                    (_g2370224686_ _g2372524690_)))
              _tl2373724700_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370224686_
                                                      _g2372524690_))
                                                 (_g2370224686_
                                                  _g2372524690_))))
                                         (_g2370224686_ _g2372524690_))))
                                  (_g2370025011_
                                   (lambda (_g2372524775_)
                                     (if (gx#stx-pair? _g2372524775_)
                                         (let ((_e2372824778_
                                                (gx#syntax-e _g2372524775_)))
                                           (let ((_hd2372924782_
                                                  (##car _e2372824778_))
                                                 (_tl2373024785_
                                                  (##cdr _e2372824778_)))
                                             (if (gx#identifier?
                                                  _hd2372924782_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31003_|
                                                      _hd2372924782_)
                                                     (if (gx#stx-pair?
                                                          _tl2373024785_)
                                                         (let ((_e2373124788_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2373024785_)))
                   (let ((_hd2373224792_ (##car _e2373124788_))
                         (_tl2373324795_ (##cdr _e2373124788_)))
                     ((lambda (_L24798_ _L24800_)
                        (let* ((_g2481724849_
                                (lambda (_g2481824845_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2481824845_)))
                               (_g2481624860_
                                (lambda (_g2481824853_)
                                  ((lambda ()
                                     (_parse-error23358_ _hd23698_)))))
                               (_g2481524928_
                                (lambda (_g2481824864_)
                                  (if (gx#stx-pair? _g2481824864_)
                                      (let ((_e2483224867_
                                             (gx#syntax-e _g2481824864_)))
                                        (let ((_hd2483324871_
                                               (##car _e2483224867_))
                                              (_tl2483424874_
                                               (##cdr _e2483224867_)))
                                          (if (gx#stx-datum? _hd2483324871_)
                                              (if (equal? (gx#stx-e
                                                           _hd2483324871_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2483424874_)
                                                      (let ((_e2483524877_
                                                             (gx#syntax-e
                                                              _tl2483424874_)))
                                                        (let ((_hd2483624881_
                                                               (##car _e2483524877_))
                                                              (_tl2483724884_
                                                               (##cdr _e2483524877_)))
                                                          (if (gx#stx-pair?
                                                               _tl2483724884_)
                                                              (let ((_e2483824887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2483724884_)))
                        (let ((_hd2483924891_ (##car _e2483824887_))
                              (_tl2484024894_ (##cdr _e2483824887_)))
                          (if (gx#identifier? _hd2483924891_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31004_|
                                   _hd2483924891_)
                                  (if (gx#stx-pair? _tl2484024894_)
                                      (let ((_e2484124897_
                                             (gx#syntax-e _tl2484024894_)))
                                        (let ((_hd2484224901_
                                               (##car _e2484124897_))
                                              (_tl2484324904_
                                               (##cdr _e2484124897_)))
                                          (if (gx#stx-null? _tl2484324904_)
                                              ((lambda (_L24907_ _L24909_)
                                                 (cons '?:
                                                       (cons _L24800_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L24909_
                                 (cons '=>:
                                       (cons (_parse123351_ _L24907_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2484224901_
                                               _hd2483624881_)
                                              (_g2481624860_ _g2481824864_))))
                                      (_g2481624860_ _g2481824864_))
                                  (_g2481624860_ _g2481824864_))
                              (_g2481624860_ _g2481824864_))))
                      (_g2481624860_ _g2481824864_))))
              (_g2481624860_ _g2481824864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2481624860_
                                                   _g2481824864_))
                                              (_g2481624860_ _g2481824864_))))
                                      (_g2481624860_ _g2481824864_))))
                               (_g2481424968_
                                (lambda (_g2481824932_)
                                  (if (gx#stx-pair? _g2481824932_)
                                      (let ((_e2482424935_
                                             (gx#syntax-e _g2481824932_)))
                                        (let ((_hd2482524939_
                                               (##car _e2482424935_))
                                              (_tl2482624942_
                                               (##cdr _e2482424935_)))
                                          (if (gx#identifier? _hd2482524939_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31005_|
                                                   _hd2482524939_)
                                                  (if (gx#stx-pair?
                                                       _tl2482624942_)
                                                      (let ((_e2482724945_
                                                             (gx#syntax-e
                                                              _tl2482624942_)))
                                                        (let ((_hd2482824949_
                                                               (##car _e2482724945_))
                                                              (_tl2482924952_
                                                               (##cdr _e2482724945_)))
                                                          (if (gx#stx-null?
                                                               _tl2482924952_)
                                                              ((lambda (_L24955_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L24800_
                                     (cons '=>:
                                           (cons (_parse123351_ _L24955_)
                                                 '())))))
                       _hd2482824949_)
                      (_g2481524928_ _g2481824932_))))
              (_g2481524928_ _g2481824932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2481524928_
                                                   _g2481824932_))
                                              (_g2481524928_ _g2481824932_))))
                                      (_g2481524928_ _g2481824932_))))
                               (_g2481324996_
                                (lambda (_g2481824972_)
                                  (if (gx#stx-pair? _g2481824972_)
                                      (let ((_e2482024975_
                                             (gx#syntax-e _g2481824972_)))
                                        (let ((_hd2482124979_
                                               (##car _e2482024975_))
                                              (_tl2482224982_
                                               (##cdr _e2482024975_)))
                                          (if (gx#stx-null? _tl2482224982_)
                                              ((lambda (_L24985_)
                                                 (cons '?:
                                                       (cons _L24800_
                                                             (cons (_parse123351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L24985_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2482124979_)
                                              (_g2481424968_ _g2481824972_))))
                                      (_g2481424968_ _g2481824972_))))
                               (_g2481225007_
                                (lambda (_g2481825000_)
                                  (if (gx#stx-null? _g2481825000_)
                                      ((lambda ()
                                         (cons '?: (cons _L24800_ '()))))
                                      (_g2481324996_ _g2481825000_)))))
                          (_g2481225007_ _L24798_)))
                      _tl2373324795_
                      _hd2373224792_)))
                 (_g2370124771_ _g2372524775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370124771_
                                                      _g2372524775_))
                                                 (_g2370124771_
                                                  _g2372524775_))))
                                         (_g2370124771_ _g2372524775_)))))
                             (_g2370025011_ _hd23698_))))
                        (_parse-list23353_
                         (lambda (_body23533_)
                           (let* ((_g2353923567_
                                   (lambda (_g2354023563_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2354023563_)))
                                  (_g2353823578_
                                   (lambda (_g2354023571_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23533_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23533_))
                                                (_parse123351_ _body23533_)
                                                (_parse-error23358_
                                                 _body23533_)))))))
                                  (_g2353723610_
                                   (lambda (_g2354023582_)
                                     (if (gx#stx-pair? _g2354023582_)
                                         (let ((_e2355923585_
                                                (gx#syntax-e _g2354023582_)))
                                           (let ((_hd2356023589_
                                                  (##car _e2355923585_))
                                                 (_tl2356123592_
                                                  (##cdr _e2355923585_)))
                                             ((lambda (_L23595_ _L23597_)
                                                (if (not (gx#ellipsis?
                                                          _L23597_))
                                                    (cons 'cons:
                                                          (cons (_parse123351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23597_)
                        (cons (_parse-list23353_ _L23595_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2353823578_
                                                     _g2354023582_)))
                                              _tl2356123592_
                                              _hd2356023589_)))
                                         (_g2353823578_ _g2354023582_))))
                                  (_g2353623654_
                                   (lambda (_g2354023614_)
                                     (if (gx#stx-pair? _g2354023614_)
                                         (let ((_e2355123617_
                                                (gx#syntax-e _g2354023614_)))
                                           (let ((_hd2355223621_
                                                  (##car _e2355123617_))
                                                 (_tl2355323624_
                                                  (##cdr _e2355123617_)))
                                             (if (gx#stx-pair? _tl2355323624_)
                                                 (let ((_e2355423627_
                                                        (gx#syntax-e
                                                         _tl2355323624_)))
                                                   (let ((_hd2355523631_
                                                          (##car _e2355423627_))
                                                         (_tl2355623634_
                                                          (##cdr _e2355423627_)))
                                                     ((lambda (_L23637_
                                                               _L23639_
                                                               _L23640_)
                                                        (if (gx#ellipsis?
                                                             _L23639_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123351_ _L23640_)
                                (cons (_parse-list23353_ _L23637_) '())))
                    (_g2353723610_ _g2354023614_)))
              _tl2355623634_
              _hd2355523631_
              _hd2355223621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2353723610_
                                                  _g2354023614_))))
                                         (_g2353723610_ _g2354023614_))))
                                  (_g2353523694_
                                   (lambda (_g2354023658_)
                                     (if (gx#stx-pair? _g2354023658_)
                                         (let ((_e2354223661_
                                                (gx#syntax-e _g2354023658_)))
                                           (let ((_hd2354323665_
                                                  (##car _e2354223661_))
                                                 (_tl2354423668_
                                                  (##cdr _e2354223661_)))
                                             (if (gx#stx-datum? _hd2354323665_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2354323665_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2354423668_)
                                                         (let ((_e2354523671_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2354423668_)))
                   (let ((_hd2354623675_ (##car _e2354523671_))
                         (_tl2354723678_ (##cdr _e2354523671_)))
                     (if (gx#stx-null? _tl2354723678_)
                         ((lambda (_L23681_) (_parse123351_ _L23681_))
                          _hd2354623675_)
                         (_g2353623654_ _g2354023658_))))
                 (_g2353623654_ _g2354023658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353623654_
                                                      _g2354023658_))
                                                 (_g2353623654_
                                                  _g2354023658_))))
                                         (_g2353623654_ _g2354023658_)))))
                             (_g2353523694_ _body23533_))))
                        (_parse-vector23354_
                         (lambda (_body23530_)
                           (if (_simple-vector?23355_ _body23530_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123351_
                                            _body23530_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23353_ _body23530_)
                                           '())))))
                        (_simple-vector?23355_
                         (lambda (_body23467_)
                           (let* ((_g2347123483_
                                   (lambda (_g2347223479_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2347223479_)))
                                  (_g2347023494_
                                   (lambda (_g2347223487_)
                                     ((lambda () (gx#stx-null? _body23467_)))))
                                  (_g2346923526_
                                   (lambda (_g2347223498_)
                                     (if (gx#stx-pair? _g2347223498_)
                                         (let ((_e2347523501_
                                                (gx#syntax-e _g2347223498_)))
                                           (let ((_hd2347623505_
                                                  (##car _e2347523501_))
                                                 (_tl2347723508_
                                                  (##cdr _e2347523501_)))
                                             ((lambda (_L23511_ _L23513_)
                                                (if (not (gx#ellipsis?
                                                          _L23513_))
                                                    (_simple-vector?23355_
                                                     _L23511_)
                                                    '#f))
                                              _tl2347723508_
                                              _hd2347623505_)))
                                         (_g2347023494_ _g2347223498_)))))
                             (_g2346923526_ _body23467_))))
                        (_parse-class-body23356_
                         (lambda (_body23376_)
                           (let _recur23379_ ((_rest23382_ _body23376_))
                             (let* ((_g2338623402_
                                     (lambda (_g2338723398_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2338723398_)))
                                    (_g2338523413_
                                     (lambda (_g2338723406_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23382_)
                                              '()
                                              (_parse-error23358_
                                               _rest23382_))))))
                                    (_g2338423463_
                                     (lambda (_g2338723417_)
                                       (if (gx#stx-pair? _g2338723417_)
                                           (let ((_e2339123420_
                                                  (gx#syntax-e _g2338723417_)))
                                             (let ((_hd2339223424_
                                                    (##car _e2339123420_))
                                                   (_tl2339323427_
                                                    (##cdr _e2339123420_)))
                                               (if (gx#stx-pair?
                                                    _tl2339323427_)
                                                   (let ((_e2339423430_
                                                          (gx#syntax-e
                                                           _tl2339323427_)))
                                                     (let ((_hd2339523434_
                                                            (##car _e2339423430_))
                                                           (_tl2339623437_
                                                            (##cdr _e2339423430_)))
                                                       ((lambda (_L23440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23442_
                         _L23443_)
                  (if (gx#stx-keyword? _L23443_)
                      (cons* _L23443_
                             (_parse123351_ _L23442_)
                             (_recur23379_ _L23440_))
                      (_g2338523413_ _g2338723417_)))
                _tl2339623437_
                _hd2339523434_
                _hd2339223424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2338523413_
                                                    _g2338723417_))))
                                           (_g2338523413_ _g2338723417_)))))
                               (_g2338423463_ _rest23382_)))))
                        (_parse-qq23357_
                         (lambda (_hd23363_)
                           (let ((_g2336523372_
                                  (lambda (_g2336623368_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2336623368_))))
                             (_g2336523372_ _hd23363_))))
                        (_parse-error23358_
                         (lambda (_hd23360_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23349_
                                      (cons _match-stx23349_
                                            (cons _stx23347_
                                                  (cons _hd23360_ '())))
                                      (cons _stx23347_
                                            (cons _hd23360_ '())))))))
                 (_parse123351_ _stx23347_)))))
        (lambda _g31007_
          (let ((_g31006_ (length _g31007_)))
            (cond ((fx= _g31006_ 1)
                   (apply (lambda (_stx25019_)
                            (let ((_match-stx25022_ '#f))
                              (_opt-lambda2334525015_
                               _stx25019_
                               _match-stx25022_)))
                          _g31007_))
                  ((fx= _g31006_ 2) (apply _opt-lambda2334525015_ _g31007_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g31007_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23331_)
        (call-with-escape
         (lambda (_E23335_)
           (with-exception-handler
            (let ((_E!23338_ (current-exception-handler)))
              (lambda (_e23341_)
                (if (gx#syntax-error? _e23341_)
                    (_E23335_ '#f)
                    (_E!23338_ _e23341_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23331_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree22120_)
        (letrec ((_loop22123_
                  (lambda (_ptree22398_ _vars22400_ _K22401_)
                    (let* ((_g2241422515_
                            (lambda (_g2241522511_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2241522511_)))
                           (_g2241322526_
                            (lambda (_g2241522519_)
                              ((lambda () (_K22401_ _vars22400_)))))
                           (_g2241222573_
                            (lambda (_g2241522530_)
                              (if (gx#stx-pair? _g2241522530_)
                                  (let ((_e2250422533_
                                         (gx#syntax-e _g2241522530_)))
                                    (let ((_hd2250522537_
                                           (##car _e2250422533_))
                                          (_tl2250622540_
                                           (##cdr _e2250422533_)))
                                      (if (gx#stx-datum? _hd2250522537_)
                                          (if (equal? (gx#stx-e _hd2250522537_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2250622540_)
                                                  (let ((_e2250722543_
                                                         (gx#syntax-e
                                                          _tl2250622540_)))
                                                    (let ((_hd2250822547_
                                                           (##car _e2250722543_))
                                                          (_tl2250922550_
                                                           (##cdr _e2250722543_)))
                                                      (if (gx#stx-null?
                                                           _tl2250922550_)
                                                          ((lambda (_L22553_)
                                                             (if (find (lambda (_g2256722569_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2256722569_
                                  _L22553_))
                               _vars22400_)
                         (_K22401_ _vars22400_)
                         (_K22401_ (cons _L22553_ _vars22400_))))
                   _hd2250822547_)
                  (_g2241322526_ _g2241522530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241322526_
                                                   _g2241522530_))
                                              (_g2241322526_ _g2241522530_))
                                          (_g2241322526_ _g2241522530_))))
                                  (_g2241322526_ _g2241522530_))))
                           (_g2241122627_
                            (lambda (_g2241522577_)
                              (if (gx#stx-pair? _g2241522577_)
                                  (let ((_e2249422580_
                                         (gx#syntax-e _g2241522577_)))
                                    (let ((_hd2249522584_
                                           (##car _e2249422580_))
                                          (_tl2249622587_
                                           (##cdr _e2249422580_)))
                                      (if (gx#stx-datum? _hd2249522584_)
                                          (if (equal? (gx#stx-e _hd2249522584_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2249622587_)
                                                  (let ((_e2249722590_
                                                         (gx#syntax-e
                                                          _tl2249622587_)))
                                                    (let ((_hd2249822594_
                                                           (##car _e2249722590_))
                                                          (_tl2249922597_
                                                           (##cdr _e2249722590_)))
                                                      (if (gx#stx-pair?
                                                           _tl2249922597_)
                                                          (let ((_e2250022600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2249922597_)))
                    (let ((_hd2250122604_ (##car _e2250022600_))
                          (_tl2250222607_ (##cdr _e2250022600_)))
                      (if (gx#stx-null? _tl2250222607_)
                          ((lambda (_L22610_ _L22612_)
                             (_loop22123_ _L22610_ _vars22400_ _K22401_))
                           _hd2250122604_
                           _hd2249822594_)
                          (_g2241222573_ _g2241522577_))))
                  (_g2241222573_ _g2241522577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241222573_
                                                   _g2241522577_))
                                              (_g2241222573_ _g2241522577_))
                                          (_g2241222573_ _g2241522577_))))
                                  (_g2241222573_ _g2241522577_))))
                           (_g2241022679_
                            (lambda (_g2241522631_)
                              (if (gx#stx-pair? _g2241522631_)
                                  (let ((_e2248322634_
                                         (gx#syntax-e _g2241522631_)))
                                    (let ((_hd2248422638_
                                           (##car _e2248322634_))
                                          (_tl2248522641_
                                           (##cdr _e2248322634_)))
                                      (if (gx#stx-datum? _hd2248422638_)
                                          (if (equal? (gx#stx-e _hd2248422638_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2248522641_)
                                                  (let ((_e2248622644_
                                                         (gx#syntax-e
                                                          _tl2248522641_)))
                                                    (let ((_hd2248722648_
                                                           (##car _e2248622644_))
                                                          (_tl2248822651_
                                                           (##cdr _e2248622644_)))
                                                      (if (gx#stx-pair?
                                                           _tl2248822651_)
                                                          (let ((_e2248922654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2248822651_)))
                    (let ((_hd2249022658_ (##car _e2248922654_))
                          (_tl2249122661_ (##cdr _e2248922654_)))
                      (if (gx#stx-null? _tl2249122661_)
                          ((lambda (_L22664_)
                             (_loop-class-list22127_
                              _L22664_
                              _vars22400_
                              _K22401_))
                           _hd2249022658_)
                          (_g2241122627_ _g2241522631_))))
                  (_g2241122627_ _g2241522631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241122627_
                                                   _g2241522631_))
                                              (_g2241122627_ _g2241522631_))
                                          (_g2241122627_ _g2241522631_))))
                                  (_g2241122627_ _g2241522631_))))
                           (_g2240922731_
                            (lambda (_g2241522683_)
                              (if (gx#stx-pair? _g2241522683_)
                                  (let ((_e2247322686_
                                         (gx#syntax-e _g2241522683_)))
                                    (let ((_hd2247422690_
                                           (##car _e2247322686_))
                                          (_tl2247522693_
                                           (##cdr _e2247322686_)))
                                      (if (gx#stx-datum? _hd2247422690_)
                                          (if (equal? (gx#stx-e _hd2247422690_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2247522693_)
                                                  (let ((_e2247622696_
                                                         (gx#syntax-e
                                                          _tl2247522693_)))
                                                    (let ((_hd2247722700_
                                                           (##car _e2247622696_))
                                                          (_tl2247822703_
                                                           (##cdr _e2247622696_)))
                                                      (if (gx#stx-pair?
                                                           _tl2247822703_)
                                                          (let ((_e2247922706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2247822703_)))
                    (let ((_hd2248022710_ (##car _e2247922706_))
                          (_tl2248122713_ (##cdr _e2247922706_)))
                      (if (gx#stx-null? _tl2248122713_)
                          ((lambda (_L22716_)
                             (_loop-vector22125_
                              _L22716_
                              _vars22400_
                              _K22401_))
                           _hd2248022710_)
                          (_g2241022679_ _g2241522683_))))
                  (_g2241022679_ _g2241522683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241022679_
                                                   _g2241522683_))
                                              (_g2241022679_ _g2241522683_))
                                          (_g2241022679_ _g2241522683_))))
                                  (_g2241022679_ _g2241522683_))))
                           (_g2240822777_
                            (lambda (_g2241522735_)
                              (if (gx#stx-pair? _g2241522735_)
                                  (let ((_e2246622738_
                                         (gx#syntax-e _g2241522735_)))
                                    (let ((_hd2246722742_
                                           (##car _e2246622738_))
                                          (_tl2246822745_
                                           (##cdr _e2246622738_)))
                                      (if (gx#stx-pair? _tl2246822745_)
                                          (let ((_e2246922748_
                                                 (gx#syntax-e _tl2246822745_)))
                                            (let ((_hd2247022752_
                                                   (##car _e2246922748_))
                                                  (_tl2247122755_
                                                   (##cdr _e2246922748_)))
                                              (if (gx#stx-null? _tl2247122755_)
                                                  ((lambda (_L22758_ _L22760_)
                                                     (if (let ((_$e22773_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L22760_)))
                   (if _$e22773_ _$e22773_ (gx#stx-eq? 'vector: _L22760_)))
                 (_loop-vector22125_ _L22758_ _vars22400_ _K22401_)
                 (_g2240922731_ _g2241522735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2247022752_
                                                   _hd2246722742_)
                                                  (_g2240922731_
                                                   _g2241522735_))))
                                          (_g2240922731_ _g2241522735_))))
                                  (_g2240922731_ _g2241522735_))))
                           (_g2240722817_
                            (lambda (_g2241522781_)
                              (if (gx#stx-pair? _g2241522781_)
                                  (let ((_e2245822784_
                                         (gx#syntax-e _g2241522781_)))
                                    (let ((_hd2245922788_
                                           (##car _e2245822784_))
                                          (_tl2246022791_
                                           (##cdr _e2245822784_)))
                                      (if (gx#stx-datum? _hd2245922788_)
                                          (if (equal? (gx#stx-e _hd2245922788_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2246022791_)
                                                  (let ((_e2246122794_
                                                         (gx#syntax-e
                                                          _tl2246022791_)))
                                                    (let ((_hd2246222798_
                                                           (##car _e2246122794_))
                                                          (_tl2246322801_
                                                           (##cdr _e2246122794_)))
                                                      (if (gx#stx-null?
                                                           _tl2246322801_)
                                                          ((lambda (_L22804_)
                                                             (_loop22123_
                                                              _L22804_
                                                              _vars22400_
                                                              _K22401_))
                                                           _hd2246222798_)
                                                          (_g2240822777_
                                                           _g2241522781_))))
                                                  (_g2240822777_
                                                   _g2241522781_))
                                              (_g2240822777_ _g2241522781_))
                                          (_g2240822777_ _g2241522781_))))
                                  (_g2240822777_ _g2241522781_))))
                           (_g2240622876_
                            (lambda (_g2241522821_)
                              (if (gx#stx-pair? _g2241522821_)
                                  (let ((_e2244822824_
                                         (gx#syntax-e _g2241522821_)))
                                    (let ((_hd2244922828_
                                           (##car _e2244822824_))
                                          (_tl2245022831_
                                           (##cdr _e2244822824_)))
                                      (if (gx#stx-datum? _hd2244922828_)
                                          (if (equal? (gx#stx-e _hd2244922828_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2245022831_)
                                                  (let ((_e2245122834_
                                                         (gx#syntax-e
                                                          _tl2245022831_)))
                                                    (let ((_hd2245222838_
                                                           (##car _e2245122834_))
                                                          (_tl2245322841_
                                                           (##cdr _e2245122834_)))
                                                      (if (gx#stx-pair?
                                                           _tl2245322841_)
                                                          (let ((_e2245422844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2245322841_)))
                    (let ((_hd2245522848_ (##car _e2245422844_))
                          (_tl2245622851_ (##cdr _e2245422844_)))
                      (if (gx#stx-null? _tl2245622851_)
                          ((lambda (_L22854_ _L22856_)
                             (_loop22123_
                              _L22856_
                              _vars22400_
                              (lambda (_g2287022872_)
                                (_loop22123_
                                 _L22854_
                                 _g2287022872_
                                 _K22401_))))
                           _hd2245522848_
                           _hd2245222838_)
                          (_g2240722817_ _g2241522821_))))
                  (_g2240722817_ _g2241522821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2240722817_
                                                   _g2241522821_))
                                              (_g2240722817_ _g2241522821_))
                                          (_g2240722817_ _g2241522821_))))
                                  (_g2240722817_ _g2241522821_))))
                           (_g2240522935_
                            (lambda (_g2241522880_)
                              (if (gx#stx-pair? _g2241522880_)
                                  (let ((_e2243722883_
                                         (gx#syntax-e _g2241522880_)))
                                    (let ((_hd2243822887_
                                           (##car _e2243722883_))
                                          (_tl2243922890_
                                           (##cdr _e2243722883_)))
                                      (if (gx#stx-datum? _hd2243822887_)
                                          (if (equal? (gx#stx-e _hd2243822887_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2243922890_)
                                                  (let ((_e2244022893_
                                                         (gx#syntax-e
                                                          _tl2243922890_)))
                                                    (let ((_hd2244122897_
                                                           (##car _e2244022893_))
                                                          (_tl2244222900_
                                                           (##cdr _e2244022893_)))
                                                      (if (gx#stx-pair?
                                                           _tl2244222900_)
                                                          (let ((_e2244322903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2244222900_)))
                    (let ((_hd2244422907_ (##car _e2244322903_))
                          (_tl2244522910_ (##cdr _e2244322903_)))
                      (if (gx#stx-null? _tl2244522910_)
                          ((lambda (_L22913_ _L22915_)
                             (_loop22123_
                              _L22915_
                              _vars22400_
                              (lambda (_g2292922931_)
                                (_loop22123_
                                 _L22913_
                                 _g2292922931_
                                 _K22401_))))
                           _hd2244422907_
                           _hd2244122897_)
                          (_g2240622876_ _g2241522880_))))
                  (_g2240622876_ _g2241522880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2240622876_
                                                   _g2241522880_))
                                              (_g2240622876_ _g2241522880_))
                                          (_g2240622876_ _g2241522880_))))
                                  (_g2240622876_ _g2241522880_))))
                           (_g2240422975_
                            (lambda (_g2241522939_)
                              (if (gx#stx-pair? _g2241522939_)
                                  (let ((_e2242922942_
                                         (gx#syntax-e _g2241522939_)))
                                    (let ((_hd2243022946_
                                           (##car _e2242922942_))
                                          (_tl2243122949_
                                           (##cdr _e2242922942_)))
                                      (if (gx#stx-datum? _hd2243022946_)
                                          (if (equal? (gx#stx-e _hd2243022946_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2243122949_)
                                                  (let ((_e2243222952_
                                                         (gx#syntax-e
                                                          _tl2243122949_)))
                                                    (let ((_hd2243322956_
                                                           (##car _e2243222952_))
                                                          (_tl2243422959_
                                                           (##cdr _e2243222952_)))
                                                      (if (gx#stx-null?
                                                           _tl2243422959_)
                                                          ((lambda (_L22962_)
                                                             (_loop22123_
                                                              _L22962_
                                                              _vars22400_
                                                              _K22401_))
                                                           _hd2243322956_)
                                                          (_g2240522935_
                                                           _g2241522939_))))
                                                  (_g2240522935_
                                                   _g2241522939_))
                                              (_g2240522935_ _g2241522939_))
                                          (_g2240522935_ _g2241522939_))))
                                  (_g2240522935_ _g2241522939_))))
                           (_g2240323074_
                            (lambda (_g2241522979_)
                              (if (gx#stx-pair? _g2241522979_)
                                  (let ((_e2242522982_
                                         (gx#syntax-e _g2241522979_)))
                                    (let ((_hd2242622986_
                                           (##car _e2242522982_))
                                          (_tl2242722989_
                                           (##cdr _e2242522982_)))
                                      ((lambda (_L22992_ _L22994_)
                                         (if (let ((_$e23005_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L22994_)))
                                               (if _$e23005_
                                                   _$e23005_
                                                   (gx#stx-eq? 'or: _L22994_)))
                                             (let* ((_g2301023022_
                                                     (lambda (_g2301123018_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2301123018_)))
                                                    (_g2300923033_
                                                     (lambda (_g2301123026_)
                                                       ((lambda ()
                                                          (_K22401_
                                                           _vars22400_)))))
                                                    (_g2300823070_
                                                     (lambda (_g2301123037_)
                                                       (if (gx#stx-pair?
                                                            _g2301123037_)
                                                           (let ((_e2301423040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2301123037_)))
                     (let ((_hd2301523044_ (##car _e2301423040_))
                           (_tl2301623047_ (##cdr _e2301423040_)))
                       ((lambda (_L23050_ _L23052_)
                          (_loop22123_
                           _L23052_
                           _vars22400_
                           (lambda (_g2306423066_)
                             (_loop22123_
                              (cons _L22994_ _L23050_)
                              _g2306423066_
                              _K22401_))))
                        _tl2301623047_
                        _hd2301523044_)))
                   (_g2300923033_ _g2301123037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2300823070_ _L22992_))
                                             (_g2240422975_ _g2241522979_)))
                                       _tl2242722989_
                                       _hd2242622986_)))
                                  (_g2240422975_ _g2241522979_))))
                           (_g2240223327_
                            (lambda (_g2241523078_)
                              (if (gx#stx-pair? _g2241523078_)
                                  (let ((_e2241723081_
                                         (gx#syntax-e _g2241523078_)))
                                    (let ((_hd2241823085_
                                           (##car _e2241723081_))
                                          (_tl2241923088_
                                           (##cdr _e2241723081_)))
                                      (if (gx#stx-datum? _hd2241823085_)
                                          (if (equal? (gx#stx-e _hd2241823085_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2241923088_)
                                                  (let ((_e2242023091_
                                                         (gx#syntax-e
                                                          _tl2241923088_)))
                                                    (let ((_hd2242123095_
                                                           (##car _e2242023091_))
                                                          (_tl2242223098_
                                                           (##cdr _e2242023091_)))
                                                      ((lambda (_L23101_)
                                                         (let* ((_g2311723154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2311823150_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2311823150_)))
                        (_g2311623165_
                         (lambda (_g2311823158_)
                           ((lambda () (_K22401_ _vars22400_)))))
                        (_g2311523243_
                         (lambda (_g2311823169_)
                           (if (gx#stx-pair? _g2311823169_)
                               (let ((_e2313423172_
                                      (gx#syntax-e _g2311823169_)))
                                 (let ((_hd2313523176_ (##car _e2313423172_))
                                       (_tl2313623179_ (##cdr _e2313423172_)))
                                   (if (gx#stx-pair? _tl2313623179_)
                                       (let ((_e2313723182_
                                              (gx#syntax-e _tl2313623179_)))
                                         (let ((_hd2313823186_
                                                (##car _e2313723182_))
                                               (_tl2313923189_
                                                (##cdr _e2313723182_)))
                                           (if (gx#stx-datum? _hd2313823186_)
                                               (if (equal? (gx#stx-e
                                                            _hd2313823186_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2313923189_)
                                                       (let ((_e2314023192_
                                                              (gx#syntax-e
                                                               _tl2313923189_)))
                                                         (let ((_hd2314123196_
                                                                (##car _e2314023192_))
                                                               (_tl2314223199_
                                                                (##cdr _e2314023192_)))
                                                           (if (gx#stx-pair?
                                                                _tl2314223199_)
                                                               (let ((_e2314323202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2314223199_)))
                         (let ((_hd2314423206_ (##car _e2314323202_))
                               (_tl2314523209_ (##cdr _e2314323202_)))
                           (if (gx#stx-datum? _hd2314423206_)
                               (if (equal? (gx#stx-e _hd2314423206_) '=>:)
                                   (if (gx#stx-pair? _tl2314523209_)
                                       (let ((_e2314623212_
                                              (gx#syntax-e _tl2314523209_)))
                                         (let ((_hd2314723216_
                                                (##car _e2314623212_))
                                               (_tl2314823219_
                                                (##cdr _e2314623212_)))
                                           (if (gx#stx-null? _tl2314823219_)
                                               ((lambda (_L23222_)
                                                  (_loop22123_
                                                   _L23222_
                                                   _vars22400_
                                                   _K22401_))
                                                _hd2314723216_)
                                               (_g2311623165_ _g2311823169_))))
                                       (_g2311623165_ _g2311823169_))
                                   (_g2311623165_ _g2311823169_))
                               (_g2311623165_ _g2311823169_))))
                       (_g2311623165_ _g2311823169_))))
               (_g2311623165_ _g2311823169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2311623165_
                                                    _g2311823169_))
                                               (_g2311623165_ _g2311823169_))))
                                       (_g2311623165_ _g2311823169_))))
                               (_g2311623165_ _g2311823169_))))
                        (_g2311423295_
                         (lambda (_g2311823247_)
                           (if (gx#stx-pair? _g2311823247_)
                               (let ((_e2312423250_
                                      (gx#syntax-e _g2311823247_)))
                                 (let ((_hd2312523254_ (##car _e2312423250_))
                                       (_tl2312623257_ (##cdr _e2312423250_)))
                                   (if (gx#stx-pair? _tl2312623257_)
                                       (let ((_e2312723260_
                                              (gx#syntax-e _tl2312623257_)))
                                         (let ((_hd2312823264_
                                                (##car _e2312723260_))
                                               (_tl2312923267_
                                                (##cdr _e2312723260_)))
                                           (if (gx#stx-datum? _hd2312823264_)
                                               (if (equal? (gx#stx-e
                                                            _hd2312823264_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2312923267_)
                                                       (let ((_e2313023270_
                                                              (gx#syntax-e
                                                               _tl2312923267_)))
                                                         (let ((_hd2313123274_
                                                                (##car _e2313023270_))
                                                               (_tl2313223277_
                                                                (##cdr _e2313023270_)))
                                                           (if (gx#stx-null?
                                                                _tl2313223277_)
                                                               ((lambda (_L23280_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop22123_ _L23280_ _vars22400_ _K22401_))
                        _hd2313123274_)
                       (_g2311523243_ _g2311823247_))))
               (_g2311523243_ _g2311823247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2311523243_
                                                    _g2311823247_))
                                               (_g2311523243_ _g2311823247_))))
                                       (_g2311523243_ _g2311823247_))))
                               (_g2311523243_ _g2311823247_))))
                        (_g2311323323_
                         (lambda (_g2311823299_)
                           (if (gx#stx-pair? _g2311823299_)
                               (let ((_e2312023302_
                                      (gx#syntax-e _g2311823299_)))
                                 (let ((_hd2312123306_ (##car _e2312023302_))
                                       (_tl2312223309_ (##cdr _e2312023302_)))
                                   (if (gx#stx-null? _tl2312223309_)
                                       ((lambda (_L23312_)
                                          (_loop22123_
                                           _L23312_
                                           _vars22400_
                                           _K22401_))
                                        _hd2312123306_)
                                       (_g2311423295_ _g2311823299_))))
                               (_g2311423295_ _g2311823299_)))))
                   (_g2311323323_ _L23101_)))
               _tl2242223098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2240323074_
                                                   _g2241523078_))
                                              (_g2240323074_ _g2241523078_))
                                          (_g2240323074_ _g2241523078_))))
                                  (_g2240323074_ _g2241523078_)))))
                      (_g2240223327_ _ptree22398_))))
                 (_loop-vector22125_
                  (lambda (_body22286_ _vars22288_ _K22289_)
                    (let* ((_g2229222313_
                            (lambda (_g2229322309_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2229322309_)))
                           (_g2229122354_
                            (lambda (_g2229322317_)
                              (if (gx#stx-pair? _g2229322317_)
                                  (let ((_e2230222320_
                                         (gx#syntax-e _g2229322317_)))
                                    (let ((_hd2230322324_
                                           (##car _e2230222320_))
                                          (_tl2230422327_
                                           (##cdr _e2230222320_)))
                                      (if (gx#stx-datum? _hd2230322324_)
                                          (if (equal? (gx#stx-e _hd2230322324_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2230422327_)
                                                  (let ((_e2230522330_
                                                         (gx#syntax-e
                                                          _tl2230422327_)))
                                                    (let ((_hd2230622334_
                                                           (##car _e2230522330_))
                                                          (_tl2230722337_
                                                           (##cdr _e2230522330_)))
                                                      (if (gx#stx-null?
                                                           _tl2230722337_)
                                                          ((lambda (_L22340_)
                                                             (_loop22123_
                                                              _L22340_
                                                              _vars22288_
                                                              _K22289_))
                                                           _hd2230622334_)
                                                          (_g2229222313_
                                                           _g2229322317_))))
                                                  (_g2229222313_
                                                   _g2229322317_))
                                              (_g2229222313_ _g2229322317_))
                                          (_g2229222313_ _g2229322317_))))
                                  (_g2229222313_ _g2229322317_))))
                           (_g2229022394_
                            (lambda (_g2229322358_)
                              (if (gx#stx-pair? _g2229322358_)
                                  (let ((_e2229522361_
                                         (gx#syntax-e _g2229322358_)))
                                    (let ((_hd2229622365_
                                           (##car _e2229522361_))
                                          (_tl2229722368_
                                           (##cdr _e2229522361_)))
                                      (if (gx#stx-datum? _hd2229622365_)
                                          (if (equal? (gx#stx-e _hd2229622365_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2229722368_)
                                                  (let ((_e2229822371_
                                                         (gx#syntax-e
                                                          _tl2229722368_)))
                                                    (let ((_hd2229922375_
                                                           (##car _e2229822371_))
                                                          (_tl2230022378_
                                                           (##cdr _e2229822371_)))
                                                      (if (gx#stx-null?
                                                           _tl2230022378_)
                                                          ((lambda (_L22381_)
                                                             (_loop-list22126_
                                                              _L22381_
                                                              _vars22288_
                                                              _K22289_))
                                                           _hd2229922375_)
                                                          (_g2229122354_
                                                           _g2229322358_))))
                                                  (_g2229122354_
                                                   _g2229322358_))
                                              (_g2229122354_ _g2229322358_))
                                          (_g2229122354_ _g2229322358_))))
                                  (_g2229122354_ _g2229322358_)))))
                      (_g2229022394_ _body22286_))))
                 (_loop-list22126_
                  (lambda (_rest22216_ _vars22218_ _K22219_)
                    (let* ((_g2222222234_
                            (lambda (_g2222322230_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2222322230_)))
                           (_g2222122245_
                            (lambda (_g2222322238_)
                              ((lambda () (_K22219_ _vars22218_)))))
                           (_g2222022282_
                            (lambda (_g2222322249_)
                              (if (gx#stx-pair? _g2222322249_)
                                  (let ((_e2222622252_
                                         (gx#syntax-e _g2222322249_)))
                                    (let ((_hd2222722256_
                                           (##car _e2222622252_))
                                          (_tl2222822259_
                                           (##cdr _e2222622252_)))
                                      ((lambda (_L22262_ _L22264_)
                                         (_loop22123_
                                          _L22264_
                                          _vars22218_
                                          (lambda (_g2227622278_)
                                            (_loop-list22126_
                                             _L22262_
                                             _g2227622278_
                                             _K22219_))))
                                       _tl2222822259_
                                       _hd2222722256_)))
                                  (_g2222122245_ _g2222322249_)))))
                      (_g2222022282_ _rest22216_))))
                 (_loop-class-list22127_
                  (lambda (_rest22129_ _vars22131_ _K22132_)
                    (let* ((_g2213522150_
                            (lambda (_g2213622146_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2213622146_)))
                           (_g2213422161_
                            (lambda (_g2213622154_)
                              ((lambda () (_K22132_ _vars22131_)))))
                           (_g2213322212_
                            (lambda (_g2213622165_)
                              (if (gx#stx-pair? _g2213622165_)
                                  (let ((_e2213922168_
                                         (gx#syntax-e _g2213622165_)))
                                    (let ((_hd2214022172_
                                           (##car _e2213922168_))
                                          (_tl2214122175_
                                           (##cdr _e2213922168_)))
                                      (if (gx#stx-pair? _tl2214122175_)
                                          (let ((_e2214222178_
                                                 (gx#syntax-e _tl2214122175_)))
                                            (let ((_hd2214322182_
                                                   (##car _e2214222178_))
                                                  (_tl2214422185_
                                                   (##cdr _e2214222178_)))
                                              ((lambda (_L22188_ _L22190_)
                                                 (_loop22123_
                                                  _L22190_
                                                  _vars22131_
                                                  (lambda (_g2220622208_)
                                                    (_loop-class-list22127_
                                                     _L22188_
                                                     _g2220622208_
                                                     _K22132_))))
                                               _tl2214422185_
                                               _hd2214322182_)))
                                          (_g2213422161_ _g2213622165_))))
                                  (_g2213422161_ _g2213622165_)))))
                      (_g2213322212_ _rest22129_)))))
          (_loop22123_ _ptree22120_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx18936_ _tgt18938_ _ptree18939_ _K18940_ _E18941_)
        (letrec ((_generate118943_
                  (lambda (_tgt20473_ _ptree20475_ _K20476_ _E20477_)
                    (let* ((_g2047920487_
                            (lambda (_g2048020483_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2048020483_)))
                           (_g2047822116_
                            (lambda (_g2048020491_)
                              ((lambda (_L20494_)
                                 (let ()
                                   (let* ((_g2052120647_
                                           (lambda (_g2052220643_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2052220643_)))
                                          (_g2052020668_
                                           (lambda (_g2052220651_)
                                             (if (gx#stx-pair? _g2052220651_)
                                                 (let ((_e2063920654_
                                                        (gx#syntax-e
                                                         _g2052220651_)))
                                                   (let ((_hd2064020658_
                                                          (##car _e2063920654_))
                                                         (_tl2064120661_
                                                          (##cdr _e2063920654_)))
                                                     (if (gx#stx-datum?
                                                          _hd2064020658_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2064020658_)
                             'any:)
                     (if (gx#stx-null? _tl2064120661_)
                         ((lambda () _K20476_))
                         (_g2052120647_ _g2052220651_))
                     (_g2052120647_ _g2052220651_))
                 (_g2052120647_ _g2052220651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052120647_
                                                  _g2052220651_))))
                                          (_g2051920711_
                                           (lambda (_g2052220672_)
                                             (if (gx#stx-pair? _g2052220672_)
                                                 (let ((_e2063320675_
                                                        (gx#syntax-e
                                                         _g2052220672_)))
                                                   (let ((_hd2063420679_
                                                          (##car _e2063320675_))
                                                         (_tl2063520682_
                                                          (##cdr _e2063320675_)))
                                                     (if (gx#stx-datum?
                                                          _hd2063420679_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2063420679_)
                             'var:)
                     (if (gx#stx-pair? _tl2063520682_)
                         (let ((_e2063620685_ (gx#syntax-e _tl2063520682_)))
                           (let ((_hd2063720689_ (##car _e2063620685_))
                                 (_tl2063820692_ (##cdr _e2063620685_)))
                             (if (gx#stx-null? _tl2063820692_)
                                 ((lambda (_L20695_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L20695_
                                                            (cons _L20494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20476_ '()))))
                                  _hd2063720689_)
                                 (_g2052020668_ _g2052220672_))))
                         (_g2052020668_ _g2052220672_))
                     (_g2052020668_ _g2052220672_))
                 (_g2052020668_ _g2052220672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052020668_
                                                  _g2052220672_))))
                                          (_g2051820796_
                                           (lambda (_g2052220715_)
                                             (if (gx#stx-pair? _g2052220715_)
                                                 (let ((_e2062320718_
                                                        (gx#syntax-e
                                                         _g2052220715_)))
                                                   (let ((_hd2062420722_
                                                          (##car _e2062320718_))
                                                         (_tl2062520725_
                                                          (##cdr _e2062320718_)))
                                                     (if (gx#stx-datum?
                                                          _hd2062420722_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2062420722_)
                             'apply:)
                     (if (gx#stx-pair? _tl2062520725_)
                         (let ((_e2062620728_ (gx#syntax-e _tl2062520725_)))
                           (let ((_hd2062720732_ (##car _e2062620728_))
                                 (_tl2062820735_ (##cdr _e2062620728_)))
                             (if (gx#stx-pair? _tl2062820735_)
                                 (let ((_e2062920738_
                                        (gx#syntax-e _tl2062820735_)))
                                   (let ((_hd2063020742_ (##car _e2062920738_))
                                         (_tl2063120745_
                                          (##cdr _e2062920738_)))
                                     (if (gx#stx-null? _tl2063120745_)
                                         ((lambda (_L20748_ _L20750_)
                                            (let* ((_g2076520773_
                                                    (lambda (_g2076620769_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2076620769_)))
                                                   (_g2076420792_
                                                    (lambda (_g2076620777_)
                                                      ((lambda (_L20780_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L20780_
                                           (cons (cons _L20750_
                                                       (cons _L20494_ '()))
                                                 '()))
                                     '())
                               (cons (_generate118943_
                                      _L20780_
                                      _L20748_
                                      _K20476_
                                      _E20477_)
                                     '())))))
               _g2076620777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2076420792_
                                               (gx#genident 'e))))
                                          _hd2063020742_
                                          _hd2062720732_)
                                         (_g2051920711_ _g2052220715_))))
                                 (_g2051920711_ _g2052220715_))))
                         (_g2051920711_ _g2052220715_))
                     (_g2051920711_ _g2052220715_))
                 (_g2051920711_ _g2052220715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051920711_
                                                  _g2052220715_))))
                                          (_g2051720878_
                                           (lambda (_g2052220800_)
                                             (if (gx#stx-pair? _g2052220800_)
                                                 (let ((_e2061520803_
                                                        (gx#syntax-e
                                                         _g2052220800_)))
                                                   (let ((_hd2061620807_
                                                          (##car _e2061520803_))
                                                         (_tl2061720810_
                                                          (##cdr _e2061520803_)))
                                                     (if (gx#stx-datum?
                                                          _hd2061620807_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2061620807_)
                             'datum:)
                     (if (gx#stx-pair? _tl2061720810_)
                         (let ((_e2061820813_ (gx#syntax-e _tl2061720810_)))
                           (let ((_hd2061920817_ (##car _e2061820813_))
                                 (_tl2062020820_ (##cdr _e2061820813_)))
                             (if (gx#stx-null? _tl2062020820_)
                                 ((lambda (_L20823_)
                                    (let* ((_g2083620844_
                                            (lambda (_g2083720840_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2083720840_)))
                                           (_g2083520863_
                                            (lambda (_g2083720848_)
                                              ((lambda (_L20851_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L20851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20494_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L20823_ '()))
                                         '())))
                       (cons _K20476_ (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2083720848_))))
                                      (_g2083520863_
                                       (let ((_e20867_ (gx#stx-e _L20823_)))
                                         (if (let ((_$e20870_
                                                    (symbol? _e20867_)))
                                               (if _$e20870_
                                                   _$e20870_
                                                   (let ((_$e20874_
                                                          (keyword? _e20867_)))
                                                     (if _$e20874_
                                                         _$e20874_
                                                         (immediate?
                                                          _e20867_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e20867_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2061920817_)
                                 (_g2051820796_ _g2052220800_))))
                         (_g2051820796_ _g2052220800_))
                     (_g2051820796_ _g2052220800_))
                 (_g2051820796_ _g2052220800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051820796_
                                                  _g2052220800_))))
                                          (_g2051620932_
                                           (lambda (_g2052220882_)
                                             (if (gx#stx-pair? _g2052220882_)
                                                 (let ((_e2060520885_
                                                        (gx#syntax-e
                                                         _g2052220882_)))
                                                   (let ((_hd2060620889_
                                                          (##car _e2060520885_))
                                                         (_tl2060720892_
                                                          (##cdr _e2060520885_)))
                                                     (if (gx#stx-datum?
                                                          _hd2060620889_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2060620889_)
                             'class:)
                     (if (gx#stx-pair? _tl2060720892_)
                         (let ((_e2060820895_ (gx#syntax-e _tl2060720892_)))
                           (let ((_hd2060920899_ (##car _e2060820895_))
                                 (_tl2061020902_ (##cdr _e2060820895_)))
                             (if (gx#stx-pair? _tl2061020902_)
                                 (let ((_e2061120905_
                                        (gx#syntax-e _tl2061020902_)))
                                   (let ((_hd2061220909_ (##car _e2061120905_))
                                         (_tl2061320912_
                                          (##cdr _e2061120905_)))
                                     (if (gx#stx-null? _tl2061320912_)
                                         ((lambda (_L20915_ _L20917_)
                                            (_generate-class18949_
                                             (gx#stx-e _L20917_)
                                             _tgt20473_
                                             _L20915_
                                             _K20476_
                                             _E20477_))
                                          _hd2061220909_
                                          _hd2060920899_)
                                         (_g2051720878_ _g2052220882_))))
                                 (_g2051720878_ _g2052220882_))))
                         (_g2051720878_ _g2052220882_))
                     (_g2051720878_ _g2052220882_))
                 (_g2051720878_ _g2052220882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051720878_
                                                  _g2052220882_))))
                                          (_g2051520986_
                                           (lambda (_g2052220936_)
                                             (if (gx#stx-pair? _g2052220936_)
                                                 (let ((_e2059420939_
                                                        (gx#syntax-e
                                                         _g2052220936_)))
                                                   (let ((_hd2059520943_
                                                          (##car _e2059420939_))
                                                         (_tl2059620946_
                                                          (##cdr _e2059420939_)))
                                                     (if (gx#stx-datum?
                                                          _hd2059520943_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2059520943_)
                             'struct:)
                     (if (gx#stx-pair? _tl2059620946_)
                         (let ((_e2059720949_ (gx#syntax-e _tl2059620946_)))
                           (let ((_hd2059820953_ (##car _e2059720949_))
                                 (_tl2059920956_ (##cdr _e2059720949_)))
                             (if (gx#stx-pair? _tl2059920956_)
                                 (let ((_e2060020959_
                                        (gx#syntax-e _tl2059920956_)))
                                   (let ((_hd2060120963_ (##car _e2060020959_))
                                         (_tl2060220966_
                                          (##cdr _e2060020959_)))
                                     (if (gx#stx-null? _tl2060220966_)
                                         ((lambda (_L20969_ _L20971_)
                                            (_generate-struct18948_
                                             (gx#stx-e _L20971_)
                                             _tgt20473_
                                             _L20969_
                                             _K20476_
                                             _E20477_))
                                          _hd2060120963_
                                          _hd2059820953_)
                                         (_g2051620932_ _g2052220936_))))
                                 (_g2051620932_ _g2052220936_))))
                         (_g2051620932_ _g2052220936_))
                     (_g2051620932_ _g2052220936_))
                 (_g2051620932_ _g2052220936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051620932_
                                                  _g2052220936_))))
                                          (_g2051421164_
                                           (lambda (_g2052220990_)
                                             (if (gx#stx-pair? _g2052220990_)
                                                 (let ((_e2058620993_
                                                        (gx#syntax-e
                                                         _g2052220990_)))
                                                   (let ((_hd2058720997_
                                                          (##car _e2058620993_))
                                                         (_tl2058821000_
                                                          (##cdr _e2058620993_)))
                                                     (if (gx#stx-datum?
                                                          _hd2058720997_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2058720997_)
                             'vector:)
                     (if (gx#stx-pair? _tl2058821000_)
                         (let ((_e2058921003_ (gx#syntax-e _tl2058821000_)))
                           (let ((_hd2059021007_ (##car _e2058921003_))
                                 (_tl2059121010_ (##cdr _e2058921003_)))
                             (if (gx#stx-null? _tl2059121010_)
                                 ((lambda (_L21013_)
                                    (let* ((_g2102721048_
                                            (lambda (_g2102821044_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2102821044_)))
                                           (_g2102621089_
                                            (lambda (_g2102821052_)
                                              (if (gx#stx-pair? _g2102821052_)
                                                  (let ((_e2103721055_
                                                         (gx#syntax-e
                                                          _g2102821052_)))
                                                    (let ((_hd2103821059_
                                                           (##car _e2103721055_))
                                                          (_tl2103921062_
                                                           (##cdr _e2103721055_)))
                                                      (if (gx#stx-datum?
                                                           _hd2103821059_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2103821059_)
                              'list:)
                      (if (gx#stx-pair? _tl2103921062_)
                          (let ((_e2104021065_ (gx#syntax-e _tl2103921062_)))
                            (let ((_hd2104121069_ (##car _e2104021065_))
                                  (_tl2104221072_ (##cdr _e2104021065_)))
                              (if (gx#stx-null? _tl2104221072_)
                                  ((lambda (_L21075_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20494_ '()))
                                                 (cons (_generate-list-vector18947_
                                                        _tgt20473_
                                                        _L21075_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20476_
                                                        _E20477_)
                                                       (cons _E20477_ '())))))
                                   _hd2104121069_)
                                  (_g2102721048_ _g2102821052_))))
                          (_g2102721048_ _g2102821052_))
                      (_g2102721048_ _g2102821052_))
                  (_g2102721048_ _g2102821052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2102721048_
                                                   _g2102821052_))))
                                           (_g2102521160_
                                            (lambda (_g2102821093_)
                                              (if (gx#stx-pair? _g2102821093_)
                                                  (let ((_e2103021096_
                                                         (gx#syntax-e
                                                          _g2102821093_)))
                                                    (let ((_hd2103121100_
                                                           (##car _e2103021096_))
                                                          (_tl2103221103_
                                                           (##cdr _e2103021096_)))
                                                      (if (gx#stx-datum?
                                                           _hd2103121100_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2103121100_)
                              'simple:)
                      (if (gx#stx-pair? _tl2103221103_)
                          (let ((_e2103321106_ (gx#syntax-e _tl2103221103_)))
                            (let ((_hd2103421110_ (##car _e2103321106_))
                                  (_tl2103521113_ (##cdr _e2103321106_)))
                              (if (gx#stx-null? _tl2103521113_)
                                  ((lambda (_L21116_)
                                     (let* ((_g2112921137_
                                             (lambda (_g2113021133_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2113021133_)))
                                            (_g2112821156_
                                             (lambda (_g2113021141_)
                                               ((lambda (_L21144_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20494_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L21144_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector18946_
                               _tgt20473_
                               _L21116_
                               '0
                               _K20476_
                               _E20477_)
                              (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2113021141_))))
                                       (_g2112821156_
                                        (gx#stx-length _L21116_))))
                                   _hd2103421110_)
                                  (_g2102621089_ _g2102821093_))))
                          (_g2102621089_ _g2102821093_))
                      (_g2102621089_ _g2102821093_))
                  (_g2102621089_ _g2102821093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2102621089_
                                                   _g2102821093_)))))
                                      (_g2102521160_ _L21013_)))
                                  _hd2059021007_)
                                 (_g2051520986_ _g2052220990_))))
                         (_g2051520986_ _g2052220990_))
                     (_g2051520986_ _g2052220990_))
                 (_g2051520986_ _g2052220990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051520986_
                                                  _g2052220990_))))
                                          (_g2051321342_
                                           (lambda (_g2052221168_)
                                             (if (gx#stx-pair? _g2052221168_)
                                                 (let ((_e2057921171_
                                                        (gx#syntax-e
                                                         _g2052221168_)))
                                                   (let ((_hd2058021175_
                                                          (##car _e2057921171_))
                                                         (_tl2058121178_
                                                          (##cdr _e2057921171_)))
                                                     (if (gx#stx-datum?
                                                          _hd2058021175_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2058021175_)
                             'values:)
                     (if (gx#stx-pair? _tl2058121178_)
                         (let ((_e2058221181_ (gx#syntax-e _tl2058121178_)))
                           (let ((_hd2058321185_ (##car _e2058221181_))
                                 (_tl2058421188_ (##cdr _e2058221181_)))
                             (if (gx#stx-null? _tl2058421188_)
                                 ((lambda (_L21191_)
                                    (let* ((_g2120521226_
                                            (lambda (_g2120621222_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2120621222_)))
                                           (_g2120421267_
                                            (lambda (_g2120621230_)
                                              (if (gx#stx-pair? _g2120621230_)
                                                  (let ((_e2121521233_
                                                         (gx#syntax-e
                                                          _g2120621230_)))
                                                    (let ((_hd2121621237_
                                                           (##car _e2121521233_))
                                                          (_tl2121721240_
                                                           (##cdr _e2121521233_)))
                                                      (if (gx#stx-datum?
                                                           _hd2121621237_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2121621237_)
                              'list:)
                      (if (gx#stx-pair? _tl2121721240_)
                          (let ((_e2121821243_ (gx#syntax-e _tl2121721240_)))
                            (let ((_hd2121921247_ (##car _e2121821243_))
                                  (_tl2122021250_ (##cdr _e2121821243_)))
                              (if (gx#stx-null? _tl2122021250_)
                                  ((lambda (_L21253_)
                                     (_generate-list-vector18947_
                                      _tgt20473_
                                      _L21253_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20476_
                                      _E20477_))
                                   _hd2121921247_)
                                  (_g2120521226_ _g2120621230_))))
                          (_g2120521226_ _g2120621230_))
                      (_g2120521226_ _g2120621230_))
                  (_g2120521226_ _g2120621230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120521226_
                                                   _g2120621230_))))
                                           (_g2120321338_
                                            (lambda (_g2120621271_)
                                              (if (gx#stx-pair? _g2120621271_)
                                                  (let ((_e2120821274_
                                                         (gx#syntax-e
                                                          _g2120621271_)))
                                                    (let ((_hd2120921278_
                                                           (##car _e2120821274_))
                                                          (_tl2121021281_
                                                           (##cdr _e2120821274_)))
                                                      (if (gx#stx-datum?
                                                           _hd2120921278_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2120921278_)
                              'simple:)
                      (if (gx#stx-pair? _tl2121021281_)
                          (let ((_e2121121284_ (gx#syntax-e _tl2121021281_)))
                            (let ((_hd2121221288_ (##car _e2121121284_))
                                  (_tl2121321291_ (##cdr _e2121121284_)))
                              (if (gx#stx-null? _tl2121321291_)
                                  ((lambda (_L21294_)
                                     (let* ((_g2130721315_
                                             (lambda (_g2130821311_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2130821311_)))
                                            (_g2130621334_
                                             (lambda (_g2130821319_)
                                               ((lambda (_L21322_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20494_ '()))
                                    (cons _L21322_ '())))
                        (cons (_generate-simple-vector18946_
                               _tgt20473_
                               _L21294_
                               '0
                               _K20476_
                               _E20477_)
                              (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2130821319_))))
                                       (_g2130621334_
                                        (gx#stx-length _L21294_))))
                                   _hd2121221288_)
                                  (_g2120421267_ _g2120621271_))))
                          (_g2120421267_ _g2120621271_))
                      (_g2120421267_ _g2120621271_))
                  (_g2120421267_ _g2120621271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120421267_
                                                   _g2120621271_)))))
                                      (_g2120321338_ _L21191_)))
                                  _hd2058321185_)
                                 (_g2051421164_ _g2052221168_))))
                         (_g2051421164_ _g2052221168_))
                     (_g2051421164_ _g2052221168_))
                 (_g2051421164_ _g2052221168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051421164_
                                                  _g2052221168_))))
                                          (_g2051221413_
                                           (lambda (_g2052221346_)
                                             (if (gx#stx-pair? _g2052221346_)
                                                 (let ((_e2057221349_
                                                        (gx#syntax-e
                                                         _g2052221346_)))
                                                   (let ((_hd2057321353_
                                                          (##car _e2057221349_))
                                                         (_tl2057421356_
                                                          (##cdr _e2057221349_)))
                                                     (if (gx#stx-datum?
                                                          _hd2057321353_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2057321353_)
                             'box:)
                     (if (gx#stx-pair? _tl2057421356_)
                         (let ((_e2057521359_ (gx#syntax-e _tl2057421356_)))
                           (let ((_hd2057621363_ (##car _e2057521359_))
                                 (_tl2057721366_ (##cdr _e2057521359_)))
                             (if (gx#stx-null? _tl2057721366_)
                                 ((lambda (_L21369_)
                                    (let* ((_g2138221390_
                                            (lambda (_g2138321386_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2138321386_)))
                                           (_g2138121409_
                                            (lambda (_g2138321394_)
                                              ((lambda (_L21397_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20494_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21397_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20494_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate118943_
                                                _L21397_
                                                _L21369_
                                                _K20476_
                                                _E20477_)
                                               '())))
                             (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2138321394_))))
                                      (_g2138121409_ (gx#genident 'e))))
                                  _hd2057621363_)
                                 (_g2051321342_ _g2052221346_))))
                         (_g2051321342_ _g2052221346_))
                     (_g2051321342_ _g2052221346_))
                 (_g2051321342_ _g2052221346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051321342_
                                                  _g2052221346_))))
                                          (_g2051121467_
                                           (lambda (_g2052221417_)
                                             (if (gx#stx-pair? _g2052221417_)
                                                 (let ((_e2056221420_
                                                        (gx#syntax-e
                                                         _g2052221417_)))
                                                   (let ((_hd2056321424_
                                                          (##car _e2056221420_))
                                                         (_tl2056421427_
                                                          (##cdr _e2056221420_)))
                                                     (if (gx#stx-datum?
                                                          _hd2056321424_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2056321424_)
                             'splice:)
                     (if (gx#stx-pair? _tl2056421427_)
                         (let ((_e2056521430_ (gx#syntax-e _tl2056421427_)))
                           (let ((_hd2056621434_ (##car _e2056521430_))
                                 (_tl2056721437_ (##cdr _e2056521430_)))
                             (if (gx#stx-pair? _tl2056721437_)
                                 (let ((_e2056821440_
                                        (gx#syntax-e _tl2056721437_)))
                                   (let ((_hd2056921444_ (##car _e2056821440_))
                                         (_tl2057021447_
                                          (##cdr _e2056821440_)))
                                     (if (gx#stx-null? _tl2057021447_)
                                         ((lambda (_L21450_ _L21452_)
                                            (_generate-splice18945_
                                             _tgt20473_
                                             _L21452_
                                             _L21450_
                                             _K20476_
                                             _E20477_))
                                          _hd2056921444_
                                          _hd2056621434_)
                                         (_g2051221413_ _g2052221417_))))
                                 (_g2051221413_ _g2052221417_))))
                         (_g2051221413_ _g2052221417_))
                     (_g2051221413_ _g2052221417_))
                 (_g2051221413_ _g2052221417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051221413_
                                                  _g2052221417_))))
                                          (_g2051021488_
                                           (lambda (_g2052221471_)
                                             (if (gx#stx-pair? _g2052221471_)
                                                 (let ((_e2055721474_
                                                        (gx#syntax-e
                                                         _g2052221471_)))
                                                   (let ((_hd2055821478_
                                                          (##car _e2055721474_))
                                                         (_tl2055921481_
                                                          (##cdr _e2055721474_)))
                                                     (if (gx#stx-datum?
                                                          _hd2055821478_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2055821478_)
                             'null:)
                     (if (gx#stx-null? _tl2055921481_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20494_ '()))
                                        (cons _K20476_ (cons _E20477_ '()))))))
                         (_g2051121467_ _g2052221471_))
                     (_g2051121467_ _g2052221471_))
                 (_g2051121467_ _g2052221471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051121467_
                                                  _g2052221471_))))
                                          (_g2050921607_
                                           (lambda (_g2052221492_)
                                             (if (gx#stx-pair? _g2052221492_)
                                                 (let ((_e2054821495_
                                                        (gx#syntax-e
                                                         _g2052221492_)))
                                                   (let ((_hd2054921499_
                                                          (##car _e2054821495_))
                                                         (_tl2055021502_
                                                          (##cdr _e2054821495_)))
                                                     (if (gx#stx-datum?
                                                          _hd2054921499_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2054921499_)
                             'cons:)
                     (if (gx#stx-pair? _tl2055021502_)
                         (let ((_e2055121505_ (gx#syntax-e _tl2055021502_)))
                           (let ((_hd2055221509_ (##car _e2055121505_))
                                 (_tl2055321512_ (##cdr _e2055121505_)))
                             (if (gx#stx-pair? _tl2055321512_)
                                 (let ((_e2055421515_
                                        (gx#syntax-e _tl2055321512_)))
                                   (let ((_hd2055521519_ (##car _e2055421515_))
                                         (_tl2055621522_
                                          (##cdr _e2055421515_)))
                                     (if (gx#stx-null? _tl2055621522_)
                                         ((lambda (_L21525_ _L21527_)
                                            (let* ((_g2154321558_
                                                    (lambda (_g2154421554_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2154421554_)))
                                                   (_g2154221603_
                                                    (lambda (_g2154421562_)
                                                      (if (gx#stx-pair?
                                                           _g2154421562_)
                                                          (let ((_e2154721565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2154421562_)))
                    (let ((_hd2154821569_ (##car _e2154721565_))
                          (_tl2154921572_ (##cdr _e2154721565_)))
                      (if (gx#stx-pair? _tl2154921572_)
                          (let ((_e2155021575_ (gx#syntax-e _tl2154921572_)))
                            (let ((_hd2155121579_ (##car _e2155021575_))
                                  (_tl2155221582_ (##cdr _e2155021575_)))
                              (if (gx#stx-null? _tl2155221582_)
                                  ((lambda (_L21585_ _L21587_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20494_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20494_ '()))
                                               '()))
                                   (cons (cons _L21585_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20494_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate118943_
                                    _L21587_
                                    _L21527_
                                    (_generate118943_
                                     _L21585_
                                     _L21525_
                                     _K20476_
                                     _E20477_)
                                    _E20477_)
                                   '())))
                 (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2155121579_
                                   _hd2154821569_)
                                  (_g2154321558_ _g2154421562_))))
                          (_g2154321558_ _g2154421562_))))
                  (_g2154321558_ _g2154421562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2154221603_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2055521519_
                                          _hd2055221509_)
                                         (_g2051021488_ _g2052221492_))))
                                 (_g2051021488_ _g2052221492_))))
                         (_g2051021488_ _g2052221492_))
                     (_g2051021488_ _g2052221492_))
                 (_g2051021488_ _g2052221492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051021488_
                                                  _g2052221492_))))
                                          (_g2050821647_
                                           (lambda (_g2052221611_)
                                             (if (gx#stx-pair? _g2052221611_)
                                                 (let ((_e2054021614_
                                                        (gx#syntax-e
                                                         _g2052221611_)))
                                                   (let ((_hd2054121618_
                                                          (##car _e2054021614_))
                                                         (_tl2054221621_
                                                          (##cdr _e2054021614_)))
                                                     (if (gx#stx-datum?
                                                          _hd2054121618_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2054121618_)
                             'not:)
                     (if (gx#stx-pair? _tl2054221621_)
                         (let ((_e2054321624_ (gx#syntax-e _tl2054221621_)))
                           (let ((_hd2054421628_ (##car _e2054321624_))
                                 (_tl2054521631_ (##cdr _e2054321624_)))
                             (if (gx#stx-null? _tl2054521631_)
                                 ((lambda (_L21634_)
                                    (_generate118943_
                                     _tgt20473_
                                     _L21634_
                                     _E20477_
                                     _K20476_))
                                  _hd2054421628_)
                                 (_g2050921607_ _g2052221611_))))
                         (_g2050921607_ _g2052221611_))
                     (_g2050921607_ _g2052221611_))
                 (_g2050921607_ _g2052221611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2050921607_
                                                  _g2052221611_))))
                                          (_g2050721735_
                                           (lambda (_g2052221651_)
                                             (if (gx#stx-pair? _g2052221651_)
                                                 (let ((_e2053621654_
                                                        (gx#syntax-e
                                                         _g2052221651_)))
                                                   (let ((_hd2053721658_
                                                          (##car _e2053621654_))
                                                         (_tl2053821661_
                                                          (##cdr _e2053621654_)))
                                                     (if (gx#stx-datum?
                                                          _hd2053721658_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2053721658_)
                             'or:)
                     ((lambda (_L21664_)
                        (let* ((_g2167621688_
                                (lambda (_g2167721684_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2167721684_)))
                               (_g2167521699_
                                (lambda (_g2167721692_)
                                  ((lambda () _E20477_))))
                               (_g2167421731_
                                (lambda (_g2167721703_)
                                  (if (gx#stx-pair? _g2167721703_)
                                      (let ((_e2168021706_
                                             (gx#syntax-e _g2167721703_)))
                                        (let ((_hd2168121710_
                                               (##car _e2168021706_))
                                              (_tl2168221713_
                                               (##cdr _e2168021706_)))
                                          ((lambda (_L21716_ _L21718_)
                                             (_generate118943_
                                              _tgt20473_
                                              _L21718_
                                              _K20476_
                                              (_generate118943_
                                               _tgt20473_
                                               (cons 'or: _L21716_)
                                               _K20476_
                                               _E20477_)))
                                           _tl2168221713_
                                           _hd2168121710_)))
                                      (_g2167521699_ _g2167721703_)))))
                          (_g2167421731_ _L21664_)))
                      _tl2053821661_)
                     (_g2050821647_ _g2052221651_))
                 (_g2050821647_ _g2052221651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2050821647_
                                                  _g2052221651_))))
                                          (_g2050621823_
                                           (lambda (_g2052221739_)
                                             (if (gx#stx-pair? _g2052221739_)
                                                 (let ((_e2053221742_
                                                        (gx#syntax-e
                                                         _g2052221739_)))
                                                   (let ((_hd2053321746_
                                                          (##car _e2053221742_))
                                                         (_tl2053421749_
                                                          (##cdr _e2053221742_)))
                                                     (if (gx#stx-datum?
                                                          _hd2053321746_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2053321746_)
                             'and:)
                     ((lambda (_L21752_)
                        (let* ((_g2176421776_
                                (lambda (_g2176521772_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2176521772_)))
                               (_g2176321787_
                                (lambda (_g2176521780_)
                                  ((lambda () _K20476_))))
                               (_g2176221819_
                                (lambda (_g2176521791_)
                                  (if (gx#stx-pair? _g2176521791_)
                                      (let ((_e2176821794_
                                             (gx#syntax-e _g2176521791_)))
                                        (let ((_hd2176921798_
                                               (##car _e2176821794_))
                                              (_tl2177021801_
                                               (##cdr _e2176821794_)))
                                          ((lambda (_L21804_ _L21806_)
                                             (_generate118943_
                                              _tgt20473_
                                              _L21806_
                                              (_generate118943_
                                               _tgt20473_
                                               (cons 'and: _L21804_)
                                               _K20476_
                                               _E20477_)
                                              _E20477_))
                                           _tl2177021801_
                                           _hd2176921798_)))
                                      (_g2176321787_ _g2176521791_)))))
                          (_g2176221819_ _L21752_)))
                      _tl2053421749_)
                     (_g2050721735_ _g2052221739_))
                 (_g2050721735_ _g2052221739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2050721735_
                                                  _g2052221739_))))
                                          (_g2050522112_
                                           (lambda (_g2052221827_)
                                             (if (gx#stx-pair? _g2052221827_)
                                                 (let ((_e2052521830_
                                                        (gx#syntax-e
                                                         _g2052221827_)))
                                                   (let ((_hd2052621834_
                                                          (##car _e2052521830_))
                                                         (_tl2052721837_
                                                          (##cdr _e2052521830_)))
                                                     (if (gx#stx-datum?
                                                          _hd2052621834_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2052621834_)
                             '?:)
                     (if (gx#stx-pair? _tl2052721837_)
                         (let ((_e2052821840_ (gx#syntax-e _tl2052721837_)))
                           (let ((_hd2052921844_ (##car _e2052821840_))
                                 (_tl2053021847_ (##cdr _e2052821840_)))
                             ((lambda (_L21850_ _L21852_)
                                (let* ((_g2186821900_
                                        (lambda (_g2186921896_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2186921896_)))
                                       (_g2186721998_
                                        (lambda (_g2186921904_)
                                          (if (gx#stx-pair? _g2186921904_)
                                              (let ((_e2188321907_
                                                     (gx#syntax-e
                                                      _g2186921904_)))
                                                (let ((_hd2188421911_
                                                       (##car _e2188321907_))
                                                      (_tl2188521914_
                                                       (##cdr _e2188321907_)))
                                                  (if (gx#stx-datum?
                                                       _hd2188421911_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2188421911_)
                          '::)
                  (if (gx#stx-pair? _tl2188521914_)
                      (let ((_e2188621917_ (gx#syntax-e _tl2188521914_)))
                        (let ((_hd2188721921_ (##car _e2188621917_))
                              (_tl2188821924_ (##cdr _e2188621917_)))
                          (if (gx#stx-pair? _tl2188821924_)
                              (let ((_e2188921927_
                                     (gx#syntax-e _tl2188821924_)))
                                (let ((_hd2189021931_ (##car _e2188921927_))
                                      (_tl2189121934_ (##cdr _e2188921927_)))
                                  (if (gx#stx-datum? _hd2189021931_)
                                      (if (equal? (gx#stx-e _hd2189021931_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2189121934_)
                                              (let ((_e2189221937_
                                                     (gx#syntax-e
                                                      _tl2189121934_)))
                                                (let ((_hd2189321941_
                                                       (##car _e2189221937_))
                                                      (_tl2189421944_
                                                       (##cdr _e2189221937_)))
                                                  (if (gx#stx-null?
                                                       _tl2189421944_)
                                                      ((lambda (_L21947_
                                                                _L21949_)
                                                         (let* ((_g2196721975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2196821971_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2196821971_)))
                        (_g2196621994_
                         (lambda (_g2196821979_)
                           ((lambda (_L21982_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L21852_
                                                        (cons _L20494_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L21982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L21949_ (cons _L20494_ '()))
                                        '()))
                            '())
                      (cons (_generate118943_
                             _L21982_
                             _L21947_
                             _K20476_
                             _E20477_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20477_ '()))))))
                            _g2196821979_))))
                   (_g2196621994_ (gx#genident 'e))))
               _hd2189321941_
               _hd2188721921_)
              (_g2186821900_ _g2186921904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186821900_ _g2186921904_))
                                          (_g2186821900_ _g2186921904_))
                                      (_g2186821900_ _g2186921904_))))
                              (_g2186821900_ _g2186921904_))))
                      (_g2186821900_ _g2186921904_))
                  (_g2186821900_ _g2186921904_))
              (_g2186821900_ _g2186921904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186821900_ _g2186921904_))))
                                       (_g2186622069_
                                        (lambda (_g2186922002_)
                                          (if (gx#stx-pair? _g2186922002_)
                                              (let ((_e2187522005_
                                                     (gx#syntax-e
                                                      _g2186922002_)))
                                                (let ((_hd2187622009_
                                                       (##car _e2187522005_))
                                                      (_tl2187722012_
                                                       (##cdr _e2187522005_)))
                                                  (if (gx#stx-datum?
                                                       _hd2187622009_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2187622009_)
                          '=>:)
                  (if (gx#stx-pair? _tl2187722012_)
                      (let ((_e2187822015_ (gx#syntax-e _tl2187722012_)))
                        (let ((_hd2187922019_ (##car _e2187822015_))
                              (_tl2188022022_ (##cdr _e2187822015_)))
                          (if (gx#stx-null? _tl2188022022_)
                              ((lambda (_L22025_)
                                 (let* ((_g2203822046_
                                         (lambda (_g2203922042_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2203922042_)))
                                        (_g2203722065_
                                         (lambda (_g2203922050_)
                                           ((lambda (_L22053_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L21852_ (cons _L20494_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22053_
                                      (cons (_generate118943_
                                             _L22053_
                                             _L22025_
                                             _K20476_
                                             _E20477_)
                                            (cons _E20477_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2203922050_))))
                                   (_g2203722065_ (gx#genident 'e))))
                               _hd2187922019_)
                              (_g2186721998_ _g2186922002_))))
                      (_g2186721998_ _g2186922002_))
                  (_g2186721998_ _g2186922002_))
              (_g2186721998_ _g2186922002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186721998_ _g2186922002_))))
                                       (_g2186522097_
                                        (lambda (_g2186922073_)
                                          (if (gx#stx-pair? _g2186922073_)
                                              (let ((_e2187122076_
                                                     (gx#syntax-e
                                                      _g2186922073_)))
                                                (let ((_hd2187222080_
                                                       (##car _e2187122076_))
                                                      (_tl2187322083_
                                                       (##cdr _e2187122076_)))
                                                  (if (gx#stx-null?
                                                       _tl2187322083_)
                                                      ((lambda (_L22086_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L21852_ (cons _L20494_ '())))
                             (cons (_generate118943_
                                    _tgt20473_
                                    _L22086_
                                    _K20476_
                                    _E20477_)
                                   (cons _E20477_ '())))))
               _hd2187222080_)
              (_g2186622069_ _g2186922073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186622069_ _g2186922073_))))
                                       (_g2186422108_
                                        (lambda (_g2186922101_)
                                          (if (gx#stx-null? _g2186922101_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L21852_ (cons _L20494_ '())))
                     (cons _K20476_ (cons _E20477_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186522097_ _g2186922101_)))))
                                  (_g2186422108_ _L21850_)))
                              _tl2053021847_
                              _hd2052921844_)))
                         (_g2050621823_ _g2052221827_))
                     (_g2050621823_ _g2052221827_))
                 (_g2050621823_ _g2052221827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2050621823_
                                                  _g2052221827_)))))
                                     (_g2050522112_ _ptree20475_))))
                               _g2048020491_))))
                      (_g2047822116_ _tgt20473_))))
                 (_generate-splice18945_
                  (lambda (_tgt19845_ _hd19847_ _rest19848_ _K19849_ _E19850_)
                    (let* ((_g1985219869_
                            (lambda (_g1985319865_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1985319865_)))
                           (_g1985120469_
                            (lambda (_g1985319873_)
                              (if (gx#stx-pair/null? _g1985319873_)
                                  (if (fx>= (gx#stx-length _g1985319873_) '0)
                                      (let ((_g31008_
                                             (gx#syntax-split-splice
                                              _g1985319873_
                                              '0)))
                                        (begin
                                          (let ((_g31009_
                                                 (values-count _g31008_)))
                                            (if (not (fx= _g31009_ 2))
                                                (error "Context expects 2 values"
                                                       _g31009_)))
                                          (let ((_target1985519876_
                                                 (values-ref _g31008_ 0))
                                                (_tl1985719879_
                                                 (values-ref _g31008_ 1)))
                                            (if (gx#stx-null? _tl1985719879_)
                                                (letrec ((_loop1985819882_
                                                          (lambda (_hd1985619886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var1986219889_)
                    (if (gx#stx-pair? _hd1985619886_)
                        (let ((_e1985919892_ (gx#syntax-e _hd1985619886_)))
                          (let ((_lp-hd1986019896_ (##car _e1985919892_))
                                (_lp-tl1986119899_ (##cdr _e1985919892_)))
                            (_loop1985819882_
                             _lp-tl1986119899_
                             (cons _lp-hd1986019896_ _var1986219889_))))
                        (let ((_var1986319902_ (reverse _var1986219889_)))
                          ((lambda (_L19906_)
                             (let ()
                               (let* ((_g1992219939_
                                       (lambda (_g1992319935_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1992319935_)))
                                      (_g1992120457_
                                       (lambda (_g1992319943_)
                                         (if (gx#stx-pair/null? _g1992319943_)
                                             (if (fx>= (gx#stx-length
                                                        _g1992319943_)
                                                       '0)
                                                 (let ((_g31010_
                                                        (gx#syntax-split-splice
                                                         _g1992319943_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31011_
                                                            (values-count
                                                             _g31010_)))
                                                       (if (not (fx= _g31011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1992519946_
                                                            (values-ref
                                                             _g31010_
                                                             0))
                                                           (_tl1992719949_
                                                            (values-ref
                                                             _g31010_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1992719949_)
                                                           (letrec ((_loop1992819952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1992619956_ _var-r1993219959_)
                               (if (gx#stx-pair? _hd1992619956_)
                                   (let ((_e1992919962_
                                          (gx#syntax-e _hd1992619956_)))
                                     (let ((_lp-hd1993019966_
                                            (##car _e1992919962_))
                                           (_lp-tl1993119969_
                                            (##cdr _e1992919962_)))
                                       (_loop1992819952_
                                        _lp-tl1993119969_
                                        (cons _lp-hd1993019966_
                                              _var-r1993219959_))))
                                   (let ((_var-r1993319972_
                                          (reverse _var-r1993219959_)))
                                     ((lambda (_L19976_)
                                        (let ()
                                          (let* ((_g1999320010_
                                                  (lambda (_g1999420006_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1999420006_)))
                                                 (_g1999220445_
                                                  (lambda (_g1999420014_)
                                                    (if (gx#stx-pair/null?
                                                         _g1999420014_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1999420014_)
                          '0)
                    (let ((_g31012_ (gx#syntax-split-splice _g1999420014_ '0)))
                      (begin
                        (let ((_g31013_ (values-count _g31012_)))
                          (if (not (fx= _g31013_ 2))
                              (error "Context expects 2 values" _g31013_)))
                        (let ((_target1999620017_ (values-ref _g31012_ 0))
                              (_tl1999820020_ (values-ref _g31012_ 1)))
                          (if (gx#stx-null? _tl1999820020_)
                              (letrec ((_loop1999920023_
                                        (lambda (_hd1999720027_
                                                 _init2000320030_)
                                          (if (gx#stx-pair? _hd1999720027_)
                                              (let ((_e2000020033_
                                                     (gx#syntax-e
                                                      _hd1999720027_)))
                                                (let ((_lp-hd2000120037_
                                                       (##car _e2000020033_))
                                                      (_lp-tl2000220040_
                                                       (##cdr _e2000020033_)))
                                                  (_loop1999920023_
                                                   _lp-tl2000220040_
                                                   (cons _lp-hd2000120037_
                                                         _init2000320030_))))
                                              (let ((_init2000420043_
                                                     (reverse _init2000320030_)))
                                                ((lambda (_L20047_)
                                                   (let ()
                                                     (let* ((_g2006420072_
                                                             (lambda (_g2006520068_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2006520068_)))
                                                            (_g2006320441_
                                                             (lambda (_g2006520076_)
                                                               ((lambda (_L20079_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2009220100_
                                    (lambda (_g2009320096_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2009320096_)))
                                   (_g2009120437_
                                    (lambda (_g2009320104_)
                                      ((lambda (_L20107_)
                                         (let ()
                                           (let* ((_g2012020128_
                                                   (lambda (_g2012120124_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2012120124_)))
                                                  (_g2011920433_
                                                   (lambda (_g2012120132_)
                                                     ((lambda (_L20135_)
                                                        (let ()
                                                          (let* ((_g2014820156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2014920152_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2014920152_)))
                         (_g2014720429_
                          (lambda (_g2014920160_)
                            ((lambda (_L20163_)
                               (let ()
                                 (let* ((_g2017620184_
                                         (lambda (_g2017720180_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2017720180_)))
                                        (_g2017520425_
                                         (lambda (_g2017720188_)
                                           ((lambda (_L20191_)
                                              (let ()
                                                (let* ((_g2020420212_
                                                        (lambda (_g2020520208_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2020520208_)))
                                                       (_g2020320421_
                                                        (lambda (_g2020520216_)
                                                          ((lambda (_L20219_)
                                                             (let ()
                                                               (let* ((_g2023220240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2023320236_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2023320236_)))
                              (_g2023120417_
                               (lambda (_g2023320244_)
                                 ((lambda (_L20247_)
                                    (let ()
                                      (let* ((_g2026020268_
                                              (lambda (_g2026120264_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2026120264_)))
                                             (_g2025920402_
                                              (lambda (_g2026120272_)
                                                ((lambda (_L20275_)
                                                   (let ()
                                                     (let* ((_g2028820296_
                                                             (lambda (_g2028920292_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2028920292_)))
                                                            (_g2028720390_
                                                             (lambda (_g2028920300_)
                                                               ((lambda (_L20303_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2031620324_
                                    (lambda (_g2031720320_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2031720320_)))
                                   (_g2031520386_
                                    (lambda (_g2031720328_)
                                      ((lambda (_L20331_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L20107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20219_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2034520356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2034620359_)
                        (cons _g2034520356_ _g2034620359_))
                      '()
                      _L19906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20247_ '())))
                                   '()))
                       (cons (cons _L20163_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20191_
                                                           (cons _L20219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2034720362_ _g2034820365_)
                                    (cons _g2034720362_ _g2034820365_))
                                  '()
                                  _L19976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20331_ '())))
                                         '()))
                             (cons (cons _L20135_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2034920368_ _g2035020371_)
                                    (cons _g2034920368_ _g2035020371_))
                                  '()
                                  _L19976_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20219_ '()))
                                     (cons (cons _L20163_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20219_
                     (begin
                       '#!void
                       (foldr (lambda (_g2035120374_ _g2035220377_)
                                (cons _g2035120374_ _g2035220377_))
                              '()
                              _L19976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20303_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L20135_
                             (cons _L20079_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2035320380_
                                                     _g2035420383_)
                                              (cons _g2035320380_
                                                    _g2035420383_))
                                            '()
                                            _L20047_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2031720328_))))
                              (_g2031520386_
                               (_generate118943_
                                _L20191_
                                _hd19847_
                                _L20275_
                                _L20303_)))))
                        _g2028920300_))))
               (_g2028720390_
                (cons _L20107_
                      (cons _L20219_
                            (begin
                              '#!void
                              (foldr (lambda (_g2039320396_ _g2039420399_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2039320396_ '()))
                                             _g2039420399_))
                                     '()
                                     _L19976_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2026120272_))))
                                        (_g2025920402_
                                         (cons _L20135_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20219_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L19976_
                                                        _L19906_)
                                                       (foldr (lambda (_g2040520409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2040620412_
                               _g2040720414_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2040620412_
                                          (cons _g2040520409_ '())))
                              _g2040720414_))
                      '()
                      _L19976_
                      _L19906_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2023320244_))))
                         (_g2023120417_
                          (_generate118943_
                           _L20219_
                           _rest19848_
                           _K19849_
                           _E19850_)))))
                   _g2020520216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2020320421_
                                                   (gx#genident 'rest)))))
                                            _g2017720188_))))
                                   (_g2017520425_ (gx#genident 'hd)))))
                             _g2014920160_))))
                    (_g2014720429_ (gx#genident 'splice-try)))))
              _g2012120132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2011920433_
                                              (gx#genident 'splice-loop)))))
                                       _g2009320104_))))
                              (_g2009120437_ (gx#genident 'splice-rest)))))
                        _g2006520076_))))
               (_g2006320441_ _tgt19845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2000420043_))))))
                                (_loop1999920023_ _target1999620017_ '()))
                              (_g1999320010_ _g1999420014_)))))
                    (_g1999320010_ _g1999420014_))
                (_g1999320010_ _g1999420014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1999220445_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2044820451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2044920454_)
                  (cons _g2044820451_ _g2044920454_))
                '()
                _L19906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r1993319972_))))))
                     (_loop1992819952_ _target1992519946_ '()))
                   (_g1992219939_ _g1992319943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1992219939_ _g1992319943_))
                                             (_g1992219939_ _g1992319943_)))))
                                 (_g1992120457_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2046020463_
                                                     _g2046120466_)
                                              (cons _g2046020463_
                                                    _g2046120466_))
                                            '()
                                            _L19906_)))))))
                           _var1986319902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1985819882_
                                                   _target1985519876_
                                                   '()))
                                                (_g1985219869_
                                                 _g1985319873_)))))
                                      (_g1985219869_ _g1985319873_))
                                  (_g1985219869_ _g1985319873_)))))
                      (_g1985120469_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd19847_)))))
                 (_generate-simple-vector18946_
                  (lambda (_tgt19687_
                           _body19689_
                           _start19690_
                           _K19691_
                           _E19692_)
                    (let _recur19694_ ((_rest19697_ _body19689_)
                                       (_off19699_ _start19690_))
                      (let* ((_g1970219714_
                              (lambda (_g1970319710_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1970319710_)))
                             (_g1970119725_
                              (lambda (_g1970319718_) ((lambda () _K19691_))))
                             (_g1970019841_
                              (lambda (_g1970319729_)
                                (if (gx#stx-pair? _g1970319729_)
                                    (let ((_e1970619732_
                                           (gx#syntax-e _g1970319729_)))
                                      (let ((_hd1970719736_
                                             (##car _e1970619732_))
                                            (_tl1970819739_
                                             (##cdr _e1970619732_)))
                                        ((lambda (_L19742_ _L19744_)
                                           (let* ((_g1975919778_
                                                   (lambda (_g1976019774_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1976019774_)))
                                                  (_g1975819837_
                                                   (lambda (_g1976019782_)
                                                     (if (gx#stx-pair?
                                                          _g1976019782_)
                                                         (let ((_e1976419785_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1976019782_)))
                   (let ((_hd1976519789_ (##car _e1976419785_))
                         (_tl1976619792_ (##cdr _e1976419785_)))
                     (if (gx#stx-pair? _tl1976619792_)
                         (let ((_e1976719795_ (gx#syntax-e _tl1976619792_)))
                           (let ((_hd1976819799_ (##car _e1976719795_))
                                 (_tl1976919802_ (##cdr _e1976719795_)))
                             (if (gx#stx-pair? _tl1976919802_)
                                 (let ((_e1977019805_
                                        (gx#syntax-e _tl1976919802_)))
                                   (let ((_hd1977119809_ (##car _e1977019805_))
                                         (_tl1977219812_
                                          (##cdr _e1977019805_)))
                                     (if (gx#stx-null? _tl1977219812_)
                                         ((lambda (_L19815_ _L19817_ _L19818_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L19817_ (cons _L19815_ '())))
                                    '()))
                        '())
                  (cons (_generate118943_
                         _L19818_
                         _L19744_
                         (_recur19694_ _L19742_ (fx1+ _off19699_))
                         _E19692_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1977119809_
                                          _hd1976819799_
                                          _hd1976519789_)
                                         (_g1975919778_ _g1976019782_))))
                                 (_g1975919778_ _g1976019782_))))
                         (_g1975919778_ _g1976019782_))))
                 (_g1975919778_ _g1976019782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1975819837_
                                              (list (gx#genident 'e)
                                                    _tgt19687_
                                                    _off19699_))))
                                         _tl1970819739_
                                         _hd1970719736_)))
                                    (_g1970119725_ _g1970319729_)))))
                        (_g1970019841_ _rest19697_)))))
                 (_generate-list-vector18947_
                  (lambda (_tgt19597_
                           _body19599_
                           _tgt->list19600_
                           _start19601_
                           _K19602_
                           _E19603_)
                    (let* ((_g1960519624_
                            (lambda (_g1960619620_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1960619620_)))
                           (_g1960419683_
                            (lambda (_g1960619628_)
                              (if (gx#stx-pair? _g1960619628_)
                                  (let ((_e1961019631_
                                         (gx#syntax-e _g1960619628_)))
                                    (let ((_hd1961119635_
                                           (##car _e1961019631_))
                                          (_tl1961219638_
                                           (##cdr _e1961019631_)))
                                      (if (gx#stx-pair? _tl1961219638_)
                                          (let ((_e1961319641_
                                                 (gx#syntax-e _tl1961219638_)))
                                            (let ((_hd1961419645_
                                                   (##car _e1961319641_))
                                                  (_tl1961519648_
                                                   (##cdr _e1961319641_)))
                                              (if (gx#stx-pair? _tl1961519648_)
                                                  (let ((_e1961619651_
                                                         (gx#syntax-e
                                                          _tl1961519648_)))
                                                    (let ((_hd1961719655_
                                                           (##car _e1961619651_))
                                                          (_tl1961819658_
                                                           (##cdr _e1961619651_)))
                                                      (if (gx#stx-null?
                                                           _tl1961819658_)
                                                          ((lambda (_L19661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19663_
                            _L19664_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19664_
                                               (cons (cons _L19661_
                                                           (cons _L19663_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate118943_
                                          _L19664_
                                          _body19599_
                                          _K19602_
                                          _E19603_)
                                         '())))))
                   _hd1961719655_
                   _hd1961419645_
                   _hd1961119635_)
                  (_g1960519624_ _g1960619628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1960519624_
                                                   _g1960619628_))))
                                          (_g1960519624_ _g1960619628_))))
                                  (_g1960519624_ _g1960619628_)))))
                      (_g1960419683_
                       (list (gx#genident 'e) _tgt19597_ _tgt->list19600_)))))
                 (_generate-struct18948_
                  (lambda (_info19330_
                           _tgt19332_
                           _body19333_
                           _K19334_
                           _E19335_)
                    (let* ((_rtd19337_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19330_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19330_)
                                '#f))
                           (_fields19347_
                            (let _lp19340_ ((_rtd19343_ _rtd19337_)
                                            (_k19345_ '0))
                              (if _rtd19343_
                                  (_lp19340_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19343_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19343_))
                                        _k19345_))
                                  _k19345_)))
                           (_final?19350_
                            (if _rtd19337_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19337_))
                                '#f))
                           (_g1935319361_
                            (lambda (_g1935419357_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1935419357_)))
                           (_g1935219593_
                            (lambda (_g1935419365_)
                              ((lambda (_L19368_)
                                 (let ()
                                   (let* ((_g1938319391_
                                           (lambda (_g1938419387_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1938419387_)))
                                          (_g1938219589_
                                           (lambda (_g1938419395_)
                                             ((lambda (_L19398_)
                                                (let ()
                                                  (let* ((_g1941119419_
                                                          (lambda (_g1941219415_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1941219415_)))
                                                         (_g1941019585_
                                                          (lambda (_g1941219423_)
                                                            ((lambda (_L19426_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1944219463_
                                   (lambda (_g1944319459_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1944319459_)))
                                  (_g1944119506_
                                   (lambda (_g1944319467_)
                                     (if (gx#stx-pair? _g1944319467_)
                                         (let ((_e1945219470_
                                                (gx#syntax-e _g1944319467_)))
                                           (let ((_hd1945319474_
                                                  (##car _e1945219470_))
                                                 (_tl1945419477_
                                                  (##cdr _e1945219470_)))
                                             (if (gx#stx-datum? _hd1945319474_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1945319474_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1945419477_)
                                                         (let ((_e1945519480_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1945419477_)))
                   (let ((_hd1945619484_ (##car _e1945519480_))
                         (_tl1945719487_ (##cdr _e1945519480_)))
                     (if (gx#stx-null? _tl1945719487_)
                         ((lambda (_L19490_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19426_
                                              (cons _L19398_
                                                    (cons _L19368_ '())))
                                        (cons (_generate-list-vector18947_
                                               _tgt19332_
                                               _L19490_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19334_
                                               _E19335_)
                                              (cons _E19335_ '())))))
                          _hd1945619484_)
                         (_g1944219463_ _g1944319467_))))
                 (_g1944219463_ _g1944319467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1944219463_
                                                      _g1944319467_))
                                                 (_g1944219463_
                                                  _g1944319467_))))
                                         (_g1944219463_ _g1944319467_))))
                                  (_g1944019581_
                                   (lambda (_g1944319510_)
                                     (if (gx#stx-pair? _g1944319510_)
                                         (let ((_e1944519513_
                                                (gx#syntax-e _g1944319510_)))
                                           (let ((_hd1944619517_
                                                  (##car _e1944519513_))
                                                 (_tl1944719520_
                                                  (##cdr _e1944519513_)))
                                             (if (gx#stx-datum? _hd1944619517_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1944619517_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1944719520_)
                                                         (let ((_e1944819523_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1944719520_)))
                   (let ((_hd1944919527_ (##car _e1944819523_))
                         (_tl1945019530_ (##cdr _e1944819523_)))
                     (if (gx#stx-null? _tl1945019530_)
                         ((lambda (_L19533_)
                            (let ((_K19546_
                                   (_generate-simple-vector18946_
                                    _tgt19332_
                                    _L19533_
                                    '1
                                    _K19334_
                                    _E19335_)))
                              (if (if _rtd19337_
                                      (fx<= (gx#stx-length _L19533_)
                                            _fields19347_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19426_
                                                    (cons _L19398_
                                                          (cons _L19368_ '())))
                                              (cons _K19546_
                                                    (cons _E19335_ '()))))
                                  (let* ((_g1954919557_
                                          (lambda (_g1955019553_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1955019553_)))
                                         (_g1954819577_
                                          (lambda (_g1955019561_)
                                            ((lambda (_L19564_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19426_
                                       (cons _L19398_ (cons _L19368_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19564_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19546_ (cons _E19335_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1955019561_))))
                                    (_g1954819577_
                                     (gx#stx-length _L19533_))))))
                          _hd1944919527_)
                         (_g1944119506_ _g1944319510_))))
                 (_g1944119506_ _g1944319510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1944119506_
                                                      _g1944319510_))
                                                 (_g1944119506_
                                                  _g1944319510_))))
                                         (_g1944119506_ _g1944319510_)))))
                             (_g1944019581_ _body19333_)))))
                     _g1941219423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1941019585_
                                                     (if _final?19350_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1938419395_))))
                                     (_g1938219589_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19330_)))))
                               _g1935419365_))))
                      (_g1935219593_ _tgt19332_))))
                 (_generate-class18949_
                  (lambda (_info18951_
                           _tgt18953_
                           _body18954_
                           _K18955_
                           _E18956_)
                    (letrec* ((_rtd18958_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info18951_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info18951_)
                                   '#f))
                              (_known-slot?18960_
                               (if _rtd18958_
                                   (lambda (_key19324_)
                                     (let ((_slot19327_
                                            (keyword->symbol
                                             (gx#stx-e _key19324_))))
                                       (_rtd-known-slot?18962_
                                        _rtd18958_
                                        _slot19327_)))
                                   false))
                              (_final?18961_
                               (if _rtd18958_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd18958_))
                                   '#f))
                              (_rtd-known-slot?18962_
                               (lambda (_rtd19311_ _slot19313_)
                                 (if _rtd19311_
                                     (let ((_$e19315_
                                            (memq _slot19313_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19311_))))
                                       (if _$e19315_
                                           _$e19315_
                                           (ormap (lambda (_g1931819320_)
                                                    (_rtd-known-slot?18962_
                                                     _g1931819320_
                                                     _slot19313_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19311_)))))
                                     '#f)))
                              (_recur18963_
                               (lambda (_klass19097_ _rest19099_)
                                 (let* ((_g1910219118_
                                         (lambda (_g1910319114_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1910319114_)))
                                        (_g1910119129_
                                         (lambda (_g1910319122_)
                                           ((lambda () _K18955_))))
                                        (_g1910019307_
                                         (lambda (_g1910319133_)
                                           (if (gx#stx-pair? _g1910319133_)
                                               (let ((_e1910719136_
                                                      (gx#syntax-e
                                                       _g1910319133_)))
                                                 (let ((_hd1910819140_
                                                        (##car _e1910719136_))
                                                       (_tl1910919143_
                                                        (##cdr _e1910719136_)))
                                                   (if (gx#stx-pair?
                                                        _tl1910919143_)
                                                       (let ((_e1911019146_
                                                              (gx#syntax-e
                                                               _tl1910919143_)))
                                                         (let ((_hd1911119150_
                                                                (##car _e1911019146_))
                                                               (_tl1911219153_
                                                                (##cdr _e1911019146_)))
                                                           ((lambda (_L19156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19158_
                             _L19159_)
                      (let* ((_g1917519183_
                              (lambda (_g1917619179_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1917619179_)))
                             (_g1917419303_
                              (lambda (_g1917619187_)
                                ((lambda (_L19190_)
                                   (let ()
                                     (let* ((_g1920219210_
                                             (lambda (_g1920319206_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1920319206_)))
                                            (_g1920119299_
                                             (lambda (_g1920319214_)
                                               ((lambda (_L19217_)
                                                  (let ()
                                                    (let* ((_g1923019238_
                                                            (lambda (_g1923119234_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1923119234_)))
                                                           (_g1922919295_
                                                            (lambda (_g1923119242_)
                                                              ((lambda (_L19245_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1925819266_
                                   (lambda (_g1925919262_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1925919262_)))
                                  (_g1925719291_
                                   (lambda (_g1925919270_)
                                     ((lambda (_L19273_)
                                        (let ()
                                          (let ((_K19286_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19190_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate118943_
                            _L19273_
                            _L19158_
                            (_recur18963_ _klass19097_ _L19156_)
                            _E18956_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?18960_ _L19159_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19217_
                                                  (cons _L19159_ '())))
                                      '()))
                          '())
                    (cons _K19286_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19217_
                                                  (cons _L19159_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19245_
                                      (cons _K19286_ (cons _E18956_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1925919270_))))
                             (_g1925719291_ (gx#genident 'e)))))
                       _g1923119242_))))
              (_g1922919295_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1920319214_))))
                                       (_g1920119299_ _klass19097_))))
                                 _g1917619187_))))
                        (_g1917419303_ _tgt18953_)))
                    _tl1911219153_
                    _hd1911119150_
                    _hd1910819140_)))
               (_g1910119129_ _g1910319133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1910119129_
                                                _g1910319133_)))))
                                   (_g1910019307_ _rest19099_)))))
                      (let* ((_g1896518973_
                              (lambda (_g1896618969_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1896618969_)))
                             (_g1896419093_
                              (lambda (_g1896618977_)
                                ((lambda (_L18980_)
                                   (let ()
                                     (let* ((_g1899519003_
                                             (lambda (_g1899618999_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1899618999_)))
                                            (_g1899419089_
                                             (lambda (_g1899619007_)
                                               ((lambda (_L19010_)
                                                  (let ()
                                                    (let* ((_g1902319031_
                                                            (lambda (_g1902419027_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1902419027_)))
                                                           (_g1902219085_
                                                            (lambda (_g1902419035_)
                                                              ((lambda (_L19038_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1905119059_
                                   (lambda (_g1905219055_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1905219055_)))
                                  (_g1905019081_
                                   (lambda (_g1905219063_)
                                     ((lambda (_L19066_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L19066_
                                                              (cons _L19038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L19010_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L18980_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L19010_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur18963_ _L18980_ _body18954_)
                                        '())))
                      (cons _E18956_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1905219063_))))
                             (_g1905019081_
                              (if _final?18961_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1902419035_))))
              (_g1902219085_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info18951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1899619007_))))
                                       (_g1899419089_ _tgt18953_))))
                                 _g1896618977_))))
                        (_g1896419093_ (gx#genident 'class)))))))
          (_generate118943_ _tgt18938_ _ptree18939_ _K18940_ _E18941_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx17935_ _tgt-lst17937_ _clauses17938_)
        (letrec ((_parse-body17940_
                  (lambda (_hd-len18758_)
                    (let _lp18761_ ((_rest18764_ _clauses17938_)
                                    (_r18766_ '()))
                      (let* ((_g1876918781_
                              (lambda (_g1877018777_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1877018777_)))
                             (_g1876818792_
                              (lambda (_g1877018785_) ((lambda () _r18766_))))
                             (_g1876718932_
                              (lambda (_g1877018796_)
                                (if (gx#stx-pair? _g1877018796_)
                                    (let ((_e1877318799_
                                           (gx#syntax-e _g1877018796_)))
                                      (let ((_hd1877418803_
                                             (##car _e1877318799_))
                                            (_tl1877518806_
                                             (##cdr _e1877318799_)))
                                        ((lambda (_L18809_ _L18811_)
                                           (let* ((_g1882818844_
                                                   (lambda (_g1882918840_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1882918840_)))
                                                  (_g1882718855_
                                                   (lambda (_g1882918848_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx17935_
                                                         _L18811_)))))
                                                  (_g1882618896_
                                                   (lambda (_g1882918859_)
                                                     (if (gx#stx-pair?
                                                          _g1882918859_)
                                                         (let ((_e1883618862_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1882918859_)))
                   (let ((_hd1883718866_ (##car _e1883618862_))
                         (_tl1883818869_ (##cdr _e1883618862_)))
                     ((lambda (_L18872_ _L18874_)
                        (if (if (gx#stx-list? _L18874_)
                                (if (fx= (gx#stx-length _L18874_)
                                         _hd-len18758_)
                                    (if (gx#stx-list? _L18872_)
                                        (not (gx#stx-null? _L18872_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp18761_
                             _L18809_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1888618888_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1888618888_
                                                   _stx17935_))
                                                _L18874_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L18872_)
                                                      (let ((_$e18892_
                                                             (gx#stx-source
                                                              _L18811_)))
                                                        (if _$e18892_
                                                            _$e18892_
                                                            (gx#stx-source
                                                             _stx17935_))))
                                                     '())))
                                   _r18766_))
                            (_g1882718855_ _g1882918859_)))
                      _tl1883818869_
                      _hd1883718866_)))
                 (_g1882718855_ _g1882918859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1882518928_
                                                   (lambda (_g1882918900_)
                                                     (if (gx#stx-pair?
                                                          _g1882918900_)
                                                         (let ((_e1883118903_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1882918900_)))
                   (let ((_hd1883218907_ (##car _e1883118903_))
                         (_tl1883318910_ (##cdr _e1883118903_)))
                     (if (gx#identifier? _hd1883218907_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g31014_|
                              _hd1883218907_)
                             ((lambda (_L18913_)
                                (if (if (gx#stx-list? _L18913_)
                                        (not (gx#stx-null? _L18913_))
                                        '#f)
                                    (if (gx#stx-null? _L18809_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L18913_)
                         (let ((_$e18924_ (gx#stx-source _L18811_)))
                           (if _$e18924_
                               _$e18924_
                               (gx#stx-source _stx17935_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r18766_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx17935_
                                         _L18811_))
                                    (_g1882618896_ _g1882918900_)))
                              _tl1883318910_)
                             (_g1882618896_ _g1882918900_))
                         (_g1882618896_ _g1882918900_))))
                 (_g1882618896_ _g1882918900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1882518928_ _L18811_)))
                                         _tl1877518806_
                                         _hd1877418803_)))
                                    (_g1876818792_ _g1877018796_)))))
                        (_g1876718932_ _rest18764_)))))
                 (_generate-body17942_
                  (lambda (_body18575_)
                    (let* ((_g1857818586_
                            (lambda (_g1857918582_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1857918582_)))
                           (_g1857718754_
                            (lambda (_g1857918590_)
                              ((lambda (_L18593_)
                                 (let ()
                                   (let* ((_g1860518622_
                                           (lambda (_g1860618618_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1860618618_)))
                                          (_g1860418750_
                                           (lambda (_g1860618626_)
                                             (if (gx#stx-pair/null?
                                                  _g1860618626_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1860618626_)
                                                           '0)
                                                     (let ((_g31015_
                                                            (gx#syntax-split-splice
                                                             _g1860618626_
                                                             '0)))
                                                       (begin
                                                         (let ((_g31016_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31015_)))
                   (if (not (fx= _g31016_ 2))
                       (error "Context expects 2 values" _g31016_)))
                 (let ((_target1860818629_ (values-ref _g31015_ 0))
                       (_tl1861018632_ (values-ref _g31015_ 1)))
                   (if (gx#stx-null? _tl1861018632_)
                       (letrec ((_loop1861118635_
                                 (lambda (_hd1860918639_ _target1861518642_)
                                   (if (gx#stx-pair? _hd1860918639_)
                                       (let ((_e1861218645_
                                              (gx#syntax-e _hd1860918639_)))
                                         (let ((_lp-hd1861318649_
                                                (##car _e1861218645_))
                                               (_lp-tl1861418652_
                                                (##cdr _e1861218645_)))
                                           (_loop1861118635_
                                            _lp-tl1861418652_
                                            (cons _lp-hd1861318649_
                                                  _target1861518642_))))
                                       (let ((_target1861618655_
                                              (reverse _target1861518642_)))
                                         ((lambda (_L18659_)
                                            (let ()
                                              (let* ((_g1867618684_
                                                      (lambda (_g1867718680_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1867718680_)))
                                                     (_g1867518738_
                                                      (lambda (_g1867718688_)
                                                        ((lambda (_L18691_)
                                                           (let ()
                                                             (let* ((_g1870418712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1870518708_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1870518708_)))
                            (_g1870318734_
                             (lambda (_g1870518716_)
                               ((lambda (_L18719_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18593_
                                                              (cons _L18691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L18719_ '()))))))
                                _g1870518716_))))
                       (_g1870318734_
                        (_generate-clauses17943_
                         _body18575_
                         (cons _L18593_ '()))))))
                 _g1867718688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1867518738_
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
                                          (foldr (lambda (_g1874118744_
                                                          _g1874218747_)
                                                   (cons _g1874118744_
                                                         _g1874218747_))
                                                 '()
                                                 _L18659_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx17935_))))))
                                          _target1861618655_))))))
                         (_loop1861118635_ _target1860818629_ '()))
                       (_g1860518622_ _g1860618626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1860518622_
                                                      _g1860618626_))
                                                 (_g1860518622_
                                                  _g1860618626_)))))
                                     (_g1860418750_ _tgt-lst17937_))))
                               _g1857918590_))))
                      (_g1857718754_ (gx#genident 'E)))))
                 (_generate-clauses17943_
                  (lambda (_rest18257_ _E18259_)
                    (let* ((_g1826318279_
                            (lambda (_g1826418275_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1826418275_)))
                           (_g1826218290_
                            (lambda (_g1826418283_) ((lambda () _E18259_))))
                           (_g1826118466_
                            (lambda (_g1826418294_)
                              (if (gx#stx-pair? _g1826418294_)
                                  (let ((_e1827118297_
                                         (gx#syntax-e _g1826418294_)))
                                    (let ((_hd1827218301_
                                           (##car _e1827118297_))
                                          (_tl1827318304_
                                           (##cdr _e1827118297_)))
                                      ((lambda (_L18307_ _L18309_)
                                         (let* ((_g1832218341_
                                                 (lambda (_g1832318337_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1832318337_)))
                                                (_g1832118462_
                                                 (lambda (_g1832318345_)
                                                   (if (gx#stx-pair?
                                                        _g1832318345_)
                                                       (let ((_e1832718348_
                                                              (gx#syntax-e
                                                               _g1832318345_)))
                                                         (let ((_hd1832818352_
                                                                (##car _e1832718348_))
                                                               (_tl1832918355_
                                                                (##cdr _e1832718348_)))
                                                           (if (gx#stx-pair?
                                                                _tl1832918355_)
                                                               (let ((_e1833018358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1832918355_)))
                         (let ((_hd1833118362_ (##car _e1833018358_))
                               (_tl1833218365_ (##cdr _e1833018358_)))
                           (if (gx#stx-pair? _tl1833218365_)
                               (let ((_e1833318368_
                                      (gx#syntax-e _tl1833218365_)))
                                 (let ((_hd1833418372_ (##car _e1833318368_))
                                       (_tl1833518375_ (##cdr _e1833318368_)))
                                   (if (gx#stx-null? _tl1833518375_)
                                       ((lambda (_L18378_ _L18380_ _L18381_)
                                          (let* ((_g1839818413_
                                                  (lambda (_g1839918409_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1839918409_)))
                                                 (_g1839718458_
                                                  (lambda (_g1839918417_)
                                                    (if (gx#stx-pair?
                                                         _g1839918417_)
                                                        (let ((_e1840218420_
                                                               (gx#syntax-e
                                                                _g1839918417_)))
                                                          (let ((_hd1840318424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1840218420_))
                        (_tl1840418427_ (##cdr _e1840218420_)))
                    (if (gx#stx-pair? _tl1840418427_)
                        (let ((_e1840518430_ (gx#syntax-e _tl1840418427_)))
                          (let ((_hd1840618434_ (##car _e1840518430_))
                                (_tl1840718437_ (##cdr _e1840518430_)))
                            (if (gx#stx-null? _tl1840718437_)
                                ((lambda (_L18440_ _L18442_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18381_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18442_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18440_ '())))))
                                 _hd1840618434_
                                 _hd1840318424_)
                                (_g1839818413_ _g1839918417_))))
                        (_g1839818413_ _g1839918417_))))
                (_g1839818413_ _g1839918417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1839718458_
                                             (list (if (gx#stx-e _L18380_)
                                                       (_generate117944_
                                                        _L18380_
                                                        _L18378_
                                                        _E18259_)
                                                       _L18378_)
                                                   (_generate-clauses17943_
                                                    _L18307_
                                                    (cons _L18381_ '()))))))
                                        _hd1833418372_
                                        _hd1833118362_
                                        _hd1832818352_)
                                       (_g1832218341_ _g1832318345_))))
                               (_g1832218341_ _g1832318345_))))
                       (_g1832218341_ _g1832318345_))))
               (_g1832218341_ _g1832318345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1832118462_ _L18309_)))
                                       _tl1827318304_
                                       _hd1827218301_)))
                                  (_g1826218290_ _g1826418294_))))
                           (_g1826018571_
                            (lambda (_g1826418470_)
                              (if (gx#stx-pair? _g1826418470_)
                                  (let ((_e1826618473_
                                         (gx#syntax-e _g1826418470_)))
                                    (let ((_hd1826718477_
                                           (##car _e1826618473_))
                                          (_tl1826818480_
                                           (##cdr _e1826618473_)))
                                      (if (gx#stx-null? _tl1826818480_)
                                          ((lambda (_L18483_)
                                             (let* ((_g1849418512_
                                                     (lambda (_g1849518508_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1849518508_)))
                                                    (_g1849318567_
                                                     (lambda (_g1849518516_)
                                                       (if (gx#stx-pair?
                                                            _g1849518516_)
                                                           (let ((_e1849818519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1849518516_)))
                     (let ((_hd1849918523_ (##car _e1849818519_))
                           (_tl1850018526_ (##cdr _e1849818519_)))
                       (if (gx#stx-pair? _tl1850018526_)
                           (let ((_e1850118529_ (gx#syntax-e _tl1850018526_)))
                             (let ((_hd1850218533_ (##car _e1850118529_))
                                   (_tl1850318536_ (##cdr _e1850118529_)))
                               (if (gx#stx-pair? _tl1850318536_)
                                   (let ((_e1850418539_
                                          (gx#syntax-e _tl1850318536_)))
                                     (let ((_hd1850518543_
                                            (##car _e1850418539_))
                                           (_tl1850618546_
                                            (##cdr _e1850418539_)))
                                       (if (gx#stx-null? _tl1850618546_)
                                           ((lambda (_L18549_ _L18551_)
                                              (if (gx#stx-e _L18551_)
                                                  (_generate117944_
                                                   _L18551_
                                                   _L18549_
                                                   _E18259_)
                                                  _L18549_))
                                            _hd1850518543_
                                            _hd1850218533_)
                                           (_g1849418512_ _g1849518516_))))
                                   (_g1849418512_ _g1849518516_))))
                           (_g1849418512_ _g1849518516_))))
                   (_g1849418512_ _g1849518516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1849318567_ _L18483_)))
                                           _hd1826718477_)
                                          (_g1826118466_ _g1826418470_))))
                                  (_g1826118466_ _g1826418470_)))))
                      (_g1826018571_ _rest18257_))))
                 (_generate117944_
                  (lambda (_clause17946_ _body17948_ _E17949_)
                    (let _recur17951_ ((_rest17954_ _clause17946_)
                                       (_rest-targets17956_ _tgt-lst17937_))
                      (let* ((_g1795917971_
                              (lambda (_g1796017967_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1796017967_)))
                             (_g1795817982_
                              (lambda (_g1796017975_)
                                ((lambda () _body17948_))))
                             (_g1795718253_
                              (lambda (_g1796017986_)
                                (if (gx#stx-pair? _g1796017986_)
                                    (let ((_e1796317989_
                                           (gx#syntax-e _g1796017986_)))
                                      (let ((_hd1796417993_
                                             (##car _e1796317989_))
                                            (_tl1796517996_
                                             (##cdr _e1796317989_)))
                                        ((lambda (_L17999_ _L18001_)
                                           (let* ((_g1801818030_
                                                   (lambda (_g1801918026_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1801918026_)))
                                                  (_g1801718249_
                                                   (lambda (_g1801918034_)
                                                     (if (gx#stx-pair?
                                                          _g1801918034_)
                                                         (let ((_e1802218037_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1801918034_)))
                   (let ((_hd1802318041_ (##car _e1802218037_))
                         (_tl1802418044_ (##cdr _e1802218037_)))
                     ((lambda (_L18047_ _L18049_)
                        (let* ((_g1806118069_
                                (lambda (_g1806218065_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1806218065_)))
                               (_g1806018245_
                                (lambda (_g1806218073_)
                                  ((lambda (_L18076_)
                                     (let ()
                                       (let* ((_g1808818105_
                                               (lambda (_g1808918101_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1808918101_)))
                                              (_g1808718241_
                                               (lambda (_g1808918109_)
                                                 (if (gx#stx-pair/null?
                                                      _g1808918109_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1808918109_)
                                                               '0)
                                                         (let ((_g31017_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1808918109_
                         '0)))
                   (begin
                     (let ((_g31018_ (values-count _g31017_)))
                       (if (not (fx= _g31018_ 2))
                           (error "Context expects 2 values" _g31018_)))
                     (let ((_target1809118112_ (values-ref _g31017_ 0))
                           (_tl1809318115_ (values-ref _g31017_ 1)))
                       (if (gx#stx-null? _tl1809318115_)
                           (letrec ((_loop1809418118_
                                     (lambda (_hd1809218122_ _var1809818125_)
                                       (if (gx#stx-pair? _hd1809218122_)
                                           (let ((_e1809518128_
                                                  (gx#syntax-e
                                                   _hd1809218122_)))
                                             (let ((_lp-hd1809618132_
                                                    (##car _e1809518128_))
                                                   (_lp-tl1809718135_
                                                    (##cdr _e1809518128_)))
                                               (_loop1809418118_
                                                _lp-tl1809718135_
                                                (cons _lp-hd1809618132_
                                                      _var1809818125_))))
                                           (let ((_var1809918138_
                                                  (reverse _var1809818125_)))
                                             ((lambda (_L18142_)
                                                (let ()
                                                  (let* ((_g1815918167_
                                                          (lambda (_g1816018163_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1816018163_)))
                                                         (_g1815818237_
                                                          (lambda (_g1816018171_)
                                                            ((lambda (_L18174_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1818718195_
                                 (lambda (_g1818818191_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1818818191_)))
                                (_g1818618225_
                                 (lambda (_g1818818199_)
                                   ((lambda (_L18202_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L18076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1821618219_
                                                              _g1821718222_)
                                                       (cons _g1821618219_
                                                             _g1821718222_))
                                                     '()
                                                     _L18142_))
                                            (cons _L18174_ '())))
                                '()))
                    '())
              (cons _L18202_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1818818199_))))
                           (_g1818618225_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx17935_
                             _L18049_
                             _L18001_
                             (cons _L18076_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1822818231_
                                                     _g1822918234_)
                                              (cons _g1822818231_
                                                    _g1822918234_))
                                            '()
                                            _L18142_)))
                             _E17949_)))))
                     _g1816018171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1815818237_
                                                     (_recur17951_
                                                      _L17999_
                                                      _L18047_)))))
                                              _var1809918138_))))))
                             (_loop1809418118_ _target1809118112_ '()))
                           (_g1808818105_ _g1808918109_)))))
                 (_g1808818105_ _g1808918109_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1808818105_
                                                      _g1808918109_)))))
                                         (_g1808718241_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L18001_)))))
                                   _g1806218073_))))
                          (_g1806018245_ (gx#genident 'K))))
                      _tl1802418044_
                      _hd1802318041_)))
                 (_g1801818030_ _g1801918034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1801718249_
                                              _rest-targets17956_)))
                                         _tl1796517996_
                                         _hd1796417993_)))
                                    (_g1795817982_ _g1796017986_)))))
                        (_g1795718253_ _rest17954_))))))
          (_generate-body17942_
           (_parse-body17940_ (gx#stx-length _tgt-lst17937_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx17837_ _tgt17839_ _clauses17840_)
        (letrec ((_reclause17842_
                  (lambda (_clause17845_)
                    (let* ((_g1785017865_
                            (lambda (_g1785117861_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1785117861_)))
                           (_g1784917876_
                            (lambda (_g1785117869_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx17837_
                                  _clause17845_)))))
                           (_g1784817910_
                            (lambda (_g1785117880_)
                              (if (gx#stx-pair? _g1785117880_)
                                  (let ((_e1785717883_
                                         (gx#syntax-e _g1785117880_)))
                                    (let ((_hd1785817887_
                                           (##car _e1785717883_))
                                          (_tl1785917890_
                                           (##cdr _e1785717883_)))
                                      ((lambda (_L17893_ _L17895_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L17895_ '()) _L17893_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1785917890_
                                       _hd1785817887_)))
                                  (_g1784917876_ _g1785117880_))))
                           (_g1784717931_
                            (lambda (_g1785117914_)
                              (if (gx#stx-pair? _g1785117914_)
                                  (let ((_e1785217917_
                                         (gx#syntax-e _g1785117914_)))
                                    (let ((_hd1785317921_
                                           (##car _e1785217917_))
                                          (_tl1785417924_
                                           (##cdr _e1785217917_)))
                                      (if (gx#identifier? _hd1785317921_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g31019_|
                                               _hd1785317921_)
                                              ((lambda () _clause17845_))
                                              (_g1784817910_ _g1785117914_))
                                          (_g1784817910_ _g1785117914_))))
                                  (_g1784817910_ _g1785117914_)))))
                      (_g1784717931_ _clause17845_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx17837_
           (cons _tgt17839_ '())
           (gx#stx-map _reclause17842_ _clauses17840_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx25044_)
        (let* ((_g2504925078_
                (lambda (_g2505025074_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2505025074_)))
               (_g2504825186_
                (lambda (_g2505025082_)
                  (if (gx#stx-pair? _g2505025082_)
                      (let ((_e2506725085_ (gx#syntax-e _g2505025082_)))
                        (let ((_hd2506825089_ (##car _e2506725085_))
                              (_tl2506925092_ (##cdr _e2506725085_)))
                          (if (gx#stx-pair? _tl2506925092_)
                              (let ((_e2507025095_
                                     (gx#syntax-e _tl2506925092_)))
                                (let ((_hd2507125099_ (##car _e2507025095_))
                                      (_tl2507225102_ (##cdr _e2507025095_)))
                                  ((lambda (_L25105_ _L25107_)
                                     (if (gx#stx-list? _L25105_)
                                         (let* ((_g2512125129_
                                                 (lambda (_g2512225125_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2512225125_)))
                                                (_g2512025182_
                                                 (lambda (_g2512225133_)
                                                   ((lambda (_L25136_)
                                                      (let ()
                                                        (let* ((_g2514825156_
                                                                (lambda (_g2514925152_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2514925152_)))
                       (_g2514725178_
                        (lambda (_g2514925160_)
                          ((lambda (_L25163_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L25136_
                                                         (cons _L25107_ '()))
                                                   '())
                                             (cons _L25163_ '()))))))
                           _g2514925160_))))
                  (_g2514725178_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx25044_
                    _L25136_
                    _L25105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2512225133_))))
                                           (_g2512025182_
                                            (gx#genident _L25107_)))
                                         (_g2504925078_ _g2505025082_)))
                                   _tl2507225102_
                                   _hd2507125099_)))
                              (_g2504925078_ _g2505025082_))))
                      (_g2504925078_ _g2505025082_))))
               (_g2504725291_
                (lambda (_g2505025190_)
                  (if (gx#stx-pair? _g2505025190_)
                      (let ((_e2505925193_ (gx#syntax-e _g2505025190_)))
                        (let ((_hd2506025197_ (##car _e2505925193_))
                              (_tl2506125200_ (##cdr _e2505925193_)))
                          (if (gx#stx-pair? _tl2506125200_)
                              (let ((_e2506225203_
                                     (gx#syntax-e _tl2506125200_)))
                                (let ((_hd2506325207_ (##car _e2506225203_))
                                      (_tl2506425210_ (##cdr _e2506225203_)))
                                  (if (gx#identifier? _hd2506325207_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31020_|
                                           _hd2506325207_)
                                          ((lambda (_L25213_)
                                             (if (gx#stx-list? _L25213_)
                                                 (let* ((_g2522625234_
                                                         (lambda (_g2522725230_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2522725230_)))
                                                        (_g2522525287_
                                                         (lambda (_g2522725238_)
                                                           ((lambda (_L25241_)
                                                              (let ()
                                                                (let* ((_g2525325261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2525425257_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2525425257_)))
                               (_g2525225283_
                                (lambda (_g2525425265_)
                                  ((lambda (_L25268_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25241_
                                                     (cons _L25268_ '()))))))
                                   _g2525425265_))))
                          (_g2525225283_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25241_ _L25213_))
                            (gx#stx-source _stx25044_))))))
                    _g2522725238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2522525287_
                                                    (gx#genident 'args)))
                                                 (_g2504825186_
                                                  _g2505025190_)))
                                           _tl2506425210_)
                                          (_g2504825186_ _g2505025190_))
                                      (_g2504825186_ _g2505025190_))))
                              (_g2504825186_ _g2505025190_))))
                      (_g2504825186_ _g2505025190_))))
               (_g2504625396_
                (lambda (_g2505025295_)
                  (if (gx#stx-pair? _g2505025295_)
                      (let ((_e2505225298_ (gx#syntax-e _g2505025295_)))
                        (let ((_hd2505325302_ (##car _e2505225298_))
                              (_tl2505425305_ (##cdr _e2505225298_)))
                          (if (gx#stx-pair? _tl2505425305_)
                              (let ((_e2505525308_
                                     (gx#syntax-e _tl2505425305_)))
                                (let ((_hd2505625312_ (##car _e2505525308_))
                                      (_tl2505725315_ (##cdr _e2505525308_)))
                                  (if (gx#identifier? _hd2505625312_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31021_|
                                           _hd2505625312_)
                                          ((lambda (_L25318_)
                                             (if (gx#stx-list? _L25318_)
                                                 (let* ((_g2533125339_
                                                         (lambda (_g2533225335_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2533225335_)))
                                                        (_g2533025392_
                                                         (lambda (_g2533225343_)
                                                           ((lambda (_L25346_)
                                                              (let ()
                                                                (let* ((_g2535825366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2535925362_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2535925362_)))
                               (_g2535725388_
                                (lambda (_g2535925370_)
                                  ((lambda (_L25373_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25346_ '())
                                                     (cons _L25373_ '()))))))
                                   _g2535925370_))))
                          (_g2535725388_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25346_ _L25318_))
                            (gx#stx-source _stx25044_))))))
                    _g2533225343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2533025392_
                                                    (gx#genident 'e)))
                                                 (_g2504725291_
                                                  _g2505025295_)))
                                           _tl2505725315_)
                                          (_g2504725291_ _g2505025295_))
                                      (_g2504725291_ _g2505025295_))))
                              (_g2504725291_ _g2505025295_))))
                      (_g2504725291_ _g2505025295_)))))
          (_g2504625396_ _stx25044_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25400_)
        (let* ((_g2540325427_
                (lambda (_g2540425423_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2540425423_)))
               (_g2540225639_
                (lambda (_g2540425431_)
                  (if (gx#stx-pair? _g2540425431_)
                      (let ((_e2540725434_ (gx#syntax-e _g2540425431_)))
                        (let ((_hd2540825438_ (##car _e2540725434_))
                              (_tl2540925441_ (##cdr _e2540725434_)))
                          (if (gx#stx-pair? _tl2540925441_)
                              (let ((_e2541025444_
                                     (gx#syntax-e _tl2540925441_)))
                                (let ((_hd2541125448_ (##car _e2541025444_))
                                      (_tl2541225451_ (##cdr _e2541025444_)))
                                  (if (gx#stx-pair/null? _hd2541125448_)
                                      (if (fx>= (gx#stx-length _hd2541125448_)
                                                '0)
                                          (let ((_g31022_
                                                 (gx#syntax-split-splice
                                                  _hd2541125448_
                                                  '0)))
                                            (begin
                                              (let ((_g31023_
                                                     (values-count _g31022_)))
                                                (if (not (fx= _g31023_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31023_)))
                                              (let ((_target2541325454_
                                                     (values-ref _g31022_ 0))
                                                    (_tl2541525457_
                                                     (values-ref _g31022_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2541525457_)
                                                    (letrec ((_loop2541625460_
                                                              (lambda (_hd2541425464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2542025467_)
                        (if (gx#stx-pair? _hd2541425464_)
                            (let ((_e2541725470_ (gx#syntax-e _hd2541425464_)))
                              (let ((_lp-hd2541825474_ (##car _e2541725470_))
                                    (_lp-tl2541925477_ (##cdr _e2541725470_)))
                                (_loop2541625460_
                                 _lp-tl2541925477_
                                 (cons _lp-hd2541825474_ _e2542025467_))))
                            (let ((_e2542125480_ (reverse _e2542025467_)))
                              ((lambda (_L25484_ _L25486_)
                                 (if (gx#stx-list? _L25484_)
                                     (let* ((_g2550425521_
                                             (lambda (_g2550525517_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2550525517_)))
                                            (_g2550325627_
                                             (lambda (_g2550525525_)
                                               (if (gx#stx-pair/null?
                                                    _g2550525525_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2550525525_)
                                                             '0)
                                                       (let ((_g31024_
                                                              (gx#syntax-split-splice
                                                               _g2550525525_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31024_)))
                     (if (not (fx= _g31025_ 2))
                         (error "Context expects 2 values" _g31025_)))
                   (let ((_target2550725528_ (values-ref _g31024_ 0))
                         (_tl2550925531_ (values-ref _g31024_ 1)))
                     (if (gx#stx-null? _tl2550925531_)
                         (letrec ((_loop2551025534_
                                   (lambda (_hd2550825538_ _$e2551425541_)
                                     (if (gx#stx-pair? _hd2550825538_)
                                         (let ((_e2551125544_
                                                (gx#syntax-e _hd2550825538_)))
                                           (let ((_lp-hd2551225548_
                                                  (##car _e2551125544_))
                                                 (_lp-tl2551325551_
                                                  (##cdr _e2551125544_)))
                                             (_loop2551025534_
                                              _lp-tl2551325551_
                                              (cons _lp-hd2551225548_
                                                    _$e2551425541_))))
                                         (let ((_$e2551525554_
                                                (reverse _$e2551425541_)))
                                           ((lambda (_L25558_)
                                              (let ()
                                                (let* ((_g2557425582_
                                                        (lambda (_g2557525578_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2557525578_)))
                                                       (_g2557325615_
                                                        (lambda (_g2557525586_)
                                                          ((lambda (_L25589_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25486_
                                        _L25558_)
                                       (foldr (lambda (_g2560325607_
                                                       _g2560425610_
                                                       _g2560525612_)
                                                (cons (cons _g2560425610_
                                                            (cons _g2560325607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2560525612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25486_
                                              _L25558_))
                                     (cons _L25589_ '()))))))
                   _g2557525586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557325615_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25400_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2561825621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2561925624_)
                       (cons _g2561825621_ _g2561925624_))
                     '()
                     _L25558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25484_)))))
                                            _$e2551525554_))))))
                           (_loop2551025534_ _target2550725528_ '()))
                         (_g2550425521_ _g2550525525_)))))
               (_g2550425521_ _g2550525525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2550425521_
                                                    _g2550525525_)))))
                                       (_g2550325627_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2563025633_
                                                           _g2563125636_)
                                                    (cons _g2563025633_
                                                          _g2563125636_))
                                                  '()
                                                  _L25486_)))))
                                     (_g2540325427_ _g2540425431_)))
                               _tl2541225451_
                               _e2542125480_))))))
              (_loop2541625460_ _target2541325454_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2540325427_
                                                     _g2540425431_)))))
                                          (_g2540325427_ _g2540425431_))
                                      (_g2540325427_ _g2540425431_))))
                              (_g2540325427_ _g2540425431_))))
                      (_g2540325427_ _g2540425431_)))))
          (_g2540225639_ _stx25400_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25645_)
        (let* ((_g2565125734_
                (lambda (_g2565225730_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2565225730_)))
               (_g2565025895_
                (lambda (_g2565225738_)
                  (if (gx#stx-pair? _g2565225738_)
                      (let ((_e2569725741_ (gx#syntax-e _g2565225738_)))
                        (let ((_hd2569825745_ (##car _e2569725741_))
                              (_tl2569925748_ (##cdr _e2569725741_)))
                          (if (gx#stx-pair? _tl2569925748_)
                              (let ((_e2570025751_
                                     (gx#syntax-e _tl2569925748_)))
                                (let ((_hd2570125755_ (##car _e2570025751_))
                                      (_tl2570225758_ (##cdr _e2570025751_)))
                                  (if (gx#stx-pair/null? _hd2570125755_)
                                      (if (fx>= (gx#stx-length _hd2570125755_)
                                                '0)
                                          (let ((_g31026_
                                                 (gx#syntax-split-splice
                                                  _hd2570125755_
                                                  '0)))
                                            (begin
                                              (let ((_g31027_
                                                     (values-count _g31026_)))
                                                (if (not (fx= _g31027_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31027_)))
                                              (let ((_target2570325761_
                                                     (values-ref _g31026_ 0))
                                                    (_tl2570525764_
                                                     (values-ref _g31026_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2570525764_)
                                                    (letrec ((_loop2570625767_
                                                              (lambda (_hd2570425771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2571025774_
                               _hd2571125776_)
                        (if (gx#stx-pair? _hd2570425771_)
                            (let ((_e2570725779_ (gx#syntax-e _hd2570425771_)))
                              (let ((_lp-hd2570825783_ (##car _e2570725779_))
                                    (_lp-tl2570925786_ (##cdr _e2570725779_)))
                                (if (gx#stx-pair? _lp-hd2570825783_)
                                    (let ((_e2571425789_
                                           (gx#syntax-e _lp-hd2570825783_)))
                                      (let ((_hd2571525793_
                                             (##car _e2571425789_))
                                            (_tl2571625796_
                                             (##cdr _e2571425789_)))
                                        (if (gx#stx-pair? _tl2571625796_)
                                            (let ((_e2571725799_
                                                   (gx#syntax-e
                                                    _tl2571625796_)))
                                              (let ((_hd2571825803_
                                                     (##car _e2571725799_))
                                                    (_tl2571925806_
                                                     (##cdr _e2571725799_)))
                                                (if (gx#stx-null?
                                                     _tl2571925806_)
                                                    (_loop2570625767_
                                                     _lp-tl2570925786_
                                                     (cons _hd2571825803_
                                                           _expr2571025774_)
                                                     (cons _hd2571525793_
                                                           _hd2571125776_))
                                                    (_g2565125734_
                                                     _g2565225738_))))
                                            (_g2565125734_ _g2565225738_))))
                                    (_g2565125734_ _g2565225738_))))
                            (let ((_expr2571225809_ (reverse _expr2571025774_))
                                  (_hd2571325812_ (reverse _hd2571125776_)))
                              (if (gx#stx-pair/null? _tl2570225758_)
                                  (if (fx>= (gx#stx-length _tl2570225758_) '0)
                                      (let ((_g31028_
                                             (gx#syntax-split-splice
                                              _tl2570225758_
                                              '0)))
                                        (begin
                                          (let ((_g31029_
                                                 (values-count _g31028_)))
                                            (if (not (fx= _g31029_ 2))
                                                (error "Context expects 2 values"
                                                       _g31029_)))
                                          (let ((_target2572025815_
                                                 (values-ref _g31028_ 0))
                                                (_tl2572225818_
                                                 (values-ref _g31028_ 1)))
                                            (if (gx#stx-null? _tl2572225818_)
                                                (letrec ((_loop2572325821_
                                                          (lambda (_hd2572125825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2572725828_)
                    (if (gx#stx-pair? _hd2572125825_)
                        (let ((_e2572425831_ (gx#syntax-e _hd2572125825_)))
                          (let ((_lp-hd2572525835_ (##car _e2572425831_))
                                (_lp-tl2572625838_ (##cdr _e2572425831_)))
                            (_loop2572325821_
                             _lp-tl2572625838_
                             (cons _lp-hd2572525835_ _body2572725828_))))
                        (let ((_body2572825841_ (reverse _body2572725828_)))
                          ((lambda (_L25845_ _L25847_ _L25848_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2587025877_
                                                           _g2587125880_)
                                                    (cons _g2587025877_
                                                          _g2587125880_))
                                                  '()
                                                  _L25847_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2587225883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2587325886_)
                        (cons _g2587225883_ _g2587325886_))
                      '()
                      _L25848_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2587425889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2587525892_)
                        (cons _g2587425889_ _g2587525892_))
                      '()
                      _L25845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2572825841_
                           _expr2571225809_
                           _hd2571325812_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2572325821_
                                                   _target2572025815_
                                                   '()))
                                                (_g2565125734_
                                                 _g2565225738_)))))
                                      (_g2565125734_ _g2565225738_))
                                  (_g2565125734_ _g2565225738_)))))))
              (_loop2570625767_ _target2570325761_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2565125734_
                                                     _g2565225738_)))))
                                          (_g2565125734_ _g2565225738_))
                                      (_g2565125734_ _g2565225738_))))
                              (_g2565125734_ _g2565225738_))))
                      (_g2565125734_ _g2565225738_))))
               (_g2564926007_
                (lambda (_g2565225899_)
                  (if (gx#stx-pair? _g2565225899_)
                      (let ((_e2567325902_ (gx#syntax-e _g2565225899_)))
                        (let ((_hd2567425906_ (##car _e2567325902_))
                              (_tl2567525909_ (##cdr _e2567325902_)))
                          (if (gx#stx-pair? _tl2567525909_)
                              (let ((_e2567625912_
                                     (gx#syntax-e _tl2567525909_)))
                                (let ((_hd2567725916_ (##car _e2567625912_))
                                      (_tl2567825919_ (##cdr _e2567625912_)))
                                  (if (gx#stx-pair? _hd2567725916_)
                                      (let ((_e2567925922_
                                             (gx#syntax-e _hd2567725916_)))
                                        (let ((_hd2568025926_
                                               (##car _e2567925922_))
                                              (_tl2568125929_
                                               (##cdr _e2567925922_)))
                                          (if (gx#stx-pair? _tl2568125929_)
                                              (let ((_e2568225932_
                                                     (gx#syntax-e
                                                      _tl2568125929_)))
                                                (let ((_hd2568325936_
                                                       (##car _e2568225932_))
                                                      (_tl2568425939_
                                                       (##cdr _e2568225932_)))
                                                  (if (gx#stx-null?
                                                       _tl2568425939_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2567825919_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2567825919_)
                            '0)
                      (let ((_g31030_
                             (gx#syntax-split-splice _tl2567825919_ '0)))
                        (begin
                          (let ((_g31031_ (values-count _g31030_)))
                            (if (not (fx= _g31031_ 2))
                                (error "Context expects 2 values" _g31031_)))
                          (let ((_target2568525942_ (values-ref _g31030_ 0))
                                (_tl2568725945_ (values-ref _g31030_ 1)))
                            (if (gx#stx-null? _tl2568725945_)
                                (letrec ((_loop2568825948_
                                          (lambda (_hd2568625952_
                                                   _body2569225955_)
                                            (if (gx#stx-pair? _hd2568625952_)
                                                (let ((_e2568925958_
                                                       (gx#syntax-e
                                                        _hd2568625952_)))
                                                  (let ((_lp-hd2569025962_
                                                         (##car _e2568925958_))
                                                        (_lp-tl2569125965_
                                                         (##cdr _e2568925958_)))
                                                    (_loop2568825948_
                                                     _lp-tl2569125965_
                                                     (cons _lp-hd2569025962_
                                                           _body2569225955_))))
                                                (let ((_body2569325968_
                                                       (reverse _body2569225955_)))
                                                  ((lambda (_L25972_
                                                            _L25974_
                                                            _L25975_
                                                            _L25976_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L25975_)
                                                         (cons _L25976_
                                                               (cons (cons (cons _L25975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L25974_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2599826001_ _g2599926004_)
                                        (cons _g2599826001_ _g2599926004_))
                                      '()
                                      _L25972_))))
                 (_g2565025895_ _g2565225899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2569325968_
                                                   _hd2568325936_
                                                   _hd2568025926_
                                                   _hd2567425906_))))))
                                  (_loop2568825948_ _target2568525942_ '()))
                                (_g2565025895_ _g2565225899_)))))
                      (_g2565025895_ _g2565225899_))
                  (_g2565025895_ _g2565225899_))
              (_g2565025895_ _g2565225899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2565025895_ _g2565225899_))))
                                      (_g2565025895_ _g2565225899_))))
                              (_g2565025895_ _g2565225899_))))
                      (_g2565025895_ _g2565225899_))))
               (_g2564826089_
                (lambda (_g2565226011_)
                  (if (gx#stx-pair? _g2565226011_)
                      (let ((_e2565426014_ (gx#syntax-e _g2565226011_)))
                        (let ((_hd2565526018_ (##car _e2565426014_))
                              (_tl2565626021_ (##cdr _e2565426014_)))
                          (if (gx#stx-pair? _tl2565626021_)
                              (let ((_e2565726024_
                                     (gx#syntax-e _tl2565626021_)))
                                (let ((_hd2565826028_ (##car _e2565726024_))
                                      (_tl2565926031_ (##cdr _e2565726024_)))
                                  (if (gx#stx-null? _hd2565826028_)
                                      (if (gx#stx-pair/null? _tl2565926031_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2565926031_)
                                                    '0)
                                              (let ((_g31032_
                                                     (gx#syntax-split-splice
                                                      _tl2565926031_
                                                      '0)))
                                                (begin
                                                  (let ((_g31033_
                                                         (values-count
                                                          _g31032_)))
                                                    (if (not (fx= _g31033_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31033_)))
                                                  (let ((_target2566026034_
                                                         (values-ref
                                                          _g31032_
                                                          0))
                                                        (_tl2566226037_
                                                         (values-ref
                                                          _g31032_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2566226037_)
                                                        (letrec ((_loop2566326040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2566126044_ _body2566726047_)
                            (if (gx#stx-pair? _hd2566126044_)
                                (let ((_e2566426050_
                                       (gx#syntax-e _hd2566126044_)))
                                  (let ((_lp-hd2566526054_
                                         (##car _e2566426050_))
                                        (_lp-tl2566626057_
                                         (##cdr _e2566426050_)))
                                    (_loop2566326040_
                                     _lp-tl2566626057_
                                     (cons _lp-hd2566526054_
                                           _body2566726047_))))
                                (let ((_body2566826060_
                                       (reverse _body2566726047_)))
                                  ((lambda (_L26064_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2608026083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2608126086_)
                    (cons _g2608026083_ _g2608126086_))
                  '()
                  _L26064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2566826060_))))))
                  (_loop2566326040_ _target2566026034_ '()))
                (_g2564926007_ _g2565226011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2564926007_ _g2565226011_))
                                          (_g2564926007_ _g2565226011_))
                                      (_g2564926007_ _g2565226011_))))
                              (_g2564926007_ _g2565226011_))))
                      (_g2564926007_ _g2565226011_)))))
          (_g2564826089_ _$stx25645_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx26097_)
        (let* ((_g2610226154_
                (lambda (_g2610326150_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2610326150_)))
               (_g2610126237_
                (lambda (_g2610326158_)
                  (if (gx#stx-pair? _g2610326158_)
                      (let ((_e2613426161_ (gx#syntax-e _g2610326158_)))
                        (let ((_hd2613526165_ (##car _e2613426161_))
                              (_tl2613626168_ (##cdr _e2613426161_)))
                          (if (gx#stx-pair? _tl2613626168_)
                              (let ((_e2613726171_
                                     (gx#syntax-e _tl2613626168_)))
                                (let ((_hd2613826175_ (##car _e2613726171_))
                                      (_tl2613926178_ (##cdr _e2613726171_)))
                                  (if (gx#stx-null? _hd2613826175_)
                                      (if (gx#stx-pair/null? _tl2613926178_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2613926178_)
                                                    '0)
                                              (let ((_g31034_
                                                     (gx#syntax-split-splice
                                                      _tl2613926178_
                                                      '0)))
                                                (begin
                                                  (let ((_g31035_
                                                         (values-count
                                                          _g31034_)))
                                                    (if (not (fx= _g31035_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31035_)))
                                                  (let ((_target2614026181_
                                                         (values-ref
                                                          _g31034_
                                                          0))
                                                        (_tl2614226184_
                                                         (values-ref
                                                          _g31034_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2614226184_)
                                                        (letrec ((_loop2614326187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2614126191_ _body2614726194_)
                            (if (gx#stx-pair? _hd2614126191_)
                                (let ((_e2614426197_
                                       (gx#syntax-e _hd2614126191_)))
                                  (let ((_lp-hd2614526201_
                                         (##car _e2614426197_))
                                        (_lp-tl2614626204_
                                         (##cdr _e2614426197_)))
                                    (_loop2614326187_
                                     _lp-tl2614626204_
                                     (cons _lp-hd2614526201_
                                           _body2614726194_))))
                                (let ((_body2614826207_
                                       (reverse _body2614726194_)))
                                  ((lambda (_L26211_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2622826231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2622926234_)
                    (cons _g2622826231_ _g2622926234_))
                  '()
                  _L26211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2614826207_))))))
                  (_loop2614326187_ _target2614026181_ '()))
                (_g2610226154_ _g2610326158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2610226154_ _g2610326158_))
                                          (_g2610226154_ _g2610326158_))
                                      (_g2610226154_ _g2610326158_))))
                              (_g2610226154_ _g2610326158_))))
                      (_g2610226154_ _g2610326158_))))
               (_g2610026363_
                (lambda (_g2610326241_)
                  (if (gx#stx-pair? _g2610326241_)
                      (let ((_e2610926244_ (gx#syntax-e _g2610326241_)))
                        (let ((_hd2611026248_ (##car _e2610926244_))
                              (_tl2611126251_ (##cdr _e2610926244_)))
                          (if (gx#stx-pair? _tl2611126251_)
                              (let ((_e2611226254_
                                     (gx#syntax-e _tl2611126251_)))
                                (let ((_hd2611326258_ (##car _e2611226254_))
                                      (_tl2611426261_ (##cdr _e2611226254_)))
                                  (if (gx#stx-pair? _hd2611326258_)
                                      (let ((_e2611526264_
                                             (gx#syntax-e _hd2611326258_)))
                                        (let ((_hd2611626268_
                                               (##car _e2611526264_))
                                              (_tl2611726271_
                                               (##cdr _e2611526264_)))
                                          (if (gx#stx-pair? _hd2611626268_)
                                              (let ((_e2611826274_
                                                     (gx#syntax-e
                                                      _hd2611626268_)))
                                                (let ((_hd2611926278_
                                                       (##car _e2611826274_))
                                                      (_tl2612026281_
                                                       (##cdr _e2611826274_)))
                                                  (if (gx#stx-pair?
                                                       _tl2612026281_)
                                                      (let ((_e2612126284_
                                                             (gx#syntax-e
                                                              _tl2612026281_)))
                                                        (let ((_hd2612226288_
                                                               (##car _e2612126284_))
                                                              (_tl2612326291_
                                                               (##cdr _e2612126284_)))
                                                          (if (gx#stx-null?
                                                               _tl2612326291_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2611426261_)
                          (if (fx>= (gx#stx-length _tl2611426261_) '0)
                              (let ((_g31036_
                                     (gx#syntax-split-splice
                                      _tl2611426261_
                                      '0)))
                                (begin
                                  (let ((_g31037_ (values-count _g31036_)))
                                    (if (not (fx= _g31037_ 2))
                                        (error "Context expects 2 values"
                                               _g31037_)))
                                  (let ((_target2612426294_
                                         (values-ref _g31036_ 0))
                                        (_tl2612626297_
                                         (values-ref _g31036_ 1)))
                                    (if (gx#stx-null? _tl2612626297_)
                                        (letrec ((_loop2612726300_
                                                  (lambda (_hd2612526304_
                                                           _body2613126307_)
                                                    (if (gx#stx-pair?
                                                         _hd2612526304_)
                                                        (let ((_e2612826310_
                                                               (gx#syntax-e
                                                                _hd2612526304_)))
                                                          (let ((_lp-hd2612926314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2612826310_))
                        (_lp-tl2613026317_ (##cdr _e2612826310_)))
                    (_loop2612726300_
                     _lp-tl2613026317_
                     (cons _lp-hd2612926314_ _body2613126307_))))
                (let ((_body2613226320_ (reverse _body2613126307_)))
                  ((lambda (_L26324_ _L26326_ _L26327_ _L26328_ _L26329_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26328_ (cons _L26327_ '())) '())
                                 (cons (cons _L26329_
                                             (cons _L26326_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2635426357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2635526360_)
                      (cons _g2635426357_ _g2635526360_))
                    '()
                    _L26324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2613226320_
                   _tl2611726271_
                   _hd2612226288_
                   _hd2611926278_
                   _hd2611026248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2612726300_
                                           _target2612426294_
                                           '()))
                                        (_g2610126237_ _g2610326241_)))))
                              (_g2610126237_ _g2610326241_))
                          (_g2610126237_ _g2610326241_))
                      (_g2610126237_ _g2610326241_))))
              (_g2610126237_ _g2610326241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2610126237_ _g2610326241_))))
                                      (_g2610126237_ _g2610326241_))))
                              (_g2610126237_ _g2610326241_))))
                      (_g2610126237_ _g2610326241_)))))
          (_g2610026363_ _$stx26097_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26369_)
        (let* ((_g2638026524_
                (lambda (_g2638126520_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2638126520_)))
               (_g2637926619_
                (lambda (_g2638126528_)
                  (if (gx#stx-pair? _g2638126528_)
                      (let ((_e2650126531_ (gx#syntax-e _g2638126528_)))
                        (let ((_hd2650226535_ (##car _e2650126531_))
                              (_tl2650326538_ (##cdr _e2650126531_)))
                          (if (gx#stx-pair? _tl2650326538_)
                              (let ((_e2650426541_
                                     (gx#syntax-e _tl2650326538_)))
                                (let ((_hd2650526545_ (##car _e2650426541_))
                                      (_tl2650626548_ (##cdr _e2650426541_)))
                                  (if (gx#stx-pair? _tl2650626548_)
                                      (let ((_e2650726551_
                                             (gx#syntax-e _tl2650626548_)))
                                        (let ((_hd2650826555_
                                               (##car _e2650726551_))
                                              (_tl2650926558_
                                               (##cdr _e2650726551_)))
                                          (if (gx#stx-datum? _hd2650826555_)
                                              (if (equal? (gx#stx-e
                                                           _hd2650826555_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2650926558_)
                                                      (let ((_e2651026561_
                                                             (gx#syntax-e
                                                              _tl2650926558_)))
                                                        (let ((_hd2651126565_
                                                               (##car _e2651026561_))
                                                              (_tl2651226568_
                                                               (##cdr _e2651026561_)))
                                                          (if (gx#stx-pair?
                                                               _tl2651226568_)
                                                              (let ((_e2651326571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2651226568_)))
                        (let ((_hd2651426575_ (##car _e2651326571_))
                              (_tl2651526578_ (##cdr _e2651326571_)))
                          (if (gx#identifier? _hd2651426575_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31038_|
                                   _hd2651426575_)
                                  (if (gx#stx-pair? _tl2651526578_)
                                      (let ((_e2651626581_
                                             (gx#syntax-e _tl2651526578_)))
                                        (let ((_hd2651726585_
                                               (##car _e2651626581_))
                                              (_tl2651826588_
                                               (##cdr _e2651626581_)))
                                          (if (gx#stx-null? _tl2651826588_)
                                              ((lambda (_L26591_
                                                        _L26593_
                                                        _L26594_
                                                        _L26595_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26595_
                                             (cons _L26594_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26591_
                                                   (cons (cons _L26593_
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
                                               _hd2651726585_
                                               _hd2651126565_
                                               _hd2650526545_
                                               _hd2650226535_)
                                              (_g2638026524_ _g2638126528_))))
                                      (_g2638026524_ _g2638126528_))
                                  (_g2638026524_ _g2638126528_))
                              (_g2638026524_ _g2638126528_))))
                      (_g2638026524_ _g2638126528_))))
              (_g2638026524_ _g2638126528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638026524_
                                                   _g2638126528_))
                                              (_g2638026524_ _g2638126528_))))
                                      (_g2638026524_ _g2638126528_))))
                              (_g2638026524_ _g2638126528_))))
                      (_g2638026524_ _g2638126528_))))
               (_g2637826687_
                (lambda (_g2638126623_)
                  (if (gx#stx-pair? _g2638126623_)
                      (let ((_e2648526626_ (gx#syntax-e _g2638126623_)))
                        (let ((_hd2648626630_ (##car _e2648526626_))
                              (_tl2648726633_ (##cdr _e2648526626_)))
                          (if (gx#stx-pair? _tl2648726633_)
                              (let ((_e2648826636_
                                     (gx#syntax-e _tl2648726633_)))
                                (let ((_hd2648926640_ (##car _e2648826636_))
                                      (_tl2649026643_ (##cdr _e2648826636_)))
                                  (if (gx#stx-pair? _tl2649026643_)
                                      (let ((_e2649126646_
                                             (gx#syntax-e _tl2649026643_)))
                                        (let ((_hd2649226650_
                                               (##car _e2649126646_))
                                              (_tl2649326653_
                                               (##cdr _e2649126646_)))
                                          (if (gx#stx-datum? _hd2649226650_)
                                              (if (equal? (gx#stx-e
                                                           _hd2649226650_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2649326653_)
                                                      (let ((_e2649426656_
                                                             (gx#syntax-e
                                                              _tl2649326653_)))
                                                        (let ((_hd2649526660_
                                                               (##car _e2649426656_))
                                                              (_tl2649626663_
                                                               (##cdr _e2649426656_)))
                                                          (if (gx#stx-null?
                                                               _tl2649626663_)
                                                              ((lambda (_L26666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26668_
                                _L26669_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26668_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26666_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2649526660_
                       _hd2648926640_
                       _hd2648626630_)
                      (_g2637926619_ _g2638126623_))))
              (_g2637926619_ _g2638126623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637926619_
                                                   _g2638126623_))
                                              (_g2637926619_ _g2638126623_))))
                                      (_g2637926619_ _g2638126623_))))
                              (_g2637926619_ _g2638126623_))))
                      (_g2637926619_ _g2638126623_))))
               (_g2637726755_
                (lambda (_g2638126691_)
                  (if (gx#stx-pair? _g2638126691_)
                      (let ((_e2647026694_ (gx#syntax-e _g2638126691_)))
                        (let ((_hd2647126698_ (##car _e2647026694_))
                              (_tl2647226701_ (##cdr _e2647026694_)))
                          (if (gx#stx-pair? _tl2647226701_)
                              (let ((_e2647326704_
                                     (gx#syntax-e _tl2647226701_)))
                                (let ((_hd2647426708_ (##car _e2647326704_))
                                      (_tl2647526711_ (##cdr _e2647326704_)))
                                  (if (gx#stx-pair? _tl2647526711_)
                                      (let ((_e2647626714_
                                             (gx#syntax-e _tl2647526711_)))
                                        (let ((_hd2647726718_
                                               (##car _e2647626714_))
                                              (_tl2647826721_
                                               (##cdr _e2647626714_)))
                                          (if (gx#identifier? _hd2647726718_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31039_|
                                                   _hd2647726718_)
                                                  (if (gx#stx-pair?
                                                       _tl2647826721_)
                                                      (let ((_e2647926724_
                                                             (gx#syntax-e
                                                              _tl2647826721_)))
                                                        (let ((_hd2648026728_
                                                               (##car _e2647926724_))
                                                              (_tl2648126731_
                                                               (##cdr _e2647926724_)))
                                                          (if (gx#stx-null?
                                                               _tl2648126731_)
                                                              ((lambda (_L26734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26736_
                                _L26737_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L26737_
                                                             (cons _L26736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L26734_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2648026728_
                       _hd2647426708_
                       _hd2647126698_)
                      (_g2637826687_ _g2638126691_))))
              (_g2637826687_ _g2638126691_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637826687_
                                                   _g2638126691_))
                                              (_g2637826687_ _g2638126691_))))
                                      (_g2637826687_ _g2638126691_))))
                              (_g2637826687_ _g2638126691_))))
                      (_g2637826687_ _g2638126691_))))
               (_g2637626797_
                (lambda (_g2638126759_)
                  (if (gx#stx-pair? _g2638126759_)
                      (let ((_e2646126762_ (gx#syntax-e _g2638126759_)))
                        (let ((_hd2646226766_ (##car _e2646126762_))
                              (_tl2646326769_ (##cdr _e2646126762_)))
                          (if (gx#stx-pair? _tl2646326769_)
                              (let ((_e2646426772_
                                     (gx#syntax-e _tl2646326769_)))
                                (let ((_hd2646526776_ (##car _e2646426772_))
                                      (_tl2646626779_ (##cdr _e2646426772_)))
                                  (if (gx#stx-null? _tl2646626779_)
                                      ((lambda (_L26782_ _L26784_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L26784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L26782_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2646526776_
                                       _hd2646226766_)
                                      (_g2637726755_ _g2638126759_))))
                              (_g2637726755_ _g2638126759_))))
                      (_g2637726755_ _g2638126759_))))
               (_g2637526851_
                (lambda (_g2638126801_)
                  (if (gx#stx-pair? _g2638126801_)
                      (let ((_e2645026804_ (gx#syntax-e _g2638126801_)))
                        (let ((_hd2645126808_ (##car _e2645026804_))
                              (_tl2645226811_ (##cdr _e2645026804_)))
                          (if (gx#stx-pair? _tl2645226811_)
                              (let ((_e2645326814_
                                     (gx#syntax-e _tl2645226811_)))
                                (let ((_hd2645426818_ (##car _e2645326814_))
                                      (_tl2645526821_ (##cdr _e2645326814_)))
                                  (if (gx#stx-pair? _tl2645526821_)
                                      (let ((_e2645626824_
                                             (gx#syntax-e _tl2645526821_)))
                                        (let ((_hd2645726828_
                                               (##car _e2645626824_))
                                              (_tl2645826831_
                                               (##cdr _e2645626824_)))
                                          (if (gx#stx-null? _tl2645826831_)
                                              ((lambda (_L26834_ _L26836_)
                                                 (cons _L26836_
                                                       (cons _L26834_ '())))
                                               _hd2645726828_
                                               _hd2645426818_)
                                              (_g2637626797_ _g2638126801_))))
                                      (_g2637626797_ _g2638126801_))))
                              (_g2637626797_ _g2638126801_))))
                      (_g2637626797_ _g2638126801_))))
               (_g2637426931_
                (lambda (_g2638126855_)
                  (if (gx#stx-pair? _g2638126855_)
                      (let ((_e2643326858_ (gx#syntax-e _g2638126855_)))
                        (let ((_hd2643426862_ (##car _e2643326858_))
                              (_tl2643526865_ (##cdr _e2643326858_)))
                          (if (gx#stx-pair? _tl2643526865_)
                              (let ((_e2643626868_
                                     (gx#syntax-e _tl2643526865_)))
                                (let ((_hd2643726872_ (##car _e2643626868_))
                                      (_tl2643826875_ (##cdr _e2643626868_)))
                                  (if (gx#stx-pair? _hd2643726872_)
                                      (let ((_e2643926878_
                                             (gx#syntax-e _hd2643726872_)))
                                        (let ((_hd2644026882_
                                               (##car _e2643926878_))
                                              (_tl2644126885_
                                               (##cdr _e2643926878_)))
                                          (if (gx#identifier? _hd2644026882_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31040_|
                                                   _hd2644026882_)
                                                  (if (gx#stx-pair?
                                                       _tl2644126885_)
                                                      (let ((_e2644226888_
                                                             (gx#syntax-e
                                                              _tl2644126885_)))
                                                        (let ((_hd2644326892_
                                                               (##car _e2644226888_))
                                                              (_tl2644426895_
                                                               (##cdr _e2644226888_)))
                                                          (if (gx#stx-null?
                                                               _tl2644426895_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2643826875_)
                          (let ((_e2644526898_ (gx#syntax-e _tl2643826875_)))
                            (let ((_hd2644626902_ (##car _e2644526898_))
                                  (_tl2644726905_ (##cdr _e2644526898_)))
                              (if (gx#stx-null? _tl2644726905_)
                                  ((lambda (_L26908_ _L26910_ _L26911_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L26911_
                                                       (cons _L26910_
                                                             (cons _L26908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2644626902_
                                   _hd2644326892_
                                   _hd2643426862_)
                                  (_g2637526851_ _g2638126855_))))
                          (_g2637526851_ _g2638126855_))
                      (_g2637526851_ _g2638126855_))))
              (_g2637526851_ _g2638126855_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637526851_
                                                   _g2638126855_))
                                              (_g2637526851_ _g2638126855_))))
                                      (_g2637526851_ _g2638126855_))))
                              (_g2637526851_ _g2638126855_))))
                      (_g2637526851_ _g2638126855_))))
               (_g2637327041_
                (lambda (_g2638126935_)
                  (if (gx#stx-pair? _g2638126935_)
                      (let ((_e2640926938_ (gx#syntax-e _g2638126935_)))
                        (let ((_hd2641026942_ (##car _e2640926938_))
                              (_tl2641126945_ (##cdr _e2640926938_)))
                          (if (gx#stx-pair? _tl2641126945_)
                              (let ((_e2641226948_
                                     (gx#syntax-e _tl2641126945_)))
                                (let ((_hd2641326952_ (##car _e2641226948_))
                                      (_tl2641426955_ (##cdr _e2641226948_)))
                                  (if (gx#stx-pair? _hd2641326952_)
                                      (let ((_e2641526958_
                                             (gx#syntax-e _hd2641326952_)))
                                        (let ((_hd2641626962_
                                               (##car _e2641526958_))
                                              (_tl2641726965_
                                               (##cdr _e2641526958_)))
                                          (if (gx#identifier? _hd2641626962_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31041_|
                                                   _hd2641626962_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2641726965_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2641726965_)
                        '0)
                  (let ((_g31042_ (gx#syntax-split-splice _tl2641726965_ '0)))
                    (begin
                      (let ((_g31043_ (values-count _g31042_)))
                        (if (not (fx= _g31043_ 2))
                            (error "Context expects 2 values" _g31043_)))
                      (let ((_target2641826968_ (values-ref _g31042_ 0))
                            (_tl2642026971_ (values-ref _g31042_ 1)))
                        (if (gx#stx-null? _tl2642026971_)
                            (letrec ((_loop2642126974_
                                      (lambda (_hd2641926978_ _pred2642526981_)
                                        (if (gx#stx-pair? _hd2641926978_)
                                            (let ((_e2642226984_
                                                   (gx#syntax-e
                                                    _hd2641926978_)))
                                              (let ((_lp-hd2642326988_
                                                     (##car _e2642226984_))
                                                    (_lp-tl2642426991_
                                                     (##cdr _e2642226984_)))
                                                (_loop2642126974_
                                                 _lp-tl2642426991_
                                                 (cons _lp-hd2642326988_
                                                       _pred2642526981_))))
                                            (let ((_pred2642626994_
                                                   (reverse _pred2642526981_)))
                                              (if (gx#stx-pair? _tl2641426955_)
                                                  (let ((_e2642726998_
                                                         (gx#syntax-e
                                                          _tl2641426955_)))
                                                    (let ((_hd2642827002_
                                                           (##car _e2642726998_))
                                                          (_tl2642927005_
                                                           (##cdr _e2642726998_)))
                                                      (if (gx#stx-null?
                                                           _tl2642927005_)
                                                          ((lambda (_L27008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27010_
                            _L27011_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2703227035_ _g2703327038_)
                                      (cons (cons _L27011_
                                                  (cons _g2703227035_
                                                        (cons _L27008_ '())))
                                            _g2703327038_))
                                    '()
                                    _L27010_))))
                   _hd2642827002_
                   _pred2642626994_
                   _hd2641026942_)
                  (_g2637426931_ _g2638126935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637426931_
                                                   _g2638126935_)))))))
                              (_loop2642126974_ _target2641826968_ '()))
                            (_g2637426931_ _g2638126935_)))))
                  (_g2637426931_ _g2638126935_))
              (_g2637426931_ _g2638126935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637426931_
                                                   _g2638126935_))
                                              (_g2637426931_ _g2638126935_))))
                                      (_g2637426931_ _g2638126935_))))
                              (_g2637426931_ _g2638126935_))))
                      (_g2637426931_ _g2638126935_))))
               (_g2637227151_
                (lambda (_g2638127045_)
                  (if (gx#stx-pair? _g2638127045_)
                      (let ((_e2638527048_ (gx#syntax-e _g2638127045_)))
                        (let ((_hd2638627052_ (##car _e2638527048_))
                              (_tl2638727055_ (##cdr _e2638527048_)))
                          (if (gx#stx-pair? _tl2638727055_)
                              (let ((_e2638827058_
                                     (gx#syntax-e _tl2638727055_)))
                                (let ((_hd2638927062_ (##car _e2638827058_))
                                      (_tl2639027065_ (##cdr _e2638827058_)))
                                  (if (gx#stx-pair? _hd2638927062_)
                                      (let ((_e2639127068_
                                             (gx#syntax-e _hd2638927062_)))
                                        (let ((_hd2639227072_
                                               (##car _e2639127068_))
                                              (_tl2639327075_
                                               (##cdr _e2639127068_)))
                                          (if (gx#identifier? _hd2639227072_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31044_|
                                                   _hd2639227072_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2639327075_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2639327075_)
                        '0)
                  (let ((_g31045_ (gx#syntax-split-splice _tl2639327075_ '0)))
                    (begin
                      (let ((_g31046_ (values-count _g31045_)))
                        (if (not (fx= _g31046_ 2))
                            (error "Context expects 2 values" _g31046_)))
                      (let ((_target2639427078_ (values-ref _g31045_ 0))
                            (_tl2639627081_ (values-ref _g31045_ 1)))
                        (if (gx#stx-null? _tl2639627081_)
                            (letrec ((_loop2639727084_
                                      (lambda (_hd2639527088_ _pred2640127091_)
                                        (if (gx#stx-pair? _hd2639527088_)
                                            (let ((_e2639827094_
                                                   (gx#syntax-e
                                                    _hd2639527088_)))
                                              (let ((_lp-hd2639927098_
                                                     (##car _e2639827094_))
                                                    (_lp-tl2640027101_
                                                     (##cdr _e2639827094_)))
                                                (_loop2639727084_
                                                 _lp-tl2640027101_
                                                 (cons _lp-hd2639927098_
                                                       _pred2640127091_))))
                                            (let ((_pred2640227104_
                                                   (reverse _pred2640127091_)))
                                              (if (gx#stx-pair? _tl2639027065_)
                                                  (let ((_e2640327108_
                                                         (gx#syntax-e
                                                          _tl2639027065_)))
                                                    (let ((_hd2640427112_
                                                           (##car _e2640327108_))
                                                          (_tl2640527115_
                                                           (##cdr _e2640327108_)))
                                                      (if (gx#stx-null?
                                                           _tl2640527115_)
                                                          ((lambda (_L27118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27120_
                            _L27121_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2714227145_ _g2714327148_)
                                      (cons (cons _L27121_
                                                  (cons _g2714227145_
                                                        (cons _L27118_ '())))
                                            _g2714327148_))
                                    '()
                                    _L27120_))))
                   _hd2640427112_
                   _pred2640227104_
                   _hd2638627052_)
                  (_g2637327041_ _g2638127045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637327041_
                                                   _g2638127045_)))))))
                              (_loop2639727084_ _target2639427078_ '()))
                            (_g2637327041_ _g2638127045_)))))
                  (_g2637327041_ _g2638127045_))
              (_g2637327041_ _g2638127045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637327041_
                                                   _g2638127045_))
                                              (_g2637327041_ _g2638127045_))))
                                      (_g2637327041_ _g2638127045_))))
                              (_g2637327041_ _g2638127045_))))
                      (_g2637327041_ _g2638127045_)))))
          (_g2637227151_ _$stx26369_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx27157_)
        (let* ((_g2716227196_
                (lambda (_g2716327192_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2716327192_)))
               (_g2716127253_
                (lambda (_g2716327200_)
                  (if (gx#stx-pair? _g2716327200_)
                      (let ((_e2718227203_ (gx#syntax-e _g2716327200_)))
                        (let ((_hd2718327207_ (##car _e2718227203_))
                              (_tl2718427210_ (##cdr _e2718227203_)))
                          (if (gx#stx-pair? _tl2718427210_)
                              (let ((_e2718527213_
                                     (gx#syntax-e _tl2718427210_)))
                                (let ((_hd2718627217_ (##car _e2718527213_))
                                      (_tl2718727220_ (##cdr _e2718527213_)))
                                  (if (gx#stx-pair? _tl2718727220_)
                                      (let ((_e2718827223_
                                             (gx#syntax-e _tl2718727220_)))
                                        (let ((_hd2718927227_
                                               (##car _e2718827223_))
                                              (_tl2719027230_
                                               (##cdr _e2718827223_)))
                                          (if (gx#stx-null? _tl2719027230_)
                                              ((lambda (_L27233_
                                                        _L27235_
                                                        _L27236_)
                                                 (cons _L27236_
                                                       (cons _L27235_
                                                             (cons _L27233_
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
                                               _hd2718927227_
                                               _hd2718627217_
                                               _hd2718327207_)
                                              (_g2716227196_ _g2716327200_))))
                                      (_g2716227196_ _g2716327200_))))
                              (_g2716227196_ _g2716327200_))))
                      (_g2716227196_ _g2716327200_))))
               (_g2716027321_
                (lambda (_g2716327257_)
                  (if (gx#stx-pair? _g2716327257_)
                      (let ((_e2716727260_ (gx#syntax-e _g2716327257_)))
                        (let ((_hd2716827264_ (##car _e2716727260_))
                              (_tl2716927267_ (##cdr _e2716727260_)))
                          (if (gx#stx-pair? _tl2716927267_)
                              (let ((_e2717027270_
                                     (gx#syntax-e _tl2716927267_)))
                                (let ((_hd2717127274_ (##car _e2717027270_))
                                      (_tl2717227277_ (##cdr _e2717027270_)))
                                  (if (gx#stx-pair? _tl2717227277_)
                                      (let ((_e2717327280_
                                             (gx#syntax-e _tl2717227277_)))
                                        (let ((_hd2717427284_
                                               (##car _e2717327280_))
                                              (_tl2717527287_
                                               (##cdr _e2717327280_)))
                                          (if (gx#stx-pair? _tl2717527287_)
                                              (let ((_e2717627290_
                                                     (gx#syntax-e
                                                      _tl2717527287_)))
                                                (let ((_hd2717727294_
                                                       (##car _e2717627290_))
                                                      (_tl2717827297_
                                                       (##cdr _e2717627290_)))
                                                  (if (gx#stx-null?
                                                       _tl2717827297_)
                                                      ((lambda (_L27300_
                                                                _L27302_
                                                                _L27303_)
                                                         (if (gx#identifier?
                                                              _L27303_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27303_
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
                                         (cons _L27302_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27300_ '()))
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
                     (_g2716127253_ _g2716327257_)))
               _hd2717727294_
               _hd2717427284_
               _hd2717127274_)
              (_g2716127253_ _g2716327257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2716127253_ _g2716327257_))))
                                      (_g2716127253_ _g2716327257_))))
                              (_g2716127253_ _g2716327257_))))
                      (_g2716127253_ _g2716327257_)))))
          (_g2716027321_ _$stx27157_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27325_)
        (let* ((_g2732927344_
                (lambda (_g2733027340_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2733027340_)))
               (_g2732827387_
                (lambda (_g2733027348_)
                  (if (gx#stx-pair? _g2733027348_)
                      (let ((_e2733327351_ (gx#syntax-e _g2733027348_)))
                        (let ((_hd2733427355_ (##car _e2733327351_))
                              (_tl2733527358_ (##cdr _e2733327351_)))
                          (if (gx#stx-pair? _tl2733527358_)
                              (let ((_e2733627361_
                                     (gx#syntax-e _tl2733527358_)))
                                (let ((_hd2733727365_ (##car _e2733627361_))
                                      (_tl2733827368_ (##cdr _e2733627361_)))
                                  ((lambda (_L27371_ _L27373_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27373_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27371_)
                                                       '()))))
                                   _tl2733827368_
                                   _hd2733727365_)))
                              (_g2732927344_ _g2733027348_))))
                      (_g2732927344_ _g2733027348_)))))
          (_g2732827387_ _$stx27325_))))))
