(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g30991_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30992_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30993_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30996_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30997_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30998_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30999_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31000_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31001_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31002_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31003_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31004_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31005_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31006_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31007_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31008_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31017_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31022_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31023_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31024_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31041_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31042_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31043_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31044_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31047_|
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
      (lambda _$args25035_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args25035_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx25032_)
        (if (gx#identifier? _stx25032_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx25032_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2334825018_
             (lambda (_stx23350_ _match-stx23352_)
               (letrec ((_parse123354_
                         (lambda (_hd23701_)
                           (let* ((_g2372723869_
                                   (lambda (_g2372823865_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2372823865_)))
                                  (_g2372623880_
                                   (lambda (_g2372823873_)
                                     ((lambda ()
                                        (_parse-error23361_ _hd23701_)))))
                                  (_g2372523898_
                                   (lambda (_g2372823884_)
                                     ((lambda (_L23887_)
                                        (if (gx#stx-datum? _L23887_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L23887_)
                                                        '()))
                                            (_g2372623880_ _g2372823884_)))
                                      _g2372823884_)))
                                  (_g2372423914_
                                   (lambda (_g2372823902_)
                                     ((lambda (_L23905_)
                                        (if (if (gx#identifier? _L23905_)
                                                (not (gx#ellipsis? _L23905_))
                                                '#f)
                                            (cons 'var: (cons _L23905_ '()))
                                            (_g2372523898_ _g2372823902_)))
                                      _g2372823902_)))
                                  (_g2372323930_
                                   (lambda (_g2372823918_)
                                     ((lambda (_L23921_)
                                        (if (gx#underscore? _L23921_)
                                            (cons 'any: '())
                                            (_g2372423914_ _g2372823918_)))
                                      _g2372823918_)))
                                  (_g2372223962_
                                   (lambda (_g2372823934_)
                                     (if (gx#stx-pair? _g2372823934_)
                                         (let ((_e2385823937_
                                                (gx#syntax-e _g2372823934_)))
                                           (let ((_hd2385923941_
                                                  (##car _e2385823937_))
                                                 (_tl2386023944_
                                                  (##cdr _e2385823937_)))
                                             ((lambda (_L23947_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L23947_)
                                                    (_parse123354_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L23947_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd23701_)
                                                       (let ((_$e23958_
                                                              (gx#stx-source
                                                               _hd23701_)))
                                                         (if _$e23958_
                                                             _$e23958_
                                                             (gx#stx-source
                                                              _stx23350_))))))
                                                    (_g2372323930_
                                                     _g2372823934_)))
                                              _hd2385923941_)))
                                         (_g2372323930_ _g2372823934_))))
                                  (_g2372124016_
                                   (lambda (_g2372823966_)
                                     (if (gx#stx-pair? _g2372823966_)
                                         (let ((_e2384823969_
                                                (gx#syntax-e _g2372823966_)))
                                           (let ((_hd2384923973_
                                                  (##car _e2384823969_))
                                                 (_tl2385023976_
                                                  (##cdr _e2384823969_)))
                                             (if (gx#identifier?
                                                  _hd2384923973_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30991_|
                                                      _hd2384923973_)
                                                     (if (gx#stx-pair?
                                                          _tl2385023976_)
                                                         (let ((_e2385123979_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2385023976_)))
                   (let ((_hd2385223983_ (##car _e2385123979_))
                         (_tl2385323986_ (##cdr _e2385123979_)))
                     (if (gx#stx-pair? _tl2385323986_)
                         (let ((_e2385423989_ (gx#syntax-e _tl2385323986_)))
                           (let ((_hd2385523993_ (##car _e2385423989_))
                                 (_tl2385623996_ (##cdr _e2385423989_)))
                             (if (gx#stx-null? _tl2385623996_)
                                 ((lambda (_L23999_ _L24001_)
                                    (cons 'apply:
                                          (cons _L24001_
                                                (cons (_parse123354_ _L23999_)
                                                      '()))))
                                  _hd2385523993_
                                  _hd2385223983_)
                                 (_g2372223962_ _g2372823966_))))
                         (_g2372223962_ _g2372823966_))))
                 (_g2372223962_ _g2372823966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2372223962_
                                                      _g2372823966_))
                                                 (_g2372223962_
                                                  _g2372823966_))))
                                         (_g2372223962_ _g2372823966_))))
                                  (_g2372024056_
                                   (lambda (_g2372824020_)
                                     (if (gx#stx-pair? _g2372824020_)
                                         (let ((_e2384024023_
                                                (gx#syntax-e _g2372824020_)))
                                           (let ((_hd2384124027_
                                                  (##car _e2384024023_))
                                                 (_tl2384224030_
                                                  (##cdr _e2384024023_)))
                                             (if (gx#identifier?
                                                  _hd2384124027_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30992_|
                                                      _hd2384124027_)
                                                     (if (gx#stx-pair?
                                                          _tl2384224030_)
                                                         (let ((_e2384324033_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2384224030_)))
                   (let ((_hd2384424037_ (##car _e2384324033_))
                         (_tl2384524040_ (##cdr _e2384324033_)))
                     (if (gx#stx-null? _tl2384524040_)
                         ((lambda (_L24043_) (_parse-qq23360_ _L24043_))
                          _hd2384424037_)
                         (_g2372124016_ _g2372824020_))))
                 (_g2372124016_ _g2372824020_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2372124016_
                                                      _g2372824020_))
                                                 (_g2372124016_
                                                  _g2372824020_))))
                                         (_g2372124016_ _g2372824020_))))
                                  (_g2371924096_
                                   (lambda (_g2372824060_)
                                     (if (gx#stx-pair? _g2372824060_)
                                         (let ((_e2383324063_
                                                (gx#syntax-e _g2372824060_)))
                                           (let ((_hd2383424067_
                                                  (##car _e2383324063_))
                                                 (_tl2383524070_
                                                  (##cdr _e2383324063_)))
                                             (if (gx#identifier?
                                                  _hd2383424067_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30993_|
                                                      _hd2383424067_)
                                                     (if (gx#stx-pair?
                                                          _tl2383524070_)
                                                         (let ((_e2383624073_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2383524070_)))
                   (let ((_hd2383724077_ (##car _e2383624073_))
                         (_tl2383824080_ (##cdr _e2383624073_)))
                     (if (gx#stx-null? _tl2383824080_)
                         ((lambda (_L24083_)
                            (cons 'datum: (cons (gx#stx-e _L24083_) '())))
                          _hd2383724077_)
                         (_g2372024056_ _g2372824060_))))
                 (_g2372024056_ _g2372824060_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2372024056_
                                                      _g2372824060_))
                                                 (_g2372024056_
                                                  _g2372824060_))))
                                         (_g2372024056_ _g2372824060_))))
                                  (_g2371824146_
                                   (lambda (_g2372824100_)
                                     (if (gx#stx-pair? _g2372824100_)
                                         (let ((_e2382624103_
                                                (gx#syntax-e _g2372824100_)))
                                           (let ((_hd2382724107_
                                                  (##car _e2382624103_))
                                                 (_tl2382824110_
                                                  (##cdr _e2382624103_)))
                                             (if (gx#stx-pair? _tl2382824110_)
                                                 (let ((_e2382924113_
                                                        (gx#syntax-e
                                                         _tl2382824110_)))
                                                   (let ((_hd2383024117_
                                                          (##car _e2382924113_))
                                                         (_tl2383124120_
                                                          (##cdr _e2382924113_)))
                                                     (if (gx#stx-null?
                                                          _tl2383124120_)
                                                         ((lambda (_L24123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24125_)
                    (if (if (gx#identifier? _L24125_)
                            (let ((_$e24138_
                                   (gx#free-identifier=?
                                    _L24125_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e24138_
                                  _$e24138_
                                  (let ((_$e24142_
                                         (gx#free-identifier=?
                                          _L24125_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e24142_
                                        _$e24142_
                                        (gx#free-identifier=?
                                         _L24125_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L24125_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L24123_ '()))))
                                    '()))
                        (_g2371924096_ _g2372824100_)))
                  _hd2383024117_
                  _hd2382724107_)
                 (_g2371924096_ _g2372824100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2371924096_
                                                  _g2372824100_))))
                                         (_g2371924096_ _g2372824100_))))
                                  (_g2371724176_
                                   (lambda (_g2372824150_)
                                     (if (gx#stx-pair? _g2372824150_)
                                         (let ((_e2382124153_
                                                (gx#syntax-e _g2372824150_)))
                                           (let ((_hd2382224157_
                                                  (##car _e2382124153_))
                                                 (_tl2382324160_
                                                  (##cdr _e2382124153_)))
                                             ((lambda (_L24163_ _L24165_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L24165_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24165_)
                        (cons (_parse-class-body23359_ _L24163_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2371824146_
                                                     _g2372824150_)))
                                              _tl2382324160_
                                              _hd2382224157_)))
                                         (_g2371824146_ _g2372824150_))))
                                  (_g2371624206_
                                   (lambda (_g2372824180_)
                                     (if (gx#stx-pair? _g2372824180_)
                                         (let ((_e2381624183_
                                                (gx#syntax-e _g2372824180_)))
                                           (let ((_hd2381724187_
                                                  (##car _e2381624183_))
                                                 (_tl2381824190_
                                                  (##cdr _e2381624183_)))
                                             ((lambda (_L24193_ _L24195_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24195_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24195_)
                        (cons (_parse-vector23357_ _L24193_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2371724176_
                                                     _g2372824180_)))
                                              _tl2381824190_
                                              _hd2381724187_)))
                                         (_g2371724176_ _g2372824180_))))
                                  (_g2371524269_
                                   (lambda (_g2372824210_)
                                     (if (gx#stx-vector? _g2372824210_)
                                         (let ((_e2380424213_
                                                (vector->list
                                                 (gx#syntax-e _g2372824210_))))
                                           (if (gx#stx-pair/null?
                                                _e2380424213_)
                                               (if (fx>= (gx#stx-length
                                                          _e2380424213_)
                                                         '0)
                                                   (let ((_g30994_
                                                          (gx#syntax-split-splice
                                                           _e2380424213_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30995_
                                                              (values-count
                                                               _g30994_)))
                                                         (if (not (fx= _g30995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30995_)))
               (let ((_target2380524217_ (values-ref _g30994_ 0))
                     (_tl2380724220_ (values-ref _g30994_ 1)))
                 (if (gx#stx-null? _tl2380724220_)
                     (letrec ((_loop2380824223_
                               (lambda (_hd2380624227_ _body2381224230_)
                                 (if (gx#stx-pair? _hd2380624227_)
                                     (let ((_e2380924233_
                                            (gx#syntax-e _hd2380624227_)))
                                       (let ((_lp-hd2381024237_
                                              (##car _e2380924233_))
                                             (_lp-tl2381124240_
                                              (##cdr _e2380924233_)))
                                         (_loop2380824223_
                                          _lp-tl2381124240_
                                          (cons _lp-hd2381024237_
                                                _body2381224230_))))
                                     (let ((_body2381324243_
                                            (reverse _body2381224230_)))
                                       ((lambda (_L24247_)
                                          (cons 'vector:
                                                (cons (_parse-vector23357_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2426024263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2426124266_)
                          (cons _g2426024263_ _g2426124266_))
                        '()
                        _L24247_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2381324243_))))))
                       (_loop2380824223_ _target2380524217_ '()))
                     (_g2371624206_ _g2372824210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2371624206_
                                                    _g2372824210_))
                                               (_g2371624206_ _g2372824210_)))
                                         (_g2371624206_ _g2372824210_))))
                                  (_g2371424297_
                                   (lambda (_g2372824273_)
                                     (if (gx#stx-pair? _g2372824273_)
                                         (let ((_e2380024276_
                                                (gx#syntax-e _g2372824273_)))
                                           (let ((_hd2380124280_
                                                  (##car _e2380024276_))
                                                 (_tl2380224283_
                                                  (##cdr _e2380024276_)))
                                             (if (gx#identifier?
                                                  _hd2380124280_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30996_|
                                                      _hd2380124280_)
                                                     ((lambda (_L24286_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24286_)
                            '())))
              _tl2380224283_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371524269_
                                                      _g2372824273_))
                                                 (_g2371524269_
                                                  _g2372824273_))))
                                         (_g2371524269_ _g2372824273_))))
                                  (_g2371324325_
                                   (lambda (_g2372824301_)
                                     (if (gx#stx-pair? _g2372824301_)
                                         (let ((_e2379624304_
                                                (gx#syntax-e _g2372824301_)))
                                           (let ((_hd2379724308_
                                                  (##car _e2379624304_))
                                                 (_tl2379824311_
                                                  (##cdr _e2379624304_)))
                                             (if (gx#identifier?
                                                  _hd2379724308_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30997_|
                                                      _hd2379724308_)
                                                     ((lambda (_L24314_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24314_)
                            '())))
              _tl2379824311_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371424297_
                                                      _g2372824301_))
                                                 (_g2371424297_
                                                  _g2372824301_))))
                                         (_g2371424297_ _g2372824301_))))
                                  (_g2371224365_
                                   (lambda (_g2372824329_)
                                     (if (gx#stx-pair? _g2372824329_)
                                         (let ((_e2378924332_
                                                (gx#syntax-e _g2372824329_)))
                                           (let ((_hd2379024336_
                                                  (##car _e2378924332_))
                                                 (_tl2379124339_
                                                  (##cdr _e2378924332_)))
                                             (if (gx#identifier?
                                                  _hd2379024336_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30998_|
                                                      _hd2379024336_)
                                                     (if (gx#stx-pair?
                                                          _tl2379124339_)
                                                         (let ((_e2379224342_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2379124339_)))
                   (let ((_hd2379324346_ (##car _e2379224342_))
                         (_tl2379424349_ (##cdr _e2379224342_)))
                     (if (gx#stx-null? _tl2379424349_)
                         ((lambda (_L24352_) (_parse123354_ _L24352_))
                          _hd2379324346_)
                         (_g2371324325_ _g2372824329_))))
                 (_g2371324325_ _g2372824329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371324325_
                                                      _g2372824329_))
                                                 (_g2371324325_
                                                  _g2372824329_))))
                                         (_g2371324325_ _g2372824329_))))
                                  (_g2371124386_
                                   (lambda (_g2372824369_)
                                     (if (gx#stx-box? _g2372824369_)
                                         (let ((_e2378724372_
                                                (unbox (gx#syntax-e
                                                        _g2372824369_))))
                                           ((lambda (_L24376_)
                                              (cons 'box:
                                                    (cons (_parse123354_
                                                           _L24376_)
                                                          '())))
                                            _e2378724372_))
                                         (_g2371224365_ _g2372824369_))))
                                  (_g2371024426_
                                   (lambda (_g2372824390_)
                                     (if (gx#stx-pair? _g2372824390_)
                                         (let ((_e2378024393_
                                                (gx#syntax-e _g2372824390_)))
                                           (let ((_hd2378124397_
                                                  (##car _e2378024393_))
                                                 (_tl2378224400_
                                                  (##cdr _e2378024393_)))
                                             (if (gx#identifier?
                                                  _hd2378124397_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30999_|
                                                      _hd2378124397_)
                                                     (if (gx#stx-pair?
                                                          _tl2378224400_)
                                                         (let ((_e2378324403_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2378224400_)))
                   (let ((_hd2378424407_ (##car _e2378324403_))
                         (_tl2378524410_ (##cdr _e2378324403_)))
                     (if (gx#stx-null? _tl2378524410_)
                         ((lambda (_L24413_)
                            (cons 'box: (cons (_parse123354_ _L24413_) '())))
                          _hd2378424407_)
                         (_g2371124386_ _g2372824390_))))
                 (_g2371124386_ _g2372824390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2371124386_
                                                      _g2372824390_))
                                                 (_g2371124386_
                                                  _g2372824390_))))
                                         (_g2371124386_ _g2372824390_))))
                                  (_g2370924454_
                                   (lambda (_g2372824430_)
                                     (if (gx#stx-pair? _g2372824430_)
                                         (let ((_e2377624433_
                                                (gx#syntax-e _g2372824430_)))
                                           (let ((_hd2377724437_
                                                  (##car _e2377624433_))
                                                 (_tl2377824440_
                                                  (##cdr _e2377624433_)))
                                             (if (gx#identifier?
                                                  _hd2377724437_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31000_|
                                                      _hd2377724437_)
                                                     ((lambda (_L24443_)
                                                        (_parse-list23356_
                                                         _L24443_))
                                                      _tl2377824440_)
                                                     (_g2371024426_
                                                      _g2372824430_))
                                                 (_g2371024426_
                                                  _g2372824430_))))
                                         (_g2371024426_ _g2372824430_))))
                                  (_g2370824510_
                                   (lambda (_g2372824458_)
                                     (if (gx#stx-pair? _g2372824458_)
                                         (let ((_e2376624461_
                                                (gx#syntax-e _g2372824458_)))
                                           (let ((_hd2376724465_
                                                  (##car _e2376624461_))
                                                 (_tl2376824468_
                                                  (##cdr _e2376624461_)))
                                             (if (gx#identifier?
                                                  _hd2376724465_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31001_|
                                                      _hd2376724465_)
                                                     (if (gx#stx-pair?
                                                          _tl2376824468_)
                                                         (let ((_e2376924471_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2376824468_)))
                   (let ((_hd2377024475_ (##car _e2376924471_))
                         (_tl2377124478_ (##cdr _e2376924471_)))
                     (if (gx#stx-pair? _tl2377124478_)
                         (let ((_e2377224481_ (gx#syntax-e _tl2377124478_)))
                           (let ((_hd2377324485_ (##car _e2377224481_))
                                 (_tl2377424488_ (##cdr _e2377224481_)))
                             ((lambda (_L24491_ _L24493_ _L24494_)
                                (if (gx#stx-null? _L24491_)
                                    (cons 'cons:
                                          (cons (_parse123354_ _L24494_)
                                                (cons (_parse123354_ _L24493_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123354_ _L24494_)
                                                (cons (_parse123354_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24491_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2377424488_
                              _hd2377324485_
                              _hd2377024475_)))
                         (_g2370924454_ _g2372824458_))))
                 (_g2370924454_ _g2372824458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370924454_
                                                      _g2372824458_))
                                                 (_g2370924454_
                                                  _g2372824458_))))
                                         (_g2370924454_ _g2372824458_))))
                                  (_g2370724564_
                                   (lambda (_g2372824514_)
                                     (if (gx#stx-pair? _g2372824514_)
                                         (let ((_e2375424517_
                                                (gx#syntax-e _g2372824514_)))
                                           (let ((_hd2375524521_
                                                  (##car _e2375424517_))
                                                 (_tl2375624524_
                                                  (##cdr _e2375424517_)))
                                             (if (gx#identifier?
                                                  _hd2375524521_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31002_|
                                                      _hd2375524521_)
                                                     (if (gx#stx-pair?
                                                          _tl2375624524_)
                                                         (let ((_e2375724527_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2375624524_)))
                   (let ((_hd2375824531_ (##car _e2375724527_))
                         (_tl2375924534_ (##cdr _e2375724527_)))
                     (if (gx#stx-pair? _tl2375924534_)
                         (let ((_e2376024537_ (gx#syntax-e _tl2375924534_)))
                           (let ((_hd2376124541_ (##car _e2376024537_))
                                 (_tl2376224544_ (##cdr _e2376024537_)))
                             (if (gx#stx-null? _tl2376224544_)
                                 ((lambda (_L24547_ _L24549_)
                                    (cons 'cons:
                                          (cons (_parse123354_ _L24549_)
                                                (cons (_parse123354_ _L24547_)
                                                      '()))))
                                  _hd2376124541_
                                  _hd2375824531_)
                                 (_g2370824510_ _g2372824514_))))
                         (_g2370824510_ _g2372824514_))))
                 (_g2370824510_ _g2372824514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370824510_
                                                      _g2372824514_))
                                                 (_g2370824510_
                                                  _g2372824514_))))
                                         (_g2370824510_ _g2372824514_))))
                                  (_g2370624604_
                                   (lambda (_g2372824568_)
                                     (if (gx#stx-pair? _g2372824568_)
                                         (let ((_e2374624571_
                                                (gx#syntax-e _g2372824568_)))
                                           (let ((_hd2374724575_
                                                  (##car _e2374624571_))
                                                 (_tl2374824578_
                                                  (##cdr _e2374624571_)))
                                             (if (gx#identifier?
                                                  _hd2374724575_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31003_|
                                                      _hd2374724575_)
                                                     (if (gx#stx-pair?
                                                          _tl2374824578_)
                                                         (let ((_e2374924581_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2374824578_)))
                   (let ((_hd2375024585_ (##car _e2374924581_))
                         (_tl2375124588_ (##cdr _e2374924581_)))
                     (if (gx#stx-null? _tl2375124588_)
                         ((lambda (_L24591_)
                            (cons 'not: (cons (_parse123354_ _L24591_) '())))
                          _hd2375024585_)
                         (_g2370724564_ _g2372824568_))))
                 (_g2370724564_ _g2372824568_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370724564_
                                                      _g2372824568_))
                                                 (_g2370724564_
                                                  _g2372824568_))))
                                         (_g2370724564_ _g2372824568_))))
                                  (_g2370524689_
                                   (lambda (_g2372824608_)
                                     (if (gx#stx-pair? _g2372824608_)
                                         (let ((_e2374224611_
                                                (gx#syntax-e _g2372824608_)))
                                           (let ((_hd2374324615_
                                                  (##car _e2374224611_))
                                                 (_tl2374424618_
                                                  (##cdr _e2374224611_)))
                                             (if (gx#identifier?
                                                  _hd2374324615_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31004_|
                                                      _hd2374324615_)
                                                     ((lambda (_L24621_)
                                                        (if (gx#stx-list?
                                                             _L24621_)
                                                            (let* ((_g2463324644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2463424640_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2463424640_)))
                           (_g2463224655_
                            (lambda (_g2463424648_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123354_ _L24621_))))))
                           (_g2463124685_
                            (lambda (_g2463424659_)
                              (if (gx#stx-pair? _g2463424659_)
                                  (let ((_e2463624662_
                                         (gx#syntax-e _g2463424659_)))
                                    (let ((_hd2463724666_
                                           (##car _e2463624662_))
                                          (_tl2463824669_
                                           (##cdr _e2463624662_)))
                                      (if (gx#stx-null? _tl2463824669_)
                                          ((lambda (_L24672_)
                                             (_parse123354_ _L24672_))
                                           _hd2463724666_)
                                          (_g2463224655_ _g2463424659_))))
                                  (_g2463224655_ _g2463424659_)))))
                      (_g2463124685_ _L24621_))
                    (_g2370624604_ _g2372824608_)))
              _tl2374424618_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370624604_
                                                      _g2372824608_))
                                                 (_g2370624604_
                                                  _g2372824608_))))
                                         (_g2370624604_ _g2372824608_))))
                                  (_g2370424774_
                                   (lambda (_g2372824693_)
                                     (if (gx#stx-pair? _g2372824693_)
                                         (let ((_e2373824696_
                                                (gx#syntax-e _g2372824693_)))
                                           (let ((_hd2373924700_
                                                  (##car _e2373824696_))
                                                 (_tl2374024703_
                                                  (##cdr _e2373824696_)))
                                             (if (gx#identifier?
                                                  _hd2373924700_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31005_|
                                                      _hd2373924700_)
                                                     ((lambda (_L24706_)
                                                        (if (gx#stx-list?
                                                             _L24706_)
                                                            (let* ((_g2471824729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2471924725_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2471924725_)))
                           (_g2471724740_
                            (lambda (_g2471924733_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123354_ _L24706_))))))
                           (_g2471624770_
                            (lambda (_g2471924744_)
                              (if (gx#stx-pair? _g2471924744_)
                                  (let ((_e2472124747_
                                         (gx#syntax-e _g2471924744_)))
                                    (let ((_hd2472224751_
                                           (##car _e2472124747_))
                                          (_tl2472324754_
                                           (##cdr _e2472124747_)))
                                      (if (gx#stx-null? _tl2472324754_)
                                          ((lambda (_L24757_)
                                             (_parse123354_ _L24757_))
                                           _hd2472224751_)
                                          (_g2471724740_ _g2471924744_))))
                                  (_g2471724740_ _g2471924744_)))))
                      (_g2471624770_ _L24706_))
                    (_g2370524689_ _g2372824693_)))
              _tl2374024703_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370524689_
                                                      _g2372824693_))
                                                 (_g2370524689_
                                                  _g2372824693_))))
                                         (_g2370524689_ _g2372824693_))))
                                  (_g2370325014_
                                   (lambda (_g2372824778_)
                                     (if (gx#stx-pair? _g2372824778_)
                                         (let ((_e2373124781_
                                                (gx#syntax-e _g2372824778_)))
                                           (let ((_hd2373224785_
                                                  (##car _e2373124781_))
                                                 (_tl2373324788_
                                                  (##cdr _e2373124781_)))
                                             (if (gx#identifier?
                                                  _hd2373224785_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31006_|
                                                      _hd2373224785_)
                                                     (if (gx#stx-pair?
                                                          _tl2373324788_)
                                                         (let ((_e2373424791_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2373324788_)))
                   (let ((_hd2373524795_ (##car _e2373424791_))
                         (_tl2373624798_ (##cdr _e2373424791_)))
                     ((lambda (_L24801_ _L24803_)
                        (let* ((_g2482024852_
                                (lambda (_g2482124848_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2482124848_)))
                               (_g2481924863_
                                (lambda (_g2482124856_)
                                  ((lambda ()
                                     (_parse-error23361_ _hd23701_)))))
                               (_g2481824931_
                                (lambda (_g2482124867_)
                                  (if (gx#stx-pair? _g2482124867_)
                                      (let ((_e2483524870_
                                             (gx#syntax-e _g2482124867_)))
                                        (let ((_hd2483624874_
                                               (##car _e2483524870_))
                                              (_tl2483724877_
                                               (##cdr _e2483524870_)))
                                          (if (gx#stx-datum? _hd2483624874_)
                                              (if (equal? (gx#stx-e
                                                           _hd2483624874_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2483724877_)
                                                      (let ((_e2483824880_
                                                             (gx#syntax-e
                                                              _tl2483724877_)))
                                                        (let ((_hd2483924884_
                                                               (##car _e2483824880_))
                                                              (_tl2484024887_
                                                               (##cdr _e2483824880_)))
                                                          (if (gx#stx-pair?
                                                               _tl2484024887_)
                                                              (let ((_e2484124890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2484024887_)))
                        (let ((_hd2484224894_ (##car _e2484124890_))
                              (_tl2484324897_ (##cdr _e2484124890_)))
                          (if (gx#identifier? _hd2484224894_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31007_|
                                   _hd2484224894_)
                                  (if (gx#stx-pair? _tl2484324897_)
                                      (let ((_e2484424900_
                                             (gx#syntax-e _tl2484324897_)))
                                        (let ((_hd2484524904_
                                               (##car _e2484424900_))
                                              (_tl2484624907_
                                               (##cdr _e2484424900_)))
                                          (if (gx#stx-null? _tl2484624907_)
                                              ((lambda (_L24910_ _L24912_)
                                                 (cons '?:
                                                       (cons _L24803_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L24912_
                                 (cons '=>:
                                       (cons (_parse123354_ _L24910_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2484524904_
                                               _hd2483924884_)
                                              (_g2481924863_ _g2482124867_))))
                                      (_g2481924863_ _g2482124867_))
                                  (_g2481924863_ _g2482124867_))
                              (_g2481924863_ _g2482124867_))))
                      (_g2481924863_ _g2482124867_))))
              (_g2481924863_ _g2482124867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2481924863_
                                                   _g2482124867_))
                                              (_g2481924863_ _g2482124867_))))
                                      (_g2481924863_ _g2482124867_))))
                               (_g2481724971_
                                (lambda (_g2482124935_)
                                  (if (gx#stx-pair? _g2482124935_)
                                      (let ((_e2482724938_
                                             (gx#syntax-e _g2482124935_)))
                                        (let ((_hd2482824942_
                                               (##car _e2482724938_))
                                              (_tl2482924945_
                                               (##cdr _e2482724938_)))
                                          (if (gx#identifier? _hd2482824942_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31008_|
                                                   _hd2482824942_)
                                                  (if (gx#stx-pair?
                                                       _tl2482924945_)
                                                      (let ((_e2483024948_
                                                             (gx#syntax-e
                                                              _tl2482924945_)))
                                                        (let ((_hd2483124952_
                                                               (##car _e2483024948_))
                                                              (_tl2483224955_
                                                               (##cdr _e2483024948_)))
                                                          (if (gx#stx-null?
                                                               _tl2483224955_)
                                                              ((lambda (_L24958_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L24803_
                                     (cons '=>:
                                           (cons (_parse123354_ _L24958_)
                                                 '())))))
                       _hd2483124952_)
                      (_g2481824931_ _g2482124935_))))
              (_g2481824931_ _g2482124935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2481824931_
                                                   _g2482124935_))
                                              (_g2481824931_ _g2482124935_))))
                                      (_g2481824931_ _g2482124935_))))
                               (_g2481624999_
                                (lambda (_g2482124975_)
                                  (if (gx#stx-pair? _g2482124975_)
                                      (let ((_e2482324978_
                                             (gx#syntax-e _g2482124975_)))
                                        (let ((_hd2482424982_
                                               (##car _e2482324978_))
                                              (_tl2482524985_
                                               (##cdr _e2482324978_)))
                                          (if (gx#stx-null? _tl2482524985_)
                                              ((lambda (_L24988_)
                                                 (cons '?:
                                                       (cons _L24803_
                                                             (cons (_parse123354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L24988_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2482424982_)
                                              (_g2481724971_ _g2482124975_))))
                                      (_g2481724971_ _g2482124975_))))
                               (_g2481525010_
                                (lambda (_g2482125003_)
                                  (if (gx#stx-null? _g2482125003_)
                                      ((lambda ()
                                         (cons '?: (cons _L24803_ '()))))
                                      (_g2481624999_ _g2482125003_)))))
                          (_g2481525010_ _L24801_)))
                      _tl2373624798_
                      _hd2373524795_)))
                 (_g2370424774_ _g2372824778_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2370424774_
                                                      _g2372824778_))
                                                 (_g2370424774_
                                                  _g2372824778_))))
                                         (_g2370424774_ _g2372824778_)))))
                             (_g2370325014_ _hd23701_))))
                        (_parse-list23356_
                         (lambda (_body23536_)
                           (let* ((_g2354223570_
                                   (lambda (_g2354323566_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2354323566_)))
                                  (_g2354123581_
                                   (lambda (_g2354323574_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23536_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23536_))
                                                (_parse123354_ _body23536_)
                                                (_parse-error23361_
                                                 _body23536_)))))))
                                  (_g2354023613_
                                   (lambda (_g2354323585_)
                                     (if (gx#stx-pair? _g2354323585_)
                                         (let ((_e2356223588_
                                                (gx#syntax-e _g2354323585_)))
                                           (let ((_hd2356323592_
                                                  (##car _e2356223588_))
                                                 (_tl2356423595_
                                                  (##cdr _e2356223588_)))
                                             ((lambda (_L23598_ _L23600_)
                                                (if (not (gx#ellipsis?
                                                          _L23600_))
                                                    (cons 'cons:
                                                          (cons (_parse123354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23600_)
                        (cons (_parse-list23356_ _L23598_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2354123581_
                                                     _g2354323585_)))
                                              _tl2356423595_
                                              _hd2356323592_)))
                                         (_g2354123581_ _g2354323585_))))
                                  (_g2353923657_
                                   (lambda (_g2354323617_)
                                     (if (gx#stx-pair? _g2354323617_)
                                         (let ((_e2355423620_
                                                (gx#syntax-e _g2354323617_)))
                                           (let ((_hd2355523624_
                                                  (##car _e2355423620_))
                                                 (_tl2355623627_
                                                  (##cdr _e2355423620_)))
                                             (if (gx#stx-pair? _tl2355623627_)
                                                 (let ((_e2355723630_
                                                        (gx#syntax-e
                                                         _tl2355623627_)))
                                                   (let ((_hd2355823634_
                                                          (##car _e2355723630_))
                                                         (_tl2355923637_
                                                          (##cdr _e2355723630_)))
                                                     ((lambda (_L23640_
                                                               _L23642_
                                                               _L23643_)
                                                        (if (gx#ellipsis?
                                                             _L23642_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123354_ _L23643_)
                                (cons (_parse-list23356_ _L23640_) '())))
                    (_g2354023613_ _g2354323617_)))
              _tl2355923637_
              _hd2355823634_
              _hd2355523624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2354023613_
                                                  _g2354323617_))))
                                         (_g2354023613_ _g2354323617_))))
                                  (_g2353823697_
                                   (lambda (_g2354323661_)
                                     (if (gx#stx-pair? _g2354323661_)
                                         (let ((_e2354523664_
                                                (gx#syntax-e _g2354323661_)))
                                           (let ((_hd2354623668_
                                                  (##car _e2354523664_))
                                                 (_tl2354723671_
                                                  (##cdr _e2354523664_)))
                                             (if (gx#stx-datum? _hd2354623668_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2354623668_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2354723671_)
                                                         (let ((_e2354823674_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2354723671_)))
                   (let ((_hd2354923678_ (##car _e2354823674_))
                         (_tl2355023681_ (##cdr _e2354823674_)))
                     (if (gx#stx-null? _tl2355023681_)
                         ((lambda (_L23684_) (_parse123354_ _L23684_))
                          _hd2354923678_)
                         (_g2353923657_ _g2354323661_))))
                 (_g2353923657_ _g2354323661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353923657_
                                                      _g2354323661_))
                                                 (_g2353923657_
                                                  _g2354323661_))))
                                         (_g2353923657_ _g2354323661_)))))
                             (_g2353823697_ _body23536_))))
                        (_parse-vector23357_
                         (lambda (_body23533_)
                           (if (_simple-vector?23358_ _body23533_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123354_
                                            _body23533_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23356_ _body23533_)
                                           '())))))
                        (_simple-vector?23358_
                         (lambda (_body23470_)
                           (let* ((_g2347423486_
                                   (lambda (_g2347523482_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2347523482_)))
                                  (_g2347323497_
                                   (lambda (_g2347523490_)
                                     ((lambda () (gx#stx-null? _body23470_)))))
                                  (_g2347223529_
                                   (lambda (_g2347523501_)
                                     (if (gx#stx-pair? _g2347523501_)
                                         (let ((_e2347823504_
                                                (gx#syntax-e _g2347523501_)))
                                           (let ((_hd2347923508_
                                                  (##car _e2347823504_))
                                                 (_tl2348023511_
                                                  (##cdr _e2347823504_)))
                                             ((lambda (_L23514_ _L23516_)
                                                (if (not (gx#ellipsis?
                                                          _L23516_))
                                                    (_simple-vector?23358_
                                                     _L23514_)
                                                    '#f))
                                              _tl2348023511_
                                              _hd2347923508_)))
                                         (_g2347323497_ _g2347523501_)))))
                             (_g2347223529_ _body23470_))))
                        (_parse-class-body23359_
                         (lambda (_body23379_)
                           (let _recur23382_ ((_rest23385_ _body23379_))
                             (let* ((_g2338923405_
                                     (lambda (_g2339023401_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2339023401_)))
                                    (_g2338823416_
                                     (lambda (_g2339023409_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23385_)
                                              '()
                                              (_parse-error23361_
                                               _rest23385_))))))
                                    (_g2338723466_
                                     (lambda (_g2339023420_)
                                       (if (gx#stx-pair? _g2339023420_)
                                           (let ((_e2339423423_
                                                  (gx#syntax-e _g2339023420_)))
                                             (let ((_hd2339523427_
                                                    (##car _e2339423423_))
                                                   (_tl2339623430_
                                                    (##cdr _e2339423423_)))
                                               (if (gx#stx-pair?
                                                    _tl2339623430_)
                                                   (let ((_e2339723433_
                                                          (gx#syntax-e
                                                           _tl2339623430_)))
                                                     (let ((_hd2339823437_
                                                            (##car _e2339723433_))
                                                           (_tl2339923440_
                                                            (##cdr _e2339723433_)))
                                                       ((lambda (_L23443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23445_
                         _L23446_)
                  (if (gx#stx-keyword? _L23446_)
                      (cons* _L23446_
                             (_parse123354_ _L23445_)
                             (_recur23382_ _L23443_))
                      (_g2338823416_ _g2339023420_)))
                _tl2339923440_
                _hd2339823437_
                _hd2339523427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2338823416_
                                                    _g2339023420_))))
                                           (_g2338823416_ _g2339023420_)))))
                               (_g2338723466_ _rest23385_)))))
                        (_parse-qq23360_
                         (lambda (_hd23366_)
                           (let ((_g2336823375_
                                  (lambda (_g2336923371_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2336923371_))))
                             (_g2336823375_ _hd23366_))))
                        (_parse-error23361_
                         (lambda (_hd23363_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23352_
                                      (cons _match-stx23352_
                                            (cons _stx23350_
                                                  (cons _hd23363_ '())))
                                      (cons _stx23350_
                                            (cons _hd23363_ '())))))))
                 (_parse123354_ _stx23350_)))))
        (lambda _g31010_
          (let ((_g31009_ (length _g31010_)))
            (cond ((fx= _g31009_ 1)
                   (apply (lambda (_stx25022_)
                            (let ((_match-stx25025_ '#f))
                              (_opt-lambda2334825018_
                               _stx25022_
                               _match-stx25025_)))
                          _g31010_))
                  ((fx= _g31009_ 2) (apply _opt-lambda2334825018_ _g31010_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g31010_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23334_)
        (call-with-escape
         (lambda (_E23338_)
           (with-exception-handler
            (let ((_E!23341_ (current-exception-handler)))
              (lambda (_e23344_)
                (if (gx#syntax-error? _e23344_)
                    (_E23338_ '#f)
                    (_E!23341_ _e23344_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23334_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree22123_)
        (letrec ((_loop22126_
                  (lambda (_ptree22401_ _vars22403_ _K22404_)
                    (let* ((_g2241722518_
                            (lambda (_g2241822514_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2241822514_)))
                           (_g2241622529_
                            (lambda (_g2241822522_)
                              ((lambda () (_K22404_ _vars22403_)))))
                           (_g2241522576_
                            (lambda (_g2241822533_)
                              (if (gx#stx-pair? _g2241822533_)
                                  (let ((_e2250722536_
                                         (gx#syntax-e _g2241822533_)))
                                    (let ((_hd2250822540_
                                           (##car _e2250722536_))
                                          (_tl2250922543_
                                           (##cdr _e2250722536_)))
                                      (if (gx#stx-datum? _hd2250822540_)
                                          (if (equal? (gx#stx-e _hd2250822540_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2250922543_)
                                                  (let ((_e2251022546_
                                                         (gx#syntax-e
                                                          _tl2250922543_)))
                                                    (let ((_hd2251122550_
                                                           (##car _e2251022546_))
                                                          (_tl2251222553_
                                                           (##cdr _e2251022546_)))
                                                      (if (gx#stx-null?
                                                           _tl2251222553_)
                                                          ((lambda (_L22556_)
                                                             (if (find (lambda (_g2257022572_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2257022572_
                                  _L22556_))
                               _vars22403_)
                         (_K22404_ _vars22403_)
                         (_K22404_ (cons _L22556_ _vars22403_))))
                   _hd2251122550_)
                  (_g2241622529_ _g2241822533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241622529_
                                                   _g2241822533_))
                                              (_g2241622529_ _g2241822533_))
                                          (_g2241622529_ _g2241822533_))))
                                  (_g2241622529_ _g2241822533_))))
                           (_g2241422630_
                            (lambda (_g2241822580_)
                              (if (gx#stx-pair? _g2241822580_)
                                  (let ((_e2249722583_
                                         (gx#syntax-e _g2241822580_)))
                                    (let ((_hd2249822587_
                                           (##car _e2249722583_))
                                          (_tl2249922590_
                                           (##cdr _e2249722583_)))
                                      (if (gx#stx-datum? _hd2249822587_)
                                          (if (equal? (gx#stx-e _hd2249822587_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2249922590_)
                                                  (let ((_e2250022593_
                                                         (gx#syntax-e
                                                          _tl2249922590_)))
                                                    (let ((_hd2250122597_
                                                           (##car _e2250022593_))
                                                          (_tl2250222600_
                                                           (##cdr _e2250022593_)))
                                                      (if (gx#stx-pair?
                                                           _tl2250222600_)
                                                          (let ((_e2250322603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2250222600_)))
                    (let ((_hd2250422607_ (##car _e2250322603_))
                          (_tl2250522610_ (##cdr _e2250322603_)))
                      (if (gx#stx-null? _tl2250522610_)
                          ((lambda (_L22613_ _L22615_)
                             (_loop22126_ _L22613_ _vars22403_ _K22404_))
                           _hd2250422607_
                           _hd2250122597_)
                          (_g2241522576_ _g2241822580_))))
                  (_g2241522576_ _g2241822580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241522576_
                                                   _g2241822580_))
                                              (_g2241522576_ _g2241822580_))
                                          (_g2241522576_ _g2241822580_))))
                                  (_g2241522576_ _g2241822580_))))
                           (_g2241322682_
                            (lambda (_g2241822634_)
                              (if (gx#stx-pair? _g2241822634_)
                                  (let ((_e2248622637_
                                         (gx#syntax-e _g2241822634_)))
                                    (let ((_hd2248722641_
                                           (##car _e2248622637_))
                                          (_tl2248822644_
                                           (##cdr _e2248622637_)))
                                      (if (gx#stx-datum? _hd2248722641_)
                                          (if (equal? (gx#stx-e _hd2248722641_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2248822644_)
                                                  (let ((_e2248922647_
                                                         (gx#syntax-e
                                                          _tl2248822644_)))
                                                    (let ((_hd2249022651_
                                                           (##car _e2248922647_))
                                                          (_tl2249122654_
                                                           (##cdr _e2248922647_)))
                                                      (if (gx#stx-pair?
                                                           _tl2249122654_)
                                                          (let ((_e2249222657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2249122654_)))
                    (let ((_hd2249322661_ (##car _e2249222657_))
                          (_tl2249422664_ (##cdr _e2249222657_)))
                      (if (gx#stx-null? _tl2249422664_)
                          ((lambda (_L22667_)
                             (_loop-class-list22130_
                              _L22667_
                              _vars22403_
                              _K22404_))
                           _hd2249322661_)
                          (_g2241422630_ _g2241822634_))))
                  (_g2241422630_ _g2241822634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241422630_
                                                   _g2241822634_))
                                              (_g2241422630_ _g2241822634_))
                                          (_g2241422630_ _g2241822634_))))
                                  (_g2241422630_ _g2241822634_))))
                           (_g2241222734_
                            (lambda (_g2241822686_)
                              (if (gx#stx-pair? _g2241822686_)
                                  (let ((_e2247622689_
                                         (gx#syntax-e _g2241822686_)))
                                    (let ((_hd2247722693_
                                           (##car _e2247622689_))
                                          (_tl2247822696_
                                           (##cdr _e2247622689_)))
                                      (if (gx#stx-datum? _hd2247722693_)
                                          (if (equal? (gx#stx-e _hd2247722693_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2247822696_)
                                                  (let ((_e2247922699_
                                                         (gx#syntax-e
                                                          _tl2247822696_)))
                                                    (let ((_hd2248022703_
                                                           (##car _e2247922699_))
                                                          (_tl2248122706_
                                                           (##cdr _e2247922699_)))
                                                      (if (gx#stx-pair?
                                                           _tl2248122706_)
                                                          (let ((_e2248222709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2248122706_)))
                    (let ((_hd2248322713_ (##car _e2248222709_))
                          (_tl2248422716_ (##cdr _e2248222709_)))
                      (if (gx#stx-null? _tl2248422716_)
                          ((lambda (_L22719_)
                             (_loop-vector22128_
                              _L22719_
                              _vars22403_
                              _K22404_))
                           _hd2248322713_)
                          (_g2241322682_ _g2241822686_))))
                  (_g2241322682_ _g2241822686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241322682_
                                                   _g2241822686_))
                                              (_g2241322682_ _g2241822686_))
                                          (_g2241322682_ _g2241822686_))))
                                  (_g2241322682_ _g2241822686_))))
                           (_g2241122780_
                            (lambda (_g2241822738_)
                              (if (gx#stx-pair? _g2241822738_)
                                  (let ((_e2246922741_
                                         (gx#syntax-e _g2241822738_)))
                                    (let ((_hd2247022745_
                                           (##car _e2246922741_))
                                          (_tl2247122748_
                                           (##cdr _e2246922741_)))
                                      (if (gx#stx-pair? _tl2247122748_)
                                          (let ((_e2247222751_
                                                 (gx#syntax-e _tl2247122748_)))
                                            (let ((_hd2247322755_
                                                   (##car _e2247222751_))
                                                  (_tl2247422758_
                                                   (##cdr _e2247222751_)))
                                              (if (gx#stx-null? _tl2247422758_)
                                                  ((lambda (_L22761_ _L22763_)
                                                     (if (let ((_$e22776_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L22763_)))
                   (if _$e22776_ _$e22776_ (gx#stx-eq? 'vector: _L22763_)))
                 (_loop-vector22128_ _L22761_ _vars22403_ _K22404_)
                 (_g2241222734_ _g2241822738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2247322755_
                                                   _hd2247022745_)
                                                  (_g2241222734_
                                                   _g2241822738_))))
                                          (_g2241222734_ _g2241822738_))))
                                  (_g2241222734_ _g2241822738_))))
                           (_g2241022820_
                            (lambda (_g2241822784_)
                              (if (gx#stx-pair? _g2241822784_)
                                  (let ((_e2246122787_
                                         (gx#syntax-e _g2241822784_)))
                                    (let ((_hd2246222791_
                                           (##car _e2246122787_))
                                          (_tl2246322794_
                                           (##cdr _e2246122787_)))
                                      (if (gx#stx-datum? _hd2246222791_)
                                          (if (equal? (gx#stx-e _hd2246222791_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2246322794_)
                                                  (let ((_e2246422797_
                                                         (gx#syntax-e
                                                          _tl2246322794_)))
                                                    (let ((_hd2246522801_
                                                           (##car _e2246422797_))
                                                          (_tl2246622804_
                                                           (##cdr _e2246422797_)))
                                                      (if (gx#stx-null?
                                                           _tl2246622804_)
                                                          ((lambda (_L22807_)
                                                             (_loop22126_
                                                              _L22807_
                                                              _vars22403_
                                                              _K22404_))
                                                           _hd2246522801_)
                                                          (_g2241122780_
                                                           _g2241822784_))))
                                                  (_g2241122780_
                                                   _g2241822784_))
                                              (_g2241122780_ _g2241822784_))
                                          (_g2241122780_ _g2241822784_))))
                                  (_g2241122780_ _g2241822784_))))
                           (_g2240922879_
                            (lambda (_g2241822824_)
                              (if (gx#stx-pair? _g2241822824_)
                                  (let ((_e2245122827_
                                         (gx#syntax-e _g2241822824_)))
                                    (let ((_hd2245222831_
                                           (##car _e2245122827_))
                                          (_tl2245322834_
                                           (##cdr _e2245122827_)))
                                      (if (gx#stx-datum? _hd2245222831_)
                                          (if (equal? (gx#stx-e _hd2245222831_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2245322834_)
                                                  (let ((_e2245422837_
                                                         (gx#syntax-e
                                                          _tl2245322834_)))
                                                    (let ((_hd2245522841_
                                                           (##car _e2245422837_))
                                                          (_tl2245622844_
                                                           (##cdr _e2245422837_)))
                                                      (if (gx#stx-pair?
                                                           _tl2245622844_)
                                                          (let ((_e2245722847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2245622844_)))
                    (let ((_hd2245822851_ (##car _e2245722847_))
                          (_tl2245922854_ (##cdr _e2245722847_)))
                      (if (gx#stx-null? _tl2245922854_)
                          ((lambda (_L22857_ _L22859_)
                             (_loop22126_
                              _L22859_
                              _vars22403_
                              (lambda (_g2287322875_)
                                (_loop22126_
                                 _L22857_
                                 _g2287322875_
                                 _K22404_))))
                           _hd2245822851_
                           _hd2245522841_)
                          (_g2241022820_ _g2241822824_))))
                  (_g2241022820_ _g2241822824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2241022820_
                                                   _g2241822824_))
                                              (_g2241022820_ _g2241822824_))
                                          (_g2241022820_ _g2241822824_))))
                                  (_g2241022820_ _g2241822824_))))
                           (_g2240822938_
                            (lambda (_g2241822883_)
                              (if (gx#stx-pair? _g2241822883_)
                                  (let ((_e2244022886_
                                         (gx#syntax-e _g2241822883_)))
                                    (let ((_hd2244122890_
                                           (##car _e2244022886_))
                                          (_tl2244222893_
                                           (##cdr _e2244022886_)))
                                      (if (gx#stx-datum? _hd2244122890_)
                                          (if (equal? (gx#stx-e _hd2244122890_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2244222893_)
                                                  (let ((_e2244322896_
                                                         (gx#syntax-e
                                                          _tl2244222893_)))
                                                    (let ((_hd2244422900_
                                                           (##car _e2244322896_))
                                                          (_tl2244522903_
                                                           (##cdr _e2244322896_)))
                                                      (if (gx#stx-pair?
                                                           _tl2244522903_)
                                                          (let ((_e2244622906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2244522903_)))
                    (let ((_hd2244722910_ (##car _e2244622906_))
                          (_tl2244822913_ (##cdr _e2244622906_)))
                      (if (gx#stx-null? _tl2244822913_)
                          ((lambda (_L22916_ _L22918_)
                             (_loop22126_
                              _L22918_
                              _vars22403_
                              (lambda (_g2293222934_)
                                (_loop22126_
                                 _L22916_
                                 _g2293222934_
                                 _K22404_))))
                           _hd2244722910_
                           _hd2244422900_)
                          (_g2240922879_ _g2241822883_))))
                  (_g2240922879_ _g2241822883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2240922879_
                                                   _g2241822883_))
                                              (_g2240922879_ _g2241822883_))
                                          (_g2240922879_ _g2241822883_))))
                                  (_g2240922879_ _g2241822883_))))
                           (_g2240722978_
                            (lambda (_g2241822942_)
                              (if (gx#stx-pair? _g2241822942_)
                                  (let ((_e2243222945_
                                         (gx#syntax-e _g2241822942_)))
                                    (let ((_hd2243322949_
                                           (##car _e2243222945_))
                                          (_tl2243422952_
                                           (##cdr _e2243222945_)))
                                      (if (gx#stx-datum? _hd2243322949_)
                                          (if (equal? (gx#stx-e _hd2243322949_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2243422952_)
                                                  (let ((_e2243522955_
                                                         (gx#syntax-e
                                                          _tl2243422952_)))
                                                    (let ((_hd2243622959_
                                                           (##car _e2243522955_))
                                                          (_tl2243722962_
                                                           (##cdr _e2243522955_)))
                                                      (if (gx#stx-null?
                                                           _tl2243722962_)
                                                          ((lambda (_L22965_)
                                                             (_loop22126_
                                                              _L22965_
                                                              _vars22403_
                                                              _K22404_))
                                                           _hd2243622959_)
                                                          (_g2240822938_
                                                           _g2241822942_))))
                                                  (_g2240822938_
                                                   _g2241822942_))
                                              (_g2240822938_ _g2241822942_))
                                          (_g2240822938_ _g2241822942_))))
                                  (_g2240822938_ _g2241822942_))))
                           (_g2240623077_
                            (lambda (_g2241822982_)
                              (if (gx#stx-pair? _g2241822982_)
                                  (let ((_e2242822985_
                                         (gx#syntax-e _g2241822982_)))
                                    (let ((_hd2242922989_
                                           (##car _e2242822985_))
                                          (_tl2243022992_
                                           (##cdr _e2242822985_)))
                                      ((lambda (_L22995_ _L22997_)
                                         (if (let ((_$e23008_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L22997_)))
                                               (if _$e23008_
                                                   _$e23008_
                                                   (gx#stx-eq? 'or: _L22997_)))
                                             (let* ((_g2301323025_
                                                     (lambda (_g2301423021_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2301423021_)))
                                                    (_g2301223036_
                                                     (lambda (_g2301423029_)
                                                       ((lambda ()
                                                          (_K22404_
                                                           _vars22403_)))))
                                                    (_g2301123073_
                                                     (lambda (_g2301423040_)
                                                       (if (gx#stx-pair?
                                                            _g2301423040_)
                                                           (let ((_e2301723043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2301423040_)))
                     (let ((_hd2301823047_ (##car _e2301723043_))
                           (_tl2301923050_ (##cdr _e2301723043_)))
                       ((lambda (_L23053_ _L23055_)
                          (_loop22126_
                           _L23055_
                           _vars22403_
                           (lambda (_g2306723069_)
                             (_loop22126_
                              (cons _L22997_ _L23053_)
                              _g2306723069_
                              _K22404_))))
                        _tl2301923050_
                        _hd2301823047_)))
                   (_g2301223036_ _g2301423040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2301123073_ _L22995_))
                                             (_g2240722978_ _g2241822982_)))
                                       _tl2243022992_
                                       _hd2242922989_)))
                                  (_g2240722978_ _g2241822982_))))
                           (_g2240523330_
                            (lambda (_g2241823081_)
                              (if (gx#stx-pair? _g2241823081_)
                                  (let ((_e2242023084_
                                         (gx#syntax-e _g2241823081_)))
                                    (let ((_hd2242123088_
                                           (##car _e2242023084_))
                                          (_tl2242223091_
                                           (##cdr _e2242023084_)))
                                      (if (gx#stx-datum? _hd2242123088_)
                                          (if (equal? (gx#stx-e _hd2242123088_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2242223091_)
                                                  (let ((_e2242323094_
                                                         (gx#syntax-e
                                                          _tl2242223091_)))
                                                    (let ((_hd2242423098_
                                                           (##car _e2242323094_))
                                                          (_tl2242523101_
                                                           (##cdr _e2242323094_)))
                                                      ((lambda (_L23104_)
                                                         (let* ((_g2312023157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2312123153_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2312123153_)))
                        (_g2311923168_
                         (lambda (_g2312123161_)
                           ((lambda () (_K22404_ _vars22403_)))))
                        (_g2311823246_
                         (lambda (_g2312123172_)
                           (if (gx#stx-pair? _g2312123172_)
                               (let ((_e2313723175_
                                      (gx#syntax-e _g2312123172_)))
                                 (let ((_hd2313823179_ (##car _e2313723175_))
                                       (_tl2313923182_ (##cdr _e2313723175_)))
                                   (if (gx#stx-pair? _tl2313923182_)
                                       (let ((_e2314023185_
                                              (gx#syntax-e _tl2313923182_)))
                                         (let ((_hd2314123189_
                                                (##car _e2314023185_))
                                               (_tl2314223192_
                                                (##cdr _e2314023185_)))
                                           (if (gx#stx-datum? _hd2314123189_)
                                               (if (equal? (gx#stx-e
                                                            _hd2314123189_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2314223192_)
                                                       (let ((_e2314323195_
                                                              (gx#syntax-e
                                                               _tl2314223192_)))
                                                         (let ((_hd2314423199_
                                                                (##car _e2314323195_))
                                                               (_tl2314523202_
                                                                (##cdr _e2314323195_)))
                                                           (if (gx#stx-pair?
                                                                _tl2314523202_)
                                                               (let ((_e2314623205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2314523202_)))
                         (let ((_hd2314723209_ (##car _e2314623205_))
                               (_tl2314823212_ (##cdr _e2314623205_)))
                           (if (gx#stx-datum? _hd2314723209_)
                               (if (equal? (gx#stx-e _hd2314723209_) '=>:)
                                   (if (gx#stx-pair? _tl2314823212_)
                                       (let ((_e2314923215_
                                              (gx#syntax-e _tl2314823212_)))
                                         (let ((_hd2315023219_
                                                (##car _e2314923215_))
                                               (_tl2315123222_
                                                (##cdr _e2314923215_)))
                                           (if (gx#stx-null? _tl2315123222_)
                                               ((lambda (_L23225_)
                                                  (_loop22126_
                                                   _L23225_
                                                   _vars22403_
                                                   _K22404_))
                                                _hd2315023219_)
                                               (_g2311923168_ _g2312123172_))))
                                       (_g2311923168_ _g2312123172_))
                                   (_g2311923168_ _g2312123172_))
                               (_g2311923168_ _g2312123172_))))
                       (_g2311923168_ _g2312123172_))))
               (_g2311923168_ _g2312123172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2311923168_
                                                    _g2312123172_))
                                               (_g2311923168_ _g2312123172_))))
                                       (_g2311923168_ _g2312123172_))))
                               (_g2311923168_ _g2312123172_))))
                        (_g2311723298_
                         (lambda (_g2312123250_)
                           (if (gx#stx-pair? _g2312123250_)
                               (let ((_e2312723253_
                                      (gx#syntax-e _g2312123250_)))
                                 (let ((_hd2312823257_ (##car _e2312723253_))
                                       (_tl2312923260_ (##cdr _e2312723253_)))
                                   (if (gx#stx-pair? _tl2312923260_)
                                       (let ((_e2313023263_
                                              (gx#syntax-e _tl2312923260_)))
                                         (let ((_hd2313123267_
                                                (##car _e2313023263_))
                                               (_tl2313223270_
                                                (##cdr _e2313023263_)))
                                           (if (gx#stx-datum? _hd2313123267_)
                                               (if (equal? (gx#stx-e
                                                            _hd2313123267_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2313223270_)
                                                       (let ((_e2313323273_
                                                              (gx#syntax-e
                                                               _tl2313223270_)))
                                                         (let ((_hd2313423277_
                                                                (##car _e2313323273_))
                                                               (_tl2313523280_
                                                                (##cdr _e2313323273_)))
                                                           (if (gx#stx-null?
                                                                _tl2313523280_)
                                                               ((lambda (_L23283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop22126_ _L23283_ _vars22403_ _K22404_))
                        _hd2313423277_)
                       (_g2311823246_ _g2312123250_))))
               (_g2311823246_ _g2312123250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2311823246_
                                                    _g2312123250_))
                                               (_g2311823246_ _g2312123250_))))
                                       (_g2311823246_ _g2312123250_))))
                               (_g2311823246_ _g2312123250_))))
                        (_g2311623326_
                         (lambda (_g2312123302_)
                           (if (gx#stx-pair? _g2312123302_)
                               (let ((_e2312323305_
                                      (gx#syntax-e _g2312123302_)))
                                 (let ((_hd2312423309_ (##car _e2312323305_))
                                       (_tl2312523312_ (##cdr _e2312323305_)))
                                   (if (gx#stx-null? _tl2312523312_)
                                       ((lambda (_L23315_)
                                          (_loop22126_
                                           _L23315_
                                           _vars22403_
                                           _K22404_))
                                        _hd2312423309_)
                                       (_g2311723298_ _g2312123302_))))
                               (_g2311723298_ _g2312123302_)))))
                   (_g2311623326_ _L23104_)))
               _tl2242523101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2240623077_
                                                   _g2241823081_))
                                              (_g2240623077_ _g2241823081_))
                                          (_g2240623077_ _g2241823081_))))
                                  (_g2240623077_ _g2241823081_)))))
                      (_g2240523330_ _ptree22401_))))
                 (_loop-vector22128_
                  (lambda (_body22289_ _vars22291_ _K22292_)
                    (let* ((_g2229522316_
                            (lambda (_g2229622312_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2229622312_)))
                           (_g2229422357_
                            (lambda (_g2229622320_)
                              (if (gx#stx-pair? _g2229622320_)
                                  (let ((_e2230522323_
                                         (gx#syntax-e _g2229622320_)))
                                    (let ((_hd2230622327_
                                           (##car _e2230522323_))
                                          (_tl2230722330_
                                           (##cdr _e2230522323_)))
                                      (if (gx#stx-datum? _hd2230622327_)
                                          (if (equal? (gx#stx-e _hd2230622327_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2230722330_)
                                                  (let ((_e2230822333_
                                                         (gx#syntax-e
                                                          _tl2230722330_)))
                                                    (let ((_hd2230922337_
                                                           (##car _e2230822333_))
                                                          (_tl2231022340_
                                                           (##cdr _e2230822333_)))
                                                      (if (gx#stx-null?
                                                           _tl2231022340_)
                                                          ((lambda (_L22343_)
                                                             (_loop22126_
                                                              _L22343_
                                                              _vars22291_
                                                              _K22292_))
                                                           _hd2230922337_)
                                                          (_g2229522316_
                                                           _g2229622320_))))
                                                  (_g2229522316_
                                                   _g2229622320_))
                                              (_g2229522316_ _g2229622320_))
                                          (_g2229522316_ _g2229622320_))))
                                  (_g2229522316_ _g2229622320_))))
                           (_g2229322397_
                            (lambda (_g2229622361_)
                              (if (gx#stx-pair? _g2229622361_)
                                  (let ((_e2229822364_
                                         (gx#syntax-e _g2229622361_)))
                                    (let ((_hd2229922368_
                                           (##car _e2229822364_))
                                          (_tl2230022371_
                                           (##cdr _e2229822364_)))
                                      (if (gx#stx-datum? _hd2229922368_)
                                          (if (equal? (gx#stx-e _hd2229922368_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2230022371_)
                                                  (let ((_e2230122374_
                                                         (gx#syntax-e
                                                          _tl2230022371_)))
                                                    (let ((_hd2230222378_
                                                           (##car _e2230122374_))
                                                          (_tl2230322381_
                                                           (##cdr _e2230122374_)))
                                                      (if (gx#stx-null?
                                                           _tl2230322381_)
                                                          ((lambda (_L22384_)
                                                             (_loop-list22129_
                                                              _L22384_
                                                              _vars22291_
                                                              _K22292_))
                                                           _hd2230222378_)
                                                          (_g2229422357_
                                                           _g2229622361_))))
                                                  (_g2229422357_
                                                   _g2229622361_))
                                              (_g2229422357_ _g2229622361_))
                                          (_g2229422357_ _g2229622361_))))
                                  (_g2229422357_ _g2229622361_)))))
                      (_g2229322397_ _body22289_))))
                 (_loop-list22129_
                  (lambda (_rest22219_ _vars22221_ _K22222_)
                    (let* ((_g2222522237_
                            (lambda (_g2222622233_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2222622233_)))
                           (_g2222422248_
                            (lambda (_g2222622241_)
                              ((lambda () (_K22222_ _vars22221_)))))
                           (_g2222322285_
                            (lambda (_g2222622252_)
                              (if (gx#stx-pair? _g2222622252_)
                                  (let ((_e2222922255_
                                         (gx#syntax-e _g2222622252_)))
                                    (let ((_hd2223022259_
                                           (##car _e2222922255_))
                                          (_tl2223122262_
                                           (##cdr _e2222922255_)))
                                      ((lambda (_L22265_ _L22267_)
                                         (_loop22126_
                                          _L22267_
                                          _vars22221_
                                          (lambda (_g2227922281_)
                                            (_loop-list22129_
                                             _L22265_
                                             _g2227922281_
                                             _K22222_))))
                                       _tl2223122262_
                                       _hd2223022259_)))
                                  (_g2222422248_ _g2222622252_)))))
                      (_g2222322285_ _rest22219_))))
                 (_loop-class-list22130_
                  (lambda (_rest22132_ _vars22134_ _K22135_)
                    (let* ((_g2213822153_
                            (lambda (_g2213922149_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2213922149_)))
                           (_g2213722164_
                            (lambda (_g2213922157_)
                              ((lambda () (_K22135_ _vars22134_)))))
                           (_g2213622215_
                            (lambda (_g2213922168_)
                              (if (gx#stx-pair? _g2213922168_)
                                  (let ((_e2214222171_
                                         (gx#syntax-e _g2213922168_)))
                                    (let ((_hd2214322175_
                                           (##car _e2214222171_))
                                          (_tl2214422178_
                                           (##cdr _e2214222171_)))
                                      (if (gx#stx-pair? _tl2214422178_)
                                          (let ((_e2214522181_
                                                 (gx#syntax-e _tl2214422178_)))
                                            (let ((_hd2214622185_
                                                   (##car _e2214522181_))
                                                  (_tl2214722188_
                                                   (##cdr _e2214522181_)))
                                              ((lambda (_L22191_ _L22193_)
                                                 (_loop22126_
                                                  _L22193_
                                                  _vars22134_
                                                  (lambda (_g2220922211_)
                                                    (_loop-class-list22130_
                                                     _L22191_
                                                     _g2220922211_
                                                     _K22135_))))
                                               _tl2214722188_
                                               _hd2214622185_)))
                                          (_g2213722164_ _g2213922168_))))
                                  (_g2213722164_ _g2213922168_)))))
                      (_g2213622215_ _rest22132_)))))
          (_loop22126_ _ptree22123_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx18939_ _tgt18941_ _ptree18942_ _K18943_ _E18944_)
        (letrec ((_generate118946_
                  (lambda (_tgt20476_ _ptree20478_ _K20479_ _E20480_)
                    (let* ((_g2048220490_
                            (lambda (_g2048320486_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2048320486_)))
                           (_g2048122119_
                            (lambda (_g2048320494_)
                              ((lambda (_L20497_)
                                 (let ()
                                   (let* ((_g2052420650_
                                           (lambda (_g2052520646_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2052520646_)))
                                          (_g2052320671_
                                           (lambda (_g2052520654_)
                                             (if (gx#stx-pair? _g2052520654_)
                                                 (let ((_e2064220657_
                                                        (gx#syntax-e
                                                         _g2052520654_)))
                                                   (let ((_hd2064320661_
                                                          (##car _e2064220657_))
                                                         (_tl2064420664_
                                                          (##cdr _e2064220657_)))
                                                     (if (gx#stx-datum?
                                                          _hd2064320661_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2064320661_)
                             'any:)
                     (if (gx#stx-null? _tl2064420664_)
                         ((lambda () _K20479_))
                         (_g2052420650_ _g2052520654_))
                     (_g2052420650_ _g2052520654_))
                 (_g2052420650_ _g2052520654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052420650_
                                                  _g2052520654_))))
                                          (_g2052220714_
                                           (lambda (_g2052520675_)
                                             (if (gx#stx-pair? _g2052520675_)
                                                 (let ((_e2063620678_
                                                        (gx#syntax-e
                                                         _g2052520675_)))
                                                   (let ((_hd2063720682_
                                                          (##car _e2063620678_))
                                                         (_tl2063820685_
                                                          (##cdr _e2063620678_)))
                                                     (if (gx#stx-datum?
                                                          _hd2063720682_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2063720682_)
                             'var:)
                     (if (gx#stx-pair? _tl2063820685_)
                         (let ((_e2063920688_ (gx#syntax-e _tl2063820685_)))
                           (let ((_hd2064020692_ (##car _e2063920688_))
                                 (_tl2064120695_ (##cdr _e2063920688_)))
                             (if (gx#stx-null? _tl2064120695_)
                                 ((lambda (_L20698_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L20698_
                                                            (cons _L20497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20479_ '()))))
                                  _hd2064020692_)
                                 (_g2052320671_ _g2052520675_))))
                         (_g2052320671_ _g2052520675_))
                     (_g2052320671_ _g2052520675_))
                 (_g2052320671_ _g2052520675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052320671_
                                                  _g2052520675_))))
                                          (_g2052120799_
                                           (lambda (_g2052520718_)
                                             (if (gx#stx-pair? _g2052520718_)
                                                 (let ((_e2062620721_
                                                        (gx#syntax-e
                                                         _g2052520718_)))
                                                   (let ((_hd2062720725_
                                                          (##car _e2062620721_))
                                                         (_tl2062820728_
                                                          (##cdr _e2062620721_)))
                                                     (if (gx#stx-datum?
                                                          _hd2062720725_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2062720725_)
                             'apply:)
                     (if (gx#stx-pair? _tl2062820728_)
                         (let ((_e2062920731_ (gx#syntax-e _tl2062820728_)))
                           (let ((_hd2063020735_ (##car _e2062920731_))
                                 (_tl2063120738_ (##cdr _e2062920731_)))
                             (if (gx#stx-pair? _tl2063120738_)
                                 (let ((_e2063220741_
                                        (gx#syntax-e _tl2063120738_)))
                                   (let ((_hd2063320745_ (##car _e2063220741_))
                                         (_tl2063420748_
                                          (##cdr _e2063220741_)))
                                     (if (gx#stx-null? _tl2063420748_)
                                         ((lambda (_L20751_ _L20753_)
                                            (let* ((_g2076820776_
                                                    (lambda (_g2076920772_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2076920772_)))
                                                   (_g2076720795_
                                                    (lambda (_g2076920780_)
                                                      ((lambda (_L20783_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L20783_
                                           (cons (cons _L20753_
                                                       (cons _L20497_ '()))
                                                 '()))
                                     '())
                               (cons (_generate118946_
                                      _L20783_
                                      _L20751_
                                      _K20479_
                                      _E20480_)
                                     '())))))
               _g2076920780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2076720795_
                                               (gx#genident 'e))))
                                          _hd2063320745_
                                          _hd2063020735_)
                                         (_g2052220714_ _g2052520718_))))
                                 (_g2052220714_ _g2052520718_))))
                         (_g2052220714_ _g2052520718_))
                     (_g2052220714_ _g2052520718_))
                 (_g2052220714_ _g2052520718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052220714_
                                                  _g2052520718_))))
                                          (_g2052020881_
                                           (lambda (_g2052520803_)
                                             (if (gx#stx-pair? _g2052520803_)
                                                 (let ((_e2061820806_
                                                        (gx#syntax-e
                                                         _g2052520803_)))
                                                   (let ((_hd2061920810_
                                                          (##car _e2061820806_))
                                                         (_tl2062020813_
                                                          (##cdr _e2061820806_)))
                                                     (if (gx#stx-datum?
                                                          _hd2061920810_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2061920810_)
                             'datum:)
                     (if (gx#stx-pair? _tl2062020813_)
                         (let ((_e2062120816_ (gx#syntax-e _tl2062020813_)))
                           (let ((_hd2062220820_ (##car _e2062120816_))
                                 (_tl2062320823_ (##cdr _e2062120816_)))
                             (if (gx#stx-null? _tl2062320823_)
                                 ((lambda (_L20826_)
                                    (let* ((_g2083920847_
                                            (lambda (_g2084020843_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2084020843_)))
                                           (_g2083820866_
                                            (lambda (_g2084020851_)
                                              ((lambda (_L20854_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L20854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20497_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L20826_ '()))
                                         '())))
                       (cons _K20479_ (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2084020851_))))
                                      (_g2083820866_
                                       (let ((_e20870_ (gx#stx-e _L20826_)))
                                         (if (let ((_$e20873_
                                                    (symbol? _e20870_)))
                                               (if _$e20873_
                                                   _$e20873_
                                                   (let ((_$e20877_
                                                          (keyword? _e20870_)))
                                                     (if _$e20877_
                                                         _$e20877_
                                                         (immediate?
                                                          _e20870_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e20870_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2062220820_)
                                 (_g2052120799_ _g2052520803_))))
                         (_g2052120799_ _g2052520803_))
                     (_g2052120799_ _g2052520803_))
                 (_g2052120799_ _g2052520803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052120799_
                                                  _g2052520803_))))
                                          (_g2051920935_
                                           (lambda (_g2052520885_)
                                             (if (gx#stx-pair? _g2052520885_)
                                                 (let ((_e2060820888_
                                                        (gx#syntax-e
                                                         _g2052520885_)))
                                                   (let ((_hd2060920892_
                                                          (##car _e2060820888_))
                                                         (_tl2061020895_
                                                          (##cdr _e2060820888_)))
                                                     (if (gx#stx-datum?
                                                          _hd2060920892_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2060920892_)
                             'class:)
                     (if (gx#stx-pair? _tl2061020895_)
                         (let ((_e2061120898_ (gx#syntax-e _tl2061020895_)))
                           (let ((_hd2061220902_ (##car _e2061120898_))
                                 (_tl2061320905_ (##cdr _e2061120898_)))
                             (if (gx#stx-pair? _tl2061320905_)
                                 (let ((_e2061420908_
                                        (gx#syntax-e _tl2061320905_)))
                                   (let ((_hd2061520912_ (##car _e2061420908_))
                                         (_tl2061620915_
                                          (##cdr _e2061420908_)))
                                     (if (gx#stx-null? _tl2061620915_)
                                         ((lambda (_L20918_ _L20920_)
                                            (_generate-class18952_
                                             (gx#stx-e _L20920_)
                                             _tgt20476_
                                             _L20918_
                                             _K20479_
                                             _E20480_))
                                          _hd2061520912_
                                          _hd2061220902_)
                                         (_g2052020881_ _g2052520885_))))
                                 (_g2052020881_ _g2052520885_))))
                         (_g2052020881_ _g2052520885_))
                     (_g2052020881_ _g2052520885_))
                 (_g2052020881_ _g2052520885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2052020881_
                                                  _g2052520885_))))
                                          (_g2051820989_
                                           (lambda (_g2052520939_)
                                             (if (gx#stx-pair? _g2052520939_)
                                                 (let ((_e2059720942_
                                                        (gx#syntax-e
                                                         _g2052520939_)))
                                                   (let ((_hd2059820946_
                                                          (##car _e2059720942_))
                                                         (_tl2059920949_
                                                          (##cdr _e2059720942_)))
                                                     (if (gx#stx-datum?
                                                          _hd2059820946_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2059820946_)
                             'struct:)
                     (if (gx#stx-pair? _tl2059920949_)
                         (let ((_e2060020952_ (gx#syntax-e _tl2059920949_)))
                           (let ((_hd2060120956_ (##car _e2060020952_))
                                 (_tl2060220959_ (##cdr _e2060020952_)))
                             (if (gx#stx-pair? _tl2060220959_)
                                 (let ((_e2060320962_
                                        (gx#syntax-e _tl2060220959_)))
                                   (let ((_hd2060420966_ (##car _e2060320962_))
                                         (_tl2060520969_
                                          (##cdr _e2060320962_)))
                                     (if (gx#stx-null? _tl2060520969_)
                                         ((lambda (_L20972_ _L20974_)
                                            (_generate-struct18951_
                                             (gx#stx-e _L20974_)
                                             _tgt20476_
                                             _L20972_
                                             _K20479_
                                             _E20480_))
                                          _hd2060420966_
                                          _hd2060120956_)
                                         (_g2051920935_ _g2052520939_))))
                                 (_g2051920935_ _g2052520939_))))
                         (_g2051920935_ _g2052520939_))
                     (_g2051920935_ _g2052520939_))
                 (_g2051920935_ _g2052520939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051920935_
                                                  _g2052520939_))))
                                          (_g2051721167_
                                           (lambda (_g2052520993_)
                                             (if (gx#stx-pair? _g2052520993_)
                                                 (let ((_e2058920996_
                                                        (gx#syntax-e
                                                         _g2052520993_)))
                                                   (let ((_hd2059021000_
                                                          (##car _e2058920996_))
                                                         (_tl2059121003_
                                                          (##cdr _e2058920996_)))
                                                     (if (gx#stx-datum?
                                                          _hd2059021000_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2059021000_)
                             'vector:)
                     (if (gx#stx-pair? _tl2059121003_)
                         (let ((_e2059221006_ (gx#syntax-e _tl2059121003_)))
                           (let ((_hd2059321010_ (##car _e2059221006_))
                                 (_tl2059421013_ (##cdr _e2059221006_)))
                             (if (gx#stx-null? _tl2059421013_)
                                 ((lambda (_L21016_)
                                    (let* ((_g2103021051_
                                            (lambda (_g2103121047_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2103121047_)))
                                           (_g2102921092_
                                            (lambda (_g2103121055_)
                                              (if (gx#stx-pair? _g2103121055_)
                                                  (let ((_e2104021058_
                                                         (gx#syntax-e
                                                          _g2103121055_)))
                                                    (let ((_hd2104121062_
                                                           (##car _e2104021058_))
                                                          (_tl2104221065_
                                                           (##cdr _e2104021058_)))
                                                      (if (gx#stx-datum?
                                                           _hd2104121062_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2104121062_)
                              'list:)
                      (if (gx#stx-pair? _tl2104221065_)
                          (let ((_e2104321068_ (gx#syntax-e _tl2104221065_)))
                            (let ((_hd2104421072_ (##car _e2104321068_))
                                  (_tl2104521075_ (##cdr _e2104321068_)))
                              (if (gx#stx-null? _tl2104521075_)
                                  ((lambda (_L21078_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20497_ '()))
                                                 (cons (_generate-list-vector18950_
                                                        _tgt20476_
                                                        _L21078_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20479_
                                                        _E20480_)
                                                       (cons _E20480_ '())))))
                                   _hd2104421072_)
                                  (_g2103021051_ _g2103121055_))))
                          (_g2103021051_ _g2103121055_))
                      (_g2103021051_ _g2103121055_))
                  (_g2103021051_ _g2103121055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2103021051_
                                                   _g2103121055_))))
                                           (_g2102821163_
                                            (lambda (_g2103121096_)
                                              (if (gx#stx-pair? _g2103121096_)
                                                  (let ((_e2103321099_
                                                         (gx#syntax-e
                                                          _g2103121096_)))
                                                    (let ((_hd2103421103_
                                                           (##car _e2103321099_))
                                                          (_tl2103521106_
                                                           (##cdr _e2103321099_)))
                                                      (if (gx#stx-datum?
                                                           _hd2103421103_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2103421103_)
                              'simple:)
                      (if (gx#stx-pair? _tl2103521106_)
                          (let ((_e2103621109_ (gx#syntax-e _tl2103521106_)))
                            (let ((_hd2103721113_ (##car _e2103621109_))
                                  (_tl2103821116_ (##cdr _e2103621109_)))
                              (if (gx#stx-null? _tl2103821116_)
                                  ((lambda (_L21119_)
                                     (let* ((_g2113221140_
                                             (lambda (_g2113321136_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2113321136_)))
                                            (_g2113121159_
                                             (lambda (_g2113321144_)
                                               ((lambda (_L21147_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20497_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L21147_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector18949_
                               _tgt20476_
                               _L21119_
                               '0
                               _K20479_
                               _E20480_)
                              (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2113321144_))))
                                       (_g2113121159_
                                        (gx#stx-length _L21119_))))
                                   _hd2103721113_)
                                  (_g2102921092_ _g2103121096_))))
                          (_g2102921092_ _g2103121096_))
                      (_g2102921092_ _g2103121096_))
                  (_g2102921092_ _g2103121096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2102921092_
                                                   _g2103121096_)))))
                                      (_g2102821163_ _L21016_)))
                                  _hd2059321010_)
                                 (_g2051820989_ _g2052520993_))))
                         (_g2051820989_ _g2052520993_))
                     (_g2051820989_ _g2052520993_))
                 (_g2051820989_ _g2052520993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051820989_
                                                  _g2052520993_))))
                                          (_g2051621345_
                                           (lambda (_g2052521171_)
                                             (if (gx#stx-pair? _g2052521171_)
                                                 (let ((_e2058221174_
                                                        (gx#syntax-e
                                                         _g2052521171_)))
                                                   (let ((_hd2058321178_
                                                          (##car _e2058221174_))
                                                         (_tl2058421181_
                                                          (##cdr _e2058221174_)))
                                                     (if (gx#stx-datum?
                                                          _hd2058321178_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2058321178_)
                             'values:)
                     (if (gx#stx-pair? _tl2058421181_)
                         (let ((_e2058521184_ (gx#syntax-e _tl2058421181_)))
                           (let ((_hd2058621188_ (##car _e2058521184_))
                                 (_tl2058721191_ (##cdr _e2058521184_)))
                             (if (gx#stx-null? _tl2058721191_)
                                 ((lambda (_L21194_)
                                    (let* ((_g2120821229_
                                            (lambda (_g2120921225_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2120921225_)))
                                           (_g2120721270_
                                            (lambda (_g2120921233_)
                                              (if (gx#stx-pair? _g2120921233_)
                                                  (let ((_e2121821236_
                                                         (gx#syntax-e
                                                          _g2120921233_)))
                                                    (let ((_hd2121921240_
                                                           (##car _e2121821236_))
                                                          (_tl2122021243_
                                                           (##cdr _e2121821236_)))
                                                      (if (gx#stx-datum?
                                                           _hd2121921240_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2121921240_)
                              'list:)
                      (if (gx#stx-pair? _tl2122021243_)
                          (let ((_e2122121246_ (gx#syntax-e _tl2122021243_)))
                            (let ((_hd2122221250_ (##car _e2122121246_))
                                  (_tl2122321253_ (##cdr _e2122121246_)))
                              (if (gx#stx-null? _tl2122321253_)
                                  ((lambda (_L21256_)
                                     (_generate-list-vector18950_
                                      _tgt20476_
                                      _L21256_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20479_
                                      _E20480_))
                                   _hd2122221250_)
                                  (_g2120821229_ _g2120921233_))))
                          (_g2120821229_ _g2120921233_))
                      (_g2120821229_ _g2120921233_))
                  (_g2120821229_ _g2120921233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120821229_
                                                   _g2120921233_))))
                                           (_g2120621341_
                                            (lambda (_g2120921274_)
                                              (if (gx#stx-pair? _g2120921274_)
                                                  (let ((_e2121121277_
                                                         (gx#syntax-e
                                                          _g2120921274_)))
                                                    (let ((_hd2121221281_
                                                           (##car _e2121121277_))
                                                          (_tl2121321284_
                                                           (##cdr _e2121121277_)))
                                                      (if (gx#stx-datum?
                                                           _hd2121221281_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2121221281_)
                              'simple:)
                      (if (gx#stx-pair? _tl2121321284_)
                          (let ((_e2121421287_ (gx#syntax-e _tl2121321284_)))
                            (let ((_hd2121521291_ (##car _e2121421287_))
                                  (_tl2121621294_ (##cdr _e2121421287_)))
                              (if (gx#stx-null? _tl2121621294_)
                                  ((lambda (_L21297_)
                                     (let* ((_g2131021318_
                                             (lambda (_g2131121314_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2131121314_)))
                                            (_g2130921337_
                                             (lambda (_g2131121322_)
                                               ((lambda (_L21325_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20497_ '()))
                                    (cons _L21325_ '())))
                        (cons (_generate-simple-vector18949_
                               _tgt20476_
                               _L21297_
                               '0
                               _K20479_
                               _E20480_)
                              (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2131121322_))))
                                       (_g2130921337_
                                        (gx#stx-length _L21297_))))
                                   _hd2121521291_)
                                  (_g2120721270_ _g2120921274_))))
                          (_g2120721270_ _g2120921274_))
                      (_g2120721270_ _g2120921274_))
                  (_g2120721270_ _g2120921274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120721270_
                                                   _g2120921274_)))))
                                      (_g2120621341_ _L21194_)))
                                  _hd2058621188_)
                                 (_g2051721167_ _g2052521171_))))
                         (_g2051721167_ _g2052521171_))
                     (_g2051721167_ _g2052521171_))
                 (_g2051721167_ _g2052521171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051721167_
                                                  _g2052521171_))))
                                          (_g2051521416_
                                           (lambda (_g2052521349_)
                                             (if (gx#stx-pair? _g2052521349_)
                                                 (let ((_e2057521352_
                                                        (gx#syntax-e
                                                         _g2052521349_)))
                                                   (let ((_hd2057621356_
                                                          (##car _e2057521352_))
                                                         (_tl2057721359_
                                                          (##cdr _e2057521352_)))
                                                     (if (gx#stx-datum?
                                                          _hd2057621356_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2057621356_)
                             'box:)
                     (if (gx#stx-pair? _tl2057721359_)
                         (let ((_e2057821362_ (gx#syntax-e _tl2057721359_)))
                           (let ((_hd2057921366_ (##car _e2057821362_))
                                 (_tl2058021369_ (##cdr _e2057821362_)))
                             (if (gx#stx-null? _tl2058021369_)
                                 ((lambda (_L21372_)
                                    (let* ((_g2138521393_
                                            (lambda (_g2138621389_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2138621389_)))
                                           (_g2138421412_
                                            (lambda (_g2138621397_)
                                              ((lambda (_L21400_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20497_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21400_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20497_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate118946_
                                                _L21400_
                                                _L21372_
                                                _K20479_
                                                _E20480_)
                                               '())))
                             (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2138621397_))))
                                      (_g2138421412_ (gx#genident 'e))))
                                  _hd2057921366_)
                                 (_g2051621345_ _g2052521349_))))
                         (_g2051621345_ _g2052521349_))
                     (_g2051621345_ _g2052521349_))
                 (_g2051621345_ _g2052521349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051621345_
                                                  _g2052521349_))))
                                          (_g2051421470_
                                           (lambda (_g2052521420_)
                                             (if (gx#stx-pair? _g2052521420_)
                                                 (let ((_e2056521423_
                                                        (gx#syntax-e
                                                         _g2052521420_)))
                                                   (let ((_hd2056621427_
                                                          (##car _e2056521423_))
                                                         (_tl2056721430_
                                                          (##cdr _e2056521423_)))
                                                     (if (gx#stx-datum?
                                                          _hd2056621427_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2056621427_)
                             'splice:)
                     (if (gx#stx-pair? _tl2056721430_)
                         (let ((_e2056821433_ (gx#syntax-e _tl2056721430_)))
                           (let ((_hd2056921437_ (##car _e2056821433_))
                                 (_tl2057021440_ (##cdr _e2056821433_)))
                             (if (gx#stx-pair? _tl2057021440_)
                                 (let ((_e2057121443_
                                        (gx#syntax-e _tl2057021440_)))
                                   (let ((_hd2057221447_ (##car _e2057121443_))
                                         (_tl2057321450_
                                          (##cdr _e2057121443_)))
                                     (if (gx#stx-null? _tl2057321450_)
                                         ((lambda (_L21453_ _L21455_)
                                            (_generate-splice18948_
                                             _tgt20476_
                                             _L21455_
                                             _L21453_
                                             _K20479_
                                             _E20480_))
                                          _hd2057221447_
                                          _hd2056921437_)
                                         (_g2051521416_ _g2052521420_))))
                                 (_g2051521416_ _g2052521420_))))
                         (_g2051521416_ _g2052521420_))
                     (_g2051521416_ _g2052521420_))
                 (_g2051521416_ _g2052521420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051521416_
                                                  _g2052521420_))))
                                          (_g2051321491_
                                           (lambda (_g2052521474_)
                                             (if (gx#stx-pair? _g2052521474_)
                                                 (let ((_e2056021477_
                                                        (gx#syntax-e
                                                         _g2052521474_)))
                                                   (let ((_hd2056121481_
                                                          (##car _e2056021477_))
                                                         (_tl2056221484_
                                                          (##cdr _e2056021477_)))
                                                     (if (gx#stx-datum?
                                                          _hd2056121481_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2056121481_)
                             'null:)
                     (if (gx#stx-null? _tl2056221484_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20497_ '()))
                                        (cons _K20479_ (cons _E20480_ '()))))))
                         (_g2051421470_ _g2052521474_))
                     (_g2051421470_ _g2052521474_))
                 (_g2051421470_ _g2052521474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051421470_
                                                  _g2052521474_))))
                                          (_g2051221610_
                                           (lambda (_g2052521495_)
                                             (if (gx#stx-pair? _g2052521495_)
                                                 (let ((_e2055121498_
                                                        (gx#syntax-e
                                                         _g2052521495_)))
                                                   (let ((_hd2055221502_
                                                          (##car _e2055121498_))
                                                         (_tl2055321505_
                                                          (##cdr _e2055121498_)))
                                                     (if (gx#stx-datum?
                                                          _hd2055221502_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2055221502_)
                             'cons:)
                     (if (gx#stx-pair? _tl2055321505_)
                         (let ((_e2055421508_ (gx#syntax-e _tl2055321505_)))
                           (let ((_hd2055521512_ (##car _e2055421508_))
                                 (_tl2055621515_ (##cdr _e2055421508_)))
                             (if (gx#stx-pair? _tl2055621515_)
                                 (let ((_e2055721518_
                                        (gx#syntax-e _tl2055621515_)))
                                   (let ((_hd2055821522_ (##car _e2055721518_))
                                         (_tl2055921525_
                                          (##cdr _e2055721518_)))
                                     (if (gx#stx-null? _tl2055921525_)
                                         ((lambda (_L21528_ _L21530_)
                                            (let* ((_g2154621561_
                                                    (lambda (_g2154721557_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2154721557_)))
                                                   (_g2154521606_
                                                    (lambda (_g2154721565_)
                                                      (if (gx#stx-pair?
                                                           _g2154721565_)
                                                          (let ((_e2155021568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2154721565_)))
                    (let ((_hd2155121572_ (##car _e2155021568_))
                          (_tl2155221575_ (##cdr _e2155021568_)))
                      (if (gx#stx-pair? _tl2155221575_)
                          (let ((_e2155321578_ (gx#syntax-e _tl2155221575_)))
                            (let ((_hd2155421582_ (##car _e2155321578_))
                                  (_tl2155521585_ (##cdr _e2155321578_)))
                              (if (gx#stx-null? _tl2155521585_)
                                  ((lambda (_L21588_ _L21590_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20497_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20497_ '()))
                                               '()))
                                   (cons (cons _L21588_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20497_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate118946_
                                    _L21590_
                                    _L21530_
                                    (_generate118946_
                                     _L21588_
                                     _L21528_
                                     _K20479_
                                     _E20480_)
                                    _E20480_)
                                   '())))
                 (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2155421582_
                                   _hd2155121572_)
                                  (_g2154621561_ _g2154721565_))))
                          (_g2154621561_ _g2154721565_))))
                  (_g2154621561_ _g2154721565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2154521606_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2055821522_
                                          _hd2055521512_)
                                         (_g2051321491_ _g2052521495_))))
                                 (_g2051321491_ _g2052521495_))))
                         (_g2051321491_ _g2052521495_))
                     (_g2051321491_ _g2052521495_))
                 (_g2051321491_ _g2052521495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051321491_
                                                  _g2052521495_))))
                                          (_g2051121650_
                                           (lambda (_g2052521614_)
                                             (if (gx#stx-pair? _g2052521614_)
                                                 (let ((_e2054321617_
                                                        (gx#syntax-e
                                                         _g2052521614_)))
                                                   (let ((_hd2054421621_
                                                          (##car _e2054321617_))
                                                         (_tl2054521624_
                                                          (##cdr _e2054321617_)))
                                                     (if (gx#stx-datum?
                                                          _hd2054421621_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2054421621_)
                             'not:)
                     (if (gx#stx-pair? _tl2054521624_)
                         (let ((_e2054621627_ (gx#syntax-e _tl2054521624_)))
                           (let ((_hd2054721631_ (##car _e2054621627_))
                                 (_tl2054821634_ (##cdr _e2054621627_)))
                             (if (gx#stx-null? _tl2054821634_)
                                 ((lambda (_L21637_)
                                    (_generate118946_
                                     _tgt20476_
                                     _L21637_
                                     _E20480_
                                     _K20479_))
                                  _hd2054721631_)
                                 (_g2051221610_ _g2052521614_))))
                         (_g2051221610_ _g2052521614_))
                     (_g2051221610_ _g2052521614_))
                 (_g2051221610_ _g2052521614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051221610_
                                                  _g2052521614_))))
                                          (_g2051021738_
                                           (lambda (_g2052521654_)
                                             (if (gx#stx-pair? _g2052521654_)
                                                 (let ((_e2053921657_
                                                        (gx#syntax-e
                                                         _g2052521654_)))
                                                   (let ((_hd2054021661_
                                                          (##car _e2053921657_))
                                                         (_tl2054121664_
                                                          (##cdr _e2053921657_)))
                                                     (if (gx#stx-datum?
                                                          _hd2054021661_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2054021661_)
                             'or:)
                     ((lambda (_L21667_)
                        (let* ((_g2167921691_
                                (lambda (_g2168021687_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2168021687_)))
                               (_g2167821702_
                                (lambda (_g2168021695_)
                                  ((lambda () _E20480_))))
                               (_g2167721734_
                                (lambda (_g2168021706_)
                                  (if (gx#stx-pair? _g2168021706_)
                                      (let ((_e2168321709_
                                             (gx#syntax-e _g2168021706_)))
                                        (let ((_hd2168421713_
                                               (##car _e2168321709_))
                                              (_tl2168521716_
                                               (##cdr _e2168321709_)))
                                          ((lambda (_L21719_ _L21721_)
                                             (_generate118946_
                                              _tgt20476_
                                              _L21721_
                                              _K20479_
                                              (_generate118946_
                                               _tgt20476_
                                               (cons 'or: _L21719_)
                                               _K20479_
                                               _E20480_)))
                                           _tl2168521716_
                                           _hd2168421713_)))
                                      (_g2167821702_ _g2168021706_)))))
                          (_g2167721734_ _L21667_)))
                      _tl2054121664_)
                     (_g2051121650_ _g2052521654_))
                 (_g2051121650_ _g2052521654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051121650_
                                                  _g2052521654_))))
                                          (_g2050921826_
                                           (lambda (_g2052521742_)
                                             (if (gx#stx-pair? _g2052521742_)
                                                 (let ((_e2053521745_
                                                        (gx#syntax-e
                                                         _g2052521742_)))
                                                   (let ((_hd2053621749_
                                                          (##car _e2053521745_))
                                                         (_tl2053721752_
                                                          (##cdr _e2053521745_)))
                                                     (if (gx#stx-datum?
                                                          _hd2053621749_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2053621749_)
                             'and:)
                     ((lambda (_L21755_)
                        (let* ((_g2176721779_
                                (lambda (_g2176821775_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2176821775_)))
                               (_g2176621790_
                                (lambda (_g2176821783_)
                                  ((lambda () _K20479_))))
                               (_g2176521822_
                                (lambda (_g2176821794_)
                                  (if (gx#stx-pair? _g2176821794_)
                                      (let ((_e2177121797_
                                             (gx#syntax-e _g2176821794_)))
                                        (let ((_hd2177221801_
                                               (##car _e2177121797_))
                                              (_tl2177321804_
                                               (##cdr _e2177121797_)))
                                          ((lambda (_L21807_ _L21809_)
                                             (_generate118946_
                                              _tgt20476_
                                              _L21809_
                                              (_generate118946_
                                               _tgt20476_
                                               (cons 'and: _L21807_)
                                               _K20479_
                                               _E20480_)
                                              _E20480_))
                                           _tl2177321804_
                                           _hd2177221801_)))
                                      (_g2176621790_ _g2176821794_)))))
                          (_g2176521822_ _L21755_)))
                      _tl2053721752_)
                     (_g2051021738_ _g2052521742_))
                 (_g2051021738_ _g2052521742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2051021738_
                                                  _g2052521742_))))
                                          (_g2050822115_
                                           (lambda (_g2052521830_)
                                             (if (gx#stx-pair? _g2052521830_)
                                                 (let ((_e2052821833_
                                                        (gx#syntax-e
                                                         _g2052521830_)))
                                                   (let ((_hd2052921837_
                                                          (##car _e2052821833_))
                                                         (_tl2053021840_
                                                          (##cdr _e2052821833_)))
                                                     (if (gx#stx-datum?
                                                          _hd2052921837_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2052921837_)
                             '?:)
                     (if (gx#stx-pair? _tl2053021840_)
                         (let ((_e2053121843_ (gx#syntax-e _tl2053021840_)))
                           (let ((_hd2053221847_ (##car _e2053121843_))
                                 (_tl2053321850_ (##cdr _e2053121843_)))
                             ((lambda (_L21853_ _L21855_)
                                (let* ((_g2187121903_
                                        (lambda (_g2187221899_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2187221899_)))
                                       (_g2187022001_
                                        (lambda (_g2187221907_)
                                          (if (gx#stx-pair? _g2187221907_)
                                              (let ((_e2188621910_
                                                     (gx#syntax-e
                                                      _g2187221907_)))
                                                (let ((_hd2188721914_
                                                       (##car _e2188621910_))
                                                      (_tl2188821917_
                                                       (##cdr _e2188621910_)))
                                                  (if (gx#stx-datum?
                                                       _hd2188721914_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2188721914_)
                          '::)
                  (if (gx#stx-pair? _tl2188821917_)
                      (let ((_e2188921920_ (gx#syntax-e _tl2188821917_)))
                        (let ((_hd2189021924_ (##car _e2188921920_))
                              (_tl2189121927_ (##cdr _e2188921920_)))
                          (if (gx#stx-pair? _tl2189121927_)
                              (let ((_e2189221930_
                                     (gx#syntax-e _tl2189121927_)))
                                (let ((_hd2189321934_ (##car _e2189221930_))
                                      (_tl2189421937_ (##cdr _e2189221930_)))
                                  (if (gx#stx-datum? _hd2189321934_)
                                      (if (equal? (gx#stx-e _hd2189321934_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2189421937_)
                                              (let ((_e2189521940_
                                                     (gx#syntax-e
                                                      _tl2189421937_)))
                                                (let ((_hd2189621944_
                                                       (##car _e2189521940_))
                                                      (_tl2189721947_
                                                       (##cdr _e2189521940_)))
                                                  (if (gx#stx-null?
                                                       _tl2189721947_)
                                                      ((lambda (_L21950_
                                                                _L21952_)
                                                         (let* ((_g2197021978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2197121974_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2197121974_)))
                        (_g2196921997_
                         (lambda (_g2197121982_)
                           ((lambda (_L21985_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L21855_
                                                        (cons _L20497_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L21985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L21952_ (cons _L20497_ '()))
                                        '()))
                            '())
                      (cons (_generate118946_
                             _L21985_
                             _L21950_
                             _K20479_
                             _E20480_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20480_ '()))))))
                            _g2197121982_))))
                   (_g2196921997_ (gx#genident 'e))))
               _hd2189621944_
               _hd2189021924_)
              (_g2187121903_ _g2187221907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2187121903_ _g2187221907_))
                                          (_g2187121903_ _g2187221907_))
                                      (_g2187121903_ _g2187221907_))))
                              (_g2187121903_ _g2187221907_))))
                      (_g2187121903_ _g2187221907_))
                  (_g2187121903_ _g2187221907_))
              (_g2187121903_ _g2187221907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2187121903_ _g2187221907_))))
                                       (_g2186922072_
                                        (lambda (_g2187222005_)
                                          (if (gx#stx-pair? _g2187222005_)
                                              (let ((_e2187822008_
                                                     (gx#syntax-e
                                                      _g2187222005_)))
                                                (let ((_hd2187922012_
                                                       (##car _e2187822008_))
                                                      (_tl2188022015_
                                                       (##cdr _e2187822008_)))
                                                  (if (gx#stx-datum?
                                                       _hd2187922012_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2187922012_)
                          '=>:)
                  (if (gx#stx-pair? _tl2188022015_)
                      (let ((_e2188122018_ (gx#syntax-e _tl2188022015_)))
                        (let ((_hd2188222022_ (##car _e2188122018_))
                              (_tl2188322025_ (##cdr _e2188122018_)))
                          (if (gx#stx-null? _tl2188322025_)
                              ((lambda (_L22028_)
                                 (let* ((_g2204122049_
                                         (lambda (_g2204222045_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2204222045_)))
                                        (_g2204022068_
                                         (lambda (_g2204222053_)
                                           ((lambda (_L22056_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L21855_ (cons _L20497_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22056_
                                      (cons (_generate118946_
                                             _L22056_
                                             _L22028_
                                             _K20479_
                                             _E20480_)
                                            (cons _E20480_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2204222053_))))
                                   (_g2204022068_ (gx#genident 'e))))
                               _hd2188222022_)
                              (_g2187022001_ _g2187222005_))))
                      (_g2187022001_ _g2187222005_))
                  (_g2187022001_ _g2187222005_))
              (_g2187022001_ _g2187222005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2187022001_ _g2187222005_))))
                                       (_g2186822100_
                                        (lambda (_g2187222076_)
                                          (if (gx#stx-pair? _g2187222076_)
                                              (let ((_e2187422079_
                                                     (gx#syntax-e
                                                      _g2187222076_)))
                                                (let ((_hd2187522083_
                                                       (##car _e2187422079_))
                                                      (_tl2187622086_
                                                       (##cdr _e2187422079_)))
                                                  (if (gx#stx-null?
                                                       _tl2187622086_)
                                                      ((lambda (_L22089_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L21855_ (cons _L20497_ '())))
                             (cons (_generate118946_
                                    _tgt20476_
                                    _L22089_
                                    _K20479_
                                    _E20480_)
                                   (cons _E20480_ '())))))
               _hd2187522083_)
              (_g2186922072_ _g2187222076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186922072_ _g2187222076_))))
                                       (_g2186722111_
                                        (lambda (_g2187222104_)
                                          (if (gx#stx-null? _g2187222104_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L21855_ (cons _L20497_ '())))
                     (cons _K20479_ (cons _E20480_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2186822100_ _g2187222104_)))))
                                  (_g2186722111_ _L21853_)))
                              _tl2053321850_
                              _hd2053221847_)))
                         (_g2050921826_ _g2052521830_))
                     (_g2050921826_ _g2052521830_))
                 (_g2050921826_ _g2052521830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2050921826_
                                                  _g2052521830_)))))
                                     (_g2050822115_ _ptree20478_))))
                               _g2048320494_))))
                      (_g2048122119_ _tgt20476_))))
                 (_generate-splice18948_
                  (lambda (_tgt19848_ _hd19850_ _rest19851_ _K19852_ _E19853_)
                    (let* ((_g1985519872_
                            (lambda (_g1985619868_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1985619868_)))
                           (_g1985420472_
                            (lambda (_g1985619876_)
                              (if (gx#stx-pair/null? _g1985619876_)
                                  (if (fx>= (gx#stx-length _g1985619876_) '0)
                                      (let ((_g31011_
                                             (gx#syntax-split-splice
                                              _g1985619876_
                                              '0)))
                                        (begin
                                          (let ((_g31012_
                                                 (values-count _g31011_)))
                                            (if (not (fx= _g31012_ 2))
                                                (error "Context expects 2 values"
                                                       _g31012_)))
                                          (let ((_target1985819879_
                                                 (values-ref _g31011_ 0))
                                                (_tl1986019882_
                                                 (values-ref _g31011_ 1)))
                                            (if (gx#stx-null? _tl1986019882_)
                                                (letrec ((_loop1986119885_
                                                          (lambda (_hd1985919889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var1986519892_)
                    (if (gx#stx-pair? _hd1985919889_)
                        (let ((_e1986219895_ (gx#syntax-e _hd1985919889_)))
                          (let ((_lp-hd1986319899_ (##car _e1986219895_))
                                (_lp-tl1986419902_ (##cdr _e1986219895_)))
                            (_loop1986119885_
                             _lp-tl1986419902_
                             (cons _lp-hd1986319899_ _var1986519892_))))
                        (let ((_var1986619905_ (reverse _var1986519892_)))
                          ((lambda (_L19909_)
                             (let ()
                               (let* ((_g1992519942_
                                       (lambda (_g1992619938_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1992619938_)))
                                      (_g1992420460_
                                       (lambda (_g1992619946_)
                                         (if (gx#stx-pair/null? _g1992619946_)
                                             (if (fx>= (gx#stx-length
                                                        _g1992619946_)
                                                       '0)
                                                 (let ((_g31013_
                                                        (gx#syntax-split-splice
                                                         _g1992619946_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31014_
                                                            (values-count
                                                             _g31013_)))
                                                       (if (not (fx= _g31014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1992819949_
                                                            (values-ref
                                                             _g31013_
                                                             0))
                                                           (_tl1993019952_
                                                            (values-ref
                                                             _g31013_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1993019952_)
                                                           (letrec ((_loop1993119955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1992919959_ _var-r1993519962_)
                               (if (gx#stx-pair? _hd1992919959_)
                                   (let ((_e1993219965_
                                          (gx#syntax-e _hd1992919959_)))
                                     (let ((_lp-hd1993319969_
                                            (##car _e1993219965_))
                                           (_lp-tl1993419972_
                                            (##cdr _e1993219965_)))
                                       (_loop1993119955_
                                        _lp-tl1993419972_
                                        (cons _lp-hd1993319969_
                                              _var-r1993519962_))))
                                   (let ((_var-r1993619975_
                                          (reverse _var-r1993519962_)))
                                     ((lambda (_L19979_)
                                        (let ()
                                          (let* ((_g1999620013_
                                                  (lambda (_g1999720009_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1999720009_)))
                                                 (_g1999520448_
                                                  (lambda (_g1999720017_)
                                                    (if (gx#stx-pair/null?
                                                         _g1999720017_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1999720017_)
                          '0)
                    (let ((_g31015_ (gx#syntax-split-splice _g1999720017_ '0)))
                      (begin
                        (let ((_g31016_ (values-count _g31015_)))
                          (if (not (fx= _g31016_ 2))
                              (error "Context expects 2 values" _g31016_)))
                        (let ((_target1999920020_ (values-ref _g31015_ 0))
                              (_tl2000120023_ (values-ref _g31015_ 1)))
                          (if (gx#stx-null? _tl2000120023_)
                              (letrec ((_loop2000220026_
                                        (lambda (_hd2000020030_
                                                 _init2000620033_)
                                          (if (gx#stx-pair? _hd2000020030_)
                                              (let ((_e2000320036_
                                                     (gx#syntax-e
                                                      _hd2000020030_)))
                                                (let ((_lp-hd2000420040_
                                                       (##car _e2000320036_))
                                                      (_lp-tl2000520043_
                                                       (##cdr _e2000320036_)))
                                                  (_loop2000220026_
                                                   _lp-tl2000520043_
                                                   (cons _lp-hd2000420040_
                                                         _init2000620033_))))
                                              (let ((_init2000720046_
                                                     (reverse _init2000620033_)))
                                                ((lambda (_L20050_)
                                                   (let ()
                                                     (let* ((_g2006720075_
                                                             (lambda (_g2006820071_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2006820071_)))
                                                            (_g2006620444_
                                                             (lambda (_g2006820079_)
                                                               ((lambda (_L20082_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2009520103_
                                    (lambda (_g2009620099_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2009620099_)))
                                   (_g2009420440_
                                    (lambda (_g2009620107_)
                                      ((lambda (_L20110_)
                                         (let ()
                                           (let* ((_g2012320131_
                                                   (lambda (_g2012420127_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2012420127_)))
                                                  (_g2012220436_
                                                   (lambda (_g2012420135_)
                                                     ((lambda (_L20138_)
                                                        (let ()
                                                          (let* ((_g2015120159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2015220155_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2015220155_)))
                         (_g2015020432_
                          (lambda (_g2015220163_)
                            ((lambda (_L20166_)
                               (let ()
                                 (let* ((_g2017920187_
                                         (lambda (_g2018020183_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2018020183_)))
                                        (_g2017820428_
                                         (lambda (_g2018020191_)
                                           ((lambda (_L20194_)
                                              (let ()
                                                (let* ((_g2020720215_
                                                        (lambda (_g2020820211_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2020820211_)))
                                                       (_g2020620424_
                                                        (lambda (_g2020820219_)
                                                          ((lambda (_L20222_)
                                                             (let ()
                                                               (let* ((_g2023520243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2023620239_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2023620239_)))
                              (_g2023420420_
                               (lambda (_g2023620247_)
                                 ((lambda (_L20250_)
                                    (let ()
                                      (let* ((_g2026320271_
                                              (lambda (_g2026420267_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2026420267_)))
                                             (_g2026220405_
                                              (lambda (_g2026420275_)
                                                ((lambda (_L20278_)
                                                   (let ()
                                                     (let* ((_g2029120299_
                                                             (lambda (_g2029220295_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2029220295_)))
                                                            (_g2029020393_
                                                             (lambda (_g2029220303_)
                                                               ((lambda (_L20306_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2031920327_
                                    (lambda (_g2032020323_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2032020323_)))
                                   (_g2031820389_
                                    (lambda (_g2032020331_)
                                      ((lambda (_L20334_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L20110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20222_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2034820359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2034920362_)
                        (cons _g2034820359_ _g2034920362_))
                      '()
                      _L19909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20250_ '())))
                                   '()))
                       (cons (cons _L20166_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20194_
                                                           (cons _L20222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2035020365_ _g2035120368_)
                                    (cons _g2035020365_ _g2035120368_))
                                  '()
                                  _L19979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20334_ '())))
                                         '()))
                             (cons (cons _L20138_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2035220371_ _g2035320374_)
                                    (cons _g2035220371_ _g2035320374_))
                                  '()
                                  _L19979_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20222_ '()))
                                     (cons (cons _L20166_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20222_
                     (begin
                       '#!void
                       (foldr (lambda (_g2035420377_ _g2035520380_)
                                (cons _g2035420377_ _g2035520380_))
                              '()
                              _L19979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20306_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L20138_
                             (cons _L20082_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2035620383_
                                                     _g2035720386_)
                                              (cons _g2035620383_
                                                    _g2035720386_))
                                            '()
                                            _L20050_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2032020331_))))
                              (_g2031820389_
                               (_generate118946_
                                _L20194_
                                _hd19850_
                                _L20278_
                                _L20306_)))))
                        _g2029220303_))))
               (_g2029020393_
                (cons _L20110_
                      (cons _L20222_
                            (begin
                              '#!void
                              (foldr (lambda (_g2039620399_ _g2039720402_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2039620399_ '()))
                                             _g2039720402_))
                                     '()
                                     _L19979_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2026420275_))))
                                        (_g2026220405_
                                         (cons _L20138_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20222_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L19979_
                                                        _L19909_)
                                                       (foldr (lambda (_g2040820412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2040920415_
                               _g2041020417_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2040920415_
                                          (cons _g2040820412_ '())))
                              _g2041020417_))
                      '()
                      _L19979_
                      _L19909_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2023620247_))))
                         (_g2023420420_
                          (_generate118946_
                           _L20222_
                           _rest19851_
                           _K19852_
                           _E19853_)))))
                   _g2020820219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2020620424_
                                                   (gx#genident 'rest)))))
                                            _g2018020191_))))
                                   (_g2017820428_ (gx#genident 'hd)))))
                             _g2015220163_))))
                    (_g2015020432_ (gx#genident 'splice-try)))))
              _g2012420135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2012220436_
                                              (gx#genident 'splice-loop)))))
                                       _g2009620107_))))
                              (_g2009420440_ (gx#genident 'splice-rest)))))
                        _g2006820079_))))
               (_g2006620444_ _tgt19848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2000720046_))))))
                                (_loop2000220026_ _target1999920020_ '()))
                              (_g1999620013_ _g1999720017_)))))
                    (_g1999620013_ _g1999720017_))
                (_g1999620013_ _g1999720017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1999520448_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2045120454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2045220457_)
                  (cons _g2045120454_ _g2045220457_))
                '()
                _L19909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r1993619975_))))))
                     (_loop1993119955_ _target1992819949_ '()))
                   (_g1992519942_ _g1992619946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1992519942_ _g1992619946_))
                                             (_g1992519942_ _g1992619946_)))))
                                 (_g1992420460_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2046320466_
                                                     _g2046420469_)
                                              (cons _g2046320466_
                                                    _g2046420469_))
                                            '()
                                            _L19909_)))))))
                           _var1986619905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1986119885_
                                                   _target1985819879_
                                                   '()))
                                                (_g1985519872_
                                                 _g1985619876_)))))
                                      (_g1985519872_ _g1985619876_))
                                  (_g1985519872_ _g1985619876_)))))
                      (_g1985420472_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd19850_)))))
                 (_generate-simple-vector18949_
                  (lambda (_tgt19690_
                           _body19692_
                           _start19693_
                           _K19694_
                           _E19695_)
                    (let _recur19697_ ((_rest19700_ _body19692_)
                                       (_off19702_ _start19693_))
                      (let* ((_g1970519717_
                              (lambda (_g1970619713_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1970619713_)))
                             (_g1970419728_
                              (lambda (_g1970619721_) ((lambda () _K19694_))))
                             (_g1970319844_
                              (lambda (_g1970619732_)
                                (if (gx#stx-pair? _g1970619732_)
                                    (let ((_e1970919735_
                                           (gx#syntax-e _g1970619732_)))
                                      (let ((_hd1971019739_
                                             (##car _e1970919735_))
                                            (_tl1971119742_
                                             (##cdr _e1970919735_)))
                                        ((lambda (_L19745_ _L19747_)
                                           (let* ((_g1976219781_
                                                   (lambda (_g1976319777_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1976319777_)))
                                                  (_g1976119840_
                                                   (lambda (_g1976319785_)
                                                     (if (gx#stx-pair?
                                                          _g1976319785_)
                                                         (let ((_e1976719788_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1976319785_)))
                   (let ((_hd1976819792_ (##car _e1976719788_))
                         (_tl1976919795_ (##cdr _e1976719788_)))
                     (if (gx#stx-pair? _tl1976919795_)
                         (let ((_e1977019798_ (gx#syntax-e _tl1976919795_)))
                           (let ((_hd1977119802_ (##car _e1977019798_))
                                 (_tl1977219805_ (##cdr _e1977019798_)))
                             (if (gx#stx-pair? _tl1977219805_)
                                 (let ((_e1977319808_
                                        (gx#syntax-e _tl1977219805_)))
                                   (let ((_hd1977419812_ (##car _e1977319808_))
                                         (_tl1977519815_
                                          (##cdr _e1977319808_)))
                                     (if (gx#stx-null? _tl1977519815_)
                                         ((lambda (_L19818_ _L19820_ _L19821_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L19820_ (cons _L19818_ '())))
                                    '()))
                        '())
                  (cons (_generate118946_
                         _L19821_
                         _L19747_
                         (_recur19697_ _L19745_ (fx1+ _off19702_))
                         _E19695_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1977419812_
                                          _hd1977119802_
                                          _hd1976819792_)
                                         (_g1976219781_ _g1976319785_))))
                                 (_g1976219781_ _g1976319785_))))
                         (_g1976219781_ _g1976319785_))))
                 (_g1976219781_ _g1976319785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1976119840_
                                              (list (gx#genident 'e)
                                                    _tgt19690_
                                                    _off19702_))))
                                         _tl1971119742_
                                         _hd1971019739_)))
                                    (_g1970419728_ _g1970619732_)))))
                        (_g1970319844_ _rest19700_)))))
                 (_generate-list-vector18950_
                  (lambda (_tgt19600_
                           _body19602_
                           _tgt->list19603_
                           _start19604_
                           _K19605_
                           _E19606_)
                    (let* ((_g1960819627_
                            (lambda (_g1960919623_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1960919623_)))
                           (_g1960719686_
                            (lambda (_g1960919631_)
                              (if (gx#stx-pair? _g1960919631_)
                                  (let ((_e1961319634_
                                         (gx#syntax-e _g1960919631_)))
                                    (let ((_hd1961419638_
                                           (##car _e1961319634_))
                                          (_tl1961519641_
                                           (##cdr _e1961319634_)))
                                      (if (gx#stx-pair? _tl1961519641_)
                                          (let ((_e1961619644_
                                                 (gx#syntax-e _tl1961519641_)))
                                            (let ((_hd1961719648_
                                                   (##car _e1961619644_))
                                                  (_tl1961819651_
                                                   (##cdr _e1961619644_)))
                                              (if (gx#stx-pair? _tl1961819651_)
                                                  (let ((_e1961919654_
                                                         (gx#syntax-e
                                                          _tl1961819651_)))
                                                    (let ((_hd1962019658_
                                                           (##car _e1961919654_))
                                                          (_tl1962119661_
                                                           (##cdr _e1961919654_)))
                                                      (if (gx#stx-null?
                                                           _tl1962119661_)
                                                          ((lambda (_L19664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19666_
                            _L19667_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19667_
                                               (cons (cons _L19664_
                                                           (cons _L19666_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate118946_
                                          _L19667_
                                          _body19602_
                                          _K19605_
                                          _E19606_)
                                         '())))))
                   _hd1962019658_
                   _hd1961719648_
                   _hd1961419638_)
                  (_g1960819627_ _g1960919631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1960819627_
                                                   _g1960919631_))))
                                          (_g1960819627_ _g1960919631_))))
                                  (_g1960819627_ _g1960919631_)))))
                      (_g1960719686_
                       (list (gx#genident 'e) _tgt19600_ _tgt->list19603_)))))
                 (_generate-struct18951_
                  (lambda (_info19333_
                           _tgt19335_
                           _body19336_
                           _K19337_
                           _E19338_)
                    (let* ((_rtd19340_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19333_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19333_)
                                '#f))
                           (_fields19350_
                            (let _lp19343_ ((_rtd19346_ _rtd19340_)
                                            (_k19348_ '0))
                              (if _rtd19346_
                                  (_lp19343_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19346_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19346_))
                                        _k19348_))
                                  _k19348_)))
                           (_final?19353_
                            (if _rtd19340_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19340_))
                                '#f))
                           (_g1935619364_
                            (lambda (_g1935719360_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1935719360_)))
                           (_g1935519596_
                            (lambda (_g1935719368_)
                              ((lambda (_L19371_)
                                 (let ()
                                   (let* ((_g1938619394_
                                           (lambda (_g1938719390_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1938719390_)))
                                          (_g1938519592_
                                           (lambda (_g1938719398_)
                                             ((lambda (_L19401_)
                                                (let ()
                                                  (let* ((_g1941419422_
                                                          (lambda (_g1941519418_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1941519418_)))
                                                         (_g1941319588_
                                                          (lambda (_g1941519426_)
                                                            ((lambda (_L19429_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1944519466_
                                   (lambda (_g1944619462_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1944619462_)))
                                  (_g1944419509_
                                   (lambda (_g1944619470_)
                                     (if (gx#stx-pair? _g1944619470_)
                                         (let ((_e1945519473_
                                                (gx#syntax-e _g1944619470_)))
                                           (let ((_hd1945619477_
                                                  (##car _e1945519473_))
                                                 (_tl1945719480_
                                                  (##cdr _e1945519473_)))
                                             (if (gx#stx-datum? _hd1945619477_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1945619477_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1945719480_)
                                                         (let ((_e1945819483_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1945719480_)))
                   (let ((_hd1945919487_ (##car _e1945819483_))
                         (_tl1946019490_ (##cdr _e1945819483_)))
                     (if (gx#stx-null? _tl1946019490_)
                         ((lambda (_L19493_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19429_
                                              (cons _L19401_
                                                    (cons _L19371_ '())))
                                        (cons (_generate-list-vector18950_
                                               _tgt19335_
                                               _L19493_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19337_
                                               _E19338_)
                                              (cons _E19338_ '())))))
                          _hd1945919487_)
                         (_g1944519466_ _g1944619470_))))
                 (_g1944519466_ _g1944619470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1944519466_
                                                      _g1944619470_))
                                                 (_g1944519466_
                                                  _g1944619470_))))
                                         (_g1944519466_ _g1944619470_))))
                                  (_g1944319584_
                                   (lambda (_g1944619513_)
                                     (if (gx#stx-pair? _g1944619513_)
                                         (let ((_e1944819516_
                                                (gx#syntax-e _g1944619513_)))
                                           (let ((_hd1944919520_
                                                  (##car _e1944819516_))
                                                 (_tl1945019523_
                                                  (##cdr _e1944819516_)))
                                             (if (gx#stx-datum? _hd1944919520_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1944919520_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1945019523_)
                                                         (let ((_e1945119526_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1945019523_)))
                   (let ((_hd1945219530_ (##car _e1945119526_))
                         (_tl1945319533_ (##cdr _e1945119526_)))
                     (if (gx#stx-null? _tl1945319533_)
                         ((lambda (_L19536_)
                            (let ((_K19549_
                                   (_generate-simple-vector18949_
                                    _tgt19335_
                                    _L19536_
                                    '1
                                    _K19337_
                                    _E19338_)))
                              (if (if _rtd19340_
                                      (fx<= (gx#stx-length _L19536_)
                                            _fields19350_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19429_
                                                    (cons _L19401_
                                                          (cons _L19371_ '())))
                                              (cons _K19549_
                                                    (cons _E19338_ '()))))
                                  (let* ((_g1955219560_
                                          (lambda (_g1955319556_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1955319556_)))
                                         (_g1955119580_
                                          (lambda (_g1955319564_)
                                            ((lambda (_L19567_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19429_
                                       (cons _L19401_ (cons _L19371_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19567_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19549_ (cons _E19338_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1955319564_))))
                                    (_g1955119580_
                                     (gx#stx-length _L19536_))))))
                          _hd1945219530_)
                         (_g1944419509_ _g1944619513_))))
                 (_g1944419509_ _g1944619513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1944419509_
                                                      _g1944619513_))
                                                 (_g1944419509_
                                                  _g1944619513_))))
                                         (_g1944419509_ _g1944619513_)))))
                             (_g1944319584_ _body19336_)))))
                     _g1941519426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1941319588_
                                                     (if _final?19353_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1938719398_))))
                                     (_g1938519592_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19333_)))))
                               _g1935719368_))))
                      (_g1935519596_ _tgt19335_))))
                 (_generate-class18952_
                  (lambda (_info18954_
                           _tgt18956_
                           _body18957_
                           _K18958_
                           _E18959_)
                    (letrec* ((_rtd18961_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info18954_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info18954_)
                                   '#f))
                              (_known-slot?18963_
                               (if _rtd18961_
                                   (lambda (_key19327_)
                                     (let ((_slot19330_
                                            (keyword->symbol
                                             (gx#stx-e _key19327_))))
                                       (_rtd-known-slot?18965_
                                        _rtd18961_
                                        _slot19330_)))
                                   false))
                              (_final?18964_
                               (if _rtd18961_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd18961_))
                                   '#f))
                              (_rtd-known-slot?18965_
                               (lambda (_rtd19314_ _slot19316_)
                                 (if _rtd19314_
                                     (let ((_$e19318_
                                            (memq _slot19316_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19314_))))
                                       (if _$e19318_
                                           _$e19318_
                                           (ormap (lambda (_g1932119323_)
                                                    (_rtd-known-slot?18965_
                                                     _g1932119323_
                                                     _slot19316_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19314_)))))
                                     '#f)))
                              (_recur18966_
                               (lambda (_klass19100_ _rest19102_)
                                 (let* ((_g1910519121_
                                         (lambda (_g1910619117_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1910619117_)))
                                        (_g1910419132_
                                         (lambda (_g1910619125_)
                                           ((lambda () _K18958_))))
                                        (_g1910319310_
                                         (lambda (_g1910619136_)
                                           (if (gx#stx-pair? _g1910619136_)
                                               (let ((_e1911019139_
                                                      (gx#syntax-e
                                                       _g1910619136_)))
                                                 (let ((_hd1911119143_
                                                        (##car _e1911019139_))
                                                       (_tl1911219146_
                                                        (##cdr _e1911019139_)))
                                                   (if (gx#stx-pair?
                                                        _tl1911219146_)
                                                       (let ((_e1911319149_
                                                              (gx#syntax-e
                                                               _tl1911219146_)))
                                                         (let ((_hd1911419153_
                                                                (##car _e1911319149_))
                                                               (_tl1911519156_
                                                                (##cdr _e1911319149_)))
                                                           ((lambda (_L19159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19161_
                             _L19162_)
                      (let* ((_g1917819186_
                              (lambda (_g1917919182_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1917919182_)))
                             (_g1917719306_
                              (lambda (_g1917919190_)
                                ((lambda (_L19193_)
                                   (let ()
                                     (let* ((_g1920519213_
                                             (lambda (_g1920619209_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1920619209_)))
                                            (_g1920419302_
                                             (lambda (_g1920619217_)
                                               ((lambda (_L19220_)
                                                  (let ()
                                                    (let* ((_g1923319241_
                                                            (lambda (_g1923419237_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1923419237_)))
                                                           (_g1923219298_
                                                            (lambda (_g1923419245_)
                                                              ((lambda (_L19248_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1926119269_
                                   (lambda (_g1926219265_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1926219265_)))
                                  (_g1926019294_
                                   (lambda (_g1926219273_)
                                     ((lambda (_L19276_)
                                        (let ()
                                          (let ((_K19289_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19193_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate118946_
                            _L19276_
                            _L19161_
                            (_recur18966_ _klass19100_ _L19159_)
                            _E18959_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?18963_ _L19162_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19220_
                                                  (cons _L19162_ '())))
                                      '()))
                          '())
                    (cons _K19289_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19220_
                                                  (cons _L19162_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19248_
                                      (cons _K19289_ (cons _E18959_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1926219273_))))
                             (_g1926019294_ (gx#genident 'e)))))
                       _g1923419245_))))
              (_g1923219298_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1920619217_))))
                                       (_g1920419302_ _klass19100_))))
                                 _g1917919190_))))
                        (_g1917719306_ _tgt18956_)))
                    _tl1911519156_
                    _hd1911419153_
                    _hd1911119143_)))
               (_g1910419132_ _g1910619136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1910419132_
                                                _g1910619136_)))))
                                   (_g1910319310_ _rest19102_)))))
                      (let* ((_g1896818976_
                              (lambda (_g1896918972_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1896918972_)))
                             (_g1896719096_
                              (lambda (_g1896918980_)
                                ((lambda (_L18983_)
                                   (let ()
                                     (let* ((_g1899819006_
                                             (lambda (_g1899919002_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1899919002_)))
                                            (_g1899719092_
                                             (lambda (_g1899919010_)
                                               ((lambda (_L19013_)
                                                  (let ()
                                                    (let* ((_g1902619034_
                                                            (lambda (_g1902719030_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1902719030_)))
                                                           (_g1902519088_
                                                            (lambda (_g1902719038_)
                                                              ((lambda (_L19041_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1905419062_
                                   (lambda (_g1905519058_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1905519058_)))
                                  (_g1905319084_
                                   (lambda (_g1905519066_)
                                     ((lambda (_L19069_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L19069_
                                                              (cons _L19041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L19013_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L18983_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L19013_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur18966_ _L18983_ _body18957_)
                                        '())))
                      (cons _E18959_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1905519066_))))
                             (_g1905319084_
                              (if _final?18964_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1902719038_))))
              (_g1902519088_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info18954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1899919010_))))
                                       (_g1899719092_ _tgt18956_))))
                                 _g1896918980_))))
                        (_g1896719096_ (gx#genident 'class)))))))
          (_generate118946_ _tgt18941_ _ptree18942_ _K18943_ _E18944_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx17938_ _tgt-lst17940_ _clauses17941_)
        (letrec ((_parse-body17943_
                  (lambda (_hd-len18761_)
                    (let _lp18764_ ((_rest18767_ _clauses17941_)
                                    (_r18769_ '()))
                      (let* ((_g1877218784_
                              (lambda (_g1877318780_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1877318780_)))
                             (_g1877118795_
                              (lambda (_g1877318788_) ((lambda () _r18769_))))
                             (_g1877018935_
                              (lambda (_g1877318799_)
                                (if (gx#stx-pair? _g1877318799_)
                                    (let ((_e1877618802_
                                           (gx#syntax-e _g1877318799_)))
                                      (let ((_hd1877718806_
                                             (##car _e1877618802_))
                                            (_tl1877818809_
                                             (##cdr _e1877618802_)))
                                        ((lambda (_L18812_ _L18814_)
                                           (let* ((_g1883118847_
                                                   (lambda (_g1883218843_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1883218843_)))
                                                  (_g1883018858_
                                                   (lambda (_g1883218851_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx17938_
                                                         _L18814_)))))
                                                  (_g1882918899_
                                                   (lambda (_g1883218862_)
                                                     (if (gx#stx-pair?
                                                          _g1883218862_)
                                                         (let ((_e1883918865_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1883218862_)))
                   (let ((_hd1884018869_ (##car _e1883918865_))
                         (_tl1884118872_ (##cdr _e1883918865_)))
                     ((lambda (_L18875_ _L18877_)
                        (if (if (gx#stx-list? _L18877_)
                                (if (fx= (gx#stx-length _L18877_)
                                         _hd-len18761_)
                                    (if (gx#stx-list? _L18875_)
                                        (not (gx#stx-null? _L18875_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp18764_
                             _L18812_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1888918891_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1888918891_
                                                   _stx17938_))
                                                _L18877_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L18875_)
                                                      (let ((_$e18895_
                                                             (gx#stx-source
                                                              _L18814_)))
                                                        (if _$e18895_
                                                            _$e18895_
                                                            (gx#stx-source
                                                             _stx17938_))))
                                                     '())))
                                   _r18769_))
                            (_g1883018858_ _g1883218862_)))
                      _tl1884118872_
                      _hd1884018869_)))
                 (_g1883018858_ _g1883218862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1882818931_
                                                   (lambda (_g1883218903_)
                                                     (if (gx#stx-pair?
                                                          _g1883218903_)
                                                         (let ((_e1883418906_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1883218903_)))
                   (let ((_hd1883518910_ (##car _e1883418906_))
                         (_tl1883618913_ (##cdr _e1883418906_)))
                     (if (gx#identifier? _hd1883518910_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g31017_|
                              _hd1883518910_)
                             ((lambda (_L18916_)
                                (if (if (gx#stx-list? _L18916_)
                                        (not (gx#stx-null? _L18916_))
                                        '#f)
                                    (if (gx#stx-null? _L18812_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L18916_)
                         (let ((_$e18927_ (gx#stx-source _L18814_)))
                           (if _$e18927_
                               _$e18927_
                               (gx#stx-source _stx17938_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r18769_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx17938_
                                         _L18814_))
                                    (_g1882918899_ _g1883218903_)))
                              _tl1883618913_)
                             (_g1882918899_ _g1883218903_))
                         (_g1882918899_ _g1883218903_))))
                 (_g1882918899_ _g1883218903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1882818931_ _L18814_)))
                                         _tl1877818809_
                                         _hd1877718806_)))
                                    (_g1877118795_ _g1877318799_)))))
                        (_g1877018935_ _rest18767_)))))
                 (_generate-body17945_
                  (lambda (_body18578_)
                    (let* ((_g1858118589_
                            (lambda (_g1858218585_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1858218585_)))
                           (_g1858018757_
                            (lambda (_g1858218593_)
                              ((lambda (_L18596_)
                                 (let ()
                                   (let* ((_g1860818625_
                                           (lambda (_g1860918621_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1860918621_)))
                                          (_g1860718753_
                                           (lambda (_g1860918629_)
                                             (if (gx#stx-pair/null?
                                                  _g1860918629_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1860918629_)
                                                           '0)
                                                     (let ((_g31018_
                                                            (gx#syntax-split-splice
                                                             _g1860918629_
                                                             '0)))
                                                       (begin
                                                         (let ((_g31019_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31018_)))
                   (if (not (fx= _g31019_ 2))
                       (error "Context expects 2 values" _g31019_)))
                 (let ((_target1861118632_ (values-ref _g31018_ 0))
                       (_tl1861318635_ (values-ref _g31018_ 1)))
                   (if (gx#stx-null? _tl1861318635_)
                       (letrec ((_loop1861418638_
                                 (lambda (_hd1861218642_ _target1861818645_)
                                   (if (gx#stx-pair? _hd1861218642_)
                                       (let ((_e1861518648_
                                              (gx#syntax-e _hd1861218642_)))
                                         (let ((_lp-hd1861618652_
                                                (##car _e1861518648_))
                                               (_lp-tl1861718655_
                                                (##cdr _e1861518648_)))
                                           (_loop1861418638_
                                            _lp-tl1861718655_
                                            (cons _lp-hd1861618652_
                                                  _target1861818645_))))
                                       (let ((_target1861918658_
                                              (reverse _target1861818645_)))
                                         ((lambda (_L18662_)
                                            (let ()
                                              (let* ((_g1867918687_
                                                      (lambda (_g1868018683_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1868018683_)))
                                                     (_g1867818741_
                                                      (lambda (_g1868018691_)
                                                        ((lambda (_L18694_)
                                                           (let ()
                                                             (let* ((_g1870718715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1870818711_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1870818711_)))
                            (_g1870618737_
                             (lambda (_g1870818719_)
                               ((lambda (_L18722_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18596_
                                                              (cons _L18694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L18722_ '()))))))
                                _g1870818719_))))
                       (_g1870618737_
                        (_generate-clauses17946_
                         _body18578_
                         (cons _L18596_ '()))))))
                 _g1868018691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1867818741_
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
                                          (foldr (lambda (_g1874418747_
                                                          _g1874518750_)
                                                   (cons _g1874418747_
                                                         _g1874518750_))
                                                 '()
                                                 _L18662_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx17938_))))))
                                          _target1861918658_))))))
                         (_loop1861418638_ _target1861118632_ '()))
                       (_g1860818625_ _g1860918629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1860818625_
                                                      _g1860918629_))
                                                 (_g1860818625_
                                                  _g1860918629_)))))
                                     (_g1860718753_ _tgt-lst17940_))))
                               _g1858218593_))))
                      (_g1858018757_ (gx#genident 'E)))))
                 (_generate-clauses17946_
                  (lambda (_rest18260_ _E18262_)
                    (let* ((_g1826618282_
                            (lambda (_g1826718278_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1826718278_)))
                           (_g1826518293_
                            (lambda (_g1826718286_) ((lambda () _E18262_))))
                           (_g1826418469_
                            (lambda (_g1826718297_)
                              (if (gx#stx-pair? _g1826718297_)
                                  (let ((_e1827418300_
                                         (gx#syntax-e _g1826718297_)))
                                    (let ((_hd1827518304_
                                           (##car _e1827418300_))
                                          (_tl1827618307_
                                           (##cdr _e1827418300_)))
                                      ((lambda (_L18310_ _L18312_)
                                         (let* ((_g1832518344_
                                                 (lambda (_g1832618340_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1832618340_)))
                                                (_g1832418465_
                                                 (lambda (_g1832618348_)
                                                   (if (gx#stx-pair?
                                                        _g1832618348_)
                                                       (let ((_e1833018351_
                                                              (gx#syntax-e
                                                               _g1832618348_)))
                                                         (let ((_hd1833118355_
                                                                (##car _e1833018351_))
                                                               (_tl1833218358_
                                                                (##cdr _e1833018351_)))
                                                           (if (gx#stx-pair?
                                                                _tl1833218358_)
                                                               (let ((_e1833318361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1833218358_)))
                         (let ((_hd1833418365_ (##car _e1833318361_))
                               (_tl1833518368_ (##cdr _e1833318361_)))
                           (if (gx#stx-pair? _tl1833518368_)
                               (let ((_e1833618371_
                                      (gx#syntax-e _tl1833518368_)))
                                 (let ((_hd1833718375_ (##car _e1833618371_))
                                       (_tl1833818378_ (##cdr _e1833618371_)))
                                   (if (gx#stx-null? _tl1833818378_)
                                       ((lambda (_L18381_ _L18383_ _L18384_)
                                          (let* ((_g1840118416_
                                                  (lambda (_g1840218412_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1840218412_)))
                                                 (_g1840018461_
                                                  (lambda (_g1840218420_)
                                                    (if (gx#stx-pair?
                                                         _g1840218420_)
                                                        (let ((_e1840518423_
                                                               (gx#syntax-e
                                                                _g1840218420_)))
                                                          (let ((_hd1840618427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1840518423_))
                        (_tl1840718430_ (##cdr _e1840518423_)))
                    (if (gx#stx-pair? _tl1840718430_)
                        (let ((_e1840818433_ (gx#syntax-e _tl1840718430_)))
                          (let ((_hd1840918437_ (##car _e1840818433_))
                                (_tl1841018440_ (##cdr _e1840818433_)))
                            (if (gx#stx-null? _tl1841018440_)
                                ((lambda (_L18443_ _L18445_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18384_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18445_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18443_ '())))))
                                 _hd1840918437_
                                 _hd1840618427_)
                                (_g1840118416_ _g1840218420_))))
                        (_g1840118416_ _g1840218420_))))
                (_g1840118416_ _g1840218420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1840018461_
                                             (list (if (gx#stx-e _L18383_)
                                                       (_generate117947_
                                                        _L18383_
                                                        _L18381_
                                                        _E18262_)
                                                       _L18381_)
                                                   (_generate-clauses17946_
                                                    _L18310_
                                                    (cons _L18384_ '()))))))
                                        _hd1833718375_
                                        _hd1833418365_
                                        _hd1833118355_)
                                       (_g1832518344_ _g1832618348_))))
                               (_g1832518344_ _g1832618348_))))
                       (_g1832518344_ _g1832618348_))))
               (_g1832518344_ _g1832618348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1832418465_ _L18312_)))
                                       _tl1827618307_
                                       _hd1827518304_)))
                                  (_g1826518293_ _g1826718297_))))
                           (_g1826318574_
                            (lambda (_g1826718473_)
                              (if (gx#stx-pair? _g1826718473_)
                                  (let ((_e1826918476_
                                         (gx#syntax-e _g1826718473_)))
                                    (let ((_hd1827018480_
                                           (##car _e1826918476_))
                                          (_tl1827118483_
                                           (##cdr _e1826918476_)))
                                      (if (gx#stx-null? _tl1827118483_)
                                          ((lambda (_L18486_)
                                             (let* ((_g1849718515_
                                                     (lambda (_g1849818511_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1849818511_)))
                                                    (_g1849618570_
                                                     (lambda (_g1849818519_)
                                                       (if (gx#stx-pair?
                                                            _g1849818519_)
                                                           (let ((_e1850118522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1849818519_)))
                     (let ((_hd1850218526_ (##car _e1850118522_))
                           (_tl1850318529_ (##cdr _e1850118522_)))
                       (if (gx#stx-pair? _tl1850318529_)
                           (let ((_e1850418532_ (gx#syntax-e _tl1850318529_)))
                             (let ((_hd1850518536_ (##car _e1850418532_))
                                   (_tl1850618539_ (##cdr _e1850418532_)))
                               (if (gx#stx-pair? _tl1850618539_)
                                   (let ((_e1850718542_
                                          (gx#syntax-e _tl1850618539_)))
                                     (let ((_hd1850818546_
                                            (##car _e1850718542_))
                                           (_tl1850918549_
                                            (##cdr _e1850718542_)))
                                       (if (gx#stx-null? _tl1850918549_)
                                           ((lambda (_L18552_ _L18554_)
                                              (if (gx#stx-e _L18554_)
                                                  (_generate117947_
                                                   _L18554_
                                                   _L18552_
                                                   _E18262_)
                                                  _L18552_))
                                            _hd1850818546_
                                            _hd1850518536_)
                                           (_g1849718515_ _g1849818519_))))
                                   (_g1849718515_ _g1849818519_))))
                           (_g1849718515_ _g1849818519_))))
                   (_g1849718515_ _g1849818519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1849618570_ _L18486_)))
                                           _hd1827018480_)
                                          (_g1826418469_ _g1826718473_))))
                                  (_g1826418469_ _g1826718473_)))))
                      (_g1826318574_ _rest18260_))))
                 (_generate117947_
                  (lambda (_clause17949_ _body17951_ _E17952_)
                    (let _recur17954_ ((_rest17957_ _clause17949_)
                                       (_rest-targets17959_ _tgt-lst17940_))
                      (let* ((_g1796217974_
                              (lambda (_g1796317970_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1796317970_)))
                             (_g1796117985_
                              (lambda (_g1796317978_)
                                ((lambda () _body17951_))))
                             (_g1796018256_
                              (lambda (_g1796317989_)
                                (if (gx#stx-pair? _g1796317989_)
                                    (let ((_e1796617992_
                                           (gx#syntax-e _g1796317989_)))
                                      (let ((_hd1796717996_
                                             (##car _e1796617992_))
                                            (_tl1796817999_
                                             (##cdr _e1796617992_)))
                                        ((lambda (_L18002_ _L18004_)
                                           (let* ((_g1802118033_
                                                   (lambda (_g1802218029_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1802218029_)))
                                                  (_g1802018252_
                                                   (lambda (_g1802218037_)
                                                     (if (gx#stx-pair?
                                                          _g1802218037_)
                                                         (let ((_e1802518040_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1802218037_)))
                   (let ((_hd1802618044_ (##car _e1802518040_))
                         (_tl1802718047_ (##cdr _e1802518040_)))
                     ((lambda (_L18050_ _L18052_)
                        (let* ((_g1806418072_
                                (lambda (_g1806518068_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1806518068_)))
                               (_g1806318248_
                                (lambda (_g1806518076_)
                                  ((lambda (_L18079_)
                                     (let ()
                                       (let* ((_g1809118108_
                                               (lambda (_g1809218104_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1809218104_)))
                                              (_g1809018244_
                                               (lambda (_g1809218112_)
                                                 (if (gx#stx-pair/null?
                                                      _g1809218112_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1809218112_)
                                                               '0)
                                                         (let ((_g31020_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1809218112_
                         '0)))
                   (begin
                     (let ((_g31021_ (values-count _g31020_)))
                       (if (not (fx= _g31021_ 2))
                           (error "Context expects 2 values" _g31021_)))
                     (let ((_target1809418115_ (values-ref _g31020_ 0))
                           (_tl1809618118_ (values-ref _g31020_ 1)))
                       (if (gx#stx-null? _tl1809618118_)
                           (letrec ((_loop1809718121_
                                     (lambda (_hd1809518125_ _var1810118128_)
                                       (if (gx#stx-pair? _hd1809518125_)
                                           (let ((_e1809818131_
                                                  (gx#syntax-e
                                                   _hd1809518125_)))
                                             (let ((_lp-hd1809918135_
                                                    (##car _e1809818131_))
                                                   (_lp-tl1810018138_
                                                    (##cdr _e1809818131_)))
                                               (_loop1809718121_
                                                _lp-tl1810018138_
                                                (cons _lp-hd1809918135_
                                                      _var1810118128_))))
                                           (let ((_var1810218141_
                                                  (reverse _var1810118128_)))
                                             ((lambda (_L18145_)
                                                (let ()
                                                  (let* ((_g1816218170_
                                                          (lambda (_g1816318166_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1816318166_)))
                                                         (_g1816118240_
                                                          (lambda (_g1816318174_)
                                                            ((lambda (_L18177_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1819018198_
                                 (lambda (_g1819118194_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1819118194_)))
                                (_g1818918228_
                                 (lambda (_g1819118202_)
                                   ((lambda (_L18205_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L18079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1821918222_
                                                              _g1822018225_)
                                                       (cons _g1821918222_
                                                             _g1822018225_))
                                                     '()
                                                     _L18145_))
                                            (cons _L18177_ '())))
                                '()))
                    '())
              (cons _L18205_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1819118202_))))
                           (_g1818918228_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx17938_
                             _L18052_
                             _L18004_
                             (cons _L18079_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1823118234_
                                                     _g1823218237_)
                                              (cons _g1823118234_
                                                    _g1823218237_))
                                            '()
                                            _L18145_)))
                             _E17952_)))))
                     _g1816318174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1816118240_
                                                     (_recur17954_
                                                      _L18002_
                                                      _L18050_)))))
                                              _var1810218141_))))))
                             (_loop1809718121_ _target1809418115_ '()))
                           (_g1809118108_ _g1809218112_)))))
                 (_g1809118108_ _g1809218112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1809118108_
                                                      _g1809218112_)))))
                                         (_g1809018244_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L18004_)))))
                                   _g1806518076_))))
                          (_g1806318248_ (gx#genident 'K))))
                      _tl1802718047_
                      _hd1802618044_)))
                 (_g1802118033_ _g1802218037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1802018252_
                                              _rest-targets17959_)))
                                         _tl1796817999_
                                         _hd1796717996_)))
                                    (_g1796117985_ _g1796317989_)))))
                        (_g1796018256_ _rest17957_))))))
          (_generate-body17945_
           (_parse-body17943_ (gx#stx-length _tgt-lst17940_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx17840_ _tgt17842_ _clauses17843_)
        (letrec ((_reclause17845_
                  (lambda (_clause17848_)
                    (let* ((_g1785317868_
                            (lambda (_g1785417864_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1785417864_)))
                           (_g1785217879_
                            (lambda (_g1785417872_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx17840_
                                  _clause17848_)))))
                           (_g1785117913_
                            (lambda (_g1785417883_)
                              (if (gx#stx-pair? _g1785417883_)
                                  (let ((_e1786017886_
                                         (gx#syntax-e _g1785417883_)))
                                    (let ((_hd1786117890_
                                           (##car _e1786017886_))
                                          (_tl1786217893_
                                           (##cdr _e1786017886_)))
                                      ((lambda (_L17896_ _L17898_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L17898_ '()) _L17896_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1786217893_
                                       _hd1786117890_)))
                                  (_g1785217879_ _g1785417883_))))
                           (_g1785017934_
                            (lambda (_g1785417917_)
                              (if (gx#stx-pair? _g1785417917_)
                                  (let ((_e1785517920_
                                         (gx#syntax-e _g1785417917_)))
                                    (let ((_hd1785617924_
                                           (##car _e1785517920_))
                                          (_tl1785717927_
                                           (##cdr _e1785517920_)))
                                      (if (gx#identifier? _hd1785617924_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g31022_|
                                               _hd1785617924_)
                                              ((lambda () _clause17848_))
                                              (_g1785117913_ _g1785417917_))
                                          (_g1785117913_ _g1785417917_))))
                                  (_g1785117913_ _g1785417917_)))))
                      (_g1785017934_ _clause17848_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx17840_
           (cons _tgt17842_ '())
           (gx#stx-map _reclause17845_ _clauses17843_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx25047_)
        (let* ((_g2505225081_
                (lambda (_g2505325077_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2505325077_)))
               (_g2505125189_
                (lambda (_g2505325085_)
                  (if (gx#stx-pair? _g2505325085_)
                      (let ((_e2507025088_ (gx#syntax-e _g2505325085_)))
                        (let ((_hd2507125092_ (##car _e2507025088_))
                              (_tl2507225095_ (##cdr _e2507025088_)))
                          (if (gx#stx-pair? _tl2507225095_)
                              (let ((_e2507325098_
                                     (gx#syntax-e _tl2507225095_)))
                                (let ((_hd2507425102_ (##car _e2507325098_))
                                      (_tl2507525105_ (##cdr _e2507325098_)))
                                  ((lambda (_L25108_ _L25110_)
                                     (if (gx#stx-list? _L25108_)
                                         (let* ((_g2512425132_
                                                 (lambda (_g2512525128_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2512525128_)))
                                                (_g2512325185_
                                                 (lambda (_g2512525136_)
                                                   ((lambda (_L25139_)
                                                      (let ()
                                                        (let* ((_g2515125159_
                                                                (lambda (_g2515225155_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2515225155_)))
                       (_g2515025181_
                        (lambda (_g2515225163_)
                          ((lambda (_L25166_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L25139_
                                                         (cons _L25110_ '()))
                                                   '())
                                             (cons _L25166_ '()))))))
                           _g2515225163_))))
                  (_g2515025181_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx25047_
                    _L25139_
                    _L25108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2512525136_))))
                                           (_g2512325185_
                                            (gx#genident _L25110_)))
                                         (_g2505225081_ _g2505325085_)))
                                   _tl2507525105_
                                   _hd2507425102_)))
                              (_g2505225081_ _g2505325085_))))
                      (_g2505225081_ _g2505325085_))))
               (_g2505025294_
                (lambda (_g2505325193_)
                  (if (gx#stx-pair? _g2505325193_)
                      (let ((_e2506225196_ (gx#syntax-e _g2505325193_)))
                        (let ((_hd2506325200_ (##car _e2506225196_))
                              (_tl2506425203_ (##cdr _e2506225196_)))
                          (if (gx#stx-pair? _tl2506425203_)
                              (let ((_e2506525206_
                                     (gx#syntax-e _tl2506425203_)))
                                (let ((_hd2506625210_ (##car _e2506525206_))
                                      (_tl2506725213_ (##cdr _e2506525206_)))
                                  (if (gx#identifier? _hd2506625210_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31023_|
                                           _hd2506625210_)
                                          ((lambda (_L25216_)
                                             (if (gx#stx-list? _L25216_)
                                                 (let* ((_g2522925237_
                                                         (lambda (_g2523025233_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2523025233_)))
                                                        (_g2522825290_
                                                         (lambda (_g2523025241_)
                                                           ((lambda (_L25244_)
                                                              (let ()
                                                                (let* ((_g2525625264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2525725260_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2525725260_)))
                               (_g2525525286_
                                (lambda (_g2525725268_)
                                  ((lambda (_L25271_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25244_
                                                     (cons _L25271_ '()))))))
                                   _g2525725268_))))
                          (_g2525525286_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25244_ _L25216_))
                            (gx#stx-source _stx25047_))))))
                    _g2523025241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2522825290_
                                                    (gx#genident 'args)))
                                                 (_g2505125189_
                                                  _g2505325193_)))
                                           _tl2506725213_)
                                          (_g2505125189_ _g2505325193_))
                                      (_g2505125189_ _g2505325193_))))
                              (_g2505125189_ _g2505325193_))))
                      (_g2505125189_ _g2505325193_))))
               (_g2504925399_
                (lambda (_g2505325298_)
                  (if (gx#stx-pair? _g2505325298_)
                      (let ((_e2505525301_ (gx#syntax-e _g2505325298_)))
                        (let ((_hd2505625305_ (##car _e2505525301_))
                              (_tl2505725308_ (##cdr _e2505525301_)))
                          (if (gx#stx-pair? _tl2505725308_)
                              (let ((_e2505825311_
                                     (gx#syntax-e _tl2505725308_)))
                                (let ((_hd2505925315_ (##car _e2505825311_))
                                      (_tl2506025318_ (##cdr _e2505825311_)))
                                  (if (gx#identifier? _hd2505925315_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31024_|
                                           _hd2505925315_)
                                          ((lambda (_L25321_)
                                             (if (gx#stx-list? _L25321_)
                                                 (let* ((_g2533425342_
                                                         (lambda (_g2533525338_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2533525338_)))
                                                        (_g2533325395_
                                                         (lambda (_g2533525346_)
                                                           ((lambda (_L25349_)
                                                              (let ()
                                                                (let* ((_g2536125369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2536225365_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2536225365_)))
                               (_g2536025391_
                                (lambda (_g2536225373_)
                                  ((lambda (_L25376_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25349_ '())
                                                     (cons _L25376_ '()))))))
                                   _g2536225373_))))
                          (_g2536025391_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25349_ _L25321_))
                            (gx#stx-source _stx25047_))))))
                    _g2533525346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2533325395_
                                                    (gx#genident 'e)))
                                                 (_g2505025294_
                                                  _g2505325298_)))
                                           _tl2506025318_)
                                          (_g2505025294_ _g2505325298_))
                                      (_g2505025294_ _g2505325298_))))
                              (_g2505025294_ _g2505325298_))))
                      (_g2505025294_ _g2505325298_)))))
          (_g2504925399_ _stx25047_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25403_)
        (let* ((_g2540625430_
                (lambda (_g2540725426_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2540725426_)))
               (_g2540525642_
                (lambda (_g2540725434_)
                  (if (gx#stx-pair? _g2540725434_)
                      (let ((_e2541025437_ (gx#syntax-e _g2540725434_)))
                        (let ((_hd2541125441_ (##car _e2541025437_))
                              (_tl2541225444_ (##cdr _e2541025437_)))
                          (if (gx#stx-pair? _tl2541225444_)
                              (let ((_e2541325447_
                                     (gx#syntax-e _tl2541225444_)))
                                (let ((_hd2541425451_ (##car _e2541325447_))
                                      (_tl2541525454_ (##cdr _e2541325447_)))
                                  (if (gx#stx-pair/null? _hd2541425451_)
                                      (if (fx>= (gx#stx-length _hd2541425451_)
                                                '0)
                                          (let ((_g31025_
                                                 (gx#syntax-split-splice
                                                  _hd2541425451_
                                                  '0)))
                                            (begin
                                              (let ((_g31026_
                                                     (values-count _g31025_)))
                                                (if (not (fx= _g31026_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31026_)))
                                              (let ((_target2541625457_
                                                     (values-ref _g31025_ 0))
                                                    (_tl2541825460_
                                                     (values-ref _g31025_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2541825460_)
                                                    (letrec ((_loop2541925463_
                                                              (lambda (_hd2541725467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2542325470_)
                        (if (gx#stx-pair? _hd2541725467_)
                            (let ((_e2542025473_ (gx#syntax-e _hd2541725467_)))
                              (let ((_lp-hd2542125477_ (##car _e2542025473_))
                                    (_lp-tl2542225480_ (##cdr _e2542025473_)))
                                (_loop2541925463_
                                 _lp-tl2542225480_
                                 (cons _lp-hd2542125477_ _e2542325470_))))
                            (let ((_e2542425483_ (reverse _e2542325470_)))
                              ((lambda (_L25487_ _L25489_)
                                 (if (gx#stx-list? _L25487_)
                                     (let* ((_g2550725524_
                                             (lambda (_g2550825520_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2550825520_)))
                                            (_g2550625630_
                                             (lambda (_g2550825528_)
                                               (if (gx#stx-pair/null?
                                                    _g2550825528_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2550825528_)
                                                             '0)
                                                       (let ((_g31027_
                                                              (gx#syntax-split-splice
                                                               _g2550825528_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31027_)))
                     (if (not (fx= _g31028_ 2))
                         (error "Context expects 2 values" _g31028_)))
                   (let ((_target2551025531_ (values-ref _g31027_ 0))
                         (_tl2551225534_ (values-ref _g31027_ 1)))
                     (if (gx#stx-null? _tl2551225534_)
                         (letrec ((_loop2551325537_
                                   (lambda (_hd2551125541_ _$e2551725544_)
                                     (if (gx#stx-pair? _hd2551125541_)
                                         (let ((_e2551425547_
                                                (gx#syntax-e _hd2551125541_)))
                                           (let ((_lp-hd2551525551_
                                                  (##car _e2551425547_))
                                                 (_lp-tl2551625554_
                                                  (##cdr _e2551425547_)))
                                             (_loop2551325537_
                                              _lp-tl2551625554_
                                              (cons _lp-hd2551525551_
                                                    _$e2551725544_))))
                                         (let ((_$e2551825557_
                                                (reverse _$e2551725544_)))
                                           ((lambda (_L25561_)
                                              (let ()
                                                (let* ((_g2557725585_
                                                        (lambda (_g2557825581_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2557825581_)))
                                                       (_g2557625618_
                                                        (lambda (_g2557825589_)
                                                          ((lambda (_L25592_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25489_
                                        _L25561_)
                                       (foldr (lambda (_g2560625610_
                                                       _g2560725613_
                                                       _g2560825615_)
                                                (cons (cons _g2560725613_
                                                            (cons _g2560625610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2560825615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25489_
                                              _L25561_))
                                     (cons _L25592_ '()))))))
                   _g2557825589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557625618_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25403_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2562125624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2562225627_)
                       (cons _g2562125624_ _g2562225627_))
                     '()
                     _L25561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25487_)))))
                                            _$e2551825557_))))))
                           (_loop2551325537_ _target2551025531_ '()))
                         (_g2550725524_ _g2550825528_)))))
               (_g2550725524_ _g2550825528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2550725524_
                                                    _g2550825528_)))))
                                       (_g2550625630_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2563325636_
                                                           _g2563425639_)
                                                    (cons _g2563325636_
                                                          _g2563425639_))
                                                  '()
                                                  _L25489_)))))
                                     (_g2540625430_ _g2540725434_)))
                               _tl2541525454_
                               _e2542425483_))))))
              (_loop2541925463_ _target2541625457_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2540625430_
                                                     _g2540725434_)))))
                                          (_g2540625430_ _g2540725434_))
                                      (_g2540625430_ _g2540725434_))))
                              (_g2540625430_ _g2540725434_))))
                      (_g2540625430_ _g2540725434_)))))
          (_g2540525642_ _stx25403_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25648_)
        (let* ((_g2565425737_
                (lambda (_g2565525733_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2565525733_)))
               (_g2565325898_
                (lambda (_g2565525741_)
                  (if (gx#stx-pair? _g2565525741_)
                      (let ((_e2570025744_ (gx#syntax-e _g2565525741_)))
                        (let ((_hd2570125748_ (##car _e2570025744_))
                              (_tl2570225751_ (##cdr _e2570025744_)))
                          (if (gx#stx-pair? _tl2570225751_)
                              (let ((_e2570325754_
                                     (gx#syntax-e _tl2570225751_)))
                                (let ((_hd2570425758_ (##car _e2570325754_))
                                      (_tl2570525761_ (##cdr _e2570325754_)))
                                  (if (gx#stx-pair/null? _hd2570425758_)
                                      (if (fx>= (gx#stx-length _hd2570425758_)
                                                '0)
                                          (let ((_g31029_
                                                 (gx#syntax-split-splice
                                                  _hd2570425758_
                                                  '0)))
                                            (begin
                                              (let ((_g31030_
                                                     (values-count _g31029_)))
                                                (if (not (fx= _g31030_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31030_)))
                                              (let ((_target2570625764_
                                                     (values-ref _g31029_ 0))
                                                    (_tl2570825767_
                                                     (values-ref _g31029_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2570825767_)
                                                    (letrec ((_loop2570925770_
                                                              (lambda (_hd2570725774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2571325777_
                               _hd2571425779_)
                        (if (gx#stx-pair? _hd2570725774_)
                            (let ((_e2571025782_ (gx#syntax-e _hd2570725774_)))
                              (let ((_lp-hd2571125786_ (##car _e2571025782_))
                                    (_lp-tl2571225789_ (##cdr _e2571025782_)))
                                (if (gx#stx-pair? _lp-hd2571125786_)
                                    (let ((_e2571725792_
                                           (gx#syntax-e _lp-hd2571125786_)))
                                      (let ((_hd2571825796_
                                             (##car _e2571725792_))
                                            (_tl2571925799_
                                             (##cdr _e2571725792_)))
                                        (if (gx#stx-pair? _tl2571925799_)
                                            (let ((_e2572025802_
                                                   (gx#syntax-e
                                                    _tl2571925799_)))
                                              (let ((_hd2572125806_
                                                     (##car _e2572025802_))
                                                    (_tl2572225809_
                                                     (##cdr _e2572025802_)))
                                                (if (gx#stx-null?
                                                     _tl2572225809_)
                                                    (_loop2570925770_
                                                     _lp-tl2571225789_
                                                     (cons _hd2572125806_
                                                           _expr2571325777_)
                                                     (cons _hd2571825796_
                                                           _hd2571425779_))
                                                    (_g2565425737_
                                                     _g2565525741_))))
                                            (_g2565425737_ _g2565525741_))))
                                    (_g2565425737_ _g2565525741_))))
                            (let ((_expr2571525812_ (reverse _expr2571325777_))
                                  (_hd2571625815_ (reverse _hd2571425779_)))
                              (if (gx#stx-pair/null? _tl2570525761_)
                                  (if (fx>= (gx#stx-length _tl2570525761_) '0)
                                      (let ((_g31031_
                                             (gx#syntax-split-splice
                                              _tl2570525761_
                                              '0)))
                                        (begin
                                          (let ((_g31032_
                                                 (values-count _g31031_)))
                                            (if (not (fx= _g31032_ 2))
                                                (error "Context expects 2 values"
                                                       _g31032_)))
                                          (let ((_target2572325818_
                                                 (values-ref _g31031_ 0))
                                                (_tl2572525821_
                                                 (values-ref _g31031_ 1)))
                                            (if (gx#stx-null? _tl2572525821_)
                                                (letrec ((_loop2572625824_
                                                          (lambda (_hd2572425828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2573025831_)
                    (if (gx#stx-pair? _hd2572425828_)
                        (let ((_e2572725834_ (gx#syntax-e _hd2572425828_)))
                          (let ((_lp-hd2572825838_ (##car _e2572725834_))
                                (_lp-tl2572925841_ (##cdr _e2572725834_)))
                            (_loop2572625824_
                             _lp-tl2572925841_
                             (cons _lp-hd2572825838_ _body2573025831_))))
                        (let ((_body2573125844_ (reverse _body2573025831_)))
                          ((lambda (_L25848_ _L25850_ _L25851_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2587325880_
                                                           _g2587425883_)
                                                    (cons _g2587325880_
                                                          _g2587425883_))
                                                  '()
                                                  _L25850_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2587525886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2587625889_)
                        (cons _g2587525886_ _g2587625889_))
                      '()
                      _L25851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2587725892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2587825895_)
                        (cons _g2587725892_ _g2587825895_))
                      '()
                      _L25848_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2573125844_
                           _expr2571525812_
                           _hd2571625815_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2572625824_
                                                   _target2572325818_
                                                   '()))
                                                (_g2565425737_
                                                 _g2565525741_)))))
                                      (_g2565425737_ _g2565525741_))
                                  (_g2565425737_ _g2565525741_)))))))
              (_loop2570925770_ _target2570625764_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2565425737_
                                                     _g2565525741_)))))
                                          (_g2565425737_ _g2565525741_))
                                      (_g2565425737_ _g2565525741_))))
                              (_g2565425737_ _g2565525741_))))
                      (_g2565425737_ _g2565525741_))))
               (_g2565226010_
                (lambda (_g2565525902_)
                  (if (gx#stx-pair? _g2565525902_)
                      (let ((_e2567625905_ (gx#syntax-e _g2565525902_)))
                        (let ((_hd2567725909_ (##car _e2567625905_))
                              (_tl2567825912_ (##cdr _e2567625905_)))
                          (if (gx#stx-pair? _tl2567825912_)
                              (let ((_e2567925915_
                                     (gx#syntax-e _tl2567825912_)))
                                (let ((_hd2568025919_ (##car _e2567925915_))
                                      (_tl2568125922_ (##cdr _e2567925915_)))
                                  (if (gx#stx-pair? _hd2568025919_)
                                      (let ((_e2568225925_
                                             (gx#syntax-e _hd2568025919_)))
                                        (let ((_hd2568325929_
                                               (##car _e2568225925_))
                                              (_tl2568425932_
                                               (##cdr _e2568225925_)))
                                          (if (gx#stx-pair? _tl2568425932_)
                                              (let ((_e2568525935_
                                                     (gx#syntax-e
                                                      _tl2568425932_)))
                                                (let ((_hd2568625939_
                                                       (##car _e2568525935_))
                                                      (_tl2568725942_
                                                       (##cdr _e2568525935_)))
                                                  (if (gx#stx-null?
                                                       _tl2568725942_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2568125922_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2568125922_)
                            '0)
                      (let ((_g31033_
                             (gx#syntax-split-splice _tl2568125922_ '0)))
                        (begin
                          (let ((_g31034_ (values-count _g31033_)))
                            (if (not (fx= _g31034_ 2))
                                (error "Context expects 2 values" _g31034_)))
                          (let ((_target2568825945_ (values-ref _g31033_ 0))
                                (_tl2569025948_ (values-ref _g31033_ 1)))
                            (if (gx#stx-null? _tl2569025948_)
                                (letrec ((_loop2569125951_
                                          (lambda (_hd2568925955_
                                                   _body2569525958_)
                                            (if (gx#stx-pair? _hd2568925955_)
                                                (let ((_e2569225961_
                                                       (gx#syntax-e
                                                        _hd2568925955_)))
                                                  (let ((_lp-hd2569325965_
                                                         (##car _e2569225961_))
                                                        (_lp-tl2569425968_
                                                         (##cdr _e2569225961_)))
                                                    (_loop2569125951_
                                                     _lp-tl2569425968_
                                                     (cons _lp-hd2569325965_
                                                           _body2569525958_))))
                                                (let ((_body2569625971_
                                                       (reverse _body2569525958_)))
                                                  ((lambda (_L25975_
                                                            _L25977_
                                                            _L25978_
                                                            _L25979_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L25978_)
                                                         (cons _L25979_
                                                               (cons (cons (cons _L25978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L25977_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2600126004_ _g2600226007_)
                                        (cons _g2600126004_ _g2600226007_))
                                      '()
                                      _L25975_))))
                 (_g2565325898_ _g2565525902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2569625971_
                                                   _hd2568625939_
                                                   _hd2568325929_
                                                   _hd2567725909_))))))
                                  (_loop2569125951_ _target2568825945_ '()))
                                (_g2565325898_ _g2565525902_)))))
                      (_g2565325898_ _g2565525902_))
                  (_g2565325898_ _g2565525902_))
              (_g2565325898_ _g2565525902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2565325898_ _g2565525902_))))
                                      (_g2565325898_ _g2565525902_))))
                              (_g2565325898_ _g2565525902_))))
                      (_g2565325898_ _g2565525902_))))
               (_g2565126092_
                (lambda (_g2565526014_)
                  (if (gx#stx-pair? _g2565526014_)
                      (let ((_e2565726017_ (gx#syntax-e _g2565526014_)))
                        (let ((_hd2565826021_ (##car _e2565726017_))
                              (_tl2565926024_ (##cdr _e2565726017_)))
                          (if (gx#stx-pair? _tl2565926024_)
                              (let ((_e2566026027_
                                     (gx#syntax-e _tl2565926024_)))
                                (let ((_hd2566126031_ (##car _e2566026027_))
                                      (_tl2566226034_ (##cdr _e2566026027_)))
                                  (if (gx#stx-null? _hd2566126031_)
                                      (if (gx#stx-pair/null? _tl2566226034_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2566226034_)
                                                    '0)
                                              (let ((_g31035_
                                                     (gx#syntax-split-splice
                                                      _tl2566226034_
                                                      '0)))
                                                (begin
                                                  (let ((_g31036_
                                                         (values-count
                                                          _g31035_)))
                                                    (if (not (fx= _g31036_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31036_)))
                                                  (let ((_target2566326037_
                                                         (values-ref
                                                          _g31035_
                                                          0))
                                                        (_tl2566526040_
                                                         (values-ref
                                                          _g31035_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2566526040_)
                                                        (letrec ((_loop2566626043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2566426047_ _body2567026050_)
                            (if (gx#stx-pair? _hd2566426047_)
                                (let ((_e2566726053_
                                       (gx#syntax-e _hd2566426047_)))
                                  (let ((_lp-hd2566826057_
                                         (##car _e2566726053_))
                                        (_lp-tl2566926060_
                                         (##cdr _e2566726053_)))
                                    (_loop2566626043_
                                     _lp-tl2566926060_
                                     (cons _lp-hd2566826057_
                                           _body2567026050_))))
                                (let ((_body2567126063_
                                       (reverse _body2567026050_)))
                                  ((lambda (_L26067_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2608326086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2608426089_)
                    (cons _g2608326086_ _g2608426089_))
                  '()
                  _L26067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2567126063_))))))
                  (_loop2566626043_ _target2566326037_ '()))
                (_g2565226010_ _g2565526014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2565226010_ _g2565526014_))
                                          (_g2565226010_ _g2565526014_))
                                      (_g2565226010_ _g2565526014_))))
                              (_g2565226010_ _g2565526014_))))
                      (_g2565226010_ _g2565526014_)))))
          (_g2565126092_ _$stx25648_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx26100_)
        (let* ((_g2610526157_
                (lambda (_g2610626153_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2610626153_)))
               (_g2610426240_
                (lambda (_g2610626161_)
                  (if (gx#stx-pair? _g2610626161_)
                      (let ((_e2613726164_ (gx#syntax-e _g2610626161_)))
                        (let ((_hd2613826168_ (##car _e2613726164_))
                              (_tl2613926171_ (##cdr _e2613726164_)))
                          (if (gx#stx-pair? _tl2613926171_)
                              (let ((_e2614026174_
                                     (gx#syntax-e _tl2613926171_)))
                                (let ((_hd2614126178_ (##car _e2614026174_))
                                      (_tl2614226181_ (##cdr _e2614026174_)))
                                  (if (gx#stx-null? _hd2614126178_)
                                      (if (gx#stx-pair/null? _tl2614226181_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2614226181_)
                                                    '0)
                                              (let ((_g31037_
                                                     (gx#syntax-split-splice
                                                      _tl2614226181_
                                                      '0)))
                                                (begin
                                                  (let ((_g31038_
                                                         (values-count
                                                          _g31037_)))
                                                    (if (not (fx= _g31038_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31038_)))
                                                  (let ((_target2614326184_
                                                         (values-ref
                                                          _g31037_
                                                          0))
                                                        (_tl2614526187_
                                                         (values-ref
                                                          _g31037_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2614526187_)
                                                        (letrec ((_loop2614626190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2614426194_ _body2615026197_)
                            (if (gx#stx-pair? _hd2614426194_)
                                (let ((_e2614726200_
                                       (gx#syntax-e _hd2614426194_)))
                                  (let ((_lp-hd2614826204_
                                         (##car _e2614726200_))
                                        (_lp-tl2614926207_
                                         (##cdr _e2614726200_)))
                                    (_loop2614626190_
                                     _lp-tl2614926207_
                                     (cons _lp-hd2614826204_
                                           _body2615026197_))))
                                (let ((_body2615126210_
                                       (reverse _body2615026197_)))
                                  ((lambda (_L26214_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2623126234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2623226237_)
                    (cons _g2623126234_ _g2623226237_))
                  '()
                  _L26214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2615126210_))))))
                  (_loop2614626190_ _target2614326184_ '()))
                (_g2610526157_ _g2610626161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2610526157_ _g2610626161_))
                                          (_g2610526157_ _g2610626161_))
                                      (_g2610526157_ _g2610626161_))))
                              (_g2610526157_ _g2610626161_))))
                      (_g2610526157_ _g2610626161_))))
               (_g2610326366_
                (lambda (_g2610626244_)
                  (if (gx#stx-pair? _g2610626244_)
                      (let ((_e2611226247_ (gx#syntax-e _g2610626244_)))
                        (let ((_hd2611326251_ (##car _e2611226247_))
                              (_tl2611426254_ (##cdr _e2611226247_)))
                          (if (gx#stx-pair? _tl2611426254_)
                              (let ((_e2611526257_
                                     (gx#syntax-e _tl2611426254_)))
                                (let ((_hd2611626261_ (##car _e2611526257_))
                                      (_tl2611726264_ (##cdr _e2611526257_)))
                                  (if (gx#stx-pair? _hd2611626261_)
                                      (let ((_e2611826267_
                                             (gx#syntax-e _hd2611626261_)))
                                        (let ((_hd2611926271_
                                               (##car _e2611826267_))
                                              (_tl2612026274_
                                               (##cdr _e2611826267_)))
                                          (if (gx#stx-pair? _hd2611926271_)
                                              (let ((_e2612126277_
                                                     (gx#syntax-e
                                                      _hd2611926271_)))
                                                (let ((_hd2612226281_
                                                       (##car _e2612126277_))
                                                      (_tl2612326284_
                                                       (##cdr _e2612126277_)))
                                                  (if (gx#stx-pair?
                                                       _tl2612326284_)
                                                      (let ((_e2612426287_
                                                             (gx#syntax-e
                                                              _tl2612326284_)))
                                                        (let ((_hd2612526291_
                                                               (##car _e2612426287_))
                                                              (_tl2612626294_
                                                               (##cdr _e2612426287_)))
                                                          (if (gx#stx-null?
                                                               _tl2612626294_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2611726264_)
                          (if (fx>= (gx#stx-length _tl2611726264_) '0)
                              (let ((_g31039_
                                     (gx#syntax-split-splice
                                      _tl2611726264_
                                      '0)))
                                (begin
                                  (let ((_g31040_ (values-count _g31039_)))
                                    (if (not (fx= _g31040_ 2))
                                        (error "Context expects 2 values"
                                               _g31040_)))
                                  (let ((_target2612726297_
                                         (values-ref _g31039_ 0))
                                        (_tl2612926300_
                                         (values-ref _g31039_ 1)))
                                    (if (gx#stx-null? _tl2612926300_)
                                        (letrec ((_loop2613026303_
                                                  (lambda (_hd2612826307_
                                                           _body2613426310_)
                                                    (if (gx#stx-pair?
                                                         _hd2612826307_)
                                                        (let ((_e2613126313_
                                                               (gx#syntax-e
                                                                _hd2612826307_)))
                                                          (let ((_lp-hd2613226317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2613126313_))
                        (_lp-tl2613326320_ (##cdr _e2613126313_)))
                    (_loop2613026303_
                     _lp-tl2613326320_
                     (cons _lp-hd2613226317_ _body2613426310_))))
                (let ((_body2613526323_ (reverse _body2613426310_)))
                  ((lambda (_L26327_ _L26329_ _L26330_ _L26331_ _L26332_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26331_ (cons _L26330_ '())) '())
                                 (cons (cons _L26332_
                                             (cons _L26329_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2635726360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2635826363_)
                      (cons _g2635726360_ _g2635826363_))
                    '()
                    _L26327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2613526323_
                   _tl2612026274_
                   _hd2612526291_
                   _hd2612226281_
                   _hd2611326251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2613026303_
                                           _target2612726297_
                                           '()))
                                        (_g2610426240_ _g2610626244_)))))
                              (_g2610426240_ _g2610626244_))
                          (_g2610426240_ _g2610626244_))
                      (_g2610426240_ _g2610626244_))))
              (_g2610426240_ _g2610626244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2610426240_ _g2610626244_))))
                                      (_g2610426240_ _g2610626244_))))
                              (_g2610426240_ _g2610626244_))))
                      (_g2610426240_ _g2610626244_)))))
          (_g2610326366_ _$stx26100_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26372_)
        (let* ((_g2638326527_
                (lambda (_g2638426523_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2638426523_)))
               (_g2638226622_
                (lambda (_g2638426531_)
                  (if (gx#stx-pair? _g2638426531_)
                      (let ((_e2650426534_ (gx#syntax-e _g2638426531_)))
                        (let ((_hd2650526538_ (##car _e2650426534_))
                              (_tl2650626541_ (##cdr _e2650426534_)))
                          (if (gx#stx-pair? _tl2650626541_)
                              (let ((_e2650726544_
                                     (gx#syntax-e _tl2650626541_)))
                                (let ((_hd2650826548_ (##car _e2650726544_))
                                      (_tl2650926551_ (##cdr _e2650726544_)))
                                  (if (gx#stx-pair? _tl2650926551_)
                                      (let ((_e2651026554_
                                             (gx#syntax-e _tl2650926551_)))
                                        (let ((_hd2651126558_
                                               (##car _e2651026554_))
                                              (_tl2651226561_
                                               (##cdr _e2651026554_)))
                                          (if (gx#stx-datum? _hd2651126558_)
                                              (if (equal? (gx#stx-e
                                                           _hd2651126558_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2651226561_)
                                                      (let ((_e2651326564_
                                                             (gx#syntax-e
                                                              _tl2651226561_)))
                                                        (let ((_hd2651426568_
                                                               (##car _e2651326564_))
                                                              (_tl2651526571_
                                                               (##cdr _e2651326564_)))
                                                          (if (gx#stx-pair?
                                                               _tl2651526571_)
                                                              (let ((_e2651626574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2651526571_)))
                        (let ((_hd2651726578_ (##car _e2651626574_))
                              (_tl2651826581_ (##cdr _e2651626574_)))
                          (if (gx#identifier? _hd2651726578_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31041_|
                                   _hd2651726578_)
                                  (if (gx#stx-pair? _tl2651826581_)
                                      (let ((_e2651926584_
                                             (gx#syntax-e _tl2651826581_)))
                                        (let ((_hd2652026588_
                                               (##car _e2651926584_))
                                              (_tl2652126591_
                                               (##cdr _e2651926584_)))
                                          (if (gx#stx-null? _tl2652126591_)
                                              ((lambda (_L26594_
                                                        _L26596_
                                                        _L26597_
                                                        _L26598_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26598_
                                             (cons _L26597_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26594_
                                                   (cons (cons _L26596_
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
                                               _hd2652026588_
                                               _hd2651426568_
                                               _hd2650826548_
                                               _hd2650526538_)
                                              (_g2638326527_ _g2638426531_))))
                                      (_g2638326527_ _g2638426531_))
                                  (_g2638326527_ _g2638426531_))
                              (_g2638326527_ _g2638426531_))))
                      (_g2638326527_ _g2638426531_))))
              (_g2638326527_ _g2638426531_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638326527_
                                                   _g2638426531_))
                                              (_g2638326527_ _g2638426531_))))
                                      (_g2638326527_ _g2638426531_))))
                              (_g2638326527_ _g2638426531_))))
                      (_g2638326527_ _g2638426531_))))
               (_g2638126690_
                (lambda (_g2638426626_)
                  (if (gx#stx-pair? _g2638426626_)
                      (let ((_e2648826629_ (gx#syntax-e _g2638426626_)))
                        (let ((_hd2648926633_ (##car _e2648826629_))
                              (_tl2649026636_ (##cdr _e2648826629_)))
                          (if (gx#stx-pair? _tl2649026636_)
                              (let ((_e2649126639_
                                     (gx#syntax-e _tl2649026636_)))
                                (let ((_hd2649226643_ (##car _e2649126639_))
                                      (_tl2649326646_ (##cdr _e2649126639_)))
                                  (if (gx#stx-pair? _tl2649326646_)
                                      (let ((_e2649426649_
                                             (gx#syntax-e _tl2649326646_)))
                                        (let ((_hd2649526653_
                                               (##car _e2649426649_))
                                              (_tl2649626656_
                                               (##cdr _e2649426649_)))
                                          (if (gx#stx-datum? _hd2649526653_)
                                              (if (equal? (gx#stx-e
                                                           _hd2649526653_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2649626656_)
                                                      (let ((_e2649726659_
                                                             (gx#syntax-e
                                                              _tl2649626656_)))
                                                        (let ((_hd2649826663_
                                                               (##car _e2649726659_))
                                                              (_tl2649926666_
                                                               (##cdr _e2649726659_)))
                                                          (if (gx#stx-null?
                                                               _tl2649926666_)
                                                              ((lambda (_L26669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26671_
                                _L26672_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26671_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26669_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2649826663_
                       _hd2649226643_
                       _hd2648926633_)
                      (_g2638226622_ _g2638426626_))))
              (_g2638226622_ _g2638426626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638226622_
                                                   _g2638426626_))
                                              (_g2638226622_ _g2638426626_))))
                                      (_g2638226622_ _g2638426626_))))
                              (_g2638226622_ _g2638426626_))))
                      (_g2638226622_ _g2638426626_))))
               (_g2638026758_
                (lambda (_g2638426694_)
                  (if (gx#stx-pair? _g2638426694_)
                      (let ((_e2647326697_ (gx#syntax-e _g2638426694_)))
                        (let ((_hd2647426701_ (##car _e2647326697_))
                              (_tl2647526704_ (##cdr _e2647326697_)))
                          (if (gx#stx-pair? _tl2647526704_)
                              (let ((_e2647626707_
                                     (gx#syntax-e _tl2647526704_)))
                                (let ((_hd2647726711_ (##car _e2647626707_))
                                      (_tl2647826714_ (##cdr _e2647626707_)))
                                  (if (gx#stx-pair? _tl2647826714_)
                                      (let ((_e2647926717_
                                             (gx#syntax-e _tl2647826714_)))
                                        (let ((_hd2648026721_
                                               (##car _e2647926717_))
                                              (_tl2648126724_
                                               (##cdr _e2647926717_)))
                                          (if (gx#identifier? _hd2648026721_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31042_|
                                                   _hd2648026721_)
                                                  (if (gx#stx-pair?
                                                       _tl2648126724_)
                                                      (let ((_e2648226727_
                                                             (gx#syntax-e
                                                              _tl2648126724_)))
                                                        (let ((_hd2648326731_
                                                               (##car _e2648226727_))
                                                              (_tl2648426734_
                                                               (##cdr _e2648226727_)))
                                                          (if (gx#stx-null?
                                                               _tl2648426734_)
                                                              ((lambda (_L26737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26739_
                                _L26740_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L26740_
                                                             (cons _L26739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L26737_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2648326731_
                       _hd2647726711_
                       _hd2647426701_)
                      (_g2638126690_ _g2638426694_))))
              (_g2638126690_ _g2638426694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638126690_
                                                   _g2638426694_))
                                              (_g2638126690_ _g2638426694_))))
                                      (_g2638126690_ _g2638426694_))))
                              (_g2638126690_ _g2638426694_))))
                      (_g2638126690_ _g2638426694_))))
               (_g2637926800_
                (lambda (_g2638426762_)
                  (if (gx#stx-pair? _g2638426762_)
                      (let ((_e2646426765_ (gx#syntax-e _g2638426762_)))
                        (let ((_hd2646526769_ (##car _e2646426765_))
                              (_tl2646626772_ (##cdr _e2646426765_)))
                          (if (gx#stx-pair? _tl2646626772_)
                              (let ((_e2646726775_
                                     (gx#syntax-e _tl2646626772_)))
                                (let ((_hd2646826779_ (##car _e2646726775_))
                                      (_tl2646926782_ (##cdr _e2646726775_)))
                                  (if (gx#stx-null? _tl2646926782_)
                                      ((lambda (_L26785_ _L26787_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L26787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L26785_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2646826779_
                                       _hd2646526769_)
                                      (_g2638026758_ _g2638426762_))))
                              (_g2638026758_ _g2638426762_))))
                      (_g2638026758_ _g2638426762_))))
               (_g2637826854_
                (lambda (_g2638426804_)
                  (if (gx#stx-pair? _g2638426804_)
                      (let ((_e2645326807_ (gx#syntax-e _g2638426804_)))
                        (let ((_hd2645426811_ (##car _e2645326807_))
                              (_tl2645526814_ (##cdr _e2645326807_)))
                          (if (gx#stx-pair? _tl2645526814_)
                              (let ((_e2645626817_
                                     (gx#syntax-e _tl2645526814_)))
                                (let ((_hd2645726821_ (##car _e2645626817_))
                                      (_tl2645826824_ (##cdr _e2645626817_)))
                                  (if (gx#stx-pair? _tl2645826824_)
                                      (let ((_e2645926827_
                                             (gx#syntax-e _tl2645826824_)))
                                        (let ((_hd2646026831_
                                               (##car _e2645926827_))
                                              (_tl2646126834_
                                               (##cdr _e2645926827_)))
                                          (if (gx#stx-null? _tl2646126834_)
                                              ((lambda (_L26837_ _L26839_)
                                                 (cons _L26839_
                                                       (cons _L26837_ '())))
                                               _hd2646026831_
                                               _hd2645726821_)
                                              (_g2637926800_ _g2638426804_))))
                                      (_g2637926800_ _g2638426804_))))
                              (_g2637926800_ _g2638426804_))))
                      (_g2637926800_ _g2638426804_))))
               (_g2637726934_
                (lambda (_g2638426858_)
                  (if (gx#stx-pair? _g2638426858_)
                      (let ((_e2643626861_ (gx#syntax-e _g2638426858_)))
                        (let ((_hd2643726865_ (##car _e2643626861_))
                              (_tl2643826868_ (##cdr _e2643626861_)))
                          (if (gx#stx-pair? _tl2643826868_)
                              (let ((_e2643926871_
                                     (gx#syntax-e _tl2643826868_)))
                                (let ((_hd2644026875_ (##car _e2643926871_))
                                      (_tl2644126878_ (##cdr _e2643926871_)))
                                  (if (gx#stx-pair? _hd2644026875_)
                                      (let ((_e2644226881_
                                             (gx#syntax-e _hd2644026875_)))
                                        (let ((_hd2644326885_
                                               (##car _e2644226881_))
                                              (_tl2644426888_
                                               (##cdr _e2644226881_)))
                                          (if (gx#identifier? _hd2644326885_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31043_|
                                                   _hd2644326885_)
                                                  (if (gx#stx-pair?
                                                       _tl2644426888_)
                                                      (let ((_e2644526891_
                                                             (gx#syntax-e
                                                              _tl2644426888_)))
                                                        (let ((_hd2644626895_
                                                               (##car _e2644526891_))
                                                              (_tl2644726898_
                                                               (##cdr _e2644526891_)))
                                                          (if (gx#stx-null?
                                                               _tl2644726898_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2644126878_)
                          (let ((_e2644826901_ (gx#syntax-e _tl2644126878_)))
                            (let ((_hd2644926905_ (##car _e2644826901_))
                                  (_tl2645026908_ (##cdr _e2644826901_)))
                              (if (gx#stx-null? _tl2645026908_)
                                  ((lambda (_L26911_ _L26913_ _L26914_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L26914_
                                                       (cons _L26913_
                                                             (cons _L26911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2644926905_
                                   _hd2644626895_
                                   _hd2643726865_)
                                  (_g2637826854_ _g2638426858_))))
                          (_g2637826854_ _g2638426858_))
                      (_g2637826854_ _g2638426858_))))
              (_g2637826854_ _g2638426858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637826854_
                                                   _g2638426858_))
                                              (_g2637826854_ _g2638426858_))))
                                      (_g2637826854_ _g2638426858_))))
                              (_g2637826854_ _g2638426858_))))
                      (_g2637826854_ _g2638426858_))))
               (_g2637627044_
                (lambda (_g2638426938_)
                  (if (gx#stx-pair? _g2638426938_)
                      (let ((_e2641226941_ (gx#syntax-e _g2638426938_)))
                        (let ((_hd2641326945_ (##car _e2641226941_))
                              (_tl2641426948_ (##cdr _e2641226941_)))
                          (if (gx#stx-pair? _tl2641426948_)
                              (let ((_e2641526951_
                                     (gx#syntax-e _tl2641426948_)))
                                (let ((_hd2641626955_ (##car _e2641526951_))
                                      (_tl2641726958_ (##cdr _e2641526951_)))
                                  (if (gx#stx-pair? _hd2641626955_)
                                      (let ((_e2641826961_
                                             (gx#syntax-e _hd2641626955_)))
                                        (let ((_hd2641926965_
                                               (##car _e2641826961_))
                                              (_tl2642026968_
                                               (##cdr _e2641826961_)))
                                          (if (gx#identifier? _hd2641926965_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31044_|
                                                   _hd2641926965_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2642026968_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2642026968_)
                        '0)
                  (let ((_g31045_ (gx#syntax-split-splice _tl2642026968_ '0)))
                    (begin
                      (let ((_g31046_ (values-count _g31045_)))
                        (if (not (fx= _g31046_ 2))
                            (error "Context expects 2 values" _g31046_)))
                      (let ((_target2642126971_ (values-ref _g31045_ 0))
                            (_tl2642326974_ (values-ref _g31045_ 1)))
                        (if (gx#stx-null? _tl2642326974_)
                            (letrec ((_loop2642426977_
                                      (lambda (_hd2642226981_ _pred2642826984_)
                                        (if (gx#stx-pair? _hd2642226981_)
                                            (let ((_e2642526987_
                                                   (gx#syntax-e
                                                    _hd2642226981_)))
                                              (let ((_lp-hd2642626991_
                                                     (##car _e2642526987_))
                                                    (_lp-tl2642726994_
                                                     (##cdr _e2642526987_)))
                                                (_loop2642426977_
                                                 _lp-tl2642726994_
                                                 (cons _lp-hd2642626991_
                                                       _pred2642826984_))))
                                            (let ((_pred2642926997_
                                                   (reverse _pred2642826984_)))
                                              (if (gx#stx-pair? _tl2641726958_)
                                                  (let ((_e2643027001_
                                                         (gx#syntax-e
                                                          _tl2641726958_)))
                                                    (let ((_hd2643127005_
                                                           (##car _e2643027001_))
                                                          (_tl2643227008_
                                                           (##cdr _e2643027001_)))
                                                      (if (gx#stx-null?
                                                           _tl2643227008_)
                                                          ((lambda (_L27011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27013_
                            _L27014_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2703527038_ _g2703627041_)
                                      (cons (cons _L27014_
                                                  (cons _g2703527038_
                                                        (cons _L27011_ '())))
                                            _g2703627041_))
                                    '()
                                    _L27013_))))
                   _hd2643127005_
                   _pred2642926997_
                   _hd2641326945_)
                  (_g2637726934_ _g2638426938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637726934_
                                                   _g2638426938_)))))))
                              (_loop2642426977_ _target2642126971_ '()))
                            (_g2637726934_ _g2638426938_)))))
                  (_g2637726934_ _g2638426938_))
              (_g2637726934_ _g2638426938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637726934_
                                                   _g2638426938_))
                                              (_g2637726934_ _g2638426938_))))
                                      (_g2637726934_ _g2638426938_))))
                              (_g2637726934_ _g2638426938_))))
                      (_g2637726934_ _g2638426938_))))
               (_g2637527154_
                (lambda (_g2638427048_)
                  (if (gx#stx-pair? _g2638427048_)
                      (let ((_e2638827051_ (gx#syntax-e _g2638427048_)))
                        (let ((_hd2638927055_ (##car _e2638827051_))
                              (_tl2639027058_ (##cdr _e2638827051_)))
                          (if (gx#stx-pair? _tl2639027058_)
                              (let ((_e2639127061_
                                     (gx#syntax-e _tl2639027058_)))
                                (let ((_hd2639227065_ (##car _e2639127061_))
                                      (_tl2639327068_ (##cdr _e2639127061_)))
                                  (if (gx#stx-pair? _hd2639227065_)
                                      (let ((_e2639427071_
                                             (gx#syntax-e _hd2639227065_)))
                                        (let ((_hd2639527075_
                                               (##car _e2639427071_))
                                              (_tl2639627078_
                                               (##cdr _e2639427071_)))
                                          (if (gx#identifier? _hd2639527075_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31047_|
                                                   _hd2639527075_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2639627078_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2639627078_)
                        '0)
                  (let ((_g31048_ (gx#syntax-split-splice _tl2639627078_ '0)))
                    (begin
                      (let ((_g31049_ (values-count _g31048_)))
                        (if (not (fx= _g31049_ 2))
                            (error "Context expects 2 values" _g31049_)))
                      (let ((_target2639727081_ (values-ref _g31048_ 0))
                            (_tl2639927084_ (values-ref _g31048_ 1)))
                        (if (gx#stx-null? _tl2639927084_)
                            (letrec ((_loop2640027087_
                                      (lambda (_hd2639827091_ _pred2640427094_)
                                        (if (gx#stx-pair? _hd2639827091_)
                                            (let ((_e2640127097_
                                                   (gx#syntax-e
                                                    _hd2639827091_)))
                                              (let ((_lp-hd2640227101_
                                                     (##car _e2640127097_))
                                                    (_lp-tl2640327104_
                                                     (##cdr _e2640127097_)))
                                                (_loop2640027087_
                                                 _lp-tl2640327104_
                                                 (cons _lp-hd2640227101_
                                                       _pred2640427094_))))
                                            (let ((_pred2640527107_
                                                   (reverse _pred2640427094_)))
                                              (if (gx#stx-pair? _tl2639327068_)
                                                  (let ((_e2640627111_
                                                         (gx#syntax-e
                                                          _tl2639327068_)))
                                                    (let ((_hd2640727115_
                                                           (##car _e2640627111_))
                                                          (_tl2640827118_
                                                           (##cdr _e2640627111_)))
                                                      (if (gx#stx-null?
                                                           _tl2640827118_)
                                                          ((lambda (_L27121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27123_
                            _L27124_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2714527148_ _g2714627151_)
                                      (cons (cons _L27124_
                                                  (cons _g2714527148_
                                                        (cons _L27121_ '())))
                                            _g2714627151_))
                                    '()
                                    _L27123_))))
                   _hd2640727115_
                   _pred2640527107_
                   _hd2638927055_)
                  (_g2637627044_ _g2638427048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637627044_
                                                   _g2638427048_)))))))
                              (_loop2640027087_ _target2639727081_ '()))
                            (_g2637627044_ _g2638427048_)))))
                  (_g2637627044_ _g2638427048_))
              (_g2637627044_ _g2638427048_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2637627044_
                                                   _g2638427048_))
                                              (_g2637627044_ _g2638427048_))))
                                      (_g2637627044_ _g2638427048_))))
                              (_g2637627044_ _g2638427048_))))
                      (_g2637627044_ _g2638427048_)))))
          (_g2637527154_ _$stx26372_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx27160_)
        (let* ((_g2716527199_
                (lambda (_g2716627195_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2716627195_)))
               (_g2716427256_
                (lambda (_g2716627203_)
                  (if (gx#stx-pair? _g2716627203_)
                      (let ((_e2718527206_ (gx#syntax-e _g2716627203_)))
                        (let ((_hd2718627210_ (##car _e2718527206_))
                              (_tl2718727213_ (##cdr _e2718527206_)))
                          (if (gx#stx-pair? _tl2718727213_)
                              (let ((_e2718827216_
                                     (gx#syntax-e _tl2718727213_)))
                                (let ((_hd2718927220_ (##car _e2718827216_))
                                      (_tl2719027223_ (##cdr _e2718827216_)))
                                  (if (gx#stx-pair? _tl2719027223_)
                                      (let ((_e2719127226_
                                             (gx#syntax-e _tl2719027223_)))
                                        (let ((_hd2719227230_
                                               (##car _e2719127226_))
                                              (_tl2719327233_
                                               (##cdr _e2719127226_)))
                                          (if (gx#stx-null? _tl2719327233_)
                                              ((lambda (_L27236_
                                                        _L27238_
                                                        _L27239_)
                                                 (cons _L27239_
                                                       (cons _L27238_
                                                             (cons _L27236_
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
                                               _hd2719227230_
                                               _hd2718927220_
                                               _hd2718627210_)
                                              (_g2716527199_ _g2716627203_))))
                                      (_g2716527199_ _g2716627203_))))
                              (_g2716527199_ _g2716627203_))))
                      (_g2716527199_ _g2716627203_))))
               (_g2716327324_
                (lambda (_g2716627260_)
                  (if (gx#stx-pair? _g2716627260_)
                      (let ((_e2717027263_ (gx#syntax-e _g2716627260_)))
                        (let ((_hd2717127267_ (##car _e2717027263_))
                              (_tl2717227270_ (##cdr _e2717027263_)))
                          (if (gx#stx-pair? _tl2717227270_)
                              (let ((_e2717327273_
                                     (gx#syntax-e _tl2717227270_)))
                                (let ((_hd2717427277_ (##car _e2717327273_))
                                      (_tl2717527280_ (##cdr _e2717327273_)))
                                  (if (gx#stx-pair? _tl2717527280_)
                                      (let ((_e2717627283_
                                             (gx#syntax-e _tl2717527280_)))
                                        (let ((_hd2717727287_
                                               (##car _e2717627283_))
                                              (_tl2717827290_
                                               (##cdr _e2717627283_)))
                                          (if (gx#stx-pair? _tl2717827290_)
                                              (let ((_e2717927293_
                                                     (gx#syntax-e
                                                      _tl2717827290_)))
                                                (let ((_hd2718027297_
                                                       (##car _e2717927293_))
                                                      (_tl2718127300_
                                                       (##cdr _e2717927293_)))
                                                  (if (gx#stx-null?
                                                       _tl2718127300_)
                                                      ((lambda (_L27303_
                                                                _L27305_
                                                                _L27306_)
                                                         (if (gx#identifier?
                                                              _L27306_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27306_
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
                                         (cons _L27305_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27303_ '()))
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
                     (_g2716427256_ _g2716627260_)))
               _hd2718027297_
               _hd2717727287_
               _hd2717427277_)
              (_g2716427256_ _g2716627260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2716427256_ _g2716627260_))))
                                      (_g2716427256_ _g2716627260_))))
                              (_g2716427256_ _g2716627260_))))
                      (_g2716427256_ _g2716627260_)))))
          (_g2716327324_ _$stx27160_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27328_)
        (let* ((_g2733227347_
                (lambda (_g2733327343_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2733327343_)))
               (_g2733127390_
                (lambda (_g2733327351_)
                  (if (gx#stx-pair? _g2733327351_)
                      (let ((_e2733627354_ (gx#syntax-e _g2733327351_)))
                        (let ((_hd2733727358_ (##car _e2733627354_))
                              (_tl2733827361_ (##cdr _e2733627354_)))
                          (if (gx#stx-pair? _tl2733827361_)
                              (let ((_e2733927364_
                                     (gx#syntax-e _tl2733827361_)))
                                (let ((_hd2734027368_ (##car _e2733927364_))
                                      (_tl2734127371_ (##cdr _e2733927364_)))
                                  ((lambda (_L27374_ _L27376_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27376_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27374_)
                                                       '()))))
                                   _tl2734127371_
                                   _hd2734027368_)))
                              (_g2733227347_ _g2733327351_))))
                      (_g2733227347_ _g2733327351_)))))
          (_g2733127390_ _$stx27328_))))))
