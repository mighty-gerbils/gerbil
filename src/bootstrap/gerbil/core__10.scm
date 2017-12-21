(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g30757_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30758_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30759_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30762_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30763_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30764_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30765_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30766_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30767_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30768_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30769_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30770_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30771_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30772_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30773_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30774_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30783_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30788_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30789_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30790_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30807_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30808_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30809_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30810_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g30813_|
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
      (lambda _$args24856_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args24856_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx24853_)
        (if (gx#identifier? _stx24853_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx24853_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2316924839_
             (lambda (_stx23171_ _match-stx23173_)
               (letrec ((_parse123175_
                         (lambda (_hd23522_)
                           (let* ((_g2354823690_
                                   (lambda (_g2354923686_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2354923686_)))
                                  (_g2354723701_
                                   (lambda (_g2354923694_)
                                     ((lambda ()
                                        (_parse-error23182_ _hd23522_)))))
                                  (_g2354623719_
                                   (lambda (_g2354923705_)
                                     ((lambda (_L23708_)
                                        (if (gx#stx-datum? _L23708_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L23708_)
                                                        '()))
                                            (_g2354723701_ _g2354923705_)))
                                      _g2354923705_)))
                                  (_g2354523735_
                                   (lambda (_g2354923723_)
                                     ((lambda (_L23726_)
                                        (if (if (gx#identifier? _L23726_)
                                                (not (gx#ellipsis? _L23726_))
                                                '#f)
                                            (cons 'var: (cons _L23726_ '()))
                                            (_g2354623719_ _g2354923723_)))
                                      _g2354923723_)))
                                  (_g2354423751_
                                   (lambda (_g2354923739_)
                                     ((lambda (_L23742_)
                                        (if (gx#underscore? _L23742_)
                                            (cons 'any: '())
                                            (_g2354523735_ _g2354923739_)))
                                      _g2354923739_)))
                                  (_g2354323783_
                                   (lambda (_g2354923755_)
                                     (if (gx#stx-pair? _g2354923755_)
                                         (let ((_e2367923758_
                                                (gx#syntax-e _g2354923755_)))
                                           (let ((_hd2368023762_
                                                  (##car _e2367923758_))
                                                 (_tl2368123765_
                                                  (##cdr _e2367923758_)))
                                             ((lambda (_L23768_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L23768_)
                                                    (_parse123175_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L23768_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd23522_)
                                                       (let ((_$e23779_
                                                              (gx#stx-source
                                                               _hd23522_)))
                                                         (if _$e23779_
                                                             _$e23779_
                                                             (gx#stx-source
                                                              _stx23171_))))))
                                                    (_g2354423751_
                                                     _g2354923755_)))
                                              _hd2368023762_)))
                                         (_g2354423751_ _g2354923755_))))
                                  (_g2354223837_
                                   (lambda (_g2354923787_)
                                     (if (gx#stx-pair? _g2354923787_)
                                         (let ((_e2366923790_
                                                (gx#syntax-e _g2354923787_)))
                                           (let ((_hd2367023794_
                                                  (##car _e2366923790_))
                                                 (_tl2367123797_
                                                  (##cdr _e2366923790_)))
                                             (if (gx#identifier?
                                                  _hd2367023794_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30757_|
                                                      _hd2367023794_)
                                                     (if (gx#stx-pair?
                                                          _tl2367123797_)
                                                         (let ((_e2367223800_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2367123797_)))
                   (let ((_hd2367323804_ (##car _e2367223800_))
                         (_tl2367423807_ (##cdr _e2367223800_)))
                     (if (gx#stx-pair? _tl2367423807_)
                         (let ((_e2367523810_ (gx#syntax-e _tl2367423807_)))
                           (let ((_hd2367623814_ (##car _e2367523810_))
                                 (_tl2367723817_ (##cdr _e2367523810_)))
                             (if (gx#stx-null? _tl2367723817_)
                                 ((lambda (_L23820_ _L23822_)
                                    (cons 'apply:
                                          (cons _L23822_
                                                (cons (_parse123175_ _L23820_)
                                                      '()))))
                                  _hd2367623814_
                                  _hd2367323804_)
                                 (_g2354323783_ _g2354923787_))))
                         (_g2354323783_ _g2354923787_))))
                 (_g2354323783_ _g2354923787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2354323783_
                                                      _g2354923787_))
                                                 (_g2354323783_
                                                  _g2354923787_))))
                                         (_g2354323783_ _g2354923787_))))
                                  (_g2354123877_
                                   (lambda (_g2354923841_)
                                     (if (gx#stx-pair? _g2354923841_)
                                         (let ((_e2366123844_
                                                (gx#syntax-e _g2354923841_)))
                                           (let ((_hd2366223848_
                                                  (##car _e2366123844_))
                                                 (_tl2366323851_
                                                  (##cdr _e2366123844_)))
                                             (if (gx#identifier?
                                                  _hd2366223848_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30758_|
                                                      _hd2366223848_)
                                                     (if (gx#stx-pair?
                                                          _tl2366323851_)
                                                         (let ((_e2366423854_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2366323851_)))
                   (let ((_hd2366523858_ (##car _e2366423854_))
                         (_tl2366623861_ (##cdr _e2366423854_)))
                     (if (gx#stx-null? _tl2366623861_)
                         ((lambda (_L23864_) (_parse-qq23181_ _L23864_))
                          _hd2366523858_)
                         (_g2354223837_ _g2354923841_))))
                 (_g2354223837_ _g2354923841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2354223837_
                                                      _g2354923841_))
                                                 (_g2354223837_
                                                  _g2354923841_))))
                                         (_g2354223837_ _g2354923841_))))
                                  (_g2354023917_
                                   (lambda (_g2354923881_)
                                     (if (gx#stx-pair? _g2354923881_)
                                         (let ((_e2365423884_
                                                (gx#syntax-e _g2354923881_)))
                                           (let ((_hd2365523888_
                                                  (##car _e2365423884_))
                                                 (_tl2365623891_
                                                  (##cdr _e2365423884_)))
                                             (if (gx#identifier?
                                                  _hd2365523888_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30759_|
                                                      _hd2365523888_)
                                                     (if (gx#stx-pair?
                                                          _tl2365623891_)
                                                         (let ((_e2365723894_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2365623891_)))
                   (let ((_hd2365823898_ (##car _e2365723894_))
                         (_tl2365923901_ (##cdr _e2365723894_)))
                     (if (gx#stx-null? _tl2365923901_)
                         ((lambda (_L23904_)
                            (cons 'datum: (cons (gx#stx-e _L23904_) '())))
                          _hd2365823898_)
                         (_g2354123877_ _g2354923881_))))
                 (_g2354123877_ _g2354923881_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2354123877_
                                                      _g2354923881_))
                                                 (_g2354123877_
                                                  _g2354923881_))))
                                         (_g2354123877_ _g2354923881_))))
                                  (_g2353923967_
                                   (lambda (_g2354923921_)
                                     (if (gx#stx-pair? _g2354923921_)
                                         (let ((_e2364723924_
                                                (gx#syntax-e _g2354923921_)))
                                           (let ((_hd2364823928_
                                                  (##car _e2364723924_))
                                                 (_tl2364923931_
                                                  (##cdr _e2364723924_)))
                                             (if (gx#stx-pair? _tl2364923931_)
                                                 (let ((_e2365023934_
                                                        (gx#syntax-e
                                                         _tl2364923931_)))
                                                   (let ((_hd2365123938_
                                                          (##car _e2365023934_))
                                                         (_tl2365223941_
                                                          (##cdr _e2365023934_)))
                                                     (if (gx#stx-null?
                                                          _tl2365223941_)
                                                         ((lambda (_L23944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L23946_)
                    (if (if (gx#identifier? _L23946_)
                            (let ((_$e23959_
                                   (gx#free-identifier=?
                                    _L23946_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e23959_
                                  _$e23959_
                                  (let ((_$e23963_
                                         (gx#free-identifier=?
                                          _L23946_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e23963_
                                        _$e23963_
                                        (gx#free-identifier=?
                                         _L23946_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L23946_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L23944_ '()))))
                                    '()))
                        (_g2354023917_ _g2354923921_)))
                  _hd2365123938_
                  _hd2364823928_)
                 (_g2354023917_ _g2354923921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2354023917_
                                                  _g2354923921_))))
                                         (_g2354023917_ _g2354923921_))))
                                  (_g2353823997_
                                   (lambda (_g2354923971_)
                                     (if (gx#stx-pair? _g2354923971_)
                                         (let ((_e2364223974_
                                                (gx#syntax-e _g2354923971_)))
                                           (let ((_hd2364323978_
                                                  (##car _e2364223974_))
                                                 (_tl2364423981_
                                                  (##cdr _e2364223974_)))
                                             ((lambda (_L23984_ _L23986_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L23986_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23986_)
                        (cons (_parse-class-body23180_ _L23984_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2353923967_
                                                     _g2354923971_)))
                                              _tl2364423981_
                                              _hd2364323978_)))
                                         (_g2353923967_ _g2354923971_))))
                                  (_g2353724027_
                                   (lambda (_g2354924001_)
                                     (if (gx#stx-pair? _g2354924001_)
                                         (let ((_e2363724004_
                                                (gx#syntax-e _g2354924001_)))
                                           (let ((_hd2363824008_
                                                  (##car _e2363724004_))
                                                 (_tl2363924011_
                                                  (##cdr _e2363724004_)))
                                             ((lambda (_L24014_ _L24016_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24016_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24016_)
                        (cons (_parse-vector23178_ _L24014_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2353823997_
                                                     _g2354924001_)))
                                              _tl2363924011_
                                              _hd2363824008_)))
                                         (_g2353823997_ _g2354924001_))))
                                  (_g2353624090_
                                   (lambda (_g2354924031_)
                                     (if (gx#stx-vector? _g2354924031_)
                                         (let ((_e2362524034_
                                                (vector->list
                                                 (gx#syntax-e _g2354924031_))))
                                           (if (gx#stx-pair/null?
                                                _e2362524034_)
                                               (if (fx>= (gx#stx-length
                                                          _e2362524034_)
                                                         '0)
                                                   (let ((_g30760_
                                                          (gx#syntax-split-splice
                                                           _e2362524034_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30761_
                                                              (values-count
                                                               _g30760_)))
                                                         (if (not (fx= _g30761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30761_)))
               (let ((_target2362624038_ (values-ref _g30760_ 0))
                     (_tl2362824041_ (values-ref _g30760_ 1)))
                 (if (gx#stx-null? _tl2362824041_)
                     (letrec ((_loop2362924044_
                               (lambda (_hd2362724048_ _body2363324051_)
                                 (if (gx#stx-pair? _hd2362724048_)
                                     (let ((_e2363024054_
                                            (gx#syntax-e _hd2362724048_)))
                                       (let ((_lp-hd2363124058_
                                              (##car _e2363024054_))
                                             (_lp-tl2363224061_
                                              (##cdr _e2363024054_)))
                                         (_loop2362924044_
                                          _lp-tl2363224061_
                                          (cons _lp-hd2363124058_
                                                _body2363324051_))))
                                     (let ((_body2363424064_
                                            (reverse _body2363324051_)))
                                       ((lambda (_L24068_)
                                          (cons 'vector:
                                                (cons (_parse-vector23178_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2408124084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2408224087_)
                          (cons _g2408124084_ _g2408224087_))
                        '()
                        _L24068_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2363424064_))))))
                       (_loop2362924044_ _target2362624038_ '()))
                     (_g2353724027_ _g2354924031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2353724027_
                                                    _g2354924031_))
                                               (_g2353724027_ _g2354924031_)))
                                         (_g2353724027_ _g2354924031_))))
                                  (_g2353524118_
                                   (lambda (_g2354924094_)
                                     (if (gx#stx-pair? _g2354924094_)
                                         (let ((_e2362124097_
                                                (gx#syntax-e _g2354924094_)))
                                           (let ((_hd2362224101_
                                                  (##car _e2362124097_))
                                                 (_tl2362324104_
                                                  (##cdr _e2362124097_)))
                                             (if (gx#identifier?
                                                  _hd2362224101_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30762_|
                                                      _hd2362224101_)
                                                     ((lambda (_L24107_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24107_)
                            '())))
              _tl2362324104_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353624090_
                                                      _g2354924094_))
                                                 (_g2353624090_
                                                  _g2354924094_))))
                                         (_g2353624090_ _g2354924094_))))
                                  (_g2353424146_
                                   (lambda (_g2354924122_)
                                     (if (gx#stx-pair? _g2354924122_)
                                         (let ((_e2361724125_
                                                (gx#syntax-e _g2354924122_)))
                                           (let ((_hd2361824129_
                                                  (##car _e2361724125_))
                                                 (_tl2361924132_
                                                  (##cdr _e2361724125_)))
                                             (if (gx#identifier?
                                                  _hd2361824129_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30763_|
                                                      _hd2361824129_)
                                                     ((lambda (_L24135_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24135_)
                            '())))
              _tl2361924132_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353524118_
                                                      _g2354924122_))
                                                 (_g2353524118_
                                                  _g2354924122_))))
                                         (_g2353524118_ _g2354924122_))))
                                  (_g2353324186_
                                   (lambda (_g2354924150_)
                                     (if (gx#stx-pair? _g2354924150_)
                                         (let ((_e2361024153_
                                                (gx#syntax-e _g2354924150_)))
                                           (let ((_hd2361124157_
                                                  (##car _e2361024153_))
                                                 (_tl2361224160_
                                                  (##cdr _e2361024153_)))
                                             (if (gx#identifier?
                                                  _hd2361124157_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30764_|
                                                      _hd2361124157_)
                                                     (if (gx#stx-pair?
                                                          _tl2361224160_)
                                                         (let ((_e2361324163_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2361224160_)))
                   (let ((_hd2361424167_ (##car _e2361324163_))
                         (_tl2361524170_ (##cdr _e2361324163_)))
                     (if (gx#stx-null? _tl2361524170_)
                         ((lambda (_L24173_) (_parse123175_ _L24173_))
                          _hd2361424167_)
                         (_g2353424146_ _g2354924150_))))
                 (_g2353424146_ _g2354924150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353424146_
                                                      _g2354924150_))
                                                 (_g2353424146_
                                                  _g2354924150_))))
                                         (_g2353424146_ _g2354924150_))))
                                  (_g2353224207_
                                   (lambda (_g2354924190_)
                                     (if (gx#stx-box? _g2354924190_)
                                         (let ((_e2360824193_
                                                (unbox (gx#syntax-e
                                                        _g2354924190_))))
                                           ((lambda (_L24197_)
                                              (cons 'box:
                                                    (cons (_parse123175_
                                                           _L24197_)
                                                          '())))
                                            _e2360824193_))
                                         (_g2353324186_ _g2354924190_))))
                                  (_g2353124247_
                                   (lambda (_g2354924211_)
                                     (if (gx#stx-pair? _g2354924211_)
                                         (let ((_e2360124214_
                                                (gx#syntax-e _g2354924211_)))
                                           (let ((_hd2360224218_
                                                  (##car _e2360124214_))
                                                 (_tl2360324221_
                                                  (##cdr _e2360124214_)))
                                             (if (gx#identifier?
                                                  _hd2360224218_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30765_|
                                                      _hd2360224218_)
                                                     (if (gx#stx-pair?
                                                          _tl2360324221_)
                                                         (let ((_e2360424224_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2360324221_)))
                   (let ((_hd2360524228_ (##car _e2360424224_))
                         (_tl2360624231_ (##cdr _e2360424224_)))
                     (if (gx#stx-null? _tl2360624231_)
                         ((lambda (_L24234_)
                            (cons 'box: (cons (_parse123175_ _L24234_) '())))
                          _hd2360524228_)
                         (_g2353224207_ _g2354924211_))))
                 (_g2353224207_ _g2354924211_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353224207_
                                                      _g2354924211_))
                                                 (_g2353224207_
                                                  _g2354924211_))))
                                         (_g2353224207_ _g2354924211_))))
                                  (_g2353024275_
                                   (lambda (_g2354924251_)
                                     (if (gx#stx-pair? _g2354924251_)
                                         (let ((_e2359724254_
                                                (gx#syntax-e _g2354924251_)))
                                           (let ((_hd2359824258_
                                                  (##car _e2359724254_))
                                                 (_tl2359924261_
                                                  (##cdr _e2359724254_)))
                                             (if (gx#identifier?
                                                  _hd2359824258_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30766_|
                                                      _hd2359824258_)
                                                     ((lambda (_L24264_)
                                                        (_parse-list23177_
                                                         _L24264_))
                                                      _tl2359924261_)
                                                     (_g2353124247_
                                                      _g2354924251_))
                                                 (_g2353124247_
                                                  _g2354924251_))))
                                         (_g2353124247_ _g2354924251_))))
                                  (_g2352924331_
                                   (lambda (_g2354924279_)
                                     (if (gx#stx-pair? _g2354924279_)
                                         (let ((_e2358724282_
                                                (gx#syntax-e _g2354924279_)))
                                           (let ((_hd2358824286_
                                                  (##car _e2358724282_))
                                                 (_tl2358924289_
                                                  (##cdr _e2358724282_)))
                                             (if (gx#identifier?
                                                  _hd2358824286_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30767_|
                                                      _hd2358824286_)
                                                     (if (gx#stx-pair?
                                                          _tl2358924289_)
                                                         (let ((_e2359024292_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2358924289_)))
                   (let ((_hd2359124296_ (##car _e2359024292_))
                         (_tl2359224299_ (##cdr _e2359024292_)))
                     (if (gx#stx-pair? _tl2359224299_)
                         (let ((_e2359324302_ (gx#syntax-e _tl2359224299_)))
                           (let ((_hd2359424306_ (##car _e2359324302_))
                                 (_tl2359524309_ (##cdr _e2359324302_)))
                             ((lambda (_L24312_ _L24314_ _L24315_)
                                (if (gx#stx-null? _L24312_)
                                    (cons 'cons:
                                          (cons (_parse123175_ _L24315_)
                                                (cons (_parse123175_ _L24314_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123175_ _L24315_)
                                                (cons (_parse123175_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24312_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2359524309_
                              _hd2359424306_
                              _hd2359124296_)))
                         (_g2353024275_ _g2354924279_))))
                 (_g2353024275_ _g2354924279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2353024275_
                                                      _g2354924279_))
                                                 (_g2353024275_
                                                  _g2354924279_))))
                                         (_g2353024275_ _g2354924279_))))
                                  (_g2352824385_
                                   (lambda (_g2354924335_)
                                     (if (gx#stx-pair? _g2354924335_)
                                         (let ((_e2357524338_
                                                (gx#syntax-e _g2354924335_)))
                                           (let ((_hd2357624342_
                                                  (##car _e2357524338_))
                                                 (_tl2357724345_
                                                  (##cdr _e2357524338_)))
                                             (if (gx#identifier?
                                                  _hd2357624342_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30768_|
                                                      _hd2357624342_)
                                                     (if (gx#stx-pair?
                                                          _tl2357724345_)
                                                         (let ((_e2357824348_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2357724345_)))
                   (let ((_hd2357924352_ (##car _e2357824348_))
                         (_tl2358024355_ (##cdr _e2357824348_)))
                     (if (gx#stx-pair? _tl2358024355_)
                         (let ((_e2358124358_ (gx#syntax-e _tl2358024355_)))
                           (let ((_hd2358224362_ (##car _e2358124358_))
                                 (_tl2358324365_ (##cdr _e2358124358_)))
                             (if (gx#stx-null? _tl2358324365_)
                                 ((lambda (_L24368_ _L24370_)
                                    (cons 'cons:
                                          (cons (_parse123175_ _L24370_)
                                                (cons (_parse123175_ _L24368_)
                                                      '()))))
                                  _hd2358224362_
                                  _hd2357924352_)
                                 (_g2352924331_ _g2354924335_))))
                         (_g2352924331_ _g2354924335_))))
                 (_g2352924331_ _g2354924335_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2352924331_
                                                      _g2354924335_))
                                                 (_g2352924331_
                                                  _g2354924335_))))
                                         (_g2352924331_ _g2354924335_))))
                                  (_g2352724425_
                                   (lambda (_g2354924389_)
                                     (if (gx#stx-pair? _g2354924389_)
                                         (let ((_e2356724392_
                                                (gx#syntax-e _g2354924389_)))
                                           (let ((_hd2356824396_
                                                  (##car _e2356724392_))
                                                 (_tl2356924399_
                                                  (##cdr _e2356724392_)))
                                             (if (gx#identifier?
                                                  _hd2356824396_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30769_|
                                                      _hd2356824396_)
                                                     (if (gx#stx-pair?
                                                          _tl2356924399_)
                                                         (let ((_e2357024402_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2356924399_)))
                   (let ((_hd2357124406_ (##car _e2357024402_))
                         (_tl2357224409_ (##cdr _e2357024402_)))
                     (if (gx#stx-null? _tl2357224409_)
                         ((lambda (_L24412_)
                            (cons 'not: (cons (_parse123175_ _L24412_) '())))
                          _hd2357124406_)
                         (_g2352824385_ _g2354924389_))))
                 (_g2352824385_ _g2354924389_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2352824385_
                                                      _g2354924389_))
                                                 (_g2352824385_
                                                  _g2354924389_))))
                                         (_g2352824385_ _g2354924389_))))
                                  (_g2352624510_
                                   (lambda (_g2354924429_)
                                     (if (gx#stx-pair? _g2354924429_)
                                         (let ((_e2356324432_
                                                (gx#syntax-e _g2354924429_)))
                                           (let ((_hd2356424436_
                                                  (##car _e2356324432_))
                                                 (_tl2356524439_
                                                  (##cdr _e2356324432_)))
                                             (if (gx#identifier?
                                                  _hd2356424436_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30770_|
                                                      _hd2356424436_)
                                                     ((lambda (_L24442_)
                                                        (if (gx#stx-list?
                                                             _L24442_)
                                                            (let* ((_g2445424465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2445524461_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2445524461_)))
                           (_g2445324476_
                            (lambda (_g2445524469_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123175_ _L24442_))))))
                           (_g2445224506_
                            (lambda (_g2445524480_)
                              (if (gx#stx-pair? _g2445524480_)
                                  (let ((_e2445724483_
                                         (gx#syntax-e _g2445524480_)))
                                    (let ((_hd2445824487_
                                           (##car _e2445724483_))
                                          (_tl2445924490_
                                           (##cdr _e2445724483_)))
                                      (if (gx#stx-null? _tl2445924490_)
                                          ((lambda (_L24493_)
                                             (_parse123175_ _L24493_))
                                           _hd2445824487_)
                                          (_g2445324476_ _g2445524480_))))
                                  (_g2445324476_ _g2445524480_)))))
                      (_g2445224506_ _L24442_))
                    (_g2352724425_ _g2354924429_)))
              _tl2356524439_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2352724425_
                                                      _g2354924429_))
                                                 (_g2352724425_
                                                  _g2354924429_))))
                                         (_g2352724425_ _g2354924429_))))
                                  (_g2352524595_
                                   (lambda (_g2354924514_)
                                     (if (gx#stx-pair? _g2354924514_)
                                         (let ((_e2355924517_
                                                (gx#syntax-e _g2354924514_)))
                                           (let ((_hd2356024521_
                                                  (##car _e2355924517_))
                                                 (_tl2356124524_
                                                  (##cdr _e2355924517_)))
                                             (if (gx#identifier?
                                                  _hd2356024521_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30771_|
                                                      _hd2356024521_)
                                                     ((lambda (_L24527_)
                                                        (if (gx#stx-list?
                                                             _L24527_)
                                                            (let* ((_g2453924550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2454024546_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2454024546_)))
                           (_g2453824561_
                            (lambda (_g2454024554_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123175_ _L24527_))))))
                           (_g2453724591_
                            (lambda (_g2454024565_)
                              (if (gx#stx-pair? _g2454024565_)
                                  (let ((_e2454224568_
                                         (gx#syntax-e _g2454024565_)))
                                    (let ((_hd2454324572_
                                           (##car _e2454224568_))
                                          (_tl2454424575_
                                           (##cdr _e2454224568_)))
                                      (if (gx#stx-null? _tl2454424575_)
                                          ((lambda (_L24578_)
                                             (_parse123175_ _L24578_))
                                           _hd2454324572_)
                                          (_g2453824561_ _g2454024565_))))
                                  (_g2453824561_ _g2454024565_)))))
                      (_g2453724591_ _L24527_))
                    (_g2352624510_ _g2354924514_)))
              _tl2356124524_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2352624510_
                                                      _g2354924514_))
                                                 (_g2352624510_
                                                  _g2354924514_))))
                                         (_g2352624510_ _g2354924514_))))
                                  (_g2352424835_
                                   (lambda (_g2354924599_)
                                     (if (gx#stx-pair? _g2354924599_)
                                         (let ((_e2355224602_
                                                (gx#syntax-e _g2354924599_)))
                                           (let ((_hd2355324606_
                                                  (##car _e2355224602_))
                                                 (_tl2355424609_
                                                  (##cdr _e2355224602_)))
                                             (if (gx#identifier?
                                                  _hd2355324606_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g30772_|
                                                      _hd2355324606_)
                                                     (if (gx#stx-pair?
                                                          _tl2355424609_)
                                                         (let ((_e2355524612_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2355424609_)))
                   (let ((_hd2355624616_ (##car _e2355524612_))
                         (_tl2355724619_ (##cdr _e2355524612_)))
                     ((lambda (_L24622_ _L24624_)
                        (let* ((_g2464124673_
                                (lambda (_g2464224669_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2464224669_)))
                               (_g2464024684_
                                (lambda (_g2464224677_)
                                  ((lambda ()
                                     (_parse-error23182_ _hd23522_)))))
                               (_g2463924752_
                                (lambda (_g2464224688_)
                                  (if (gx#stx-pair? _g2464224688_)
                                      (let ((_e2465624691_
                                             (gx#syntax-e _g2464224688_)))
                                        (let ((_hd2465724695_
                                               (##car _e2465624691_))
                                              (_tl2465824698_
                                               (##cdr _e2465624691_)))
                                          (if (gx#stx-datum? _hd2465724695_)
                                              (if (equal? (gx#stx-e
                                                           _hd2465724695_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2465824698_)
                                                      (let ((_e2465924701_
                                                             (gx#syntax-e
                                                              _tl2465824698_)))
                                                        (let ((_hd2466024705_
                                                               (##car _e2465924701_))
                                                              (_tl2466124708_
                                                               (##cdr _e2465924701_)))
                                                          (if (gx#stx-pair?
                                                               _tl2466124708_)
                                                              (let ((_e2466224711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2466124708_)))
                        (let ((_hd2466324715_ (##car _e2466224711_))
                              (_tl2466424718_ (##cdr _e2466224711_)))
                          (if (gx#identifier? _hd2466324715_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g30773_|
                                   _hd2466324715_)
                                  (if (gx#stx-pair? _tl2466424718_)
                                      (let ((_e2466524721_
                                             (gx#syntax-e _tl2466424718_)))
                                        (let ((_hd2466624725_
                                               (##car _e2466524721_))
                                              (_tl2466724728_
                                               (##cdr _e2466524721_)))
                                          (if (gx#stx-null? _tl2466724728_)
                                              ((lambda (_L24731_ _L24733_)
                                                 (cons '?:
                                                       (cons _L24624_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L24733_
                                 (cons '=>:
                                       (cons (_parse123175_ _L24731_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2466624725_
                                               _hd2466024705_)
                                              (_g2464024684_ _g2464224688_))))
                                      (_g2464024684_ _g2464224688_))
                                  (_g2464024684_ _g2464224688_))
                              (_g2464024684_ _g2464224688_))))
                      (_g2464024684_ _g2464224688_))))
              (_g2464024684_ _g2464224688_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2464024684_
                                                   _g2464224688_))
                                              (_g2464024684_ _g2464224688_))))
                                      (_g2464024684_ _g2464224688_))))
                               (_g2463824792_
                                (lambda (_g2464224756_)
                                  (if (gx#stx-pair? _g2464224756_)
                                      (let ((_e2464824759_
                                             (gx#syntax-e _g2464224756_)))
                                        (let ((_hd2464924763_
                                               (##car _e2464824759_))
                                              (_tl2465024766_
                                               (##cdr _e2464824759_)))
                                          (if (gx#identifier? _hd2464924763_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g30774_|
                                                   _hd2464924763_)
                                                  (if (gx#stx-pair?
                                                       _tl2465024766_)
                                                      (let ((_e2465124769_
                                                             (gx#syntax-e
                                                              _tl2465024766_)))
                                                        (let ((_hd2465224773_
                                                               (##car _e2465124769_))
                                                              (_tl2465324776_
                                                               (##cdr _e2465124769_)))
                                                          (if (gx#stx-null?
                                                               _tl2465324776_)
                                                              ((lambda (_L24779_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L24624_
                                     (cons '=>:
                                           (cons (_parse123175_ _L24779_)
                                                 '())))))
                       _hd2465224773_)
                      (_g2463924752_ _g2464224756_))))
              (_g2463924752_ _g2464224756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2463924752_
                                                   _g2464224756_))
                                              (_g2463924752_ _g2464224756_))))
                                      (_g2463924752_ _g2464224756_))))
                               (_g2463724820_
                                (lambda (_g2464224796_)
                                  (if (gx#stx-pair? _g2464224796_)
                                      (let ((_e2464424799_
                                             (gx#syntax-e _g2464224796_)))
                                        (let ((_hd2464524803_
                                               (##car _e2464424799_))
                                              (_tl2464624806_
                                               (##cdr _e2464424799_)))
                                          (if (gx#stx-null? _tl2464624806_)
                                              ((lambda (_L24809_)
                                                 (cons '?:
                                                       (cons _L24624_
                                                             (cons (_parse123175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L24809_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2464524803_)
                                              (_g2463824792_ _g2464224796_))))
                                      (_g2463824792_ _g2464224796_))))
                               (_g2463624831_
                                (lambda (_g2464224824_)
                                  (if (gx#stx-null? _g2464224824_)
                                      ((lambda ()
                                         (cons '?: (cons _L24624_ '()))))
                                      (_g2463724820_ _g2464224824_)))))
                          (_g2463624831_ _L24622_)))
                      _tl2355724619_
                      _hd2355624616_)))
                 (_g2352524595_ _g2354924599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2352524595_
                                                      _g2354924599_))
                                                 (_g2352524595_
                                                  _g2354924599_))))
                                         (_g2352524595_ _g2354924599_)))))
                             (_g2352424835_ _hd23522_))))
                        (_parse-list23177_
                         (lambda (_body23357_)
                           (let* ((_g2336323391_
                                   (lambda (_g2336423387_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2336423387_)))
                                  (_g2336223402_
                                   (lambda (_g2336423395_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23357_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23357_))
                                                (_parse123175_ _body23357_)
                                                (_parse-error23182_
                                                 _body23357_)))))))
                                  (_g2336123434_
                                   (lambda (_g2336423406_)
                                     (if (gx#stx-pair? _g2336423406_)
                                         (let ((_e2338323409_
                                                (gx#syntax-e _g2336423406_)))
                                           (let ((_hd2338423413_
                                                  (##car _e2338323409_))
                                                 (_tl2338523416_
                                                  (##cdr _e2338323409_)))
                                             ((lambda (_L23419_ _L23421_)
                                                (if (not (gx#ellipsis?
                                                          _L23421_))
                                                    (cons 'cons:
                                                          (cons (_parse123175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23421_)
                        (cons (_parse-list23177_ _L23419_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2336223402_
                                                     _g2336423406_)))
                                              _tl2338523416_
                                              _hd2338423413_)))
                                         (_g2336223402_ _g2336423406_))))
                                  (_g2336023478_
                                   (lambda (_g2336423438_)
                                     (if (gx#stx-pair? _g2336423438_)
                                         (let ((_e2337523441_
                                                (gx#syntax-e _g2336423438_)))
                                           (let ((_hd2337623445_
                                                  (##car _e2337523441_))
                                                 (_tl2337723448_
                                                  (##cdr _e2337523441_)))
                                             (if (gx#stx-pair? _tl2337723448_)
                                                 (let ((_e2337823451_
                                                        (gx#syntax-e
                                                         _tl2337723448_)))
                                                   (let ((_hd2337923455_
                                                          (##car _e2337823451_))
                                                         (_tl2338023458_
                                                          (##cdr _e2337823451_)))
                                                     ((lambda (_L23461_
                                                               _L23463_
                                                               _L23464_)
                                                        (if (gx#ellipsis?
                                                             _L23463_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123175_ _L23464_)
                                (cons (_parse-list23177_ _L23461_) '())))
                    (_g2336123434_ _g2336423438_)))
              _tl2338023458_
              _hd2337923455_
              _hd2337623445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2336123434_
                                                  _g2336423438_))))
                                         (_g2336123434_ _g2336423438_))))
                                  (_g2335923518_
                                   (lambda (_g2336423482_)
                                     (if (gx#stx-pair? _g2336423482_)
                                         (let ((_e2336623485_
                                                (gx#syntax-e _g2336423482_)))
                                           (let ((_hd2336723489_
                                                  (##car _e2336623485_))
                                                 (_tl2336823492_
                                                  (##cdr _e2336623485_)))
                                             (if (gx#stx-datum? _hd2336723489_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2336723489_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2336823492_)
                                                         (let ((_e2336923495_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2336823492_)))
                   (let ((_hd2337023499_ (##car _e2336923495_))
                         (_tl2337123502_ (##cdr _e2336923495_)))
                     (if (gx#stx-null? _tl2337123502_)
                         ((lambda (_L23505_) (_parse123175_ _L23505_))
                          _hd2337023499_)
                         (_g2336023478_ _g2336423482_))))
                 (_g2336023478_ _g2336423482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2336023478_
                                                      _g2336423482_))
                                                 (_g2336023478_
                                                  _g2336423482_))))
                                         (_g2336023478_ _g2336423482_)))))
                             (_g2335923518_ _body23357_))))
                        (_parse-vector23178_
                         (lambda (_body23354_)
                           (if (_simple-vector?23179_ _body23354_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123175_
                                            _body23354_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23177_ _body23354_)
                                           '())))))
                        (_simple-vector?23179_
                         (lambda (_body23291_)
                           (let* ((_g2329523307_
                                   (lambda (_g2329623303_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2329623303_)))
                                  (_g2329423318_
                                   (lambda (_g2329623311_)
                                     ((lambda () (gx#stx-null? _body23291_)))))
                                  (_g2329323350_
                                   (lambda (_g2329623322_)
                                     (if (gx#stx-pair? _g2329623322_)
                                         (let ((_e2329923325_
                                                (gx#syntax-e _g2329623322_)))
                                           (let ((_hd2330023329_
                                                  (##car _e2329923325_))
                                                 (_tl2330123332_
                                                  (##cdr _e2329923325_)))
                                             ((lambda (_L23335_ _L23337_)
                                                (if (not (gx#ellipsis?
                                                          _L23337_))
                                                    (_simple-vector?23179_
                                                     _L23335_)
                                                    '#f))
                                              _tl2330123332_
                                              _hd2330023329_)))
                                         (_g2329423318_ _g2329623322_)))))
                             (_g2329323350_ _body23291_))))
                        (_parse-class-body23180_
                         (lambda (_body23200_)
                           (let _recur23203_ ((_rest23206_ _body23200_))
                             (let* ((_g2321023226_
                                     (lambda (_g2321123222_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2321123222_)))
                                    (_g2320923237_
                                     (lambda (_g2321123230_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23206_)
                                              '()
                                              (_parse-error23182_
                                               _rest23206_))))))
                                    (_g2320823287_
                                     (lambda (_g2321123241_)
                                       (if (gx#stx-pair? _g2321123241_)
                                           (let ((_e2321523244_
                                                  (gx#syntax-e _g2321123241_)))
                                             (let ((_hd2321623248_
                                                    (##car _e2321523244_))
                                                   (_tl2321723251_
                                                    (##cdr _e2321523244_)))
                                               (if (gx#stx-pair?
                                                    _tl2321723251_)
                                                   (let ((_e2321823254_
                                                          (gx#syntax-e
                                                           _tl2321723251_)))
                                                     (let ((_hd2321923258_
                                                            (##car _e2321823254_))
                                                           (_tl2322023261_
                                                            (##cdr _e2321823254_)))
                                                       ((lambda (_L23264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23266_
                         _L23267_)
                  (if (gx#stx-keyword? _L23267_)
                      (cons* _L23267_
                             (_parse123175_ _L23266_)
                             (_recur23203_ _L23264_))
                      (_g2320923237_ _g2321123241_)))
                _tl2322023261_
                _hd2321923258_
                _hd2321623248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2320923237_
                                                    _g2321123241_))))
                                           (_g2320923237_ _g2321123241_)))))
                               (_g2320823287_ _rest23206_)))))
                        (_parse-qq23181_
                         (lambda (_hd23187_)
                           (let ((_g2318923196_
                                  (lambda (_g2319023192_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2319023192_))))
                             (_g2318923196_ _hd23187_))))
                        (_parse-error23182_
                         (lambda (_hd23184_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23173_
                                      (cons _match-stx23173_
                                            (cons _stx23171_
                                                  (cons _hd23184_ '())))
                                      (cons _stx23171_
                                            (cons _hd23184_ '())))))))
                 (_parse123175_ _stx23171_)))))
        (lambda _g30776_
          (let ((_g30775_ (length _g30776_)))
            (cond ((fx= _g30775_ 1)
                   (apply (lambda (_stx24843_)
                            (let ((_match-stx24846_ '#f))
                              (_opt-lambda2316924839_
                               _stx24843_
                               _match-stx24846_)))
                          _g30776_))
                  ((fx= _g30775_ 2) (apply _opt-lambda2316924839_ _g30776_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g30776_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23155_)
        (call-with-escape
         (lambda (_E23159_)
           (with-exception-handler
            (let ((_E!23162_ (current-exception-handler)))
              (lambda (_e23165_)
                (if (gx#syntax-error? _e23165_)
                    (_E23159_ '#f)
                    (_E!23162_ _e23165_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23155_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree21944_)
        (letrec ((_loop21947_
                  (lambda (_ptree22222_ _vars22224_ _K22225_)
                    (let* ((_g2223822339_
                            (lambda (_g2223922335_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2223922335_)))
                           (_g2223722350_
                            (lambda (_g2223922343_)
                              ((lambda () (_K22225_ _vars22224_)))))
                           (_g2223622397_
                            (lambda (_g2223922354_)
                              (if (gx#stx-pair? _g2223922354_)
                                  (let ((_e2232822357_
                                         (gx#syntax-e _g2223922354_)))
                                    (let ((_hd2232922361_
                                           (##car _e2232822357_))
                                          (_tl2233022364_
                                           (##cdr _e2232822357_)))
                                      (if (gx#stx-datum? _hd2232922361_)
                                          (if (equal? (gx#stx-e _hd2232922361_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2233022364_)
                                                  (let ((_e2233122367_
                                                         (gx#syntax-e
                                                          _tl2233022364_)))
                                                    (let ((_hd2233222371_
                                                           (##car _e2233122367_))
                                                          (_tl2233322374_
                                                           (##cdr _e2233122367_)))
                                                      (if (gx#stx-null?
                                                           _tl2233322374_)
                                                          ((lambda (_L22377_)
                                                             (if (find (lambda (_g2239122393_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2239122393_
                                  _L22377_))
                               _vars22224_)
                         (_K22225_ _vars22224_)
                         (_K22225_ (cons _L22377_ _vars22224_))))
                   _hd2233222371_)
                  (_g2223722350_ _g2223922354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223722350_
                                                   _g2223922354_))
                                              (_g2223722350_ _g2223922354_))
                                          (_g2223722350_ _g2223922354_))))
                                  (_g2223722350_ _g2223922354_))))
                           (_g2223522451_
                            (lambda (_g2223922401_)
                              (if (gx#stx-pair? _g2223922401_)
                                  (let ((_e2231822404_
                                         (gx#syntax-e _g2223922401_)))
                                    (let ((_hd2231922408_
                                           (##car _e2231822404_))
                                          (_tl2232022411_
                                           (##cdr _e2231822404_)))
                                      (if (gx#stx-datum? _hd2231922408_)
                                          (if (equal? (gx#stx-e _hd2231922408_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2232022411_)
                                                  (let ((_e2232122414_
                                                         (gx#syntax-e
                                                          _tl2232022411_)))
                                                    (let ((_hd2232222418_
                                                           (##car _e2232122414_))
                                                          (_tl2232322421_
                                                           (##cdr _e2232122414_)))
                                                      (if (gx#stx-pair?
                                                           _tl2232322421_)
                                                          (let ((_e2232422424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2232322421_)))
                    (let ((_hd2232522428_ (##car _e2232422424_))
                          (_tl2232622431_ (##cdr _e2232422424_)))
                      (if (gx#stx-null? _tl2232622431_)
                          ((lambda (_L22434_ _L22436_)
                             (_loop21947_ _L22434_ _vars22224_ _K22225_))
                           _hd2232522428_
                           _hd2232222418_)
                          (_g2223622397_ _g2223922401_))))
                  (_g2223622397_ _g2223922401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223622397_
                                                   _g2223922401_))
                                              (_g2223622397_ _g2223922401_))
                                          (_g2223622397_ _g2223922401_))))
                                  (_g2223622397_ _g2223922401_))))
                           (_g2223422503_
                            (lambda (_g2223922455_)
                              (if (gx#stx-pair? _g2223922455_)
                                  (let ((_e2230722458_
                                         (gx#syntax-e _g2223922455_)))
                                    (let ((_hd2230822462_
                                           (##car _e2230722458_))
                                          (_tl2230922465_
                                           (##cdr _e2230722458_)))
                                      (if (gx#stx-datum? _hd2230822462_)
                                          (if (equal? (gx#stx-e _hd2230822462_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2230922465_)
                                                  (let ((_e2231022468_
                                                         (gx#syntax-e
                                                          _tl2230922465_)))
                                                    (let ((_hd2231122472_
                                                           (##car _e2231022468_))
                                                          (_tl2231222475_
                                                           (##cdr _e2231022468_)))
                                                      (if (gx#stx-pair?
                                                           _tl2231222475_)
                                                          (let ((_e2231322478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2231222475_)))
                    (let ((_hd2231422482_ (##car _e2231322478_))
                          (_tl2231522485_ (##cdr _e2231322478_)))
                      (if (gx#stx-null? _tl2231522485_)
                          ((lambda (_L22488_)
                             (_loop-class-list21951_
                              _L22488_
                              _vars22224_
                              _K22225_))
                           _hd2231422482_)
                          (_g2223522451_ _g2223922455_))))
                  (_g2223522451_ _g2223922455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223522451_
                                                   _g2223922455_))
                                              (_g2223522451_ _g2223922455_))
                                          (_g2223522451_ _g2223922455_))))
                                  (_g2223522451_ _g2223922455_))))
                           (_g2223322555_
                            (lambda (_g2223922507_)
                              (if (gx#stx-pair? _g2223922507_)
                                  (let ((_e2229722510_
                                         (gx#syntax-e _g2223922507_)))
                                    (let ((_hd2229822514_
                                           (##car _e2229722510_))
                                          (_tl2229922517_
                                           (##cdr _e2229722510_)))
                                      (if (gx#stx-datum? _hd2229822514_)
                                          (if (equal? (gx#stx-e _hd2229822514_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2229922517_)
                                                  (let ((_e2230022520_
                                                         (gx#syntax-e
                                                          _tl2229922517_)))
                                                    (let ((_hd2230122524_
                                                           (##car _e2230022520_))
                                                          (_tl2230222527_
                                                           (##cdr _e2230022520_)))
                                                      (if (gx#stx-pair?
                                                           _tl2230222527_)
                                                          (let ((_e2230322530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2230222527_)))
                    (let ((_hd2230422534_ (##car _e2230322530_))
                          (_tl2230522537_ (##cdr _e2230322530_)))
                      (if (gx#stx-null? _tl2230522537_)
                          ((lambda (_L22540_)
                             (_loop-vector21949_
                              _L22540_
                              _vars22224_
                              _K22225_))
                           _hd2230422534_)
                          (_g2223422503_ _g2223922507_))))
                  (_g2223422503_ _g2223922507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223422503_
                                                   _g2223922507_))
                                              (_g2223422503_ _g2223922507_))
                                          (_g2223422503_ _g2223922507_))))
                                  (_g2223422503_ _g2223922507_))))
                           (_g2223222601_
                            (lambda (_g2223922559_)
                              (if (gx#stx-pair? _g2223922559_)
                                  (let ((_e2229022562_
                                         (gx#syntax-e _g2223922559_)))
                                    (let ((_hd2229122566_
                                           (##car _e2229022562_))
                                          (_tl2229222569_
                                           (##cdr _e2229022562_)))
                                      (if (gx#stx-pair? _tl2229222569_)
                                          (let ((_e2229322572_
                                                 (gx#syntax-e _tl2229222569_)))
                                            (let ((_hd2229422576_
                                                   (##car _e2229322572_))
                                                  (_tl2229522579_
                                                   (##cdr _e2229322572_)))
                                              (if (gx#stx-null? _tl2229522579_)
                                                  ((lambda (_L22582_ _L22584_)
                                                     (if (let ((_$e22597_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L22584_)))
                   (if _$e22597_ _$e22597_ (gx#stx-eq? 'vector: _L22584_)))
                 (_loop-vector21949_ _L22582_ _vars22224_ _K22225_)
                 (_g2223322555_ _g2223922559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2229422576_
                                                   _hd2229122566_)
                                                  (_g2223322555_
                                                   _g2223922559_))))
                                          (_g2223322555_ _g2223922559_))))
                                  (_g2223322555_ _g2223922559_))))
                           (_g2223122641_
                            (lambda (_g2223922605_)
                              (if (gx#stx-pair? _g2223922605_)
                                  (let ((_e2228222608_
                                         (gx#syntax-e _g2223922605_)))
                                    (let ((_hd2228322612_
                                           (##car _e2228222608_))
                                          (_tl2228422615_
                                           (##cdr _e2228222608_)))
                                      (if (gx#stx-datum? _hd2228322612_)
                                          (if (equal? (gx#stx-e _hd2228322612_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2228422615_)
                                                  (let ((_e2228522618_
                                                         (gx#syntax-e
                                                          _tl2228422615_)))
                                                    (let ((_hd2228622622_
                                                           (##car _e2228522618_))
                                                          (_tl2228722625_
                                                           (##cdr _e2228522618_)))
                                                      (if (gx#stx-null?
                                                           _tl2228722625_)
                                                          ((lambda (_L22628_)
                                                             (_loop21947_
                                                              _L22628_
                                                              _vars22224_
                                                              _K22225_))
                                                           _hd2228622622_)
                                                          (_g2223222601_
                                                           _g2223922605_))))
                                                  (_g2223222601_
                                                   _g2223922605_))
                                              (_g2223222601_ _g2223922605_))
                                          (_g2223222601_ _g2223922605_))))
                                  (_g2223222601_ _g2223922605_))))
                           (_g2223022700_
                            (lambda (_g2223922645_)
                              (if (gx#stx-pair? _g2223922645_)
                                  (let ((_e2227222648_
                                         (gx#syntax-e _g2223922645_)))
                                    (let ((_hd2227322652_
                                           (##car _e2227222648_))
                                          (_tl2227422655_
                                           (##cdr _e2227222648_)))
                                      (if (gx#stx-datum? _hd2227322652_)
                                          (if (equal? (gx#stx-e _hd2227322652_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2227422655_)
                                                  (let ((_e2227522658_
                                                         (gx#syntax-e
                                                          _tl2227422655_)))
                                                    (let ((_hd2227622662_
                                                           (##car _e2227522658_))
                                                          (_tl2227722665_
                                                           (##cdr _e2227522658_)))
                                                      (if (gx#stx-pair?
                                                           _tl2227722665_)
                                                          (let ((_e2227822668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2227722665_)))
                    (let ((_hd2227922672_ (##car _e2227822668_))
                          (_tl2228022675_ (##cdr _e2227822668_)))
                      (if (gx#stx-null? _tl2228022675_)
                          ((lambda (_L22678_ _L22680_)
                             (_loop21947_
                              _L22680_
                              _vars22224_
                              (lambda (_g2269422696_)
                                (_loop21947_
                                 _L22678_
                                 _g2269422696_
                                 _K22225_))))
                           _hd2227922672_
                           _hd2227622662_)
                          (_g2223122641_ _g2223922645_))))
                  (_g2223122641_ _g2223922645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223122641_
                                                   _g2223922645_))
                                              (_g2223122641_ _g2223922645_))
                                          (_g2223122641_ _g2223922645_))))
                                  (_g2223122641_ _g2223922645_))))
                           (_g2222922759_
                            (lambda (_g2223922704_)
                              (if (gx#stx-pair? _g2223922704_)
                                  (let ((_e2226122707_
                                         (gx#syntax-e _g2223922704_)))
                                    (let ((_hd2226222711_
                                           (##car _e2226122707_))
                                          (_tl2226322714_
                                           (##cdr _e2226122707_)))
                                      (if (gx#stx-datum? _hd2226222711_)
                                          (if (equal? (gx#stx-e _hd2226222711_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2226322714_)
                                                  (let ((_e2226422717_
                                                         (gx#syntax-e
                                                          _tl2226322714_)))
                                                    (let ((_hd2226522721_
                                                           (##car _e2226422717_))
                                                          (_tl2226622724_
                                                           (##cdr _e2226422717_)))
                                                      (if (gx#stx-pair?
                                                           _tl2226622724_)
                                                          (let ((_e2226722727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2226622724_)))
                    (let ((_hd2226822731_ (##car _e2226722727_))
                          (_tl2226922734_ (##cdr _e2226722727_)))
                      (if (gx#stx-null? _tl2226922734_)
                          ((lambda (_L22737_ _L22739_)
                             (_loop21947_
                              _L22739_
                              _vars22224_
                              (lambda (_g2275322755_)
                                (_loop21947_
                                 _L22737_
                                 _g2275322755_
                                 _K22225_))))
                           _hd2226822731_
                           _hd2226522721_)
                          (_g2223022700_ _g2223922704_))))
                  (_g2223022700_ _g2223922704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223022700_
                                                   _g2223922704_))
                                              (_g2223022700_ _g2223922704_))
                                          (_g2223022700_ _g2223922704_))))
                                  (_g2223022700_ _g2223922704_))))
                           (_g2222822799_
                            (lambda (_g2223922763_)
                              (if (gx#stx-pair? _g2223922763_)
                                  (let ((_e2225322766_
                                         (gx#syntax-e _g2223922763_)))
                                    (let ((_hd2225422770_
                                           (##car _e2225322766_))
                                          (_tl2225522773_
                                           (##cdr _e2225322766_)))
                                      (if (gx#stx-datum? _hd2225422770_)
                                          (if (equal? (gx#stx-e _hd2225422770_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2225522773_)
                                                  (let ((_e2225622776_
                                                         (gx#syntax-e
                                                          _tl2225522773_)))
                                                    (let ((_hd2225722780_
                                                           (##car _e2225622776_))
                                                          (_tl2225822783_
                                                           (##cdr _e2225622776_)))
                                                      (if (gx#stx-null?
                                                           _tl2225822783_)
                                                          ((lambda (_L22786_)
                                                             (_loop21947_
                                                              _L22786_
                                                              _vars22224_
                                                              _K22225_))
                                                           _hd2225722780_)
                                                          (_g2222922759_
                                                           _g2223922763_))))
                                                  (_g2222922759_
                                                   _g2223922763_))
                                              (_g2222922759_ _g2223922763_))
                                          (_g2222922759_ _g2223922763_))))
                                  (_g2222922759_ _g2223922763_))))
                           (_g2222722898_
                            (lambda (_g2223922803_)
                              (if (gx#stx-pair? _g2223922803_)
                                  (let ((_e2224922806_
                                         (gx#syntax-e _g2223922803_)))
                                    (let ((_hd2225022810_
                                           (##car _e2224922806_))
                                          (_tl2225122813_
                                           (##cdr _e2224922806_)))
                                      ((lambda (_L22816_ _L22818_)
                                         (if (let ((_$e22829_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L22818_)))
                                               (if _$e22829_
                                                   _$e22829_
                                                   (gx#stx-eq? 'or: _L22818_)))
                                             (let* ((_g2283422846_
                                                     (lambda (_g2283522842_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2283522842_)))
                                                    (_g2283322857_
                                                     (lambda (_g2283522850_)
                                                       ((lambda ()
                                                          (_K22225_
                                                           _vars22224_)))))
                                                    (_g2283222894_
                                                     (lambda (_g2283522861_)
                                                       (if (gx#stx-pair?
                                                            _g2283522861_)
                                                           (let ((_e2283822864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2283522861_)))
                     (let ((_hd2283922868_ (##car _e2283822864_))
                           (_tl2284022871_ (##cdr _e2283822864_)))
                       ((lambda (_L22874_ _L22876_)
                          (_loop21947_
                           _L22876_
                           _vars22224_
                           (lambda (_g2288822890_)
                             (_loop21947_
                              (cons _L22818_ _L22874_)
                              _g2288822890_
                              _K22225_))))
                        _tl2284022871_
                        _hd2283922868_)))
                   (_g2283322857_ _g2283522861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2283222894_ _L22816_))
                                             (_g2222822799_ _g2223922803_)))
                                       _tl2225122813_
                                       _hd2225022810_)))
                                  (_g2222822799_ _g2223922803_))))
                           (_g2222623151_
                            (lambda (_g2223922902_)
                              (if (gx#stx-pair? _g2223922902_)
                                  (let ((_e2224122905_
                                         (gx#syntax-e _g2223922902_)))
                                    (let ((_hd2224222909_
                                           (##car _e2224122905_))
                                          (_tl2224322912_
                                           (##cdr _e2224122905_)))
                                      (if (gx#stx-datum? _hd2224222909_)
                                          (if (equal? (gx#stx-e _hd2224222909_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2224322912_)
                                                  (let ((_e2224422915_
                                                         (gx#syntax-e
                                                          _tl2224322912_)))
                                                    (let ((_hd2224522919_
                                                           (##car _e2224422915_))
                                                          (_tl2224622922_
                                                           (##cdr _e2224422915_)))
                                                      ((lambda (_L22925_)
                                                         (let* ((_g2294122978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2294222974_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2294222974_)))
                        (_g2294022989_
                         (lambda (_g2294222982_)
                           ((lambda () (_K22225_ _vars22224_)))))
                        (_g2293923067_
                         (lambda (_g2294222993_)
                           (if (gx#stx-pair? _g2294222993_)
                               (let ((_e2295822996_
                                      (gx#syntax-e _g2294222993_)))
                                 (let ((_hd2295923000_ (##car _e2295822996_))
                                       (_tl2296023003_ (##cdr _e2295822996_)))
                                   (if (gx#stx-pair? _tl2296023003_)
                                       (let ((_e2296123006_
                                              (gx#syntax-e _tl2296023003_)))
                                         (let ((_hd2296223010_
                                                (##car _e2296123006_))
                                               (_tl2296323013_
                                                (##cdr _e2296123006_)))
                                           (if (gx#stx-datum? _hd2296223010_)
                                               (if (equal? (gx#stx-e
                                                            _hd2296223010_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2296323013_)
                                                       (let ((_e2296423016_
                                                              (gx#syntax-e
                                                               _tl2296323013_)))
                                                         (let ((_hd2296523020_
                                                                (##car _e2296423016_))
                                                               (_tl2296623023_
                                                                (##cdr _e2296423016_)))
                                                           (if (gx#stx-pair?
                                                                _tl2296623023_)
                                                               (let ((_e2296723026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2296623023_)))
                         (let ((_hd2296823030_ (##car _e2296723026_))
                               (_tl2296923033_ (##cdr _e2296723026_)))
                           (if (gx#stx-datum? _hd2296823030_)
                               (if (equal? (gx#stx-e _hd2296823030_) '=>:)
                                   (if (gx#stx-pair? _tl2296923033_)
                                       (let ((_e2297023036_
                                              (gx#syntax-e _tl2296923033_)))
                                         (let ((_hd2297123040_
                                                (##car _e2297023036_))
                                               (_tl2297223043_
                                                (##cdr _e2297023036_)))
                                           (if (gx#stx-null? _tl2297223043_)
                                               ((lambda (_L23046_)
                                                  (_loop21947_
                                                   _L23046_
                                                   _vars22224_
                                                   _K22225_))
                                                _hd2297123040_)
                                               (_g2294022989_ _g2294222993_))))
                                       (_g2294022989_ _g2294222993_))
                                   (_g2294022989_ _g2294222993_))
                               (_g2294022989_ _g2294222993_))))
                       (_g2294022989_ _g2294222993_))))
               (_g2294022989_ _g2294222993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2294022989_
                                                    _g2294222993_))
                                               (_g2294022989_ _g2294222993_))))
                                       (_g2294022989_ _g2294222993_))))
                               (_g2294022989_ _g2294222993_))))
                        (_g2293823119_
                         (lambda (_g2294223071_)
                           (if (gx#stx-pair? _g2294223071_)
                               (let ((_e2294823074_
                                      (gx#syntax-e _g2294223071_)))
                                 (let ((_hd2294923078_ (##car _e2294823074_))
                                       (_tl2295023081_ (##cdr _e2294823074_)))
                                   (if (gx#stx-pair? _tl2295023081_)
                                       (let ((_e2295123084_
                                              (gx#syntax-e _tl2295023081_)))
                                         (let ((_hd2295223088_
                                                (##car _e2295123084_))
                                               (_tl2295323091_
                                                (##cdr _e2295123084_)))
                                           (if (gx#stx-datum? _hd2295223088_)
                                               (if (equal? (gx#stx-e
                                                            _hd2295223088_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2295323091_)
                                                       (let ((_e2295423094_
                                                              (gx#syntax-e
                                                               _tl2295323091_)))
                                                         (let ((_hd2295523098_
                                                                (##car _e2295423094_))
                                                               (_tl2295623101_
                                                                (##cdr _e2295423094_)))
                                                           (if (gx#stx-null?
                                                                _tl2295623101_)
                                                               ((lambda (_L23104_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop21947_ _L23104_ _vars22224_ _K22225_))
                        _hd2295523098_)
                       (_g2293923067_ _g2294223071_))))
               (_g2293923067_ _g2294223071_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2293923067_
                                                    _g2294223071_))
                                               (_g2293923067_ _g2294223071_))))
                                       (_g2293923067_ _g2294223071_))))
                               (_g2293923067_ _g2294223071_))))
                        (_g2293723147_
                         (lambda (_g2294223123_)
                           (if (gx#stx-pair? _g2294223123_)
                               (let ((_e2294423126_
                                      (gx#syntax-e _g2294223123_)))
                                 (let ((_hd2294523130_ (##car _e2294423126_))
                                       (_tl2294623133_ (##cdr _e2294423126_)))
                                   (if (gx#stx-null? _tl2294623133_)
                                       ((lambda (_L23136_)
                                          (_loop21947_
                                           _L23136_
                                           _vars22224_
                                           _K22225_))
                                        _hd2294523130_)
                                       (_g2293823119_ _g2294223123_))))
                               (_g2293823119_ _g2294223123_)))))
                   (_g2293723147_ _L22925_)))
               _tl2224622922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2222722898_
                                                   _g2223922902_))
                                              (_g2222722898_ _g2223922902_))
                                          (_g2222722898_ _g2223922902_))))
                                  (_g2222722898_ _g2223922902_)))))
                      (_g2222623151_ _ptree22222_))))
                 (_loop-vector21949_
                  (lambda (_body22110_ _vars22112_ _K22113_)
                    (let* ((_g2211622137_
                            (lambda (_g2211722133_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2211722133_)))
                           (_g2211522178_
                            (lambda (_g2211722141_)
                              (if (gx#stx-pair? _g2211722141_)
                                  (let ((_e2212622144_
                                         (gx#syntax-e _g2211722141_)))
                                    (let ((_hd2212722148_
                                           (##car _e2212622144_))
                                          (_tl2212822151_
                                           (##cdr _e2212622144_)))
                                      (if (gx#stx-datum? _hd2212722148_)
                                          (if (equal? (gx#stx-e _hd2212722148_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2212822151_)
                                                  (let ((_e2212922154_
                                                         (gx#syntax-e
                                                          _tl2212822151_)))
                                                    (let ((_hd2213022158_
                                                           (##car _e2212922154_))
                                                          (_tl2213122161_
                                                           (##cdr _e2212922154_)))
                                                      (if (gx#stx-null?
                                                           _tl2213122161_)
                                                          ((lambda (_L22164_)
                                                             (_loop21947_
                                                              _L22164_
                                                              _vars22112_
                                                              _K22113_))
                                                           _hd2213022158_)
                                                          (_g2211622137_
                                                           _g2211722141_))))
                                                  (_g2211622137_
                                                   _g2211722141_))
                                              (_g2211622137_ _g2211722141_))
                                          (_g2211622137_ _g2211722141_))))
                                  (_g2211622137_ _g2211722141_))))
                           (_g2211422218_
                            (lambda (_g2211722182_)
                              (if (gx#stx-pair? _g2211722182_)
                                  (let ((_e2211922185_
                                         (gx#syntax-e _g2211722182_)))
                                    (let ((_hd2212022189_
                                           (##car _e2211922185_))
                                          (_tl2212122192_
                                           (##cdr _e2211922185_)))
                                      (if (gx#stx-datum? _hd2212022189_)
                                          (if (equal? (gx#stx-e _hd2212022189_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2212122192_)
                                                  (let ((_e2212222195_
                                                         (gx#syntax-e
                                                          _tl2212122192_)))
                                                    (let ((_hd2212322199_
                                                           (##car _e2212222195_))
                                                          (_tl2212422202_
                                                           (##cdr _e2212222195_)))
                                                      (if (gx#stx-null?
                                                           _tl2212422202_)
                                                          ((lambda (_L22205_)
                                                             (_loop-list21950_
                                                              _L22205_
                                                              _vars22112_
                                                              _K22113_))
                                                           _hd2212322199_)
                                                          (_g2211522178_
                                                           _g2211722182_))))
                                                  (_g2211522178_
                                                   _g2211722182_))
                                              (_g2211522178_ _g2211722182_))
                                          (_g2211522178_ _g2211722182_))))
                                  (_g2211522178_ _g2211722182_)))))
                      (_g2211422218_ _body22110_))))
                 (_loop-list21950_
                  (lambda (_rest22040_ _vars22042_ _K22043_)
                    (let* ((_g2204622058_
                            (lambda (_g2204722054_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2204722054_)))
                           (_g2204522069_
                            (lambda (_g2204722062_)
                              ((lambda () (_K22043_ _vars22042_)))))
                           (_g2204422106_
                            (lambda (_g2204722073_)
                              (if (gx#stx-pair? _g2204722073_)
                                  (let ((_e2205022076_
                                         (gx#syntax-e _g2204722073_)))
                                    (let ((_hd2205122080_
                                           (##car _e2205022076_))
                                          (_tl2205222083_
                                           (##cdr _e2205022076_)))
                                      ((lambda (_L22086_ _L22088_)
                                         (_loop21947_
                                          _L22088_
                                          _vars22042_
                                          (lambda (_g2210022102_)
                                            (_loop-list21950_
                                             _L22086_
                                             _g2210022102_
                                             _K22043_))))
                                       _tl2205222083_
                                       _hd2205122080_)))
                                  (_g2204522069_ _g2204722073_)))))
                      (_g2204422106_ _rest22040_))))
                 (_loop-class-list21951_
                  (lambda (_rest21953_ _vars21955_ _K21956_)
                    (let* ((_g2195921974_
                            (lambda (_g2196021970_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2196021970_)))
                           (_g2195821985_
                            (lambda (_g2196021978_)
                              ((lambda () (_K21956_ _vars21955_)))))
                           (_g2195722036_
                            (lambda (_g2196021989_)
                              (if (gx#stx-pair? _g2196021989_)
                                  (let ((_e2196321992_
                                         (gx#syntax-e _g2196021989_)))
                                    (let ((_hd2196421996_
                                           (##car _e2196321992_))
                                          (_tl2196521999_
                                           (##cdr _e2196321992_)))
                                      (if (gx#stx-pair? _tl2196521999_)
                                          (let ((_e2196622002_
                                                 (gx#syntax-e _tl2196521999_)))
                                            (let ((_hd2196722006_
                                                   (##car _e2196622002_))
                                                  (_tl2196822009_
                                                   (##cdr _e2196622002_)))
                                              ((lambda (_L22012_ _L22014_)
                                                 (_loop21947_
                                                  _L22014_
                                                  _vars21955_
                                                  (lambda (_g2203022032_)
                                                    (_loop-class-list21951_
                                                     _L22012_
                                                     _g2203022032_
                                                     _K21956_))))
                                               _tl2196822009_
                                               _hd2196722006_)))
                                          (_g2195821985_ _g2196021989_))))
                                  (_g2195821985_ _g2196021989_)))))
                      (_g2195722036_ _rest21953_)))))
          (_loop21947_ _ptree21944_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx18760_ _tgt18762_ _ptree18763_ _K18764_ _E18765_)
        (letrec ((_generate118767_
                  (lambda (_tgt20297_ _ptree20299_ _K20300_ _E20301_)
                    (let* ((_g2030320311_
                            (lambda (_g2030420307_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2030420307_)))
                           (_g2030221940_
                            (lambda (_g2030420315_)
                              ((lambda (_L20318_)
                                 (let ()
                                   (let* ((_g2034520471_
                                           (lambda (_g2034620467_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2034620467_)))
                                          (_g2034420492_
                                           (lambda (_g2034620475_)
                                             (if (gx#stx-pair? _g2034620475_)
                                                 (let ((_e2046320478_
                                                        (gx#syntax-e
                                                         _g2034620475_)))
                                                   (let ((_hd2046420482_
                                                          (##car _e2046320478_))
                                                         (_tl2046520485_
                                                          (##cdr _e2046320478_)))
                                                     (if (gx#stx-datum?
                                                          _hd2046420482_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2046420482_)
                             'any:)
                     (if (gx#stx-null? _tl2046520485_)
                         ((lambda () _K20300_))
                         (_g2034520471_ _g2034620475_))
                     (_g2034520471_ _g2034620475_))
                 (_g2034520471_ _g2034620475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034520471_
                                                  _g2034620475_))))
                                          (_g2034320535_
                                           (lambda (_g2034620496_)
                                             (if (gx#stx-pair? _g2034620496_)
                                                 (let ((_e2045720499_
                                                        (gx#syntax-e
                                                         _g2034620496_)))
                                                   (let ((_hd2045820503_
                                                          (##car _e2045720499_))
                                                         (_tl2045920506_
                                                          (##cdr _e2045720499_)))
                                                     (if (gx#stx-datum?
                                                          _hd2045820503_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2045820503_)
                             'var:)
                     (if (gx#stx-pair? _tl2045920506_)
                         (let ((_e2046020509_ (gx#syntax-e _tl2045920506_)))
                           (let ((_hd2046120513_ (##car _e2046020509_))
                                 (_tl2046220516_ (##cdr _e2046020509_)))
                             (if (gx#stx-null? _tl2046220516_)
                                 ((lambda (_L20519_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L20519_
                                                            (cons _L20318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20300_ '()))))
                                  _hd2046120513_)
                                 (_g2034420492_ _g2034620496_))))
                         (_g2034420492_ _g2034620496_))
                     (_g2034420492_ _g2034620496_))
                 (_g2034420492_ _g2034620496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034420492_
                                                  _g2034620496_))))
                                          (_g2034220620_
                                           (lambda (_g2034620539_)
                                             (if (gx#stx-pair? _g2034620539_)
                                                 (let ((_e2044720542_
                                                        (gx#syntax-e
                                                         _g2034620539_)))
                                                   (let ((_hd2044820546_
                                                          (##car _e2044720542_))
                                                         (_tl2044920549_
                                                          (##cdr _e2044720542_)))
                                                     (if (gx#stx-datum?
                                                          _hd2044820546_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2044820546_)
                             'apply:)
                     (if (gx#stx-pair? _tl2044920549_)
                         (let ((_e2045020552_ (gx#syntax-e _tl2044920549_)))
                           (let ((_hd2045120556_ (##car _e2045020552_))
                                 (_tl2045220559_ (##cdr _e2045020552_)))
                             (if (gx#stx-pair? _tl2045220559_)
                                 (let ((_e2045320562_
                                        (gx#syntax-e _tl2045220559_)))
                                   (let ((_hd2045420566_ (##car _e2045320562_))
                                         (_tl2045520569_
                                          (##cdr _e2045320562_)))
                                     (if (gx#stx-null? _tl2045520569_)
                                         ((lambda (_L20572_ _L20574_)
                                            (let* ((_g2058920597_
                                                    (lambda (_g2059020593_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2059020593_)))
                                                   (_g2058820616_
                                                    (lambda (_g2059020601_)
                                                      ((lambda (_L20604_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L20604_
                                           (cons (cons _L20574_
                                                       (cons _L20318_ '()))
                                                 '()))
                                     '())
                               (cons (_generate118767_
                                      _L20604_
                                      _L20572_
                                      _K20300_
                                      _E20301_)
                                     '())))))
               _g2059020601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2058820616_
                                               (gx#genident 'e))))
                                          _hd2045420566_
                                          _hd2045120556_)
                                         (_g2034320535_ _g2034620539_))))
                                 (_g2034320535_ _g2034620539_))))
                         (_g2034320535_ _g2034620539_))
                     (_g2034320535_ _g2034620539_))
                 (_g2034320535_ _g2034620539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034320535_
                                                  _g2034620539_))))
                                          (_g2034120702_
                                           (lambda (_g2034620624_)
                                             (if (gx#stx-pair? _g2034620624_)
                                                 (let ((_e2043920627_
                                                        (gx#syntax-e
                                                         _g2034620624_)))
                                                   (let ((_hd2044020631_
                                                          (##car _e2043920627_))
                                                         (_tl2044120634_
                                                          (##cdr _e2043920627_)))
                                                     (if (gx#stx-datum?
                                                          _hd2044020631_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2044020631_)
                             'datum:)
                     (if (gx#stx-pair? _tl2044120634_)
                         (let ((_e2044220637_ (gx#syntax-e _tl2044120634_)))
                           (let ((_hd2044320641_ (##car _e2044220637_))
                                 (_tl2044420644_ (##cdr _e2044220637_)))
                             (if (gx#stx-null? _tl2044420644_)
                                 ((lambda (_L20647_)
                                    (let* ((_g2066020668_
                                            (lambda (_g2066120664_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2066120664_)))
                                           (_g2065920687_
                                            (lambda (_g2066120672_)
                                              ((lambda (_L20675_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L20675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20318_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L20647_ '()))
                                         '())))
                       (cons _K20300_ (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2066120672_))))
                                      (_g2065920687_
                                       (let ((_e20691_ (gx#stx-e _L20647_)))
                                         (if (let ((_$e20694_
                                                    (symbol? _e20691_)))
                                               (if _$e20694_
                                                   _$e20694_
                                                   (let ((_$e20698_
                                                          (keyword? _e20691_)))
                                                     (if _$e20698_
                                                         _$e20698_
                                                         (immediate?
                                                          _e20691_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e20691_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2044320641_)
                                 (_g2034220620_ _g2034620624_))))
                         (_g2034220620_ _g2034620624_))
                     (_g2034220620_ _g2034620624_))
                 (_g2034220620_ _g2034620624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034220620_
                                                  _g2034620624_))))
                                          (_g2034020756_
                                           (lambda (_g2034620706_)
                                             (if (gx#stx-pair? _g2034620706_)
                                                 (let ((_e2042920709_
                                                        (gx#syntax-e
                                                         _g2034620706_)))
                                                   (let ((_hd2043020713_
                                                          (##car _e2042920709_))
                                                         (_tl2043120716_
                                                          (##cdr _e2042920709_)))
                                                     (if (gx#stx-datum?
                                                          _hd2043020713_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2043020713_)
                             'class:)
                     (if (gx#stx-pair? _tl2043120716_)
                         (let ((_e2043220719_ (gx#syntax-e _tl2043120716_)))
                           (let ((_hd2043320723_ (##car _e2043220719_))
                                 (_tl2043420726_ (##cdr _e2043220719_)))
                             (if (gx#stx-pair? _tl2043420726_)
                                 (let ((_e2043520729_
                                        (gx#syntax-e _tl2043420726_)))
                                   (let ((_hd2043620733_ (##car _e2043520729_))
                                         (_tl2043720736_
                                          (##cdr _e2043520729_)))
                                     (if (gx#stx-null? _tl2043720736_)
                                         ((lambda (_L20739_ _L20741_)
                                            (_generate-class18773_
                                             (gx#stx-e _L20741_)
                                             _tgt20297_
                                             _L20739_
                                             _K20300_
                                             _E20301_))
                                          _hd2043620733_
                                          _hd2043320723_)
                                         (_g2034120702_ _g2034620706_))))
                                 (_g2034120702_ _g2034620706_))))
                         (_g2034120702_ _g2034620706_))
                     (_g2034120702_ _g2034620706_))
                 (_g2034120702_ _g2034620706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034120702_
                                                  _g2034620706_))))
                                          (_g2033920810_
                                           (lambda (_g2034620760_)
                                             (if (gx#stx-pair? _g2034620760_)
                                                 (let ((_e2041820763_
                                                        (gx#syntax-e
                                                         _g2034620760_)))
                                                   (let ((_hd2041920767_
                                                          (##car _e2041820763_))
                                                         (_tl2042020770_
                                                          (##cdr _e2041820763_)))
                                                     (if (gx#stx-datum?
                                                          _hd2041920767_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2041920767_)
                             'struct:)
                     (if (gx#stx-pair? _tl2042020770_)
                         (let ((_e2042120773_ (gx#syntax-e _tl2042020770_)))
                           (let ((_hd2042220777_ (##car _e2042120773_))
                                 (_tl2042320780_ (##cdr _e2042120773_)))
                             (if (gx#stx-pair? _tl2042320780_)
                                 (let ((_e2042420783_
                                        (gx#syntax-e _tl2042320780_)))
                                   (let ((_hd2042520787_ (##car _e2042420783_))
                                         (_tl2042620790_
                                          (##cdr _e2042420783_)))
                                     (if (gx#stx-null? _tl2042620790_)
                                         ((lambda (_L20793_ _L20795_)
                                            (_generate-struct18772_
                                             (gx#stx-e _L20795_)
                                             _tgt20297_
                                             _L20793_
                                             _K20300_
                                             _E20301_))
                                          _hd2042520787_
                                          _hd2042220777_)
                                         (_g2034020756_ _g2034620760_))))
                                 (_g2034020756_ _g2034620760_))))
                         (_g2034020756_ _g2034620760_))
                     (_g2034020756_ _g2034620760_))
                 (_g2034020756_ _g2034620760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2034020756_
                                                  _g2034620760_))))
                                          (_g2033820988_
                                           (lambda (_g2034620814_)
                                             (if (gx#stx-pair? _g2034620814_)
                                                 (let ((_e2041020817_
                                                        (gx#syntax-e
                                                         _g2034620814_)))
                                                   (let ((_hd2041120821_
                                                          (##car _e2041020817_))
                                                         (_tl2041220824_
                                                          (##cdr _e2041020817_)))
                                                     (if (gx#stx-datum?
                                                          _hd2041120821_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2041120821_)
                             'vector:)
                     (if (gx#stx-pair? _tl2041220824_)
                         (let ((_e2041320827_ (gx#syntax-e _tl2041220824_)))
                           (let ((_hd2041420831_ (##car _e2041320827_))
                                 (_tl2041520834_ (##cdr _e2041320827_)))
                             (if (gx#stx-null? _tl2041520834_)
                                 ((lambda (_L20837_)
                                    (let* ((_g2085120872_
                                            (lambda (_g2085220868_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2085220868_)))
                                           (_g2085020913_
                                            (lambda (_g2085220876_)
                                              (if (gx#stx-pair? _g2085220876_)
                                                  (let ((_e2086120879_
                                                         (gx#syntax-e
                                                          _g2085220876_)))
                                                    (let ((_hd2086220883_
                                                           (##car _e2086120879_))
                                                          (_tl2086320886_
                                                           (##cdr _e2086120879_)))
                                                      (if (gx#stx-datum?
                                                           _hd2086220883_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2086220883_)
                              'list:)
                      (if (gx#stx-pair? _tl2086320886_)
                          (let ((_e2086420889_ (gx#syntax-e _tl2086320886_)))
                            (let ((_hd2086520893_ (##car _e2086420889_))
                                  (_tl2086620896_ (##cdr _e2086420889_)))
                              (if (gx#stx-null? _tl2086620896_)
                                  ((lambda (_L20899_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20318_ '()))
                                                 (cons (_generate-list-vector18771_
                                                        _tgt20297_
                                                        _L20899_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20300_
                                                        _E20301_)
                                                       (cons _E20301_ '())))))
                                   _hd2086520893_)
                                  (_g2085120872_ _g2085220876_))))
                          (_g2085120872_ _g2085220876_))
                      (_g2085120872_ _g2085220876_))
                  (_g2085120872_ _g2085220876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2085120872_
                                                   _g2085220876_))))
                                           (_g2084920984_
                                            (lambda (_g2085220917_)
                                              (if (gx#stx-pair? _g2085220917_)
                                                  (let ((_e2085420920_
                                                         (gx#syntax-e
                                                          _g2085220917_)))
                                                    (let ((_hd2085520924_
                                                           (##car _e2085420920_))
                                                          (_tl2085620927_
                                                           (##cdr _e2085420920_)))
                                                      (if (gx#stx-datum?
                                                           _hd2085520924_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2085520924_)
                              'simple:)
                      (if (gx#stx-pair? _tl2085620927_)
                          (let ((_e2085720930_ (gx#syntax-e _tl2085620927_)))
                            (let ((_hd2085820934_ (##car _e2085720930_))
                                  (_tl2085920937_ (##cdr _e2085720930_)))
                              (if (gx#stx-null? _tl2085920937_)
                                  ((lambda (_L20940_)
                                     (let* ((_g2095320961_
                                             (lambda (_g2095420957_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2095420957_)))
                                            (_g2095220980_
                                             (lambda (_g2095420965_)
                                               ((lambda (_L20968_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20318_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L20968_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector18770_
                               _tgt20297_
                               _L20940_
                               '0
                               _K20300_
                               _E20301_)
                              (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2095420965_))))
                                       (_g2095220980_
                                        (gx#stx-length _L20940_))))
                                   _hd2085820934_)
                                  (_g2085020913_ _g2085220917_))))
                          (_g2085020913_ _g2085220917_))
                      (_g2085020913_ _g2085220917_))
                  (_g2085020913_ _g2085220917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2085020913_
                                                   _g2085220917_)))))
                                      (_g2084920984_ _L20837_)))
                                  _hd2041420831_)
                                 (_g2033920810_ _g2034620814_))))
                         (_g2033920810_ _g2034620814_))
                     (_g2033920810_ _g2034620814_))
                 (_g2033920810_ _g2034620814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033920810_
                                                  _g2034620814_))))
                                          (_g2033721166_
                                           (lambda (_g2034620992_)
                                             (if (gx#stx-pair? _g2034620992_)
                                                 (let ((_e2040320995_
                                                        (gx#syntax-e
                                                         _g2034620992_)))
                                                   (let ((_hd2040420999_
                                                          (##car _e2040320995_))
                                                         (_tl2040521002_
                                                          (##cdr _e2040320995_)))
                                                     (if (gx#stx-datum?
                                                          _hd2040420999_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2040420999_)
                             'values:)
                     (if (gx#stx-pair? _tl2040521002_)
                         (let ((_e2040621005_ (gx#syntax-e _tl2040521002_)))
                           (let ((_hd2040721009_ (##car _e2040621005_))
                                 (_tl2040821012_ (##cdr _e2040621005_)))
                             (if (gx#stx-null? _tl2040821012_)
                                 ((lambda (_L21015_)
                                    (let* ((_g2102921050_
                                            (lambda (_g2103021046_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2103021046_)))
                                           (_g2102821091_
                                            (lambda (_g2103021054_)
                                              (if (gx#stx-pair? _g2103021054_)
                                                  (let ((_e2103921057_
                                                         (gx#syntax-e
                                                          _g2103021054_)))
                                                    (let ((_hd2104021061_
                                                           (##car _e2103921057_))
                                                          (_tl2104121064_
                                                           (##cdr _e2103921057_)))
                                                      (if (gx#stx-datum?
                                                           _hd2104021061_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2104021061_)
                              'list:)
                      (if (gx#stx-pair? _tl2104121064_)
                          (let ((_e2104221067_ (gx#syntax-e _tl2104121064_)))
                            (let ((_hd2104321071_ (##car _e2104221067_))
                                  (_tl2104421074_ (##cdr _e2104221067_)))
                              (if (gx#stx-null? _tl2104421074_)
                                  ((lambda (_L21077_)
                                     (_generate-list-vector18771_
                                      _tgt20297_
                                      _L21077_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20300_
                                      _E20301_))
                                   _hd2104321071_)
                                  (_g2102921050_ _g2103021054_))))
                          (_g2102921050_ _g2103021054_))
                      (_g2102921050_ _g2103021054_))
                  (_g2102921050_ _g2103021054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2102921050_
                                                   _g2103021054_))))
                                           (_g2102721162_
                                            (lambda (_g2103021095_)
                                              (if (gx#stx-pair? _g2103021095_)
                                                  (let ((_e2103221098_
                                                         (gx#syntax-e
                                                          _g2103021095_)))
                                                    (let ((_hd2103321102_
                                                           (##car _e2103221098_))
                                                          (_tl2103421105_
                                                           (##cdr _e2103221098_)))
                                                      (if (gx#stx-datum?
                                                           _hd2103321102_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2103321102_)
                              'simple:)
                      (if (gx#stx-pair? _tl2103421105_)
                          (let ((_e2103521108_ (gx#syntax-e _tl2103421105_)))
                            (let ((_hd2103621112_ (##car _e2103521108_))
                                  (_tl2103721115_ (##cdr _e2103521108_)))
                              (if (gx#stx-null? _tl2103721115_)
                                  ((lambda (_L21118_)
                                     (let* ((_g2113121139_
                                             (lambda (_g2113221135_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2113221135_)))
                                            (_g2113021158_
                                             (lambda (_g2113221143_)
                                               ((lambda (_L21146_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20318_ '()))
                                    (cons _L21146_ '())))
                        (cons (_generate-simple-vector18770_
                               _tgt20297_
                               _L21118_
                               '0
                               _K20300_
                               _E20301_)
                              (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2113221143_))))
                                       (_g2113021158_
                                        (gx#stx-length _L21118_))))
                                   _hd2103621112_)
                                  (_g2102821091_ _g2103021095_))))
                          (_g2102821091_ _g2103021095_))
                      (_g2102821091_ _g2103021095_))
                  (_g2102821091_ _g2103021095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2102821091_
                                                   _g2103021095_)))))
                                      (_g2102721162_ _L21015_)))
                                  _hd2040721009_)
                                 (_g2033820988_ _g2034620992_))))
                         (_g2033820988_ _g2034620992_))
                     (_g2033820988_ _g2034620992_))
                 (_g2033820988_ _g2034620992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033820988_
                                                  _g2034620992_))))
                                          (_g2033621237_
                                           (lambda (_g2034621170_)
                                             (if (gx#stx-pair? _g2034621170_)
                                                 (let ((_e2039621173_
                                                        (gx#syntax-e
                                                         _g2034621170_)))
                                                   (let ((_hd2039721177_
                                                          (##car _e2039621173_))
                                                         (_tl2039821180_
                                                          (##cdr _e2039621173_)))
                                                     (if (gx#stx-datum?
                                                          _hd2039721177_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2039721177_)
                             'box:)
                     (if (gx#stx-pair? _tl2039821180_)
                         (let ((_e2039921183_ (gx#syntax-e _tl2039821180_)))
                           (let ((_hd2040021187_ (##car _e2039921183_))
                                 (_tl2040121190_ (##cdr _e2039921183_)))
                             (if (gx#stx-null? _tl2040121190_)
                                 ((lambda (_L21193_)
                                    (let* ((_g2120621214_
                                            (lambda (_g2120721210_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2120721210_)))
                                           (_g2120521233_
                                            (lambda (_g2120721218_)
                                              ((lambda (_L21221_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20318_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21221_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20318_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate118767_
                                                _L21221_
                                                _L21193_
                                                _K20300_
                                                _E20301_)
                                               '())))
                             (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2120721218_))))
                                      (_g2120521233_ (gx#genident 'e))))
                                  _hd2040021187_)
                                 (_g2033721166_ _g2034621170_))))
                         (_g2033721166_ _g2034621170_))
                     (_g2033721166_ _g2034621170_))
                 (_g2033721166_ _g2034621170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033721166_
                                                  _g2034621170_))))
                                          (_g2033521291_
                                           (lambda (_g2034621241_)
                                             (if (gx#stx-pair? _g2034621241_)
                                                 (let ((_e2038621244_
                                                        (gx#syntax-e
                                                         _g2034621241_)))
                                                   (let ((_hd2038721248_
                                                          (##car _e2038621244_))
                                                         (_tl2038821251_
                                                          (##cdr _e2038621244_)))
                                                     (if (gx#stx-datum?
                                                          _hd2038721248_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2038721248_)
                             'splice:)
                     (if (gx#stx-pair? _tl2038821251_)
                         (let ((_e2038921254_ (gx#syntax-e _tl2038821251_)))
                           (let ((_hd2039021258_ (##car _e2038921254_))
                                 (_tl2039121261_ (##cdr _e2038921254_)))
                             (if (gx#stx-pair? _tl2039121261_)
                                 (let ((_e2039221264_
                                        (gx#syntax-e _tl2039121261_)))
                                   (let ((_hd2039321268_ (##car _e2039221264_))
                                         (_tl2039421271_
                                          (##cdr _e2039221264_)))
                                     (if (gx#stx-null? _tl2039421271_)
                                         ((lambda (_L21274_ _L21276_)
                                            (_generate-splice18769_
                                             _tgt20297_
                                             _L21276_
                                             _L21274_
                                             _K20300_
                                             _E20301_))
                                          _hd2039321268_
                                          _hd2039021258_)
                                         (_g2033621237_ _g2034621241_))))
                                 (_g2033621237_ _g2034621241_))))
                         (_g2033621237_ _g2034621241_))
                     (_g2033621237_ _g2034621241_))
                 (_g2033621237_ _g2034621241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033621237_
                                                  _g2034621241_))))
                                          (_g2033421312_
                                           (lambda (_g2034621295_)
                                             (if (gx#stx-pair? _g2034621295_)
                                                 (let ((_e2038121298_
                                                        (gx#syntax-e
                                                         _g2034621295_)))
                                                   (let ((_hd2038221302_
                                                          (##car _e2038121298_))
                                                         (_tl2038321305_
                                                          (##cdr _e2038121298_)))
                                                     (if (gx#stx-datum?
                                                          _hd2038221302_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2038221302_)
                             'null:)
                     (if (gx#stx-null? _tl2038321305_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20318_ '()))
                                        (cons _K20300_ (cons _E20301_ '()))))))
                         (_g2033521291_ _g2034621295_))
                     (_g2033521291_ _g2034621295_))
                 (_g2033521291_ _g2034621295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033521291_
                                                  _g2034621295_))))
                                          (_g2033321431_
                                           (lambda (_g2034621316_)
                                             (if (gx#stx-pair? _g2034621316_)
                                                 (let ((_e2037221319_
                                                        (gx#syntax-e
                                                         _g2034621316_)))
                                                   (let ((_hd2037321323_
                                                          (##car _e2037221319_))
                                                         (_tl2037421326_
                                                          (##cdr _e2037221319_)))
                                                     (if (gx#stx-datum?
                                                          _hd2037321323_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2037321323_)
                             'cons:)
                     (if (gx#stx-pair? _tl2037421326_)
                         (let ((_e2037521329_ (gx#syntax-e _tl2037421326_)))
                           (let ((_hd2037621333_ (##car _e2037521329_))
                                 (_tl2037721336_ (##cdr _e2037521329_)))
                             (if (gx#stx-pair? _tl2037721336_)
                                 (let ((_e2037821339_
                                        (gx#syntax-e _tl2037721336_)))
                                   (let ((_hd2037921343_ (##car _e2037821339_))
                                         (_tl2038021346_
                                          (##cdr _e2037821339_)))
                                     (if (gx#stx-null? _tl2038021346_)
                                         ((lambda (_L21349_ _L21351_)
                                            (let* ((_g2136721382_
                                                    (lambda (_g2136821378_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2136821378_)))
                                                   (_g2136621427_
                                                    (lambda (_g2136821386_)
                                                      (if (gx#stx-pair?
                                                           _g2136821386_)
                                                          (let ((_e2137121389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2136821386_)))
                    (let ((_hd2137221393_ (##car _e2137121389_))
                          (_tl2137321396_ (##cdr _e2137121389_)))
                      (if (gx#stx-pair? _tl2137321396_)
                          (let ((_e2137421399_ (gx#syntax-e _tl2137321396_)))
                            (let ((_hd2137521403_ (##car _e2137421399_))
                                  (_tl2137621406_ (##cdr _e2137421399_)))
                              (if (gx#stx-null? _tl2137621406_)
                                  ((lambda (_L21409_ _L21411_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20318_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20318_ '()))
                                               '()))
                                   (cons (cons _L21409_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20318_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate118767_
                                    _L21411_
                                    _L21351_
                                    (_generate118767_
                                     _L21409_
                                     _L21349_
                                     _K20300_
                                     _E20301_)
                                    _E20301_)
                                   '())))
                 (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2137521403_
                                   _hd2137221393_)
                                  (_g2136721382_ _g2136821386_))))
                          (_g2136721382_ _g2136821386_))))
                  (_g2136721382_ _g2136821386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2136621427_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2037921343_
                                          _hd2037621333_)
                                         (_g2033421312_ _g2034621316_))))
                                 (_g2033421312_ _g2034621316_))))
                         (_g2033421312_ _g2034621316_))
                     (_g2033421312_ _g2034621316_))
                 (_g2033421312_ _g2034621316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033421312_
                                                  _g2034621316_))))
                                          (_g2033221471_
                                           (lambda (_g2034621435_)
                                             (if (gx#stx-pair? _g2034621435_)
                                                 (let ((_e2036421438_
                                                        (gx#syntax-e
                                                         _g2034621435_)))
                                                   (let ((_hd2036521442_
                                                          (##car _e2036421438_))
                                                         (_tl2036621445_
                                                          (##cdr _e2036421438_)))
                                                     (if (gx#stx-datum?
                                                          _hd2036521442_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2036521442_)
                             'not:)
                     (if (gx#stx-pair? _tl2036621445_)
                         (let ((_e2036721448_ (gx#syntax-e _tl2036621445_)))
                           (let ((_hd2036821452_ (##car _e2036721448_))
                                 (_tl2036921455_ (##cdr _e2036721448_)))
                             (if (gx#stx-null? _tl2036921455_)
                                 ((lambda (_L21458_)
                                    (_generate118767_
                                     _tgt20297_
                                     _L21458_
                                     _E20301_
                                     _K20300_))
                                  _hd2036821452_)
                                 (_g2033321431_ _g2034621435_))))
                         (_g2033321431_ _g2034621435_))
                     (_g2033321431_ _g2034621435_))
                 (_g2033321431_ _g2034621435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033321431_
                                                  _g2034621435_))))
                                          (_g2033121559_
                                           (lambda (_g2034621475_)
                                             (if (gx#stx-pair? _g2034621475_)
                                                 (let ((_e2036021478_
                                                        (gx#syntax-e
                                                         _g2034621475_)))
                                                   (let ((_hd2036121482_
                                                          (##car _e2036021478_))
                                                         (_tl2036221485_
                                                          (##cdr _e2036021478_)))
                                                     (if (gx#stx-datum?
                                                          _hd2036121482_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2036121482_)
                             'or:)
                     ((lambda (_L21488_)
                        (let* ((_g2150021512_
                                (lambda (_g2150121508_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2150121508_)))
                               (_g2149921523_
                                (lambda (_g2150121516_)
                                  ((lambda () _E20301_))))
                               (_g2149821555_
                                (lambda (_g2150121527_)
                                  (if (gx#stx-pair? _g2150121527_)
                                      (let ((_e2150421530_
                                             (gx#syntax-e _g2150121527_)))
                                        (let ((_hd2150521534_
                                               (##car _e2150421530_))
                                              (_tl2150621537_
                                               (##cdr _e2150421530_)))
                                          ((lambda (_L21540_ _L21542_)
                                             (_generate118767_
                                              _tgt20297_
                                              _L21542_
                                              _K20300_
                                              (_generate118767_
                                               _tgt20297_
                                               (cons 'or: _L21540_)
                                               _K20300_
                                               _E20301_)))
                                           _tl2150621537_
                                           _hd2150521534_)))
                                      (_g2149921523_ _g2150121527_)))))
                          (_g2149821555_ _L21488_)))
                      _tl2036221485_)
                     (_g2033221471_ _g2034621475_))
                 (_g2033221471_ _g2034621475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033221471_
                                                  _g2034621475_))))
                                          (_g2033021647_
                                           (lambda (_g2034621563_)
                                             (if (gx#stx-pair? _g2034621563_)
                                                 (let ((_e2035621566_
                                                        (gx#syntax-e
                                                         _g2034621563_)))
                                                   (let ((_hd2035721570_
                                                          (##car _e2035621566_))
                                                         (_tl2035821573_
                                                          (##cdr _e2035621566_)))
                                                     (if (gx#stx-datum?
                                                          _hd2035721570_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2035721570_)
                             'and:)
                     ((lambda (_L21576_)
                        (let* ((_g2158821600_
                                (lambda (_g2158921596_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2158921596_)))
                               (_g2158721611_
                                (lambda (_g2158921604_)
                                  ((lambda () _K20300_))))
                               (_g2158621643_
                                (lambda (_g2158921615_)
                                  (if (gx#stx-pair? _g2158921615_)
                                      (let ((_e2159221618_
                                             (gx#syntax-e _g2158921615_)))
                                        (let ((_hd2159321622_
                                               (##car _e2159221618_))
                                              (_tl2159421625_
                                               (##cdr _e2159221618_)))
                                          ((lambda (_L21628_ _L21630_)
                                             (_generate118767_
                                              _tgt20297_
                                              _L21630_
                                              (_generate118767_
                                               _tgt20297_
                                               (cons 'and: _L21628_)
                                               _K20300_
                                               _E20301_)
                                              _E20301_))
                                           _tl2159421625_
                                           _hd2159321622_)))
                                      (_g2158721611_ _g2158921615_)))))
                          (_g2158621643_ _L21576_)))
                      _tl2035821573_)
                     (_g2033121559_ _g2034621563_))
                 (_g2033121559_ _g2034621563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033121559_
                                                  _g2034621563_))))
                                          (_g2032921936_
                                           (lambda (_g2034621651_)
                                             (if (gx#stx-pair? _g2034621651_)
                                                 (let ((_e2034921654_
                                                        (gx#syntax-e
                                                         _g2034621651_)))
                                                   (let ((_hd2035021658_
                                                          (##car _e2034921654_))
                                                         (_tl2035121661_
                                                          (##cdr _e2034921654_)))
                                                     (if (gx#stx-datum?
                                                          _hd2035021658_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2035021658_)
                             '?:)
                     (if (gx#stx-pair? _tl2035121661_)
                         (let ((_e2035221664_ (gx#syntax-e _tl2035121661_)))
                           (let ((_hd2035321668_ (##car _e2035221664_))
                                 (_tl2035421671_ (##cdr _e2035221664_)))
                             ((lambda (_L21674_ _L21676_)
                                (let* ((_g2169221724_
                                        (lambda (_g2169321720_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2169321720_)))
                                       (_g2169121822_
                                        (lambda (_g2169321728_)
                                          (if (gx#stx-pair? _g2169321728_)
                                              (let ((_e2170721731_
                                                     (gx#syntax-e
                                                      _g2169321728_)))
                                                (let ((_hd2170821735_
                                                       (##car _e2170721731_))
                                                      (_tl2170921738_
                                                       (##cdr _e2170721731_)))
                                                  (if (gx#stx-datum?
                                                       _hd2170821735_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2170821735_)
                          '::)
                  (if (gx#stx-pair? _tl2170921738_)
                      (let ((_e2171021741_ (gx#syntax-e _tl2170921738_)))
                        (let ((_hd2171121745_ (##car _e2171021741_))
                              (_tl2171221748_ (##cdr _e2171021741_)))
                          (if (gx#stx-pair? _tl2171221748_)
                              (let ((_e2171321751_
                                     (gx#syntax-e _tl2171221748_)))
                                (let ((_hd2171421755_ (##car _e2171321751_))
                                      (_tl2171521758_ (##cdr _e2171321751_)))
                                  (if (gx#stx-datum? _hd2171421755_)
                                      (if (equal? (gx#stx-e _hd2171421755_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2171521758_)
                                              (let ((_e2171621761_
                                                     (gx#syntax-e
                                                      _tl2171521758_)))
                                                (let ((_hd2171721765_
                                                       (##car _e2171621761_))
                                                      (_tl2171821768_
                                                       (##cdr _e2171621761_)))
                                                  (if (gx#stx-null?
                                                       _tl2171821768_)
                                                      ((lambda (_L21771_
                                                                _L21773_)
                                                         (let* ((_g2179121799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2179221795_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2179221795_)))
                        (_g2179021818_
                         (lambda (_g2179221803_)
                           ((lambda (_L21806_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L21676_
                                                        (cons _L20318_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L21806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L21773_ (cons _L20318_ '()))
                                        '()))
                            '())
                      (cons (_generate118767_
                             _L21806_
                             _L21771_
                             _K20300_
                             _E20301_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20301_ '()))))))
                            _g2179221803_))))
                   (_g2179021818_ (gx#genident 'e))))
               _hd2171721765_
               _hd2171121745_)
              (_g2169221724_ _g2169321728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169221724_ _g2169321728_))
                                          (_g2169221724_ _g2169321728_))
                                      (_g2169221724_ _g2169321728_))))
                              (_g2169221724_ _g2169321728_))))
                      (_g2169221724_ _g2169321728_))
                  (_g2169221724_ _g2169321728_))
              (_g2169221724_ _g2169321728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169221724_ _g2169321728_))))
                                       (_g2169021893_
                                        (lambda (_g2169321826_)
                                          (if (gx#stx-pair? _g2169321826_)
                                              (let ((_e2169921829_
                                                     (gx#syntax-e
                                                      _g2169321826_)))
                                                (let ((_hd2170021833_
                                                       (##car _e2169921829_))
                                                      (_tl2170121836_
                                                       (##cdr _e2169921829_)))
                                                  (if (gx#stx-datum?
                                                       _hd2170021833_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2170021833_)
                          '=>:)
                  (if (gx#stx-pair? _tl2170121836_)
                      (let ((_e2170221839_ (gx#syntax-e _tl2170121836_)))
                        (let ((_hd2170321843_ (##car _e2170221839_))
                              (_tl2170421846_ (##cdr _e2170221839_)))
                          (if (gx#stx-null? _tl2170421846_)
                              ((lambda (_L21849_)
                                 (let* ((_g2186221870_
                                         (lambda (_g2186321866_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2186321866_)))
                                        (_g2186121889_
                                         (lambda (_g2186321874_)
                                           ((lambda (_L21877_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L21877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L21676_ (cons _L20318_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L21877_
                                      (cons (_generate118767_
                                             _L21877_
                                             _L21849_
                                             _K20300_
                                             _E20301_)
                                            (cons _E20301_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2186321874_))))
                                   (_g2186121889_ (gx#genident 'e))))
                               _hd2170321843_)
                              (_g2169121822_ _g2169321826_))))
                      (_g2169121822_ _g2169321826_))
                  (_g2169121822_ _g2169321826_))
              (_g2169121822_ _g2169321826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169121822_ _g2169321826_))))
                                       (_g2168921921_
                                        (lambda (_g2169321897_)
                                          (if (gx#stx-pair? _g2169321897_)
                                              (let ((_e2169521900_
                                                     (gx#syntax-e
                                                      _g2169321897_)))
                                                (let ((_hd2169621904_
                                                       (##car _e2169521900_))
                                                      (_tl2169721907_
                                                       (##cdr _e2169521900_)))
                                                  (if (gx#stx-null?
                                                       _tl2169721907_)
                                                      ((lambda (_L21910_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L21676_ (cons _L20318_ '())))
                             (cons (_generate118767_
                                    _tgt20297_
                                    _L21910_
                                    _K20300_
                                    _E20301_)
                                   (cons _E20301_ '())))))
               _hd2169621904_)
              (_g2169021893_ _g2169321897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169021893_ _g2169321897_))))
                                       (_g2168821932_
                                        (lambda (_g2169321925_)
                                          (if (gx#stx-null? _g2169321925_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L21676_ (cons _L20318_ '())))
                     (cons _K20300_ (cons _E20301_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2168921921_ _g2169321925_)))))
                                  (_g2168821932_ _L21674_)))
                              _tl2035421671_
                              _hd2035321668_)))
                         (_g2033021647_ _g2034621651_))
                     (_g2033021647_ _g2034621651_))
                 (_g2033021647_ _g2034621651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2033021647_
                                                  _g2034621651_)))))
                                     (_g2032921936_ _ptree20299_))))
                               _g2030420315_))))
                      (_g2030221940_ _tgt20297_))))
                 (_generate-splice18769_
                  (lambda (_tgt19669_ _hd19671_ _rest19672_ _K19673_ _E19674_)
                    (let* ((_g1967619693_
                            (lambda (_g1967719689_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1967719689_)))
                           (_g1967520293_
                            (lambda (_g1967719697_)
                              (if (gx#stx-pair/null? _g1967719697_)
                                  (if (fx>= (gx#stx-length _g1967719697_) '0)
                                      (let ((_g30777_
                                             (gx#syntax-split-splice
                                              _g1967719697_
                                              '0)))
                                        (begin
                                          (let ((_g30778_
                                                 (values-count _g30777_)))
                                            (if (not (fx= _g30778_ 2))
                                                (error "Context expects 2 values"
                                                       _g30778_)))
                                          (let ((_target1967919700_
                                                 (values-ref _g30777_ 0))
                                                (_tl1968119703_
                                                 (values-ref _g30777_ 1)))
                                            (if (gx#stx-null? _tl1968119703_)
                                                (letrec ((_loop1968219706_
                                                          (lambda (_hd1968019710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var1968619713_)
                    (if (gx#stx-pair? _hd1968019710_)
                        (let ((_e1968319716_ (gx#syntax-e _hd1968019710_)))
                          (let ((_lp-hd1968419720_ (##car _e1968319716_))
                                (_lp-tl1968519723_ (##cdr _e1968319716_)))
                            (_loop1968219706_
                             _lp-tl1968519723_
                             (cons _lp-hd1968419720_ _var1968619713_))))
                        (let ((_var1968719726_ (reverse _var1968619713_)))
                          ((lambda (_L19730_)
                             (let ()
                               (let* ((_g1974619763_
                                       (lambda (_g1974719759_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1974719759_)))
                                      (_g1974520281_
                                       (lambda (_g1974719767_)
                                         (if (gx#stx-pair/null? _g1974719767_)
                                             (if (fx>= (gx#stx-length
                                                        _g1974719767_)
                                                       '0)
                                                 (let ((_g30779_
                                                        (gx#syntax-split-splice
                                                         _g1974719767_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30780_
                                                            (values-count
                                                             _g30779_)))
                                                       (if (not (fx= _g30780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1974919770_
                                                            (values-ref
                                                             _g30779_
                                                             0))
                                                           (_tl1975119773_
                                                            (values-ref
                                                             _g30779_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1975119773_)
                                                           (letrec ((_loop1975219776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1975019780_ _var-r1975619783_)
                               (if (gx#stx-pair? _hd1975019780_)
                                   (let ((_e1975319786_
                                          (gx#syntax-e _hd1975019780_)))
                                     (let ((_lp-hd1975419790_
                                            (##car _e1975319786_))
                                           (_lp-tl1975519793_
                                            (##cdr _e1975319786_)))
                                       (_loop1975219776_
                                        _lp-tl1975519793_
                                        (cons _lp-hd1975419790_
                                              _var-r1975619783_))))
                                   (let ((_var-r1975719796_
                                          (reverse _var-r1975619783_)))
                                     ((lambda (_L19800_)
                                        (let ()
                                          (let* ((_g1981719834_
                                                  (lambda (_g1981819830_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1981819830_)))
                                                 (_g1981620269_
                                                  (lambda (_g1981819838_)
                                                    (if (gx#stx-pair/null?
                                                         _g1981819838_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1981819838_)
                          '0)
                    (let ((_g30781_ (gx#syntax-split-splice _g1981819838_ '0)))
                      (begin
                        (let ((_g30782_ (values-count _g30781_)))
                          (if (not (fx= _g30782_ 2))
                              (error "Context expects 2 values" _g30782_)))
                        (let ((_target1982019841_ (values-ref _g30781_ 0))
                              (_tl1982219844_ (values-ref _g30781_ 1)))
                          (if (gx#stx-null? _tl1982219844_)
                              (letrec ((_loop1982319847_
                                        (lambda (_hd1982119851_
                                                 _init1982719854_)
                                          (if (gx#stx-pair? _hd1982119851_)
                                              (let ((_e1982419857_
                                                     (gx#syntax-e
                                                      _hd1982119851_)))
                                                (let ((_lp-hd1982519861_
                                                       (##car _e1982419857_))
                                                      (_lp-tl1982619864_
                                                       (##cdr _e1982419857_)))
                                                  (_loop1982319847_
                                                   _lp-tl1982619864_
                                                   (cons _lp-hd1982519861_
                                                         _init1982719854_))))
                                              (let ((_init1982819867_
                                                     (reverse _init1982719854_)))
                                                ((lambda (_L19871_)
                                                   (let ()
                                                     (let* ((_g1988819896_
                                                             (lambda (_g1988919892_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1988919892_)))
                                                            (_g1988720265_
                                                             (lambda (_g1988919900_)
                                                               ((lambda (_L19903_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g1991619924_
                                    (lambda (_g1991719920_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g1991719920_)))
                                   (_g1991520261_
                                    (lambda (_g1991719928_)
                                      ((lambda (_L19931_)
                                         (let ()
                                           (let* ((_g1994419952_
                                                   (lambda (_g1994519948_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1994519948_)))
                                                  (_g1994320257_
                                                   (lambda (_g1994519956_)
                                                     ((lambda (_L19959_)
                                                        (let ()
                                                          (let* ((_g1997219980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1997319976_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1997319976_)))
                         (_g1997120253_
                          (lambda (_g1997319984_)
                            ((lambda (_L19987_)
                               (let ()
                                 (let* ((_g2000020008_
                                         (lambda (_g2000120004_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2000120004_)))
                                        (_g1999920249_
                                         (lambda (_g2000120012_)
                                           ((lambda (_L20015_)
                                              (let ()
                                                (let* ((_g2002820036_
                                                        (lambda (_g2002920032_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2002920032_)))
                                                       (_g2002720245_
                                                        (lambda (_g2002920040_)
                                                          ((lambda (_L20043_)
                                                             (let ()
                                                               (let* ((_g2005620064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2005720060_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2005720060_)))
                              (_g2005520241_
                               (lambda (_g2005720068_)
                                 ((lambda (_L20071_)
                                    (let ()
                                      (let* ((_g2008420092_
                                              (lambda (_g2008520088_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2008520088_)))
                                             (_g2008320226_
                                              (lambda (_g2008520096_)
                                                ((lambda (_L20099_)
                                                   (let ()
                                                     (let* ((_g2011220120_
                                                             (lambda (_g2011320116_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2011320116_)))
                                                            (_g2011120214_
                                                             (lambda (_g2011320124_)
                                                               ((lambda (_L20127_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2014020148_
                                    (lambda (_g2014120144_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2014120144_)))
                                   (_g2013920210_
                                    (lambda (_g2014120152_)
                                      ((lambda (_L20155_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L19931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20043_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2016920180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2017020183_)
                        (cons _g2016920180_ _g2017020183_))
                      '()
                      _L19730_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20071_ '())))
                                   '()))
                       (cons (cons _L19987_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20015_
                                                           (cons _L20043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2017120186_ _g2017220189_)
                                    (cons _g2017120186_ _g2017220189_))
                                  '()
                                  _L19800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20155_ '())))
                                         '()))
                             (cons (cons _L19959_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2017320192_ _g2017420195_)
                                    (cons _g2017320192_ _g2017420195_))
                                  '()
                                  _L19800_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20043_ '()))
                                     (cons (cons _L19987_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20043_
                     (begin
                       '#!void
                       (foldr (lambda (_g2017520198_ _g2017620201_)
                                (cons _g2017520198_ _g2017620201_))
                              '()
                              _L19800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20127_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L19959_
                             (cons _L19903_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2017720204_
                                                     _g2017820207_)
                                              (cons _g2017720204_
                                                    _g2017820207_))
                                            '()
                                            _L19871_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2014120152_))))
                              (_g2013920210_
                               (_generate118767_
                                _L20015_
                                _hd19671_
                                _L20099_
                                _L20127_)))))
                        _g2011320124_))))
               (_g2011120214_
                (cons _L19931_
                      (cons _L20043_
                            (begin
                              '#!void
                              (foldr (lambda (_g2021720220_ _g2021820223_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2021720220_ '()))
                                             _g2021820223_))
                                     '()
                                     _L19800_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2008520096_))))
                                        (_g2008320226_
                                         (cons _L19959_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20043_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L19800_
                                                        _L19730_)
                                                       (foldr (lambda (_g2022920233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2023020236_
                               _g2023120238_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2023020236_
                                          (cons _g2022920233_ '())))
                              _g2023120238_))
                      '()
                      _L19800_
                      _L19730_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2005720068_))))
                         (_g2005520241_
                          (_generate118767_
                           _L20043_
                           _rest19672_
                           _K19673_
                           _E19674_)))))
                   _g2002920040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2002720245_
                                                   (gx#genident 'rest)))))
                                            _g2000120012_))))
                                   (_g1999920249_ (gx#genident 'hd)))))
                             _g1997319984_))))
                    (_g1997120253_ (gx#genident 'splice-try)))))
              _g1994519956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1994320257_
                                              (gx#genident 'splice-loop)))))
                                       _g1991719928_))))
                              (_g1991520261_ (gx#genident 'splice-rest)))))
                        _g1988919900_))))
               (_g1988720265_ _tgt19669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init1982819867_))))))
                                (_loop1982319847_ _target1982019841_ '()))
                              (_g1981719834_ _g1981819838_)))))
                    (_g1981719834_ _g1981819838_))
                (_g1981719834_ _g1981819838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1981620269_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2027220275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2027320278_)
                  (cons _g2027220275_ _g2027320278_))
                '()
                _L19730_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r1975719796_))))))
                     (_loop1975219776_ _target1974919770_ '()))
                   (_g1974619763_ _g1974719767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1974619763_ _g1974719767_))
                                             (_g1974619763_ _g1974719767_)))))
                                 (_g1974520281_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2028420287_
                                                     _g2028520290_)
                                              (cons _g2028420287_
                                                    _g2028520290_))
                                            '()
                                            _L19730_)))))))
                           _var1968719726_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1968219706_
                                                   _target1967919700_
                                                   '()))
                                                (_g1967619693_
                                                 _g1967719697_)))))
                                      (_g1967619693_ _g1967719697_))
                                  (_g1967619693_ _g1967719697_)))))
                      (_g1967520293_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd19671_)))))
                 (_generate-simple-vector18770_
                  (lambda (_tgt19511_
                           _body19513_
                           _start19514_
                           _K19515_
                           _E19516_)
                    (let _recur19518_ ((_rest19521_ _body19513_)
                                       (_off19523_ _start19514_))
                      (let* ((_g1952619538_
                              (lambda (_g1952719534_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1952719534_)))
                             (_g1952519549_
                              (lambda (_g1952719542_) ((lambda () _K19515_))))
                             (_g1952419665_
                              (lambda (_g1952719553_)
                                (if (gx#stx-pair? _g1952719553_)
                                    (let ((_e1953019556_
                                           (gx#syntax-e _g1952719553_)))
                                      (let ((_hd1953119560_
                                             (##car _e1953019556_))
                                            (_tl1953219563_
                                             (##cdr _e1953019556_)))
                                        ((lambda (_L19566_ _L19568_)
                                           (let* ((_g1958319602_
                                                   (lambda (_g1958419598_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1958419598_)))
                                                  (_g1958219661_
                                                   (lambda (_g1958419606_)
                                                     (if (gx#stx-pair?
                                                          _g1958419606_)
                                                         (let ((_e1958819609_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1958419606_)))
                   (let ((_hd1958919613_ (##car _e1958819609_))
                         (_tl1959019616_ (##cdr _e1958819609_)))
                     (if (gx#stx-pair? _tl1959019616_)
                         (let ((_e1959119619_ (gx#syntax-e _tl1959019616_)))
                           (let ((_hd1959219623_ (##car _e1959119619_))
                                 (_tl1959319626_ (##cdr _e1959119619_)))
                             (if (gx#stx-pair? _tl1959319626_)
                                 (let ((_e1959419629_
                                        (gx#syntax-e _tl1959319626_)))
                                   (let ((_hd1959519633_ (##car _e1959419629_))
                                         (_tl1959619636_
                                          (##cdr _e1959419629_)))
                                     (if (gx#stx-null? _tl1959619636_)
                                         ((lambda (_L19639_ _L19641_ _L19642_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L19641_ (cons _L19639_ '())))
                                    '()))
                        '())
                  (cons (_generate118767_
                         _L19642_
                         _L19568_
                         (_recur19518_ _L19566_ (fx1+ _off19523_))
                         _E19516_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1959519633_
                                          _hd1959219623_
                                          _hd1958919613_)
                                         (_g1958319602_ _g1958419606_))))
                                 (_g1958319602_ _g1958419606_))))
                         (_g1958319602_ _g1958419606_))))
                 (_g1958319602_ _g1958419606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1958219661_
                                              (list (gx#genident 'e)
                                                    _tgt19511_
                                                    _off19523_))))
                                         _tl1953219563_
                                         _hd1953119560_)))
                                    (_g1952519549_ _g1952719553_)))))
                        (_g1952419665_ _rest19521_)))))
                 (_generate-list-vector18771_
                  (lambda (_tgt19421_
                           _body19423_
                           _tgt->list19424_
                           _start19425_
                           _K19426_
                           _E19427_)
                    (let* ((_g1942919448_
                            (lambda (_g1943019444_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1943019444_)))
                           (_g1942819507_
                            (lambda (_g1943019452_)
                              (if (gx#stx-pair? _g1943019452_)
                                  (let ((_e1943419455_
                                         (gx#syntax-e _g1943019452_)))
                                    (let ((_hd1943519459_
                                           (##car _e1943419455_))
                                          (_tl1943619462_
                                           (##cdr _e1943419455_)))
                                      (if (gx#stx-pair? _tl1943619462_)
                                          (let ((_e1943719465_
                                                 (gx#syntax-e _tl1943619462_)))
                                            (let ((_hd1943819469_
                                                   (##car _e1943719465_))
                                                  (_tl1943919472_
                                                   (##cdr _e1943719465_)))
                                              (if (gx#stx-pair? _tl1943919472_)
                                                  (let ((_e1944019475_
                                                         (gx#syntax-e
                                                          _tl1943919472_)))
                                                    (let ((_hd1944119479_
                                                           (##car _e1944019475_))
                                                          (_tl1944219482_
                                                           (##cdr _e1944019475_)))
                                                      (if (gx#stx-null?
                                                           _tl1944219482_)
                                                          ((lambda (_L19485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19487_
                            _L19488_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19488_
                                               (cons (cons _L19485_
                                                           (cons _L19487_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate118767_
                                          _L19488_
                                          _body19423_
                                          _K19426_
                                          _E19427_)
                                         '())))))
                   _hd1944119479_
                   _hd1943819469_
                   _hd1943519459_)
                  (_g1942919448_ _g1943019452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1942919448_
                                                   _g1943019452_))))
                                          (_g1942919448_ _g1943019452_))))
                                  (_g1942919448_ _g1943019452_)))))
                      (_g1942819507_
                       (list (gx#genident 'e) _tgt19421_ _tgt->list19424_)))))
                 (_generate-struct18772_
                  (lambda (_info19154_
                           _tgt19156_
                           _body19157_
                           _K19158_
                           _E19159_)
                    (let* ((_rtd19161_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19154_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19154_)
                                '#f))
                           (_fields19171_
                            (let _lp19164_ ((_rtd19167_ _rtd19161_)
                                            (_k19169_ '0))
                              (if _rtd19167_
                                  (_lp19164_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19167_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19167_))
                                        _k19169_))
                                  _k19169_)))
                           (_final?19174_
                            (if _rtd19161_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19161_))
                                '#f))
                           (_g1917719185_
                            (lambda (_g1917819181_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1917819181_)))
                           (_g1917619417_
                            (lambda (_g1917819189_)
                              ((lambda (_L19192_)
                                 (let ()
                                   (let* ((_g1920719215_
                                           (lambda (_g1920819211_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1920819211_)))
                                          (_g1920619413_
                                           (lambda (_g1920819219_)
                                             ((lambda (_L19222_)
                                                (let ()
                                                  (let* ((_g1923519243_
                                                          (lambda (_g1923619239_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1923619239_)))
                                                         (_g1923419409_
                                                          (lambda (_g1923619247_)
                                                            ((lambda (_L19250_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1926619287_
                                   (lambda (_g1926719283_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1926719283_)))
                                  (_g1926519330_
                                   (lambda (_g1926719291_)
                                     (if (gx#stx-pair? _g1926719291_)
                                         (let ((_e1927619294_
                                                (gx#syntax-e _g1926719291_)))
                                           (let ((_hd1927719298_
                                                  (##car _e1927619294_))
                                                 (_tl1927819301_
                                                  (##cdr _e1927619294_)))
                                             (if (gx#stx-datum? _hd1927719298_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1927719298_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1927819301_)
                                                         (let ((_e1927919304_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1927819301_)))
                   (let ((_hd1928019308_ (##car _e1927919304_))
                         (_tl1928119311_ (##cdr _e1927919304_)))
                     (if (gx#stx-null? _tl1928119311_)
                         ((lambda (_L19314_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19250_
                                              (cons _L19222_
                                                    (cons _L19192_ '())))
                                        (cons (_generate-list-vector18771_
                                               _tgt19156_
                                               _L19314_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19158_
                                               _E19159_)
                                              (cons _E19159_ '())))))
                          _hd1928019308_)
                         (_g1926619287_ _g1926719291_))))
                 (_g1926619287_ _g1926719291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1926619287_
                                                      _g1926719291_))
                                                 (_g1926619287_
                                                  _g1926719291_))))
                                         (_g1926619287_ _g1926719291_))))
                                  (_g1926419405_
                                   (lambda (_g1926719334_)
                                     (if (gx#stx-pair? _g1926719334_)
                                         (let ((_e1926919337_
                                                (gx#syntax-e _g1926719334_)))
                                           (let ((_hd1927019341_
                                                  (##car _e1926919337_))
                                                 (_tl1927119344_
                                                  (##cdr _e1926919337_)))
                                             (if (gx#stx-datum? _hd1927019341_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1927019341_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1927119344_)
                                                         (let ((_e1927219347_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1927119344_)))
                   (let ((_hd1927319351_ (##car _e1927219347_))
                         (_tl1927419354_ (##cdr _e1927219347_)))
                     (if (gx#stx-null? _tl1927419354_)
                         ((lambda (_L19357_)
                            (let ((_K19370_
                                   (_generate-simple-vector18770_
                                    _tgt19156_
                                    _L19357_
                                    '1
                                    _K19158_
                                    _E19159_)))
                              (if (if _rtd19161_
                                      (fx<= (gx#stx-length _L19357_)
                                            _fields19171_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19250_
                                                    (cons _L19222_
                                                          (cons _L19192_ '())))
                                              (cons _K19370_
                                                    (cons _E19159_ '()))))
                                  (let* ((_g1937319381_
                                          (lambda (_g1937419377_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1937419377_)))
                                         (_g1937219401_
                                          (lambda (_g1937419385_)
                                            ((lambda (_L19388_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19250_
                                       (cons _L19222_ (cons _L19192_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19388_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19370_ (cons _E19159_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1937419385_))))
                                    (_g1937219401_
                                     (gx#stx-length _L19357_))))))
                          _hd1927319351_)
                         (_g1926519330_ _g1926719334_))))
                 (_g1926519330_ _g1926719334_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1926519330_
                                                      _g1926719334_))
                                                 (_g1926519330_
                                                  _g1926719334_))))
                                         (_g1926519330_ _g1926719334_)))))
                             (_g1926419405_ _body19157_)))))
                     _g1923619247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1923419409_
                                                     (if _final?19174_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1920819219_))))
                                     (_g1920619413_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19154_)))))
                               _g1917819189_))))
                      (_g1917619417_ _tgt19156_))))
                 (_generate-class18773_
                  (lambda (_info18775_
                           _tgt18777_
                           _body18778_
                           _K18779_
                           _E18780_)
                    (letrec* ((_rtd18782_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info18775_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info18775_)
                                   '#f))
                              (_known-slot?18784_
                               (if _rtd18782_
                                   (lambda (_key19148_)
                                     (let ((_slot19151_
                                            (keyword->symbol
                                             (gx#stx-e _key19148_))))
                                       (_rtd-known-slot?18786_
                                        _rtd18782_
                                        _slot19151_)))
                                   false))
                              (_final?18785_
                               (if _rtd18782_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd18782_))
                                   '#f))
                              (_rtd-known-slot?18786_
                               (lambda (_rtd19135_ _slot19137_)
                                 (if _rtd19135_
                                     (let ((_$e19139_
                                            (memq _slot19137_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19135_))))
                                       (if _$e19139_
                                           _$e19139_
                                           (ormap (lambda (_g1914219144_)
                                                    (_rtd-known-slot?18786_
                                                     _g1914219144_
                                                     _slot19137_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19135_)))))
                                     '#f)))
                              (_recur18787_
                               (lambda (_klass18921_ _rest18923_)
                                 (let* ((_g1892618942_
                                         (lambda (_g1892718938_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1892718938_)))
                                        (_g1892518953_
                                         (lambda (_g1892718946_)
                                           ((lambda () _K18779_))))
                                        (_g1892419131_
                                         (lambda (_g1892718957_)
                                           (if (gx#stx-pair? _g1892718957_)
                                               (let ((_e1893118960_
                                                      (gx#syntax-e
                                                       _g1892718957_)))
                                                 (let ((_hd1893218964_
                                                        (##car _e1893118960_))
                                                       (_tl1893318967_
                                                        (##cdr _e1893118960_)))
                                                   (if (gx#stx-pair?
                                                        _tl1893318967_)
                                                       (let ((_e1893418970_
                                                              (gx#syntax-e
                                                               _tl1893318967_)))
                                                         (let ((_hd1893518974_
                                                                (##car _e1893418970_))
                                                               (_tl1893618977_
                                                                (##cdr _e1893418970_)))
                                                           ((lambda (_L18980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18982_
                             _L18983_)
                      (let* ((_g1899919007_
                              (lambda (_g1900019003_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1900019003_)))
                             (_g1899819127_
                              (lambda (_g1900019011_)
                                ((lambda (_L19014_)
                                   (let ()
                                     (let* ((_g1902619034_
                                             (lambda (_g1902719030_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1902719030_)))
                                            (_g1902519123_
                                             (lambda (_g1902719038_)
                                               ((lambda (_L19041_)
                                                  (let ()
                                                    (let* ((_g1905419062_
                                                            (lambda (_g1905519058_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1905519058_)))
                                                           (_g1905319119_
                                                            (lambda (_g1905519066_)
                                                              ((lambda (_L19069_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1908219090_
                                   (lambda (_g1908319086_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1908319086_)))
                                  (_g1908119115_
                                   (lambda (_g1908319094_)
                                     ((lambda (_L19097_)
                                        (let ()
                                          (let ((_K19110_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19014_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate118767_
                            _L19097_
                            _L18982_
                            (_recur18787_ _klass18921_ _L18980_)
                            _E18780_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?18784_ _L18983_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19041_
                                                  (cons _L18983_ '())))
                                      '()))
                          '())
                    (cons _K19110_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19041_
                                                  (cons _L18983_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19069_
                                      (cons _K19110_ (cons _E18780_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1908319094_))))
                             (_g1908119115_ (gx#genident 'e)))))
                       _g1905519066_))))
              (_g1905319119_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1902719038_))))
                                       (_g1902519123_ _klass18921_))))
                                 _g1900019011_))))
                        (_g1899819127_ _tgt18777_)))
                    _tl1893618977_
                    _hd1893518974_
                    _hd1893218964_)))
               (_g1892518953_ _g1892718957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1892518953_
                                                _g1892718957_)))))
                                   (_g1892419131_ _rest18923_)))))
                      (let* ((_g1878918797_
                              (lambda (_g1879018793_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1879018793_)))
                             (_g1878818917_
                              (lambda (_g1879018801_)
                                ((lambda (_L18804_)
                                   (let ()
                                     (let* ((_g1881918827_
                                             (lambda (_g1882018823_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1882018823_)))
                                            (_g1881818913_
                                             (lambda (_g1882018831_)
                                               ((lambda (_L18834_)
                                                  (let ()
                                                    (let* ((_g1884718855_
                                                            (lambda (_g1884818851_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1884818851_)))
                                                           (_g1884618909_
                                                            (lambda (_g1884818859_)
                                                              ((lambda (_L18862_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1887518883_
                                   (lambda (_g1887618879_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1887618879_)))
                                  (_g1887418905_
                                   (lambda (_g1887618887_)
                                     ((lambda (_L18890_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L18890_
                                                              (cons _L18862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L18834_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L18804_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L18834_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur18787_ _L18804_ _body18778_)
                                        '())))
                      (cons _E18780_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1887618887_))))
                             (_g1887418905_
                              (if _final?18785_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1884818859_))))
              (_g1884618909_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info18775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1882018831_))))
                                       (_g1881818913_ _tgt18777_))))
                                 _g1879018801_))))
                        (_g1878818917_ (gx#genident 'class)))))))
          (_generate118767_ _tgt18762_ _ptree18763_ _K18764_ _E18765_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx17759_ _tgt-lst17761_ _clauses17762_)
        (letrec ((_parse-body17764_
                  (lambda (_hd-len18582_)
                    (let _lp18585_ ((_rest18588_ _clauses17762_)
                                    (_r18590_ '()))
                      (let* ((_g1859318605_
                              (lambda (_g1859418601_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1859418601_)))
                             (_g1859218616_
                              (lambda (_g1859418609_) ((lambda () _r18590_))))
                             (_g1859118756_
                              (lambda (_g1859418620_)
                                (if (gx#stx-pair? _g1859418620_)
                                    (let ((_e1859718623_
                                           (gx#syntax-e _g1859418620_)))
                                      (let ((_hd1859818627_
                                             (##car _e1859718623_))
                                            (_tl1859918630_
                                             (##cdr _e1859718623_)))
                                        ((lambda (_L18633_ _L18635_)
                                           (let* ((_g1865218668_
                                                   (lambda (_g1865318664_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1865318664_)))
                                                  (_g1865118679_
                                                   (lambda (_g1865318672_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx17759_
                                                         _L18635_)))))
                                                  (_g1865018720_
                                                   (lambda (_g1865318683_)
                                                     (if (gx#stx-pair?
                                                          _g1865318683_)
                                                         (let ((_e1866018686_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1865318683_)))
                   (let ((_hd1866118690_ (##car _e1866018686_))
                         (_tl1866218693_ (##cdr _e1866018686_)))
                     ((lambda (_L18696_ _L18698_)
                        (if (if (gx#stx-list? _L18698_)
                                (if (fx= (gx#stx-length _L18698_)
                                         _hd-len18582_)
                                    (if (gx#stx-list? _L18696_)
                                        (not (gx#stx-null? _L18696_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp18585_
                             _L18633_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1871018712_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1871018712_
                                                   _stx17759_))
                                                _L18698_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L18696_)
                                                      (let ((_$e18716_
                                                             (gx#stx-source
                                                              _L18635_)))
                                                        (if _$e18716_
                                                            _$e18716_
                                                            (gx#stx-source
                                                             _stx17759_))))
                                                     '())))
                                   _r18590_))
                            (_g1865118679_ _g1865318683_)))
                      _tl1866218693_
                      _hd1866118690_)))
                 (_g1865118679_ _g1865318683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1864918752_
                                                   (lambda (_g1865318724_)
                                                     (if (gx#stx-pair?
                                                          _g1865318724_)
                                                         (let ((_e1865518727_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1865318724_)))
                   (let ((_hd1865618731_ (##car _e1865518727_))
                         (_tl1865718734_ (##cdr _e1865518727_)))
                     (if (gx#identifier? _hd1865618731_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g30783_|
                              _hd1865618731_)
                             ((lambda (_L18737_)
                                (if (if (gx#stx-list? _L18737_)
                                        (not (gx#stx-null? _L18737_))
                                        '#f)
                                    (if (gx#stx-null? _L18633_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L18737_)
                         (let ((_$e18748_ (gx#stx-source _L18635_)))
                           (if _$e18748_
                               _$e18748_
                               (gx#stx-source _stx17759_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r18590_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx17759_
                                         _L18635_))
                                    (_g1865018720_ _g1865318724_)))
                              _tl1865718734_)
                             (_g1865018720_ _g1865318724_))
                         (_g1865018720_ _g1865318724_))))
                 (_g1865018720_ _g1865318724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1864918752_ _L18635_)))
                                         _tl1859918630_
                                         _hd1859818627_)))
                                    (_g1859218616_ _g1859418620_)))))
                        (_g1859118756_ _rest18588_)))))
                 (_generate-body17766_
                  (lambda (_body18399_)
                    (let* ((_g1840218410_
                            (lambda (_g1840318406_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1840318406_)))
                           (_g1840118578_
                            (lambda (_g1840318414_)
                              ((lambda (_L18417_)
                                 (let ()
                                   (let* ((_g1842918446_
                                           (lambda (_g1843018442_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1843018442_)))
                                          (_g1842818574_
                                           (lambda (_g1843018450_)
                                             (if (gx#stx-pair/null?
                                                  _g1843018450_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1843018450_)
                                                           '0)
                                                     (let ((_g30784_
                                                            (gx#syntax-split-splice
                                                             _g1843018450_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30785_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30784_)))
                   (if (not (fx= _g30785_ 2))
                       (error "Context expects 2 values" _g30785_)))
                 (let ((_target1843218453_ (values-ref _g30784_ 0))
                       (_tl1843418456_ (values-ref _g30784_ 1)))
                   (if (gx#stx-null? _tl1843418456_)
                       (letrec ((_loop1843518459_
                                 (lambda (_hd1843318463_ _target1843918466_)
                                   (if (gx#stx-pair? _hd1843318463_)
                                       (let ((_e1843618469_
                                              (gx#syntax-e _hd1843318463_)))
                                         (let ((_lp-hd1843718473_
                                                (##car _e1843618469_))
                                               (_lp-tl1843818476_
                                                (##cdr _e1843618469_)))
                                           (_loop1843518459_
                                            _lp-tl1843818476_
                                            (cons _lp-hd1843718473_
                                                  _target1843918466_))))
                                       (let ((_target1844018479_
                                              (reverse _target1843918466_)))
                                         ((lambda (_L18483_)
                                            (let ()
                                              (let* ((_g1850018508_
                                                      (lambda (_g1850118504_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1850118504_)))
                                                     (_g1849918562_
                                                      (lambda (_g1850118512_)
                                                        ((lambda (_L18515_)
                                                           (let ()
                                                             (let* ((_g1852818536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1852918532_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1852918532_)))
                            (_g1852718558_
                             (lambda (_g1852918540_)
                               ((lambda (_L18543_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18417_
                                                              (cons _L18515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L18543_ '()))))))
                                _g1852918540_))))
                       (_g1852718558_
                        (_generate-clauses17767_
                         _body18399_
                         (cons _L18417_ '()))))))
                 _g1850118512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1849918562_
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
                                          (foldr (lambda (_g1856518568_
                                                          _g1856618571_)
                                                   (cons _g1856518568_
                                                         _g1856618571_))
                                                 '()
                                                 _L18483_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx17759_))))))
                                          _target1844018479_))))))
                         (_loop1843518459_ _target1843218453_ '()))
                       (_g1842918446_ _g1843018450_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1842918446_
                                                      _g1843018450_))
                                                 (_g1842918446_
                                                  _g1843018450_)))))
                                     (_g1842818574_ _tgt-lst17761_))))
                               _g1840318414_))))
                      (_g1840118578_ (gx#genident 'E)))))
                 (_generate-clauses17767_
                  (lambda (_rest18081_ _E18083_)
                    (let* ((_g1808718103_
                            (lambda (_g1808818099_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1808818099_)))
                           (_g1808618114_
                            (lambda (_g1808818107_) ((lambda () _E18083_))))
                           (_g1808518290_
                            (lambda (_g1808818118_)
                              (if (gx#stx-pair? _g1808818118_)
                                  (let ((_e1809518121_
                                         (gx#syntax-e _g1808818118_)))
                                    (let ((_hd1809618125_
                                           (##car _e1809518121_))
                                          (_tl1809718128_
                                           (##cdr _e1809518121_)))
                                      ((lambda (_L18131_ _L18133_)
                                         (let* ((_g1814618165_
                                                 (lambda (_g1814718161_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1814718161_)))
                                                (_g1814518286_
                                                 (lambda (_g1814718169_)
                                                   (if (gx#stx-pair?
                                                        _g1814718169_)
                                                       (let ((_e1815118172_
                                                              (gx#syntax-e
                                                               _g1814718169_)))
                                                         (let ((_hd1815218176_
                                                                (##car _e1815118172_))
                                                               (_tl1815318179_
                                                                (##cdr _e1815118172_)))
                                                           (if (gx#stx-pair?
                                                                _tl1815318179_)
                                                               (let ((_e1815418182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1815318179_)))
                         (let ((_hd1815518186_ (##car _e1815418182_))
                               (_tl1815618189_ (##cdr _e1815418182_)))
                           (if (gx#stx-pair? _tl1815618189_)
                               (let ((_e1815718192_
                                      (gx#syntax-e _tl1815618189_)))
                                 (let ((_hd1815818196_ (##car _e1815718192_))
                                       (_tl1815918199_ (##cdr _e1815718192_)))
                                   (if (gx#stx-null? _tl1815918199_)
                                       ((lambda (_L18202_ _L18204_ _L18205_)
                                          (let* ((_g1822218237_
                                                  (lambda (_g1822318233_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1822318233_)))
                                                 (_g1822118282_
                                                  (lambda (_g1822318241_)
                                                    (if (gx#stx-pair?
                                                         _g1822318241_)
                                                        (let ((_e1822618244_
                                                               (gx#syntax-e
                                                                _g1822318241_)))
                                                          (let ((_hd1822718248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1822618244_))
                        (_tl1822818251_ (##cdr _e1822618244_)))
                    (if (gx#stx-pair? _tl1822818251_)
                        (let ((_e1822918254_ (gx#syntax-e _tl1822818251_)))
                          (let ((_hd1823018258_ (##car _e1822918254_))
                                (_tl1823118261_ (##cdr _e1822918254_)))
                            (if (gx#stx-null? _tl1823118261_)
                                ((lambda (_L18264_ _L18266_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18205_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18266_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18264_ '())))))
                                 _hd1823018258_
                                 _hd1822718248_)
                                (_g1822218237_ _g1822318241_))))
                        (_g1822218237_ _g1822318241_))))
                (_g1822218237_ _g1822318241_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1822118282_
                                             (list (if (gx#stx-e _L18204_)
                                                       (_generate117768_
                                                        _L18204_
                                                        _L18202_
                                                        _E18083_)
                                                       _L18202_)
                                                   (_generate-clauses17767_
                                                    _L18131_
                                                    (cons _L18205_ '()))))))
                                        _hd1815818196_
                                        _hd1815518186_
                                        _hd1815218176_)
                                       (_g1814618165_ _g1814718169_))))
                               (_g1814618165_ _g1814718169_))))
                       (_g1814618165_ _g1814718169_))))
               (_g1814618165_ _g1814718169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1814518286_ _L18133_)))
                                       _tl1809718128_
                                       _hd1809618125_)))
                                  (_g1808618114_ _g1808818118_))))
                           (_g1808418395_
                            (lambda (_g1808818294_)
                              (if (gx#stx-pair? _g1808818294_)
                                  (let ((_e1809018297_
                                         (gx#syntax-e _g1808818294_)))
                                    (let ((_hd1809118301_
                                           (##car _e1809018297_))
                                          (_tl1809218304_
                                           (##cdr _e1809018297_)))
                                      (if (gx#stx-null? _tl1809218304_)
                                          ((lambda (_L18307_)
                                             (let* ((_g1831818336_
                                                     (lambda (_g1831918332_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1831918332_)))
                                                    (_g1831718391_
                                                     (lambda (_g1831918340_)
                                                       (if (gx#stx-pair?
                                                            _g1831918340_)
                                                           (let ((_e1832218343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1831918340_)))
                     (let ((_hd1832318347_ (##car _e1832218343_))
                           (_tl1832418350_ (##cdr _e1832218343_)))
                       (if (gx#stx-pair? _tl1832418350_)
                           (let ((_e1832518353_ (gx#syntax-e _tl1832418350_)))
                             (let ((_hd1832618357_ (##car _e1832518353_))
                                   (_tl1832718360_ (##cdr _e1832518353_)))
                               (if (gx#stx-pair? _tl1832718360_)
                                   (let ((_e1832818363_
                                          (gx#syntax-e _tl1832718360_)))
                                     (let ((_hd1832918367_
                                            (##car _e1832818363_))
                                           (_tl1833018370_
                                            (##cdr _e1832818363_)))
                                       (if (gx#stx-null? _tl1833018370_)
                                           ((lambda (_L18373_ _L18375_)
                                              (if (gx#stx-e _L18375_)
                                                  (_generate117768_
                                                   _L18375_
                                                   _L18373_
                                                   _E18083_)
                                                  _L18373_))
                                            _hd1832918367_
                                            _hd1832618357_)
                                           (_g1831818336_ _g1831918340_))))
                                   (_g1831818336_ _g1831918340_))))
                           (_g1831818336_ _g1831918340_))))
                   (_g1831818336_ _g1831918340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1831718391_ _L18307_)))
                                           _hd1809118301_)
                                          (_g1808518290_ _g1808818294_))))
                                  (_g1808518290_ _g1808818294_)))))
                      (_g1808418395_ _rest18081_))))
                 (_generate117768_
                  (lambda (_clause17770_ _body17772_ _E17773_)
                    (let _recur17775_ ((_rest17778_ _clause17770_)
                                       (_rest-targets17780_ _tgt-lst17761_))
                      (let* ((_g1778317795_
                              (lambda (_g1778417791_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1778417791_)))
                             (_g1778217806_
                              (lambda (_g1778417799_)
                                ((lambda () _body17772_))))
                             (_g1778118077_
                              (lambda (_g1778417810_)
                                (if (gx#stx-pair? _g1778417810_)
                                    (let ((_e1778717813_
                                           (gx#syntax-e _g1778417810_)))
                                      (let ((_hd1778817817_
                                             (##car _e1778717813_))
                                            (_tl1778917820_
                                             (##cdr _e1778717813_)))
                                        ((lambda (_L17823_ _L17825_)
                                           (let* ((_g1784217854_
                                                   (lambda (_g1784317850_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1784317850_)))
                                                  (_g1784118073_
                                                   (lambda (_g1784317858_)
                                                     (if (gx#stx-pair?
                                                          _g1784317858_)
                                                         (let ((_e1784617861_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1784317858_)))
                   (let ((_hd1784717865_ (##car _e1784617861_))
                         (_tl1784817868_ (##cdr _e1784617861_)))
                     ((lambda (_L17871_ _L17873_)
                        (let* ((_g1788517893_
                                (lambda (_g1788617889_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1788617889_)))
                               (_g1788418069_
                                (lambda (_g1788617897_)
                                  ((lambda (_L17900_)
                                     (let ()
                                       (let* ((_g1791217929_
                                               (lambda (_g1791317925_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1791317925_)))
                                              (_g1791118065_
                                               (lambda (_g1791317933_)
                                                 (if (gx#stx-pair/null?
                                                      _g1791317933_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1791317933_)
                                                               '0)
                                                         (let ((_g30786_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1791317933_
                         '0)))
                   (begin
                     (let ((_g30787_ (values-count _g30786_)))
                       (if (not (fx= _g30787_ 2))
                           (error "Context expects 2 values" _g30787_)))
                     (let ((_target1791517936_ (values-ref _g30786_ 0))
                           (_tl1791717939_ (values-ref _g30786_ 1)))
                       (if (gx#stx-null? _tl1791717939_)
                           (letrec ((_loop1791817942_
                                     (lambda (_hd1791617946_ _var1792217949_)
                                       (if (gx#stx-pair? _hd1791617946_)
                                           (let ((_e1791917952_
                                                  (gx#syntax-e
                                                   _hd1791617946_)))
                                             (let ((_lp-hd1792017956_
                                                    (##car _e1791917952_))
                                                   (_lp-tl1792117959_
                                                    (##cdr _e1791917952_)))
                                               (_loop1791817942_
                                                _lp-tl1792117959_
                                                (cons _lp-hd1792017956_
                                                      _var1792217949_))))
                                           (let ((_var1792317962_
                                                  (reverse _var1792217949_)))
                                             ((lambda (_L17966_)
                                                (let ()
                                                  (let* ((_g1798317991_
                                                          (lambda (_g1798417987_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1798417987_)))
                                                         (_g1798218061_
                                                          (lambda (_g1798417995_)
                                                            ((lambda (_L17998_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1801118019_
                                 (lambda (_g1801218015_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1801218015_)))
                                (_g1801018049_
                                 (lambda (_g1801218023_)
                                   ((lambda (_L18026_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L17900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1804018043_
                                                              _g1804118046_)
                                                       (cons _g1804018043_
                                                             _g1804118046_))
                                                     '()
                                                     _L17966_))
                                            (cons _L17998_ '())))
                                '()))
                    '())
              (cons _L18026_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1801218023_))))
                           (_g1801018049_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx17759_
                             _L17873_
                             _L17825_
                             (cons _L17900_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1805218055_
                                                     _g1805318058_)
                                              (cons _g1805218055_
                                                    _g1805318058_))
                                            '()
                                            _L17966_)))
                             _E17773_)))))
                     _g1798417995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1798218061_
                                                     (_recur17775_
                                                      _L17823_
                                                      _L17871_)))))
                                              _var1792317962_))))))
                             (_loop1791817942_ _target1791517936_ '()))
                           (_g1791217929_ _g1791317933_)))))
                 (_g1791217929_ _g1791317933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1791217929_
                                                      _g1791317933_)))))
                                         (_g1791118065_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L17825_)))))
                                   _g1788617897_))))
                          (_g1788418069_ (gx#genident 'K))))
                      _tl1784817868_
                      _hd1784717865_)))
                 (_g1784217854_ _g1784317858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1784118073_
                                              _rest-targets17780_)))
                                         _tl1778917820_
                                         _hd1778817817_)))
                                    (_g1778217806_ _g1778417810_)))))
                        (_g1778118077_ _rest17778_))))))
          (_generate-body17766_
           (_parse-body17764_ (gx#stx-length _tgt-lst17761_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx17661_ _tgt17663_ _clauses17664_)
        (letrec ((_reclause17666_
                  (lambda (_clause17669_)
                    (let* ((_g1767417689_
                            (lambda (_g1767517685_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1767517685_)))
                           (_g1767317700_
                            (lambda (_g1767517693_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx17661_
                                  _clause17669_)))))
                           (_g1767217734_
                            (lambda (_g1767517704_)
                              (if (gx#stx-pair? _g1767517704_)
                                  (let ((_e1768117707_
                                         (gx#syntax-e _g1767517704_)))
                                    (let ((_hd1768217711_
                                           (##car _e1768117707_))
                                          (_tl1768317714_
                                           (##cdr _e1768117707_)))
                                      ((lambda (_L17717_ _L17719_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L17719_ '()) _L17717_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1768317714_
                                       _hd1768217711_)))
                                  (_g1767317700_ _g1767517704_))))
                           (_g1767117755_
                            (lambda (_g1767517738_)
                              (if (gx#stx-pair? _g1767517738_)
                                  (let ((_e1767617741_
                                         (gx#syntax-e _g1767517738_)))
                                    (let ((_hd1767717745_
                                           (##car _e1767617741_))
                                          (_tl1767817748_
                                           (##cdr _e1767617741_)))
                                      (if (gx#identifier? _hd1767717745_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g30788_|
                                               _hd1767717745_)
                                              ((lambda () _clause17669_))
                                              (_g1767217734_ _g1767517738_))
                                          (_g1767217734_ _g1767517738_))))
                                  (_g1767217734_ _g1767517738_)))))
                      (_g1767117755_ _clause17669_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx17661_
           (cons _tgt17663_ '())
           (gx#stx-map _reclause17666_ _clauses17664_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx24868_)
        (let* ((_g2487324902_
                (lambda (_g2487424898_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2487424898_)))
               (_g2487225010_
                (lambda (_g2487424906_)
                  (if (gx#stx-pair? _g2487424906_)
                      (let ((_e2489124909_ (gx#syntax-e _g2487424906_)))
                        (let ((_hd2489224913_ (##car _e2489124909_))
                              (_tl2489324916_ (##cdr _e2489124909_)))
                          (if (gx#stx-pair? _tl2489324916_)
                              (let ((_e2489424919_
                                     (gx#syntax-e _tl2489324916_)))
                                (let ((_hd2489524923_ (##car _e2489424919_))
                                      (_tl2489624926_ (##cdr _e2489424919_)))
                                  ((lambda (_L24929_ _L24931_)
                                     (if (gx#stx-list? _L24929_)
                                         (let* ((_g2494524953_
                                                 (lambda (_g2494624949_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2494624949_)))
                                                (_g2494425006_
                                                 (lambda (_g2494624957_)
                                                   ((lambda (_L24960_)
                                                      (let ()
                                                        (let* ((_g2497224980_
                                                                (lambda (_g2497324976_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2497324976_)))
                       (_g2497125002_
                        (lambda (_g2497324984_)
                          ((lambda (_L24987_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L24960_
                                                         (cons _L24931_ '()))
                                                   '())
                                             (cons _L24987_ '()))))))
                           _g2497324984_))))
                  (_g2497125002_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx24868_
                    _L24960_
                    _L24929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2494624957_))))
                                           (_g2494425006_
                                            (gx#genident _L24931_)))
                                         (_g2487324902_ _g2487424906_)))
                                   _tl2489624926_
                                   _hd2489524923_)))
                              (_g2487324902_ _g2487424906_))))
                      (_g2487324902_ _g2487424906_))))
               (_g2487125115_
                (lambda (_g2487425014_)
                  (if (gx#stx-pair? _g2487425014_)
                      (let ((_e2488325017_ (gx#syntax-e _g2487425014_)))
                        (let ((_hd2488425021_ (##car _e2488325017_))
                              (_tl2488525024_ (##cdr _e2488325017_)))
                          (if (gx#stx-pair? _tl2488525024_)
                              (let ((_e2488625027_
                                     (gx#syntax-e _tl2488525024_)))
                                (let ((_hd2488725031_ (##car _e2488625027_))
                                      (_tl2488825034_ (##cdr _e2488625027_)))
                                  (if (gx#identifier? _hd2488725031_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g30789_|
                                           _hd2488725031_)
                                          ((lambda (_L25037_)
                                             (if (gx#stx-list? _L25037_)
                                                 (let* ((_g2505025058_
                                                         (lambda (_g2505125054_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2505125054_)))
                                                        (_g2504925111_
                                                         (lambda (_g2505125062_)
                                                           ((lambda (_L25065_)
                                                              (let ()
                                                                (let* ((_g2507725085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2507825081_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2507825081_)))
                               (_g2507625107_
                                (lambda (_g2507825089_)
                                  ((lambda (_L25092_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25065_
                                                     (cons _L25092_ '()))))))
                                   _g2507825089_))))
                          (_g2507625107_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25065_ _L25037_))
                            (gx#stx-source _stx24868_))))))
                    _g2505125062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2504925111_
                                                    (gx#genident 'args)))
                                                 (_g2487225010_
                                                  _g2487425014_)))
                                           _tl2488825034_)
                                          (_g2487225010_ _g2487425014_))
                                      (_g2487225010_ _g2487425014_))))
                              (_g2487225010_ _g2487425014_))))
                      (_g2487225010_ _g2487425014_))))
               (_g2487025220_
                (lambda (_g2487425119_)
                  (if (gx#stx-pair? _g2487425119_)
                      (let ((_e2487625122_ (gx#syntax-e _g2487425119_)))
                        (let ((_hd2487725126_ (##car _e2487625122_))
                              (_tl2487825129_ (##cdr _e2487625122_)))
                          (if (gx#stx-pair? _tl2487825129_)
                              (let ((_e2487925132_
                                     (gx#syntax-e _tl2487825129_)))
                                (let ((_hd2488025136_ (##car _e2487925132_))
                                      (_tl2488125139_ (##cdr _e2487925132_)))
                                  (if (gx#identifier? _hd2488025136_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g30790_|
                                           _hd2488025136_)
                                          ((lambda (_L25142_)
                                             (if (gx#stx-list? _L25142_)
                                                 (let* ((_g2515525163_
                                                         (lambda (_g2515625159_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2515625159_)))
                                                        (_g2515425216_
                                                         (lambda (_g2515625167_)
                                                           ((lambda (_L25170_)
                                                              (let ()
                                                                (let* ((_g2518225190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2518325186_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2518325186_)))
                               (_g2518125212_
                                (lambda (_g2518325194_)
                                  ((lambda (_L25197_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25170_ '())
                                                     (cons _L25197_ '()))))))
                                   _g2518325194_))))
                          (_g2518125212_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25170_ _L25142_))
                            (gx#stx-source _stx24868_))))))
                    _g2515625167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2515425216_
                                                    (gx#genident 'e)))
                                                 (_g2487125115_
                                                  _g2487425119_)))
                                           _tl2488125139_)
                                          (_g2487125115_ _g2487425119_))
                                      (_g2487125115_ _g2487425119_))))
                              (_g2487125115_ _g2487425119_))))
                      (_g2487125115_ _g2487425119_)))))
          (_g2487025220_ _stx24868_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25224_)
        (let* ((_g2522725251_
                (lambda (_g2522825247_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2522825247_)))
               (_g2522625463_
                (lambda (_g2522825255_)
                  (if (gx#stx-pair? _g2522825255_)
                      (let ((_e2523125258_ (gx#syntax-e _g2522825255_)))
                        (let ((_hd2523225262_ (##car _e2523125258_))
                              (_tl2523325265_ (##cdr _e2523125258_)))
                          (if (gx#stx-pair? _tl2523325265_)
                              (let ((_e2523425268_
                                     (gx#syntax-e _tl2523325265_)))
                                (let ((_hd2523525272_ (##car _e2523425268_))
                                      (_tl2523625275_ (##cdr _e2523425268_)))
                                  (if (gx#stx-pair/null? _hd2523525272_)
                                      (if (fx>= (gx#stx-length _hd2523525272_)
                                                '0)
                                          (let ((_g30791_
                                                 (gx#syntax-split-splice
                                                  _hd2523525272_
                                                  '0)))
                                            (begin
                                              (let ((_g30792_
                                                     (values-count _g30791_)))
                                                (if (not (fx= _g30792_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30792_)))
                                              (let ((_target2523725278_
                                                     (values-ref _g30791_ 0))
                                                    (_tl2523925281_
                                                     (values-ref _g30791_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2523925281_)
                                                    (letrec ((_loop2524025284_
                                                              (lambda (_hd2523825288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2524425291_)
                        (if (gx#stx-pair? _hd2523825288_)
                            (let ((_e2524125294_ (gx#syntax-e _hd2523825288_)))
                              (let ((_lp-hd2524225298_ (##car _e2524125294_))
                                    (_lp-tl2524325301_ (##cdr _e2524125294_)))
                                (_loop2524025284_
                                 _lp-tl2524325301_
                                 (cons _lp-hd2524225298_ _e2524425291_))))
                            (let ((_e2524525304_ (reverse _e2524425291_)))
                              ((lambda (_L25308_ _L25310_)
                                 (if (gx#stx-list? _L25308_)
                                     (let* ((_g2532825345_
                                             (lambda (_g2532925341_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2532925341_)))
                                            (_g2532725451_
                                             (lambda (_g2532925349_)
                                               (if (gx#stx-pair/null?
                                                    _g2532925349_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2532925349_)
                                                             '0)
                                                       (let ((_g30793_
                                                              (gx#syntax-split-splice
                                                               _g2532925349_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30793_)))
                     (if (not (fx= _g30794_ 2))
                         (error "Context expects 2 values" _g30794_)))
                   (let ((_target2533125352_ (values-ref _g30793_ 0))
                         (_tl2533325355_ (values-ref _g30793_ 1)))
                     (if (gx#stx-null? _tl2533325355_)
                         (letrec ((_loop2533425358_
                                   (lambda (_hd2533225362_ _$e2533825365_)
                                     (if (gx#stx-pair? _hd2533225362_)
                                         (let ((_e2533525368_
                                                (gx#syntax-e _hd2533225362_)))
                                           (let ((_lp-hd2533625372_
                                                  (##car _e2533525368_))
                                                 (_lp-tl2533725375_
                                                  (##cdr _e2533525368_)))
                                             (_loop2533425358_
                                              _lp-tl2533725375_
                                              (cons _lp-hd2533625372_
                                                    _$e2533825365_))))
                                         (let ((_$e2533925378_
                                                (reverse _$e2533825365_)))
                                           ((lambda (_L25382_)
                                              (let ()
                                                (let* ((_g2539825406_
                                                        (lambda (_g2539925402_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2539925402_)))
                                                       (_g2539725439_
                                                        (lambda (_g2539925410_)
                                                          ((lambda (_L25413_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25310_
                                        _L25382_)
                                       (foldr (lambda (_g2542725431_
                                                       _g2542825434_
                                                       _g2542925436_)
                                                (cons (cons _g2542825434_
                                                            (cons _g2542725431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2542925436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25310_
                                              _L25382_))
                                     (cons _L25413_ '()))))))
                   _g2539925410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2539725439_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25224_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2544225445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2544325448_)
                       (cons _g2544225445_ _g2544325448_))
                     '()
                     _L25382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25308_)))))
                                            _$e2533925378_))))))
                           (_loop2533425358_ _target2533125352_ '()))
                         (_g2532825345_ _g2532925349_)))))
               (_g2532825345_ _g2532925349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2532825345_
                                                    _g2532925349_)))))
                                       (_g2532725451_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2545425457_
                                                           _g2545525460_)
                                                    (cons _g2545425457_
                                                          _g2545525460_))
                                                  '()
                                                  _L25310_)))))
                                     (_g2522725251_ _g2522825255_)))
                               _tl2523625275_
                               _e2524525304_))))))
              (_loop2524025284_ _target2523725278_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2522725251_
                                                     _g2522825255_)))))
                                          (_g2522725251_ _g2522825255_))
                                      (_g2522725251_ _g2522825255_))))
                              (_g2522725251_ _g2522825255_))))
                      (_g2522725251_ _g2522825255_)))))
          (_g2522625463_ _stx25224_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25469_)
        (let* ((_g2547525558_
                (lambda (_g2547625554_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2547625554_)))
               (_g2547425719_
                (lambda (_g2547625562_)
                  (if (gx#stx-pair? _g2547625562_)
                      (let ((_e2552125565_ (gx#syntax-e _g2547625562_)))
                        (let ((_hd2552225569_ (##car _e2552125565_))
                              (_tl2552325572_ (##cdr _e2552125565_)))
                          (if (gx#stx-pair? _tl2552325572_)
                              (let ((_e2552425575_
                                     (gx#syntax-e _tl2552325572_)))
                                (let ((_hd2552525579_ (##car _e2552425575_))
                                      (_tl2552625582_ (##cdr _e2552425575_)))
                                  (if (gx#stx-pair/null? _hd2552525579_)
                                      (if (fx>= (gx#stx-length _hd2552525579_)
                                                '0)
                                          (let ((_g30795_
                                                 (gx#syntax-split-splice
                                                  _hd2552525579_
                                                  '0)))
                                            (begin
                                              (let ((_g30796_
                                                     (values-count _g30795_)))
                                                (if (not (fx= _g30796_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30796_)))
                                              (let ((_target2552725585_
                                                     (values-ref _g30795_ 0))
                                                    (_tl2552925588_
                                                     (values-ref _g30795_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2552925588_)
                                                    (letrec ((_loop2553025591_
                                                              (lambda (_hd2552825595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2553425598_
                               _hd2553525600_)
                        (if (gx#stx-pair? _hd2552825595_)
                            (let ((_e2553125603_ (gx#syntax-e _hd2552825595_)))
                              (let ((_lp-hd2553225607_ (##car _e2553125603_))
                                    (_lp-tl2553325610_ (##cdr _e2553125603_)))
                                (if (gx#stx-pair? _lp-hd2553225607_)
                                    (let ((_e2553825613_
                                           (gx#syntax-e _lp-hd2553225607_)))
                                      (let ((_hd2553925617_
                                             (##car _e2553825613_))
                                            (_tl2554025620_
                                             (##cdr _e2553825613_)))
                                        (if (gx#stx-pair? _tl2554025620_)
                                            (let ((_e2554125623_
                                                   (gx#syntax-e
                                                    _tl2554025620_)))
                                              (let ((_hd2554225627_
                                                     (##car _e2554125623_))
                                                    (_tl2554325630_
                                                     (##cdr _e2554125623_)))
                                                (if (gx#stx-null?
                                                     _tl2554325630_)
                                                    (_loop2553025591_
                                                     _lp-tl2553325610_
                                                     (cons _hd2554225627_
                                                           _expr2553425598_)
                                                     (cons _hd2553925617_
                                                           _hd2553525600_))
                                                    (_g2547525558_
                                                     _g2547625562_))))
                                            (_g2547525558_ _g2547625562_))))
                                    (_g2547525558_ _g2547625562_))))
                            (let ((_expr2553625633_ (reverse _expr2553425598_))
                                  (_hd2553725636_ (reverse _hd2553525600_)))
                              (if (gx#stx-pair/null? _tl2552625582_)
                                  (if (fx>= (gx#stx-length _tl2552625582_) '0)
                                      (let ((_g30797_
                                             (gx#syntax-split-splice
                                              _tl2552625582_
                                              '0)))
                                        (begin
                                          (let ((_g30798_
                                                 (values-count _g30797_)))
                                            (if (not (fx= _g30798_ 2))
                                                (error "Context expects 2 values"
                                                       _g30798_)))
                                          (let ((_target2554425639_
                                                 (values-ref _g30797_ 0))
                                                (_tl2554625642_
                                                 (values-ref _g30797_ 1)))
                                            (if (gx#stx-null? _tl2554625642_)
                                                (letrec ((_loop2554725645_
                                                          (lambda (_hd2554525649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2555125652_)
                    (if (gx#stx-pair? _hd2554525649_)
                        (let ((_e2554825655_ (gx#syntax-e _hd2554525649_)))
                          (let ((_lp-hd2554925659_ (##car _e2554825655_))
                                (_lp-tl2555025662_ (##cdr _e2554825655_)))
                            (_loop2554725645_
                             _lp-tl2555025662_
                             (cons _lp-hd2554925659_ _body2555125652_))))
                        (let ((_body2555225665_ (reverse _body2555125652_)))
                          ((lambda (_L25669_ _L25671_ _L25672_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2569425701_
                                                           _g2569525704_)
                                                    (cons _g2569425701_
                                                          _g2569525704_))
                                                  '()
                                                  _L25671_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2569625707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2569725710_)
                        (cons _g2569625707_ _g2569725710_))
                      '()
                      _L25672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2569825713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2569925716_)
                        (cons _g2569825713_ _g2569925716_))
                      '()
                      _L25669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2555225665_
                           _expr2553625633_
                           _hd2553725636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2554725645_
                                                   _target2554425639_
                                                   '()))
                                                (_g2547525558_
                                                 _g2547625562_)))))
                                      (_g2547525558_ _g2547625562_))
                                  (_g2547525558_ _g2547625562_)))))))
              (_loop2553025591_ _target2552725585_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2547525558_
                                                     _g2547625562_)))))
                                          (_g2547525558_ _g2547625562_))
                                      (_g2547525558_ _g2547625562_))))
                              (_g2547525558_ _g2547625562_))))
                      (_g2547525558_ _g2547625562_))))
               (_g2547325831_
                (lambda (_g2547625723_)
                  (if (gx#stx-pair? _g2547625723_)
                      (let ((_e2549725726_ (gx#syntax-e _g2547625723_)))
                        (let ((_hd2549825730_ (##car _e2549725726_))
                              (_tl2549925733_ (##cdr _e2549725726_)))
                          (if (gx#stx-pair? _tl2549925733_)
                              (let ((_e2550025736_
                                     (gx#syntax-e _tl2549925733_)))
                                (let ((_hd2550125740_ (##car _e2550025736_))
                                      (_tl2550225743_ (##cdr _e2550025736_)))
                                  (if (gx#stx-pair? _hd2550125740_)
                                      (let ((_e2550325746_
                                             (gx#syntax-e _hd2550125740_)))
                                        (let ((_hd2550425750_
                                               (##car _e2550325746_))
                                              (_tl2550525753_
                                               (##cdr _e2550325746_)))
                                          (if (gx#stx-pair? _tl2550525753_)
                                              (let ((_e2550625756_
                                                     (gx#syntax-e
                                                      _tl2550525753_)))
                                                (let ((_hd2550725760_
                                                       (##car _e2550625756_))
                                                      (_tl2550825763_
                                                       (##cdr _e2550625756_)))
                                                  (if (gx#stx-null?
                                                       _tl2550825763_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2550225743_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2550225743_)
                            '0)
                      (let ((_g30799_
                             (gx#syntax-split-splice _tl2550225743_ '0)))
                        (begin
                          (let ((_g30800_ (values-count _g30799_)))
                            (if (not (fx= _g30800_ 2))
                                (error "Context expects 2 values" _g30800_)))
                          (let ((_target2550925766_ (values-ref _g30799_ 0))
                                (_tl2551125769_ (values-ref _g30799_ 1)))
                            (if (gx#stx-null? _tl2551125769_)
                                (letrec ((_loop2551225772_
                                          (lambda (_hd2551025776_
                                                   _body2551625779_)
                                            (if (gx#stx-pair? _hd2551025776_)
                                                (let ((_e2551325782_
                                                       (gx#syntax-e
                                                        _hd2551025776_)))
                                                  (let ((_lp-hd2551425786_
                                                         (##car _e2551325782_))
                                                        (_lp-tl2551525789_
                                                         (##cdr _e2551325782_)))
                                                    (_loop2551225772_
                                                     _lp-tl2551525789_
                                                     (cons _lp-hd2551425786_
                                                           _body2551625779_))))
                                                (let ((_body2551725792_
                                                       (reverse _body2551625779_)))
                                                  ((lambda (_L25796_
                                                            _L25798_
                                                            _L25799_
                                                            _L25800_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L25799_)
                                                         (cons _L25800_
                                                               (cons (cons (cons _L25799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L25798_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2582225825_ _g2582325828_)
                                        (cons _g2582225825_ _g2582325828_))
                                      '()
                                      _L25796_))))
                 (_g2547425719_ _g2547625723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2551725792_
                                                   _hd2550725760_
                                                   _hd2550425750_
                                                   _hd2549825730_))))))
                                  (_loop2551225772_ _target2550925766_ '()))
                                (_g2547425719_ _g2547625723_)))))
                      (_g2547425719_ _g2547625723_))
                  (_g2547425719_ _g2547625723_))
              (_g2547425719_ _g2547625723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2547425719_ _g2547625723_))))
                                      (_g2547425719_ _g2547625723_))))
                              (_g2547425719_ _g2547625723_))))
                      (_g2547425719_ _g2547625723_))))
               (_g2547225913_
                (lambda (_g2547625835_)
                  (if (gx#stx-pair? _g2547625835_)
                      (let ((_e2547825838_ (gx#syntax-e _g2547625835_)))
                        (let ((_hd2547925842_ (##car _e2547825838_))
                              (_tl2548025845_ (##cdr _e2547825838_)))
                          (if (gx#stx-pair? _tl2548025845_)
                              (let ((_e2548125848_
                                     (gx#syntax-e _tl2548025845_)))
                                (let ((_hd2548225852_ (##car _e2548125848_))
                                      (_tl2548325855_ (##cdr _e2548125848_)))
                                  (if (gx#stx-null? _hd2548225852_)
                                      (if (gx#stx-pair/null? _tl2548325855_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2548325855_)
                                                    '0)
                                              (let ((_g30801_
                                                     (gx#syntax-split-splice
                                                      _tl2548325855_
                                                      '0)))
                                                (begin
                                                  (let ((_g30802_
                                                         (values-count
                                                          _g30801_)))
                                                    (if (not (fx= _g30802_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30802_)))
                                                  (let ((_target2548425858_
                                                         (values-ref
                                                          _g30801_
                                                          0))
                                                        (_tl2548625861_
                                                         (values-ref
                                                          _g30801_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2548625861_)
                                                        (letrec ((_loop2548725864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2548525868_ _body2549125871_)
                            (if (gx#stx-pair? _hd2548525868_)
                                (let ((_e2548825874_
                                       (gx#syntax-e _hd2548525868_)))
                                  (let ((_lp-hd2548925878_
                                         (##car _e2548825874_))
                                        (_lp-tl2549025881_
                                         (##cdr _e2548825874_)))
                                    (_loop2548725864_
                                     _lp-tl2549025881_
                                     (cons _lp-hd2548925878_
                                           _body2549125871_))))
                                (let ((_body2549225884_
                                       (reverse _body2549125871_)))
                                  ((lambda (_L25888_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2590425907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2590525910_)
                    (cons _g2590425907_ _g2590525910_))
                  '()
                  _L25888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2549225884_))))))
                  (_loop2548725864_ _target2548425858_ '()))
                (_g2547325831_ _g2547625835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2547325831_ _g2547625835_))
                                          (_g2547325831_ _g2547625835_))
                                      (_g2547325831_ _g2547625835_))))
                              (_g2547325831_ _g2547625835_))))
                      (_g2547325831_ _g2547625835_)))))
          (_g2547225913_ _$stx25469_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx25921_)
        (let* ((_g2592625978_
                (lambda (_g2592725974_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2592725974_)))
               (_g2592526061_
                (lambda (_g2592725982_)
                  (if (gx#stx-pair? _g2592725982_)
                      (let ((_e2595825985_ (gx#syntax-e _g2592725982_)))
                        (let ((_hd2595925989_ (##car _e2595825985_))
                              (_tl2596025992_ (##cdr _e2595825985_)))
                          (if (gx#stx-pair? _tl2596025992_)
                              (let ((_e2596125995_
                                     (gx#syntax-e _tl2596025992_)))
                                (let ((_hd2596225999_ (##car _e2596125995_))
                                      (_tl2596326002_ (##cdr _e2596125995_)))
                                  (if (gx#stx-null? _hd2596225999_)
                                      (if (gx#stx-pair/null? _tl2596326002_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2596326002_)
                                                    '0)
                                              (let ((_g30803_
                                                     (gx#syntax-split-splice
                                                      _tl2596326002_
                                                      '0)))
                                                (begin
                                                  (let ((_g30804_
                                                         (values-count
                                                          _g30803_)))
                                                    (if (not (fx= _g30804_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30804_)))
                                                  (let ((_target2596426005_
                                                         (values-ref
                                                          _g30803_
                                                          0))
                                                        (_tl2596626008_
                                                         (values-ref
                                                          _g30803_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2596626008_)
                                                        (letrec ((_loop2596726011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2596526015_ _body2597126018_)
                            (if (gx#stx-pair? _hd2596526015_)
                                (let ((_e2596826021_
                                       (gx#syntax-e _hd2596526015_)))
                                  (let ((_lp-hd2596926025_
                                         (##car _e2596826021_))
                                        (_lp-tl2597026028_
                                         (##cdr _e2596826021_)))
                                    (_loop2596726011_
                                     _lp-tl2597026028_
                                     (cons _lp-hd2596926025_
                                           _body2597126018_))))
                                (let ((_body2597226031_
                                       (reverse _body2597126018_)))
                                  ((lambda (_L26035_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2605226055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2605326058_)
                    (cons _g2605226055_ _g2605326058_))
                  '()
                  _L26035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2597226031_))))))
                  (_loop2596726011_ _target2596426005_ '()))
                (_g2592625978_ _g2592725982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2592625978_ _g2592725982_))
                                          (_g2592625978_ _g2592725982_))
                                      (_g2592625978_ _g2592725982_))))
                              (_g2592625978_ _g2592725982_))))
                      (_g2592625978_ _g2592725982_))))
               (_g2592426187_
                (lambda (_g2592726065_)
                  (if (gx#stx-pair? _g2592726065_)
                      (let ((_e2593326068_ (gx#syntax-e _g2592726065_)))
                        (let ((_hd2593426072_ (##car _e2593326068_))
                              (_tl2593526075_ (##cdr _e2593326068_)))
                          (if (gx#stx-pair? _tl2593526075_)
                              (let ((_e2593626078_
                                     (gx#syntax-e _tl2593526075_)))
                                (let ((_hd2593726082_ (##car _e2593626078_))
                                      (_tl2593826085_ (##cdr _e2593626078_)))
                                  (if (gx#stx-pair? _hd2593726082_)
                                      (let ((_e2593926088_
                                             (gx#syntax-e _hd2593726082_)))
                                        (let ((_hd2594026092_
                                               (##car _e2593926088_))
                                              (_tl2594126095_
                                               (##cdr _e2593926088_)))
                                          (if (gx#stx-pair? _hd2594026092_)
                                              (let ((_e2594226098_
                                                     (gx#syntax-e
                                                      _hd2594026092_)))
                                                (let ((_hd2594326102_
                                                       (##car _e2594226098_))
                                                      (_tl2594426105_
                                                       (##cdr _e2594226098_)))
                                                  (if (gx#stx-pair?
                                                       _tl2594426105_)
                                                      (let ((_e2594526108_
                                                             (gx#syntax-e
                                                              _tl2594426105_)))
                                                        (let ((_hd2594626112_
                                                               (##car _e2594526108_))
                                                              (_tl2594726115_
                                                               (##cdr _e2594526108_)))
                                                          (if (gx#stx-null?
                                                               _tl2594726115_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2593826085_)
                          (if (fx>= (gx#stx-length _tl2593826085_) '0)
                              (let ((_g30805_
                                     (gx#syntax-split-splice
                                      _tl2593826085_
                                      '0)))
                                (begin
                                  (let ((_g30806_ (values-count _g30805_)))
                                    (if (not (fx= _g30806_ 2))
                                        (error "Context expects 2 values"
                                               _g30806_)))
                                  (let ((_target2594826118_
                                         (values-ref _g30805_ 0))
                                        (_tl2595026121_
                                         (values-ref _g30805_ 1)))
                                    (if (gx#stx-null? _tl2595026121_)
                                        (letrec ((_loop2595126124_
                                                  (lambda (_hd2594926128_
                                                           _body2595526131_)
                                                    (if (gx#stx-pair?
                                                         _hd2594926128_)
                                                        (let ((_e2595226134_
                                                               (gx#syntax-e
                                                                _hd2594926128_)))
                                                          (let ((_lp-hd2595326138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2595226134_))
                        (_lp-tl2595426141_ (##cdr _e2595226134_)))
                    (_loop2595126124_
                     _lp-tl2595426141_
                     (cons _lp-hd2595326138_ _body2595526131_))))
                (let ((_body2595626144_ (reverse _body2595526131_)))
                  ((lambda (_L26148_ _L26150_ _L26151_ _L26152_ _L26153_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26152_ (cons _L26151_ '())) '())
                                 (cons (cons _L26153_
                                             (cons _L26150_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2617826181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2617926184_)
                      (cons _g2617826181_ _g2617926184_))
                    '()
                    _L26148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2595626144_
                   _tl2594126095_
                   _hd2594626112_
                   _hd2594326102_
                   _hd2593426072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2595126124_
                                           _target2594826118_
                                           '()))
                                        (_g2592526061_ _g2592726065_)))))
                              (_g2592526061_ _g2592726065_))
                          (_g2592526061_ _g2592726065_))
                      (_g2592526061_ _g2592726065_))))
              (_g2592526061_ _g2592726065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2592526061_ _g2592726065_))))
                                      (_g2592526061_ _g2592726065_))))
                              (_g2592526061_ _g2592726065_))))
                      (_g2592526061_ _g2592726065_)))))
          (_g2592426187_ _$stx25921_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26193_)
        (let* ((_g2620426348_
                (lambda (_g2620526344_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2620526344_)))
               (_g2620326443_
                (lambda (_g2620526352_)
                  (if (gx#stx-pair? _g2620526352_)
                      (let ((_e2632526355_ (gx#syntax-e _g2620526352_)))
                        (let ((_hd2632626359_ (##car _e2632526355_))
                              (_tl2632726362_ (##cdr _e2632526355_)))
                          (if (gx#stx-pair? _tl2632726362_)
                              (let ((_e2632826365_
                                     (gx#syntax-e _tl2632726362_)))
                                (let ((_hd2632926369_ (##car _e2632826365_))
                                      (_tl2633026372_ (##cdr _e2632826365_)))
                                  (if (gx#stx-pair? _tl2633026372_)
                                      (let ((_e2633126375_
                                             (gx#syntax-e _tl2633026372_)))
                                        (let ((_hd2633226379_
                                               (##car _e2633126375_))
                                              (_tl2633326382_
                                               (##cdr _e2633126375_)))
                                          (if (gx#stx-datum? _hd2633226379_)
                                              (if (equal? (gx#stx-e
                                                           _hd2633226379_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2633326382_)
                                                      (let ((_e2633426385_
                                                             (gx#syntax-e
                                                              _tl2633326382_)))
                                                        (let ((_hd2633526389_
                                                               (##car _e2633426385_))
                                                              (_tl2633626392_
                                                               (##cdr _e2633426385_)))
                                                          (if (gx#stx-pair?
                                                               _tl2633626392_)
                                                              (let ((_e2633726395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2633626392_)))
                        (let ((_hd2633826399_ (##car _e2633726395_))
                              (_tl2633926402_ (##cdr _e2633726395_)))
                          (if (gx#identifier? _hd2633826399_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g30807_|
                                   _hd2633826399_)
                                  (if (gx#stx-pair? _tl2633926402_)
                                      (let ((_e2634026405_
                                             (gx#syntax-e _tl2633926402_)))
                                        (let ((_hd2634126409_
                                               (##car _e2634026405_))
                                              (_tl2634226412_
                                               (##cdr _e2634026405_)))
                                          (if (gx#stx-null? _tl2634226412_)
                                              ((lambda (_L26415_
                                                        _L26417_
                                                        _L26418_
                                                        _L26419_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26419_
                                             (cons _L26418_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26415_
                                                   (cons (cons _L26417_
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
                                               _hd2634126409_
                                               _hd2633526389_
                                               _hd2632926369_
                                               _hd2632626359_)
                                              (_g2620426348_ _g2620526352_))))
                                      (_g2620426348_ _g2620526352_))
                                  (_g2620426348_ _g2620526352_))
                              (_g2620426348_ _g2620526352_))))
                      (_g2620426348_ _g2620526352_))))
              (_g2620426348_ _g2620526352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2620426348_
                                                   _g2620526352_))
                                              (_g2620426348_ _g2620526352_))))
                                      (_g2620426348_ _g2620526352_))))
                              (_g2620426348_ _g2620526352_))))
                      (_g2620426348_ _g2620526352_))))
               (_g2620226511_
                (lambda (_g2620526447_)
                  (if (gx#stx-pair? _g2620526447_)
                      (let ((_e2630926450_ (gx#syntax-e _g2620526447_)))
                        (let ((_hd2631026454_ (##car _e2630926450_))
                              (_tl2631126457_ (##cdr _e2630926450_)))
                          (if (gx#stx-pair? _tl2631126457_)
                              (let ((_e2631226460_
                                     (gx#syntax-e _tl2631126457_)))
                                (let ((_hd2631326464_ (##car _e2631226460_))
                                      (_tl2631426467_ (##cdr _e2631226460_)))
                                  (if (gx#stx-pair? _tl2631426467_)
                                      (let ((_e2631526470_
                                             (gx#syntax-e _tl2631426467_)))
                                        (let ((_hd2631626474_
                                               (##car _e2631526470_))
                                              (_tl2631726477_
                                               (##cdr _e2631526470_)))
                                          (if (gx#stx-datum? _hd2631626474_)
                                              (if (equal? (gx#stx-e
                                                           _hd2631626474_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2631726477_)
                                                      (let ((_e2631826480_
                                                             (gx#syntax-e
                                                              _tl2631726477_)))
                                                        (let ((_hd2631926484_
                                                               (##car _e2631826480_))
                                                              (_tl2632026487_
                                                               (##cdr _e2631826480_)))
                                                          (if (gx#stx-null?
                                                               _tl2632026487_)
                                                              ((lambda (_L26490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26492_
                                _L26493_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26492_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26490_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2631926484_
                       _hd2631326464_
                       _hd2631026454_)
                      (_g2620326443_ _g2620526447_))))
              (_g2620326443_ _g2620526447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2620326443_
                                                   _g2620526447_))
                                              (_g2620326443_ _g2620526447_))))
                                      (_g2620326443_ _g2620526447_))))
                              (_g2620326443_ _g2620526447_))))
                      (_g2620326443_ _g2620526447_))))
               (_g2620126579_
                (lambda (_g2620526515_)
                  (if (gx#stx-pair? _g2620526515_)
                      (let ((_e2629426518_ (gx#syntax-e _g2620526515_)))
                        (let ((_hd2629526522_ (##car _e2629426518_))
                              (_tl2629626525_ (##cdr _e2629426518_)))
                          (if (gx#stx-pair? _tl2629626525_)
                              (let ((_e2629726528_
                                     (gx#syntax-e _tl2629626525_)))
                                (let ((_hd2629826532_ (##car _e2629726528_))
                                      (_tl2629926535_ (##cdr _e2629726528_)))
                                  (if (gx#stx-pair? _tl2629926535_)
                                      (let ((_e2630026538_
                                             (gx#syntax-e _tl2629926535_)))
                                        (let ((_hd2630126542_
                                               (##car _e2630026538_))
                                              (_tl2630226545_
                                               (##cdr _e2630026538_)))
                                          (if (gx#identifier? _hd2630126542_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g30808_|
                                                   _hd2630126542_)
                                                  (if (gx#stx-pair?
                                                       _tl2630226545_)
                                                      (let ((_e2630326548_
                                                             (gx#syntax-e
                                                              _tl2630226545_)))
                                                        (let ((_hd2630426552_
                                                               (##car _e2630326548_))
                                                              (_tl2630526555_
                                                               (##cdr _e2630326548_)))
                                                          (if (gx#stx-null?
                                                               _tl2630526555_)
                                                              ((lambda (_L26558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26560_
                                _L26561_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L26561_
                                                             (cons _L26560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L26558_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2630426552_
                       _hd2629826532_
                       _hd2629526522_)
                      (_g2620226511_ _g2620526515_))))
              (_g2620226511_ _g2620526515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2620226511_
                                                   _g2620526515_))
                                              (_g2620226511_ _g2620526515_))))
                                      (_g2620226511_ _g2620526515_))))
                              (_g2620226511_ _g2620526515_))))
                      (_g2620226511_ _g2620526515_))))
               (_g2620026621_
                (lambda (_g2620526583_)
                  (if (gx#stx-pair? _g2620526583_)
                      (let ((_e2628526586_ (gx#syntax-e _g2620526583_)))
                        (let ((_hd2628626590_ (##car _e2628526586_))
                              (_tl2628726593_ (##cdr _e2628526586_)))
                          (if (gx#stx-pair? _tl2628726593_)
                              (let ((_e2628826596_
                                     (gx#syntax-e _tl2628726593_)))
                                (let ((_hd2628926600_ (##car _e2628826596_))
                                      (_tl2629026603_ (##cdr _e2628826596_)))
                                  (if (gx#stx-null? _tl2629026603_)
                                      ((lambda (_L26606_ _L26608_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L26608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L26606_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2628926600_
                                       _hd2628626590_)
                                      (_g2620126579_ _g2620526583_))))
                              (_g2620126579_ _g2620526583_))))
                      (_g2620126579_ _g2620526583_))))
               (_g2619926675_
                (lambda (_g2620526625_)
                  (if (gx#stx-pair? _g2620526625_)
                      (let ((_e2627426628_ (gx#syntax-e _g2620526625_)))
                        (let ((_hd2627526632_ (##car _e2627426628_))
                              (_tl2627626635_ (##cdr _e2627426628_)))
                          (if (gx#stx-pair? _tl2627626635_)
                              (let ((_e2627726638_
                                     (gx#syntax-e _tl2627626635_)))
                                (let ((_hd2627826642_ (##car _e2627726638_))
                                      (_tl2627926645_ (##cdr _e2627726638_)))
                                  (if (gx#stx-pair? _tl2627926645_)
                                      (let ((_e2628026648_
                                             (gx#syntax-e _tl2627926645_)))
                                        (let ((_hd2628126652_
                                               (##car _e2628026648_))
                                              (_tl2628226655_
                                               (##cdr _e2628026648_)))
                                          (if (gx#stx-null? _tl2628226655_)
                                              ((lambda (_L26658_ _L26660_)
                                                 (cons _L26660_
                                                       (cons _L26658_ '())))
                                               _hd2628126652_
                                               _hd2627826642_)
                                              (_g2620026621_ _g2620526625_))))
                                      (_g2620026621_ _g2620526625_))))
                              (_g2620026621_ _g2620526625_))))
                      (_g2620026621_ _g2620526625_))))
               (_g2619826755_
                (lambda (_g2620526679_)
                  (if (gx#stx-pair? _g2620526679_)
                      (let ((_e2625726682_ (gx#syntax-e _g2620526679_)))
                        (let ((_hd2625826686_ (##car _e2625726682_))
                              (_tl2625926689_ (##cdr _e2625726682_)))
                          (if (gx#stx-pair? _tl2625926689_)
                              (let ((_e2626026692_
                                     (gx#syntax-e _tl2625926689_)))
                                (let ((_hd2626126696_ (##car _e2626026692_))
                                      (_tl2626226699_ (##cdr _e2626026692_)))
                                  (if (gx#stx-pair? _hd2626126696_)
                                      (let ((_e2626326702_
                                             (gx#syntax-e _hd2626126696_)))
                                        (let ((_hd2626426706_
                                               (##car _e2626326702_))
                                              (_tl2626526709_
                                               (##cdr _e2626326702_)))
                                          (if (gx#identifier? _hd2626426706_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g30809_|
                                                   _hd2626426706_)
                                                  (if (gx#stx-pair?
                                                       _tl2626526709_)
                                                      (let ((_e2626626712_
                                                             (gx#syntax-e
                                                              _tl2626526709_)))
                                                        (let ((_hd2626726716_
                                                               (##car _e2626626712_))
                                                              (_tl2626826719_
                                                               (##cdr _e2626626712_)))
                                                          (if (gx#stx-null?
                                                               _tl2626826719_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2626226699_)
                          (let ((_e2626926722_ (gx#syntax-e _tl2626226699_)))
                            (let ((_hd2627026726_ (##car _e2626926722_))
                                  (_tl2627126729_ (##cdr _e2626926722_)))
                              (if (gx#stx-null? _tl2627126729_)
                                  ((lambda (_L26732_ _L26734_ _L26735_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L26735_
                                                       (cons _L26734_
                                                             (cons _L26732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2627026726_
                                   _hd2626726716_
                                   _hd2625826686_)
                                  (_g2619926675_ _g2620526679_))))
                          (_g2619926675_ _g2620526679_))
                      (_g2619926675_ _g2620526679_))))
              (_g2619926675_ _g2620526679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2619926675_
                                                   _g2620526679_))
                                              (_g2619926675_ _g2620526679_))))
                                      (_g2619926675_ _g2620526679_))))
                              (_g2619926675_ _g2620526679_))))
                      (_g2619926675_ _g2620526679_))))
               (_g2619726865_
                (lambda (_g2620526759_)
                  (if (gx#stx-pair? _g2620526759_)
                      (let ((_e2623326762_ (gx#syntax-e _g2620526759_)))
                        (let ((_hd2623426766_ (##car _e2623326762_))
                              (_tl2623526769_ (##cdr _e2623326762_)))
                          (if (gx#stx-pair? _tl2623526769_)
                              (let ((_e2623626772_
                                     (gx#syntax-e _tl2623526769_)))
                                (let ((_hd2623726776_ (##car _e2623626772_))
                                      (_tl2623826779_ (##cdr _e2623626772_)))
                                  (if (gx#stx-pair? _hd2623726776_)
                                      (let ((_e2623926782_
                                             (gx#syntax-e _hd2623726776_)))
                                        (let ((_hd2624026786_
                                               (##car _e2623926782_))
                                              (_tl2624126789_
                                               (##cdr _e2623926782_)))
                                          (if (gx#identifier? _hd2624026786_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g30810_|
                                                   _hd2624026786_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2624126789_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2624126789_)
                        '0)
                  (let ((_g30811_ (gx#syntax-split-splice _tl2624126789_ '0)))
                    (begin
                      (let ((_g30812_ (values-count _g30811_)))
                        (if (not (fx= _g30812_ 2))
                            (error "Context expects 2 values" _g30812_)))
                      (let ((_target2624226792_ (values-ref _g30811_ 0))
                            (_tl2624426795_ (values-ref _g30811_ 1)))
                        (if (gx#stx-null? _tl2624426795_)
                            (letrec ((_loop2624526798_
                                      (lambda (_hd2624326802_ _pred2624926805_)
                                        (if (gx#stx-pair? _hd2624326802_)
                                            (let ((_e2624626808_
                                                   (gx#syntax-e
                                                    _hd2624326802_)))
                                              (let ((_lp-hd2624726812_
                                                     (##car _e2624626808_))
                                                    (_lp-tl2624826815_
                                                     (##cdr _e2624626808_)))
                                                (_loop2624526798_
                                                 _lp-tl2624826815_
                                                 (cons _lp-hd2624726812_
                                                       _pred2624926805_))))
                                            (let ((_pred2625026818_
                                                   (reverse _pred2624926805_)))
                                              (if (gx#stx-pair? _tl2623826779_)
                                                  (let ((_e2625126822_
                                                         (gx#syntax-e
                                                          _tl2623826779_)))
                                                    (let ((_hd2625226826_
                                                           (##car _e2625126822_))
                                                          (_tl2625326829_
                                                           (##cdr _e2625126822_)))
                                                      (if (gx#stx-null?
                                                           _tl2625326829_)
                                                          ((lambda (_L26832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L26834_
                            _L26835_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2685626859_ _g2685726862_)
                                      (cons (cons _L26835_
                                                  (cons _g2685626859_
                                                        (cons _L26832_ '())))
                                            _g2685726862_))
                                    '()
                                    _L26834_))))
                   _hd2625226826_
                   _pred2625026818_
                   _hd2623426766_)
                  (_g2619826755_ _g2620526759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2619826755_
                                                   _g2620526759_)))))))
                              (_loop2624526798_ _target2624226792_ '()))
                            (_g2619826755_ _g2620526759_)))))
                  (_g2619826755_ _g2620526759_))
              (_g2619826755_ _g2620526759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2619826755_
                                                   _g2620526759_))
                                              (_g2619826755_ _g2620526759_))))
                                      (_g2619826755_ _g2620526759_))))
                              (_g2619826755_ _g2620526759_))))
                      (_g2619826755_ _g2620526759_))))
               (_g2619626975_
                (lambda (_g2620526869_)
                  (if (gx#stx-pair? _g2620526869_)
                      (let ((_e2620926872_ (gx#syntax-e _g2620526869_)))
                        (let ((_hd2621026876_ (##car _e2620926872_))
                              (_tl2621126879_ (##cdr _e2620926872_)))
                          (if (gx#stx-pair? _tl2621126879_)
                              (let ((_e2621226882_
                                     (gx#syntax-e _tl2621126879_)))
                                (let ((_hd2621326886_ (##car _e2621226882_))
                                      (_tl2621426889_ (##cdr _e2621226882_)))
                                  (if (gx#stx-pair? _hd2621326886_)
                                      (let ((_e2621526892_
                                             (gx#syntax-e _hd2621326886_)))
                                        (let ((_hd2621626896_
                                               (##car _e2621526892_))
                                              (_tl2621726899_
                                               (##cdr _e2621526892_)))
                                          (if (gx#identifier? _hd2621626896_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g30813_|
                                                   _hd2621626896_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2621726899_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2621726899_)
                        '0)
                  (let ((_g30814_ (gx#syntax-split-splice _tl2621726899_ '0)))
                    (begin
                      (let ((_g30815_ (values-count _g30814_)))
                        (if (not (fx= _g30815_ 2))
                            (error "Context expects 2 values" _g30815_)))
                      (let ((_target2621826902_ (values-ref _g30814_ 0))
                            (_tl2622026905_ (values-ref _g30814_ 1)))
                        (if (gx#stx-null? _tl2622026905_)
                            (letrec ((_loop2622126908_
                                      (lambda (_hd2621926912_ _pred2622526915_)
                                        (if (gx#stx-pair? _hd2621926912_)
                                            (let ((_e2622226918_
                                                   (gx#syntax-e
                                                    _hd2621926912_)))
                                              (let ((_lp-hd2622326922_
                                                     (##car _e2622226918_))
                                                    (_lp-tl2622426925_
                                                     (##cdr _e2622226918_)))
                                                (_loop2622126908_
                                                 _lp-tl2622426925_
                                                 (cons _lp-hd2622326922_
                                                       _pred2622526915_))))
                                            (let ((_pred2622626928_
                                                   (reverse _pred2622526915_)))
                                              (if (gx#stx-pair? _tl2621426889_)
                                                  (let ((_e2622726932_
                                                         (gx#syntax-e
                                                          _tl2621426889_)))
                                                    (let ((_hd2622826936_
                                                           (##car _e2622726932_))
                                                          (_tl2622926939_
                                                           (##cdr _e2622726932_)))
                                                      (if (gx#stx-null?
                                                           _tl2622926939_)
                                                          ((lambda (_L26942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L26944_
                            _L26945_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2696626969_ _g2696726972_)
                                      (cons (cons _L26945_
                                                  (cons _g2696626969_
                                                        (cons _L26942_ '())))
                                            _g2696726972_))
                                    '()
                                    _L26944_))))
                   _hd2622826936_
                   _pred2622626928_
                   _hd2621026876_)
                  (_g2619726865_ _g2620526869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2619726865_
                                                   _g2620526869_)))))))
                              (_loop2622126908_ _target2621826902_ '()))
                            (_g2619726865_ _g2620526869_)))))
                  (_g2619726865_ _g2620526869_))
              (_g2619726865_ _g2620526869_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2619726865_
                                                   _g2620526869_))
                                              (_g2619726865_ _g2620526869_))))
                                      (_g2619726865_ _g2620526869_))))
                              (_g2619726865_ _g2620526869_))))
                      (_g2619726865_ _g2620526869_)))))
          (_g2619626975_ _$stx26193_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx26981_)
        (let* ((_g2698627020_
                (lambda (_g2698727016_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2698727016_)))
               (_g2698527077_
                (lambda (_g2698727024_)
                  (if (gx#stx-pair? _g2698727024_)
                      (let ((_e2700627027_ (gx#syntax-e _g2698727024_)))
                        (let ((_hd2700727031_ (##car _e2700627027_))
                              (_tl2700827034_ (##cdr _e2700627027_)))
                          (if (gx#stx-pair? _tl2700827034_)
                              (let ((_e2700927037_
                                     (gx#syntax-e _tl2700827034_)))
                                (let ((_hd2701027041_ (##car _e2700927037_))
                                      (_tl2701127044_ (##cdr _e2700927037_)))
                                  (if (gx#stx-pair? _tl2701127044_)
                                      (let ((_e2701227047_
                                             (gx#syntax-e _tl2701127044_)))
                                        (let ((_hd2701327051_
                                               (##car _e2701227047_))
                                              (_tl2701427054_
                                               (##cdr _e2701227047_)))
                                          (if (gx#stx-null? _tl2701427054_)
                                              ((lambda (_L27057_
                                                        _L27059_
                                                        _L27060_)
                                                 (cons _L27060_
                                                       (cons _L27059_
                                                             (cons _L27057_
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
                                               _hd2701327051_
                                               _hd2701027041_
                                               _hd2700727031_)
                                              (_g2698627020_ _g2698727024_))))
                                      (_g2698627020_ _g2698727024_))))
                              (_g2698627020_ _g2698727024_))))
                      (_g2698627020_ _g2698727024_))))
               (_g2698427145_
                (lambda (_g2698727081_)
                  (if (gx#stx-pair? _g2698727081_)
                      (let ((_e2699127084_ (gx#syntax-e _g2698727081_)))
                        (let ((_hd2699227088_ (##car _e2699127084_))
                              (_tl2699327091_ (##cdr _e2699127084_)))
                          (if (gx#stx-pair? _tl2699327091_)
                              (let ((_e2699427094_
                                     (gx#syntax-e _tl2699327091_)))
                                (let ((_hd2699527098_ (##car _e2699427094_))
                                      (_tl2699627101_ (##cdr _e2699427094_)))
                                  (if (gx#stx-pair? _tl2699627101_)
                                      (let ((_e2699727104_
                                             (gx#syntax-e _tl2699627101_)))
                                        (let ((_hd2699827108_
                                               (##car _e2699727104_))
                                              (_tl2699927111_
                                               (##cdr _e2699727104_)))
                                          (if (gx#stx-pair? _tl2699927111_)
                                              (let ((_e2700027114_
                                                     (gx#syntax-e
                                                      _tl2699927111_)))
                                                (let ((_hd2700127118_
                                                       (##car _e2700027114_))
                                                      (_tl2700227121_
                                                       (##cdr _e2700027114_)))
                                                  (if (gx#stx-null?
                                                       _tl2700227121_)
                                                      ((lambda (_L27124_
                                                                _L27126_
                                                                _L27127_)
                                                         (if (gx#identifier?
                                                              _L27127_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27127_
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
                                         (cons _L27126_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27124_ '()))
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
                     (_g2698527077_ _g2698727081_)))
               _hd2700127118_
               _hd2699827108_
               _hd2699527098_)
              (_g2698527077_ _g2698727081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2698527077_ _g2698727081_))))
                                      (_g2698527077_ _g2698727081_))))
                              (_g2698527077_ _g2698727081_))))
                      (_g2698527077_ _g2698727081_)))))
          (_g2698427145_ _$stx26981_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27149_)
        (let* ((_g2715327168_
                (lambda (_g2715427164_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2715427164_)))
               (_g2715227211_
                (lambda (_g2715427172_)
                  (if (gx#stx-pair? _g2715427172_)
                      (let ((_e2715727175_ (gx#syntax-e _g2715427172_)))
                        (let ((_hd2715827179_ (##car _e2715727175_))
                              (_tl2715927182_ (##cdr _e2715727175_)))
                          (if (gx#stx-pair? _tl2715927182_)
                              (let ((_e2716027185_
                                     (gx#syntax-e _tl2715927182_)))
                                (let ((_hd2716127189_ (##car _e2716027185_))
                                      (_tl2716227192_ (##cdr _e2716027185_)))
                                  ((lambda (_L27195_ _L27197_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27197_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27195_)
                                                       '()))))
                                   _tl2716227192_
                                   _hd2716127189_)))
                              (_g2715327168_ _g2715427172_))))
                      (_g2715327168_ _g2715427172_)))))
          (_g2715227211_ _$stx27149_))))))
