(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g34837_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34838_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34839_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34842_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34843_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34844_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34845_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34846_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34847_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34848_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34849_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34850_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34851_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34852_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34853_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34854_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34863_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34868_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34869_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34870_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34887_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34888_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34889_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34890_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34893_|
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
      (lambda _$args28441_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args28441_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx28438_)
        (if (gx#identifier? _stx28438_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx28438_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2675428424_
             (lambda (_stx26756_ _match-stx26758_)
               (letrec ((_parse126760_
                         (lambda (_hd27107_)
                           (let* ((_g2713327275_
                                   (lambda (_g2713427271_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2713427271_)))
                                  (_g2713227286_
                                   (lambda (_g2713427279_)
                                     ((lambda ()
                                        (_parse-error26767_ _hd27107_)))))
                                  (_g2713127304_
                                   (lambda (_g2713427290_)
                                     ((lambda (_L27293_)
                                        (if (gx#stx-datum? _L27293_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27293_)
                                                        '()))
                                            (_g2713227286_ _g2713427290_)))
                                      _g2713427290_)))
                                  (_g2713027320_
                                   (lambda (_g2713427308_)
                                     ((lambda (_L27311_)
                                        (if (if (gx#identifier? _L27311_)
                                                (not (gx#ellipsis? _L27311_))
                                                '#f)
                                            (cons 'var: (cons _L27311_ '()))
                                            (_g2713127304_ _g2713427308_)))
                                      _g2713427308_)))
                                  (_g2712927336_
                                   (lambda (_g2713427324_)
                                     ((lambda (_L27327_)
                                        (if (gx#underscore? _L27327_)
                                            (cons 'any: '())
                                            (_g2713027320_ _g2713427324_)))
                                      _g2713427324_)))
                                  (_g2712827368_
                                   (lambda (_g2713427340_)
                                     (if (gx#stx-pair? _g2713427340_)
                                         (let ((_e2726427343_
                                                (gx#syntax-e _g2713427340_)))
                                           (let ((_hd2726527347_
                                                  (##car _e2726427343_))
                                                 (_tl2726627350_
                                                  (##cdr _e2726427343_)))
                                             ((lambda (_L27353_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27353_)
                                                    (_parse126760_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27353_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27107_)
                                                       (let ((_$e27364_
                                                              (gx#stx-source
                                                               _hd27107_)))
                                                         (if _$e27364_
                                                             _$e27364_
                                                             (gx#stx-source
                                                              _stx26756_))))))
                                                    (_g2712927336_
                                                     _g2713427340_)))
                                              _hd2726527347_)))
                                         (_g2712927336_ _g2713427340_))))
                                  (_g2712727422_
                                   (lambda (_g2713427372_)
                                     (if (gx#stx-pair? _g2713427372_)
                                         (let ((_e2725427375_
                                                (gx#syntax-e _g2713427372_)))
                                           (let ((_hd2725527379_
                                                  (##car _e2725427375_))
                                                 (_tl2725627382_
                                                  (##cdr _e2725427375_)))
                                             (if (gx#identifier?
                                                  _hd2725527379_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34837_|
                                                      _hd2725527379_)
                                                     (if (gx#stx-pair?
                                                          _tl2725627382_)
                                                         (let ((_e2725727385_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2725627382_)))
                   (let ((_hd2725827389_ (##car _e2725727385_))
                         (_tl2725927392_ (##cdr _e2725727385_)))
                     (if (gx#stx-pair? _tl2725927392_)
                         (let ((_e2726027395_ (gx#syntax-e _tl2725927392_)))
                           (let ((_hd2726127399_ (##car _e2726027395_))
                                 (_tl2726227402_ (##cdr _e2726027395_)))
                             (if (gx#stx-null? _tl2726227402_)
                                 ((lambda (_L27405_ _L27407_)
                                    (cons 'apply:
                                          (cons _L27407_
                                                (cons (_parse126760_ _L27405_)
                                                      '()))))
                                  _hd2726127399_
                                  _hd2725827389_)
                                 (_g2712827368_ _g2713427372_))))
                         (_g2712827368_ _g2713427372_))))
                 (_g2712827368_ _g2713427372_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712827368_
                                                      _g2713427372_))
                                                 (_g2712827368_
                                                  _g2713427372_))))
                                         (_g2712827368_ _g2713427372_))))
                                  (_g2712627462_
                                   (lambda (_g2713427426_)
                                     (if (gx#stx-pair? _g2713427426_)
                                         (let ((_e2724627429_
                                                (gx#syntax-e _g2713427426_)))
                                           (let ((_hd2724727433_
                                                  (##car _e2724627429_))
                                                 (_tl2724827436_
                                                  (##cdr _e2724627429_)))
                                             (if (gx#identifier?
                                                  _hd2724727433_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34838_|
                                                      _hd2724727433_)
                                                     (if (gx#stx-pair?
                                                          _tl2724827436_)
                                                         (let ((_e2724927439_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2724827436_)))
                   (let ((_hd2725027443_ (##car _e2724927439_))
                         (_tl2725127446_ (##cdr _e2724927439_)))
                     (if (gx#stx-null? _tl2725127446_)
                         ((lambda (_L27449_) (_parse-qq26766_ _L27449_))
                          _hd2725027443_)
                         (_g2712727422_ _g2713427426_))))
                 (_g2712727422_ _g2713427426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712727422_
                                                      _g2713427426_))
                                                 (_g2712727422_
                                                  _g2713427426_))))
                                         (_g2712727422_ _g2713427426_))))
                                  (_g2712527502_
                                   (lambda (_g2713427466_)
                                     (if (gx#stx-pair? _g2713427466_)
                                         (let ((_e2723927469_
                                                (gx#syntax-e _g2713427466_)))
                                           (let ((_hd2724027473_
                                                  (##car _e2723927469_))
                                                 (_tl2724127476_
                                                  (##cdr _e2723927469_)))
                                             (if (gx#identifier?
                                                  _hd2724027473_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34839_|
                                                      _hd2724027473_)
                                                     (if (gx#stx-pair?
                                                          _tl2724127476_)
                                                         (let ((_e2724227479_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2724127476_)))
                   (let ((_hd2724327483_ (##car _e2724227479_))
                         (_tl2724427486_ (##cdr _e2724227479_)))
                     (if (gx#stx-null? _tl2724427486_)
                         ((lambda (_L27489_)
                            (cons 'datum: (cons (gx#stx-e _L27489_) '())))
                          _hd2724327483_)
                         (_g2712627462_ _g2713427466_))))
                 (_g2712627462_ _g2713427466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712627462_
                                                      _g2713427466_))
                                                 (_g2712627462_
                                                  _g2713427466_))))
                                         (_g2712627462_ _g2713427466_))))
                                  (_g2712427552_
                                   (lambda (_g2713427506_)
                                     (if (gx#stx-pair? _g2713427506_)
                                         (let ((_e2723227509_
                                                (gx#syntax-e _g2713427506_)))
                                           (let ((_hd2723327513_
                                                  (##car _e2723227509_))
                                                 (_tl2723427516_
                                                  (##cdr _e2723227509_)))
                                             (if (gx#stx-pair? _tl2723427516_)
                                                 (let ((_e2723527519_
                                                        (gx#syntax-e
                                                         _tl2723427516_)))
                                                   (let ((_hd2723627523_
                                                          (##car _e2723527519_))
                                                         (_tl2723727526_
                                                          (##cdr _e2723527519_)))
                                                     (if (gx#stx-null?
                                                          _tl2723727526_)
                                                         ((lambda (_L27529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27531_)
                    (if (if (gx#identifier? _L27531_)
                            (let ((_$e27544_
                                   (gx#free-identifier=?
                                    _L27531_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e27544_
                                  _$e27544_
                                  (let ((_$e27548_
                                         (gx#free-identifier=?
                                          _L27531_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e27548_
                                        _$e27548_
                                        (gx#free-identifier=?
                                         _L27531_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L27531_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L27529_ '()))))
                                    '()))
                        (_g2712527502_ _g2713427506_)))
                  _hd2723627523_
                  _hd2723327513_)
                 (_g2712527502_ _g2713427506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2712527502_
                                                  _g2713427506_))))
                                         (_g2712527502_ _g2713427506_))))
                                  (_g2712327582_
                                   (lambda (_g2713427556_)
                                     (if (gx#stx-pair? _g2713427556_)
                                         (let ((_e2722727559_
                                                (gx#syntax-e _g2713427556_)))
                                           (let ((_hd2722827563_
                                                  (##car _e2722727559_))
                                                 (_tl2722927566_
                                                  (##cdr _e2722727559_)))
                                             ((lambda (_L27569_ _L27571_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L27571_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27571_)
                        (cons (_parse-class-body26765_ _L27569_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2712427552_
                                                     _g2713427556_)))
                                              _tl2722927566_
                                              _hd2722827563_)))
                                         (_g2712427552_ _g2713427556_))))
                                  (_g2712227612_
                                   (lambda (_g2713427586_)
                                     (if (gx#stx-pair? _g2713427586_)
                                         (let ((_e2722227589_
                                                (gx#syntax-e _g2713427586_)))
                                           (let ((_hd2722327593_
                                                  (##car _e2722227589_))
                                                 (_tl2722427596_
                                                  (##cdr _e2722227589_)))
                                             ((lambda (_L27599_ _L27601_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L27601_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27601_)
                        (cons (_parse-vector26763_ _L27599_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2712327582_
                                                     _g2713427586_)))
                                              _tl2722427596_
                                              _hd2722327593_)))
                                         (_g2712327582_ _g2713427586_))))
                                  (_g2712127675_
                                   (lambda (_g2713427616_)
                                     (if (gx#stx-vector? _g2713427616_)
                                         (let ((_e2721027619_
                                                (vector->list
                                                 (gx#syntax-e _g2713427616_))))
                                           (if (gx#stx-pair/null?
                                                _e2721027619_)
                                               (if (fx>= (gx#stx-length
                                                          _e2721027619_)
                                                         '0)
                                                   (let ((_g34840_
                                                          (gx#syntax-split-splice
                                                           _e2721027619_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34841_
                                                              (values-count
                                                               _g34840_)))
                                                         (if (not (fx= _g34841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34841_)))
               (let ((_target2721127623_ (values-ref _g34840_ 0))
                     (_tl2721327626_ (values-ref _g34840_ 1)))
                 (if (gx#stx-null? _tl2721327626_)
                     (letrec ((_loop2721427629_
                               (lambda (_hd2721227633_ _body2721827636_)
                                 (if (gx#stx-pair? _hd2721227633_)
                                     (let ((_e2721527639_
                                            (gx#syntax-e _hd2721227633_)))
                                       (let ((_lp-hd2721627643_
                                              (##car _e2721527639_))
                                             (_lp-tl2721727646_
                                              (##cdr _e2721527639_)))
                                         (_loop2721427629_
                                          _lp-tl2721727646_
                                          (cons _lp-hd2721627643_
                                                _body2721827636_))))
                                     (let ((_body2721927649_
                                            (reverse _body2721827636_)))
                                       ((lambda (_L27653_)
                                          (cons 'vector:
                                                (cons (_parse-vector26763_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2766627669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2766727672_)
                          (cons _g2766627669_ _g2766727672_))
                        '()
                        _L27653_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2721927649_))))))
                       (_loop2721427629_ _target2721127623_ '()))
                     (_g2712227612_ _g2713427616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2712227612_
                                                    _g2713427616_))
                                               (_g2712227612_ _g2713427616_)))
                                         (_g2712227612_ _g2713427616_))))
                                  (_g2712027703_
                                   (lambda (_g2713427679_)
                                     (if (gx#stx-pair? _g2713427679_)
                                         (let ((_e2720627682_
                                                (gx#syntax-e _g2713427679_)))
                                           (let ((_hd2720727686_
                                                  (##car _e2720627682_))
                                                 (_tl2720827689_
                                                  (##cdr _e2720627682_)))
                                             (if (gx#identifier?
                                                  _hd2720727686_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34842_|
                                                      _hd2720727686_)
                                                     ((lambda (_L27692_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector26763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27692_)
                            '())))
              _tl2720827689_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712127675_
                                                      _g2713427679_))
                                                 (_g2712127675_
                                                  _g2713427679_))))
                                         (_g2712127675_ _g2713427679_))))
                                  (_g2711927731_
                                   (lambda (_g2713427707_)
                                     (if (gx#stx-pair? _g2713427707_)
                                         (let ((_e2720227710_
                                                (gx#syntax-e _g2713427707_)))
                                           (let ((_hd2720327714_
                                                  (##car _e2720227710_))
                                                 (_tl2720427717_
                                                  (##cdr _e2720227710_)))
                                             (if (gx#identifier?
                                                  _hd2720327714_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34843_|
                                                      _hd2720327714_)
                                                     ((lambda (_L27720_)
                                                        (cons 'values:
                                                              (cons (_parse-vector26763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27720_)
                            '())))
              _tl2720427717_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712027703_
                                                      _g2713427707_))
                                                 (_g2712027703_
                                                  _g2713427707_))))
                                         (_g2712027703_ _g2713427707_))))
                                  (_g2711827771_
                                   (lambda (_g2713427735_)
                                     (if (gx#stx-pair? _g2713427735_)
                                         (let ((_e2719527738_
                                                (gx#syntax-e _g2713427735_)))
                                           (let ((_hd2719627742_
                                                  (##car _e2719527738_))
                                                 (_tl2719727745_
                                                  (##cdr _e2719527738_)))
                                             (if (gx#identifier?
                                                  _hd2719627742_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34844_|
                                                      _hd2719627742_)
                                                     (if (gx#stx-pair?
                                                          _tl2719727745_)
                                                         (let ((_e2719827748_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2719727745_)))
                   (let ((_hd2719927752_ (##car _e2719827748_))
                         (_tl2720027755_ (##cdr _e2719827748_)))
                     (if (gx#stx-null? _tl2720027755_)
                         ((lambda (_L27758_) (_parse126760_ _L27758_))
                          _hd2719927752_)
                         (_g2711927731_ _g2713427735_))))
                 (_g2711927731_ _g2713427735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711927731_
                                                      _g2713427735_))
                                                 (_g2711927731_
                                                  _g2713427735_))))
                                         (_g2711927731_ _g2713427735_))))
                                  (_g2711727792_
                                   (lambda (_g2713427775_)
                                     (if (gx#stx-box? _g2713427775_)
                                         (let ((_e2719327778_
                                                (unbox (gx#syntax-e
                                                        _g2713427775_))))
                                           ((lambda (_L27782_)
                                              (cons 'box:
                                                    (cons (_parse126760_
                                                           _L27782_)
                                                          '())))
                                            _e2719327778_))
                                         (_g2711827771_ _g2713427775_))))
                                  (_g2711627832_
                                   (lambda (_g2713427796_)
                                     (if (gx#stx-pair? _g2713427796_)
                                         (let ((_e2718627799_
                                                (gx#syntax-e _g2713427796_)))
                                           (let ((_hd2718727803_
                                                  (##car _e2718627799_))
                                                 (_tl2718827806_
                                                  (##cdr _e2718627799_)))
                                             (if (gx#identifier?
                                                  _hd2718727803_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34845_|
                                                      _hd2718727803_)
                                                     (if (gx#stx-pair?
                                                          _tl2718827806_)
                                                         (let ((_e2718927809_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2718827806_)))
                   (let ((_hd2719027813_ (##car _e2718927809_))
                         (_tl2719127816_ (##cdr _e2718927809_)))
                     (if (gx#stx-null? _tl2719127816_)
                         ((lambda (_L27819_)
                            (cons 'box: (cons (_parse126760_ _L27819_) '())))
                          _hd2719027813_)
                         (_g2711727792_ _g2713427796_))))
                 (_g2711727792_ _g2713427796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711727792_
                                                      _g2713427796_))
                                                 (_g2711727792_
                                                  _g2713427796_))))
                                         (_g2711727792_ _g2713427796_))))
                                  (_g2711527860_
                                   (lambda (_g2713427836_)
                                     (if (gx#stx-pair? _g2713427836_)
                                         (let ((_e2718227839_
                                                (gx#syntax-e _g2713427836_)))
                                           (let ((_hd2718327843_
                                                  (##car _e2718227839_))
                                                 (_tl2718427846_
                                                  (##cdr _e2718227839_)))
                                             (if (gx#identifier?
                                                  _hd2718327843_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34846_|
                                                      _hd2718327843_)
                                                     ((lambda (_L27849_)
                                                        (_parse-list26762_
                                                         _L27849_))
                                                      _tl2718427846_)
                                                     (_g2711627832_
                                                      _g2713427836_))
                                                 (_g2711627832_
                                                  _g2713427836_))))
                                         (_g2711627832_ _g2713427836_))))
                                  (_g2711427916_
                                   (lambda (_g2713427864_)
                                     (if (gx#stx-pair? _g2713427864_)
                                         (let ((_e2717227867_
                                                (gx#syntax-e _g2713427864_)))
                                           (let ((_hd2717327871_
                                                  (##car _e2717227867_))
                                                 (_tl2717427874_
                                                  (##cdr _e2717227867_)))
                                             (if (gx#identifier?
                                                  _hd2717327871_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34847_|
                                                      _hd2717327871_)
                                                     (if (gx#stx-pair?
                                                          _tl2717427874_)
                                                         (let ((_e2717527877_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2717427874_)))
                   (let ((_hd2717627881_ (##car _e2717527877_))
                         (_tl2717727884_ (##cdr _e2717527877_)))
                     (if (gx#stx-pair? _tl2717727884_)
                         (let ((_e2717827887_ (gx#syntax-e _tl2717727884_)))
                           (let ((_hd2717927891_ (##car _e2717827887_))
                                 (_tl2718027894_ (##cdr _e2717827887_)))
                             ((lambda (_L27897_ _L27899_ _L27900_)
                                (if (gx#stx-null? _L27897_)
                                    (cons 'cons:
                                          (cons (_parse126760_ _L27900_)
                                                (cons (_parse126760_ _L27899_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse126760_ _L27900_)
                                                (cons (_parse126760_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L27899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27897_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2718027894_
                              _hd2717927891_
                              _hd2717627881_)))
                         (_g2711527860_ _g2713427864_))))
                 (_g2711527860_ _g2713427864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711527860_
                                                      _g2713427864_))
                                                 (_g2711527860_
                                                  _g2713427864_))))
                                         (_g2711527860_ _g2713427864_))))
                                  (_g2711327970_
                                   (lambda (_g2713427920_)
                                     (if (gx#stx-pair? _g2713427920_)
                                         (let ((_e2716027923_
                                                (gx#syntax-e _g2713427920_)))
                                           (let ((_hd2716127927_
                                                  (##car _e2716027923_))
                                                 (_tl2716227930_
                                                  (##cdr _e2716027923_)))
                                             (if (gx#identifier?
                                                  _hd2716127927_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34848_|
                                                      _hd2716127927_)
                                                     (if (gx#stx-pair?
                                                          _tl2716227930_)
                                                         (let ((_e2716327933_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2716227930_)))
                   (let ((_hd2716427937_ (##car _e2716327933_))
                         (_tl2716527940_ (##cdr _e2716327933_)))
                     (if (gx#stx-pair? _tl2716527940_)
                         (let ((_e2716627943_ (gx#syntax-e _tl2716527940_)))
                           (let ((_hd2716727947_ (##car _e2716627943_))
                                 (_tl2716827950_ (##cdr _e2716627943_)))
                             (if (gx#stx-null? _tl2716827950_)
                                 ((lambda (_L27953_ _L27955_)
                                    (cons 'cons:
                                          (cons (_parse126760_ _L27955_)
                                                (cons (_parse126760_ _L27953_)
                                                      '()))))
                                  _hd2716727947_
                                  _hd2716427937_)
                                 (_g2711427916_ _g2713427920_))))
                         (_g2711427916_ _g2713427920_))))
                 (_g2711427916_ _g2713427920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711427916_
                                                      _g2713427920_))
                                                 (_g2711427916_
                                                  _g2713427920_))))
                                         (_g2711427916_ _g2713427920_))))
                                  (_g2711228010_
                                   (lambda (_g2713427974_)
                                     (if (gx#stx-pair? _g2713427974_)
                                         (let ((_e2715227977_
                                                (gx#syntax-e _g2713427974_)))
                                           (let ((_hd2715327981_
                                                  (##car _e2715227977_))
                                                 (_tl2715427984_
                                                  (##cdr _e2715227977_)))
                                             (if (gx#identifier?
                                                  _hd2715327981_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34849_|
                                                      _hd2715327981_)
                                                     (if (gx#stx-pair?
                                                          _tl2715427984_)
                                                         (let ((_e2715527987_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2715427984_)))
                   (let ((_hd2715627991_ (##car _e2715527987_))
                         (_tl2715727994_ (##cdr _e2715527987_)))
                     (if (gx#stx-null? _tl2715727994_)
                         ((lambda (_L27997_)
                            (cons 'not: (cons (_parse126760_ _L27997_) '())))
                          _hd2715627991_)
                         (_g2711327970_ _g2713427974_))))
                 (_g2711327970_ _g2713427974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711327970_
                                                      _g2713427974_))
                                                 (_g2711327970_
                                                  _g2713427974_))))
                                         (_g2711327970_ _g2713427974_))))
                                  (_g2711128095_
                                   (lambda (_g2713428014_)
                                     (if (gx#stx-pair? _g2713428014_)
                                         (let ((_e2714828017_
                                                (gx#syntax-e _g2713428014_)))
                                           (let ((_hd2714928021_
                                                  (##car _e2714828017_))
                                                 (_tl2715028024_
                                                  (##cdr _e2714828017_)))
                                             (if (gx#identifier?
                                                  _hd2714928021_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34850_|
                                                      _hd2714928021_)
                                                     ((lambda (_L28027_)
                                                        (if (gx#stx-list?
                                                             _L28027_)
                                                            (let* ((_g2803928050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2804028046_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2804028046_)))
                           (_g2803828061_
                            (lambda (_g2804028054_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse126760_ _L28027_))))))
                           (_g2803728091_
                            (lambda (_g2804028065_)
                              (if (gx#stx-pair? _g2804028065_)
                                  (let ((_e2804228068_
                                         (gx#syntax-e _g2804028065_)))
                                    (let ((_hd2804328072_
                                           (##car _e2804228068_))
                                          (_tl2804428075_
                                           (##cdr _e2804228068_)))
                                      (if (gx#stx-null? _tl2804428075_)
                                          ((lambda (_L28078_)
                                             (_parse126760_ _L28078_))
                                           _hd2804328072_)
                                          (_g2803828061_ _g2804028065_))))
                                  (_g2803828061_ _g2804028065_)))))
                      (_g2803728091_ _L28027_))
                    (_g2711228010_ _g2713428014_)))
              _tl2715028024_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711228010_
                                                      _g2713428014_))
                                                 (_g2711228010_
                                                  _g2713428014_))))
                                         (_g2711228010_ _g2713428014_))))
                                  (_g2711028180_
                                   (lambda (_g2713428099_)
                                     (if (gx#stx-pair? _g2713428099_)
                                         (let ((_e2714428102_
                                                (gx#syntax-e _g2713428099_)))
                                           (let ((_hd2714528106_
                                                  (##car _e2714428102_))
                                                 (_tl2714628109_
                                                  (##cdr _e2714428102_)))
                                             (if (gx#identifier?
                                                  _hd2714528106_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34851_|
                                                      _hd2714528106_)
                                                     ((lambda (_L28112_)
                                                        (if (gx#stx-list?
                                                             _L28112_)
                                                            (let* ((_g2812428135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2812528131_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2812528131_)))
                           (_g2812328146_
                            (lambda (_g2812528139_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse126760_ _L28112_))))))
                           (_g2812228176_
                            (lambda (_g2812528150_)
                              (if (gx#stx-pair? _g2812528150_)
                                  (let ((_e2812728153_
                                         (gx#syntax-e _g2812528150_)))
                                    (let ((_hd2812828157_
                                           (##car _e2812728153_))
                                          (_tl2812928160_
                                           (##cdr _e2812728153_)))
                                      (if (gx#stx-null? _tl2812928160_)
                                          ((lambda (_L28163_)
                                             (_parse126760_ _L28163_))
                                           _hd2812828157_)
                                          (_g2812328146_ _g2812528150_))))
                                  (_g2812328146_ _g2812528150_)))))
                      (_g2812228176_ _L28112_))
                    (_g2711128095_ _g2713428099_)))
              _tl2714628109_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711128095_
                                                      _g2713428099_))
                                                 (_g2711128095_
                                                  _g2713428099_))))
                                         (_g2711128095_ _g2713428099_))))
                                  (_g2710928420_
                                   (lambda (_g2713428184_)
                                     (if (gx#stx-pair? _g2713428184_)
                                         (let ((_e2713728187_
                                                (gx#syntax-e _g2713428184_)))
                                           (let ((_hd2713828191_
                                                  (##car _e2713728187_))
                                                 (_tl2713928194_
                                                  (##cdr _e2713728187_)))
                                             (if (gx#identifier?
                                                  _hd2713828191_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34852_|
                                                      _hd2713828191_)
                                                     (if (gx#stx-pair?
                                                          _tl2713928194_)
                                                         (let ((_e2714028197_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2713928194_)))
                   (let ((_hd2714128201_ (##car _e2714028197_))
                         (_tl2714228204_ (##cdr _e2714028197_)))
                     ((lambda (_L28207_ _L28209_)
                        (let* ((_g2822628258_
                                (lambda (_g2822728254_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2822728254_)))
                               (_g2822528269_
                                (lambda (_g2822728262_)
                                  ((lambda ()
                                     (_parse-error26767_ _hd27107_)))))
                               (_g2822428337_
                                (lambda (_g2822728273_)
                                  (if (gx#stx-pair? _g2822728273_)
                                      (let ((_e2824128276_
                                             (gx#syntax-e _g2822728273_)))
                                        (let ((_hd2824228280_
                                               (##car _e2824128276_))
                                              (_tl2824328283_
                                               (##cdr _e2824128276_)))
                                          (if (gx#stx-datum? _hd2824228280_)
                                              (if (equal? (gx#stx-e
                                                           _hd2824228280_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2824328283_)
                                                      (let ((_e2824428286_
                                                             (gx#syntax-e
                                                              _tl2824328283_)))
                                                        (let ((_hd2824528290_
                                                               (##car _e2824428286_))
                                                              (_tl2824628293_
                                                               (##cdr _e2824428286_)))
                                                          (if (gx#stx-pair?
                                                               _tl2824628293_)
                                                              (let ((_e2824728296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2824628293_)))
                        (let ((_hd2824828300_ (##car _e2824728296_))
                              (_tl2824928303_ (##cdr _e2824728296_)))
                          (if (gx#identifier? _hd2824828300_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34853_|
                                   _hd2824828300_)
                                  (if (gx#stx-pair? _tl2824928303_)
                                      (let ((_e2825028306_
                                             (gx#syntax-e _tl2824928303_)))
                                        (let ((_hd2825128310_
                                               (##car _e2825028306_))
                                              (_tl2825228313_
                                               (##cdr _e2825028306_)))
                                          (if (gx#stx-null? _tl2825228313_)
                                              ((lambda (_L28316_ _L28318_)
                                                 (cons '?:
                                                       (cons _L28209_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28318_
                                 (cons '=>:
                                       (cons (_parse126760_ _L28316_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2825128310_
                                               _hd2824528290_)
                                              (_g2822528269_ _g2822728273_))))
                                      (_g2822528269_ _g2822728273_))
                                  (_g2822528269_ _g2822728273_))
                              (_g2822528269_ _g2822728273_))))
                      (_g2822528269_ _g2822728273_))))
              (_g2822528269_ _g2822728273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2822528269_
                                                   _g2822728273_))
                                              (_g2822528269_ _g2822728273_))))
                                      (_g2822528269_ _g2822728273_))))
                               (_g2822328377_
                                (lambda (_g2822728341_)
                                  (if (gx#stx-pair? _g2822728341_)
                                      (let ((_e2823328344_
                                             (gx#syntax-e _g2822728341_)))
                                        (let ((_hd2823428348_
                                               (##car _e2823328344_))
                                              (_tl2823528351_
                                               (##cdr _e2823328344_)))
                                          (if (gx#identifier? _hd2823428348_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34854_|
                                                   _hd2823428348_)
                                                  (if (gx#stx-pair?
                                                       _tl2823528351_)
                                                      (let ((_e2823628354_
                                                             (gx#syntax-e
                                                              _tl2823528351_)))
                                                        (let ((_hd2823728358_
                                                               (##car _e2823628354_))
                                                              (_tl2823828361_
                                                               (##cdr _e2823628354_)))
                                                          (if (gx#stx-null?
                                                               _tl2823828361_)
                                                              ((lambda (_L28364_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28209_
                                     (cons '=>:
                                           (cons (_parse126760_ _L28364_)
                                                 '())))))
                       _hd2823728358_)
                      (_g2822428337_ _g2822728341_))))
              (_g2822428337_ _g2822728341_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2822428337_
                                                   _g2822728341_))
                                              (_g2822428337_ _g2822728341_))))
                                      (_g2822428337_ _g2822728341_))))
                               (_g2822228405_
                                (lambda (_g2822728381_)
                                  (if (gx#stx-pair? _g2822728381_)
                                      (let ((_e2822928384_
                                             (gx#syntax-e _g2822728381_)))
                                        (let ((_hd2823028388_
                                               (##car _e2822928384_))
                                              (_tl2823128391_
                                               (##cdr _e2822928384_)))
                                          (if (gx#stx-null? _tl2823128391_)
                                              ((lambda (_L28394_)
                                                 (cons '?:
                                                       (cons _L28209_
                                                             (cons (_parse126760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28394_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2823028388_)
                                              (_g2822328377_ _g2822728381_))))
                                      (_g2822328377_ _g2822728381_))))
                               (_g2822128416_
                                (lambda (_g2822728409_)
                                  (if (gx#stx-null? _g2822728409_)
                                      ((lambda ()
                                         (cons '?: (cons _L28209_ '()))))
                                      (_g2822228405_ _g2822728409_)))))
                          (_g2822128416_ _L28207_)))
                      _tl2714228204_
                      _hd2714128201_)))
                 (_g2711028180_ _g2713428184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711028180_
                                                      _g2713428184_))
                                                 (_g2711028180_
                                                  _g2713428184_))))
                                         (_g2711028180_ _g2713428184_)))))
                             (_g2710928420_ _hd27107_))))
                        (_parse-list26762_
                         (lambda (_body26942_)
                           (let* ((_g2694826976_
                                   (lambda (_g2694926972_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2694926972_)))
                                  (_g2694726987_
                                   (lambda (_g2694926980_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body26942_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body26942_))
                                                (_parse126760_ _body26942_)
                                                (_parse-error26767_
                                                 _body26942_)))))))
                                  (_g2694627019_
                                   (lambda (_g2694926991_)
                                     (if (gx#stx-pair? _g2694926991_)
                                         (let ((_e2696826994_
                                                (gx#syntax-e _g2694926991_)))
                                           (let ((_hd2696926998_
                                                  (##car _e2696826994_))
                                                 (_tl2697027001_
                                                  (##cdr _e2696826994_)))
                                             ((lambda (_L27004_ _L27006_)
                                                (if (not (gx#ellipsis?
                                                          _L27006_))
                                                    (cons 'cons:
                                                          (cons (_parse126760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27006_)
                        (cons (_parse-list26762_ _L27004_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2694726987_
                                                     _g2694926991_)))
                                              _tl2697027001_
                                              _hd2696926998_)))
                                         (_g2694726987_ _g2694926991_))))
                                  (_g2694527063_
                                   (lambda (_g2694927023_)
                                     (if (gx#stx-pair? _g2694927023_)
                                         (let ((_e2696027026_
                                                (gx#syntax-e _g2694927023_)))
                                           (let ((_hd2696127030_
                                                  (##car _e2696027026_))
                                                 (_tl2696227033_
                                                  (##cdr _e2696027026_)))
                                             (if (gx#stx-pair? _tl2696227033_)
                                                 (let ((_e2696327036_
                                                        (gx#syntax-e
                                                         _tl2696227033_)))
                                                   (let ((_hd2696427040_
                                                          (##car _e2696327036_))
                                                         (_tl2696527043_
                                                          (##cdr _e2696327036_)))
                                                     ((lambda (_L27046_
                                                               _L27048_
                                                               _L27049_)
                                                        (if (gx#ellipsis?
                                                             _L27048_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse126760_ _L27049_)
                                (cons (_parse-list26762_ _L27046_) '())))
                    (_g2694627019_ _g2694927023_)))
              _tl2696527043_
              _hd2696427040_
              _hd2696127030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2694627019_
                                                  _g2694927023_))))
                                         (_g2694627019_ _g2694927023_))))
                                  (_g2694427103_
                                   (lambda (_g2694927067_)
                                     (if (gx#stx-pair? _g2694927067_)
                                         (let ((_e2695127070_
                                                (gx#syntax-e _g2694927067_)))
                                           (let ((_hd2695227074_
                                                  (##car _e2695127070_))
                                                 (_tl2695327077_
                                                  (##cdr _e2695127070_)))
                                             (if (gx#stx-datum? _hd2695227074_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2695227074_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2695327077_)
                                                         (let ((_e2695427080_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2695327077_)))
                   (let ((_hd2695527084_ (##car _e2695427080_))
                         (_tl2695627087_ (##cdr _e2695427080_)))
                     (if (gx#stx-null? _tl2695627087_)
                         ((lambda (_L27090_) (_parse126760_ _L27090_))
                          _hd2695527084_)
                         (_g2694527063_ _g2694927067_))))
                 (_g2694527063_ _g2694927067_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2694527063_
                                                      _g2694927067_))
                                                 (_g2694527063_
                                                  _g2694927067_))))
                                         (_g2694527063_ _g2694927067_)))))
                             (_g2694427103_ _body26942_))))
                        (_parse-vector26763_
                         (lambda (_body26939_)
                           (if (_simple-vector?26764_ _body26939_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse126760_
                                            _body26939_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list26762_ _body26939_)
                                           '())))))
                        (_simple-vector?26764_
                         (lambda (_body26876_)
                           (let* ((_g2688026892_
                                   (lambda (_g2688126888_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2688126888_)))
                                  (_g2687926903_
                                   (lambda (_g2688126896_)
                                     ((lambda () (gx#stx-null? _body26876_)))))
                                  (_g2687826935_
                                   (lambda (_g2688126907_)
                                     (if (gx#stx-pair? _g2688126907_)
                                         (let ((_e2688426910_
                                                (gx#syntax-e _g2688126907_)))
                                           (let ((_hd2688526914_
                                                  (##car _e2688426910_))
                                                 (_tl2688626917_
                                                  (##cdr _e2688426910_)))
                                             ((lambda (_L26920_ _L26922_)
                                                (if (not (gx#ellipsis?
                                                          _L26922_))
                                                    (_simple-vector?26764_
                                                     _L26920_)
                                                    '#f))
                                              _tl2688626917_
                                              _hd2688526914_)))
                                         (_g2687926903_ _g2688126907_)))))
                             (_g2687826935_ _body26876_))))
                        (_parse-class-body26765_
                         (lambda (_body26785_)
                           (let _recur26788_ ((_rest26791_ _body26785_))
                             (let* ((_g2679526811_
                                     (lambda (_g2679626807_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2679626807_)))
                                    (_g2679426822_
                                     (lambda (_g2679626815_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest26791_)
                                              '()
                                              (_parse-error26767_
                                               _rest26791_))))))
                                    (_g2679326872_
                                     (lambda (_g2679626826_)
                                       (if (gx#stx-pair? _g2679626826_)
                                           (let ((_e2680026829_
                                                  (gx#syntax-e _g2679626826_)))
                                             (let ((_hd2680126833_
                                                    (##car _e2680026829_))
                                                   (_tl2680226836_
                                                    (##cdr _e2680026829_)))
                                               (if (gx#stx-pair?
                                                    _tl2680226836_)
                                                   (let ((_e2680326839_
                                                          (gx#syntax-e
                                                           _tl2680226836_)))
                                                     (let ((_hd2680426843_
                                                            (##car _e2680326839_))
                                                           (_tl2680526846_
                                                            (##cdr _e2680326839_)))
                                                       ((lambda (_L26849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26851_
                         _L26852_)
                  (if (gx#stx-keyword? _L26852_)
                      (cons* _L26852_
                             (_parse126760_ _L26851_)
                             (_recur26788_ _L26849_))
                      (_g2679426822_ _g2679626826_)))
                _tl2680526846_
                _hd2680426843_
                _hd2680126833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2679426822_
                                                    _g2679626826_))))
                                           (_g2679426822_ _g2679626826_)))))
                               (_g2679326872_ _rest26791_)))))
                        (_parse-qq26766_
                         (lambda (_hd26772_)
                           (let ((_g2677426781_
                                  (lambda (_g2677526777_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2677526777_))))
                             (_g2677426781_ _hd26772_))))
                        (_parse-error26767_
                         (lambda (_hd26769_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx26758_
                                      (cons _match-stx26758_
                                            (cons _stx26756_
                                                  (cons _hd26769_ '())))
                                      (cons _stx26756_
                                            (cons _hd26769_ '())))))))
                 (_parse126760_ _stx26756_)))))
        (lambda _g34856_
          (let ((_g34855_ (length _g34856_)))
            (cond ((fx= _g34855_ 1)
                   (apply (lambda (_stx28428_)
                            (let ((_match-stx28431_ '#f))
                              (_opt-lambda2675428424_
                               _stx28428_
                               _match-stx28431_)))
                          _g34856_))
                  ((fx= _g34855_ 2) (apply _opt-lambda2675428424_ _g34856_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g34856_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx26740_)
        (call-with-escape
         (lambda (_E26744_)
           (with-exception-handler
            (let ((_E!26747_ (current-exception-handler)))
              (lambda (_e26750_)
                (if (gx#syntax-error? _e26750_)
                    (_E26744_ '#f)
                    (_E!26747_ _e26750_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx26740_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree25529_)
        (letrec ((_loop25532_
                  (lambda (_ptree25807_ _vars25809_ _K25810_)
                    (let* ((_g2582325924_
                            (lambda (_g2582425920_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2582425920_)))
                           (_g2582225935_
                            (lambda (_g2582425928_)
                              ((lambda () (_K25810_ _vars25809_)))))
                           (_g2582125982_
                            (lambda (_g2582425939_)
                              (if (gx#stx-pair? _g2582425939_)
                                  (let ((_e2591325942_
                                         (gx#syntax-e _g2582425939_)))
                                    (let ((_hd2591425946_
                                           (##car _e2591325942_))
                                          (_tl2591525949_
                                           (##cdr _e2591325942_)))
                                      (if (gx#stx-datum? _hd2591425946_)
                                          (if (equal? (gx#stx-e _hd2591425946_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2591525949_)
                                                  (let ((_e2591625952_
                                                         (gx#syntax-e
                                                          _tl2591525949_)))
                                                    (let ((_hd2591725956_
                                                           (##car _e2591625952_))
                                                          (_tl2591825959_
                                                           (##cdr _e2591625952_)))
                                                      (if (gx#stx-null?
                                                           _tl2591825959_)
                                                          ((lambda (_L25962_)
                                                             (if (find (lambda (_g2597625978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2597625978_
                                  _L25962_))
                               _vars25809_)
                         (_K25810_ _vars25809_)
                         (_K25810_ (cons _L25962_ _vars25809_))))
                   _hd2591725956_)
                  (_g2582225935_ _g2582425939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2582225935_
                                                   _g2582425939_))
                                              (_g2582225935_ _g2582425939_))
                                          (_g2582225935_ _g2582425939_))))
                                  (_g2582225935_ _g2582425939_))))
                           (_g2582026036_
                            (lambda (_g2582425986_)
                              (if (gx#stx-pair? _g2582425986_)
                                  (let ((_e2590325989_
                                         (gx#syntax-e _g2582425986_)))
                                    (let ((_hd2590425993_
                                           (##car _e2590325989_))
                                          (_tl2590525996_
                                           (##cdr _e2590325989_)))
                                      (if (gx#stx-datum? _hd2590425993_)
                                          (if (equal? (gx#stx-e _hd2590425993_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2590525996_)
                                                  (let ((_e2590625999_
                                                         (gx#syntax-e
                                                          _tl2590525996_)))
                                                    (let ((_hd2590726003_
                                                           (##car _e2590625999_))
                                                          (_tl2590826006_
                                                           (##cdr _e2590625999_)))
                                                      (if (gx#stx-pair?
                                                           _tl2590826006_)
                                                          (let ((_e2590926009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2590826006_)))
                    (let ((_hd2591026013_ (##car _e2590926009_))
                          (_tl2591126016_ (##cdr _e2590926009_)))
                      (if (gx#stx-null? _tl2591126016_)
                          ((lambda (_L26019_ _L26021_)
                             (_loop25532_ _L26019_ _vars25809_ _K25810_))
                           _hd2591026013_
                           _hd2590726003_)
                          (_g2582125982_ _g2582425986_))))
                  (_g2582125982_ _g2582425986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2582125982_
                                                   _g2582425986_))
                                              (_g2582125982_ _g2582425986_))
                                          (_g2582125982_ _g2582425986_))))
                                  (_g2582125982_ _g2582425986_))))
                           (_g2581926088_
                            (lambda (_g2582426040_)
                              (if (gx#stx-pair? _g2582426040_)
                                  (let ((_e2589226043_
                                         (gx#syntax-e _g2582426040_)))
                                    (let ((_hd2589326047_
                                           (##car _e2589226043_))
                                          (_tl2589426050_
                                           (##cdr _e2589226043_)))
                                      (if (gx#stx-datum? _hd2589326047_)
                                          (if (equal? (gx#stx-e _hd2589326047_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2589426050_)
                                                  (let ((_e2589526053_
                                                         (gx#syntax-e
                                                          _tl2589426050_)))
                                                    (let ((_hd2589626057_
                                                           (##car _e2589526053_))
                                                          (_tl2589726060_
                                                           (##cdr _e2589526053_)))
                                                      (if (gx#stx-pair?
                                                           _tl2589726060_)
                                                          (let ((_e2589826063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2589726060_)))
                    (let ((_hd2589926067_ (##car _e2589826063_))
                          (_tl2590026070_ (##cdr _e2589826063_)))
                      (if (gx#stx-null? _tl2590026070_)
                          ((lambda (_L26073_)
                             (_loop-class-list25536_
                              _L26073_
                              _vars25809_
                              _K25810_))
                           _hd2589926067_)
                          (_g2582026036_ _g2582426040_))))
                  (_g2582026036_ _g2582426040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2582026036_
                                                   _g2582426040_))
                                              (_g2582026036_ _g2582426040_))
                                          (_g2582026036_ _g2582426040_))))
                                  (_g2582026036_ _g2582426040_))))
                           (_g2581826140_
                            (lambda (_g2582426092_)
                              (if (gx#stx-pair? _g2582426092_)
                                  (let ((_e2588226095_
                                         (gx#syntax-e _g2582426092_)))
                                    (let ((_hd2588326099_
                                           (##car _e2588226095_))
                                          (_tl2588426102_
                                           (##cdr _e2588226095_)))
                                      (if (gx#stx-datum? _hd2588326099_)
                                          (if (equal? (gx#stx-e _hd2588326099_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2588426102_)
                                                  (let ((_e2588526105_
                                                         (gx#syntax-e
                                                          _tl2588426102_)))
                                                    (let ((_hd2588626109_
                                                           (##car _e2588526105_))
                                                          (_tl2588726112_
                                                           (##cdr _e2588526105_)))
                                                      (if (gx#stx-pair?
                                                           _tl2588726112_)
                                                          (let ((_e2588826115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2588726112_)))
                    (let ((_hd2588926119_ (##car _e2588826115_))
                          (_tl2589026122_ (##cdr _e2588826115_)))
                      (if (gx#stx-null? _tl2589026122_)
                          ((lambda (_L26125_)
                             (_loop-vector25534_
                              _L26125_
                              _vars25809_
                              _K25810_))
                           _hd2588926119_)
                          (_g2581926088_ _g2582426092_))))
                  (_g2581926088_ _g2582426092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581926088_
                                                   _g2582426092_))
                                              (_g2581926088_ _g2582426092_))
                                          (_g2581926088_ _g2582426092_))))
                                  (_g2581926088_ _g2582426092_))))
                           (_g2581726186_
                            (lambda (_g2582426144_)
                              (if (gx#stx-pair? _g2582426144_)
                                  (let ((_e2587526147_
                                         (gx#syntax-e _g2582426144_)))
                                    (let ((_hd2587626151_
                                           (##car _e2587526147_))
                                          (_tl2587726154_
                                           (##cdr _e2587526147_)))
                                      (if (gx#stx-pair? _tl2587726154_)
                                          (let ((_e2587826157_
                                                 (gx#syntax-e _tl2587726154_)))
                                            (let ((_hd2587926161_
                                                   (##car _e2587826157_))
                                                  (_tl2588026164_
                                                   (##cdr _e2587826157_)))
                                              (if (gx#stx-null? _tl2588026164_)
                                                  ((lambda (_L26167_ _L26169_)
                                                     (if (let ((_$e26182_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26169_)))
                   (if _$e26182_ _$e26182_ (gx#stx-eq? 'vector: _L26169_)))
                 (_loop-vector25534_ _L26167_ _vars25809_ _K25810_)
                 (_g2581826140_ _g2582426144_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2587926161_
                                                   _hd2587626151_)
                                                  (_g2581826140_
                                                   _g2582426144_))))
                                          (_g2581826140_ _g2582426144_))))
                                  (_g2581826140_ _g2582426144_))))
                           (_g2581626226_
                            (lambda (_g2582426190_)
                              (if (gx#stx-pair? _g2582426190_)
                                  (let ((_e2586726193_
                                         (gx#syntax-e _g2582426190_)))
                                    (let ((_hd2586826197_
                                           (##car _e2586726193_))
                                          (_tl2586926200_
                                           (##cdr _e2586726193_)))
                                      (if (gx#stx-datum? _hd2586826197_)
                                          (if (equal? (gx#stx-e _hd2586826197_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2586926200_)
                                                  (let ((_e2587026203_
                                                         (gx#syntax-e
                                                          _tl2586926200_)))
                                                    (let ((_hd2587126207_
                                                           (##car _e2587026203_))
                                                          (_tl2587226210_
                                                           (##cdr _e2587026203_)))
                                                      (if (gx#stx-null?
                                                           _tl2587226210_)
                                                          ((lambda (_L26213_)
                                                             (_loop25532_
                                                              _L26213_
                                                              _vars25809_
                                                              _K25810_))
                                                           _hd2587126207_)
                                                          (_g2581726186_
                                                           _g2582426190_))))
                                                  (_g2581726186_
                                                   _g2582426190_))
                                              (_g2581726186_ _g2582426190_))
                                          (_g2581726186_ _g2582426190_))))
                                  (_g2581726186_ _g2582426190_))))
                           (_g2581526285_
                            (lambda (_g2582426230_)
                              (if (gx#stx-pair? _g2582426230_)
                                  (let ((_e2585726233_
                                         (gx#syntax-e _g2582426230_)))
                                    (let ((_hd2585826237_
                                           (##car _e2585726233_))
                                          (_tl2585926240_
                                           (##cdr _e2585726233_)))
                                      (if (gx#stx-datum? _hd2585826237_)
                                          (if (equal? (gx#stx-e _hd2585826237_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2585926240_)
                                                  (let ((_e2586026243_
                                                         (gx#syntax-e
                                                          _tl2585926240_)))
                                                    (let ((_hd2586126247_
                                                           (##car _e2586026243_))
                                                          (_tl2586226250_
                                                           (##cdr _e2586026243_)))
                                                      (if (gx#stx-pair?
                                                           _tl2586226250_)
                                                          (let ((_e2586326253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2586226250_)))
                    (let ((_hd2586426257_ (##car _e2586326253_))
                          (_tl2586526260_ (##cdr _e2586326253_)))
                      (if (gx#stx-null? _tl2586526260_)
                          ((lambda (_L26263_ _L26265_)
                             (_loop25532_
                              _L26265_
                              _vars25809_
                              (lambda (_g2627926281_)
                                (_loop25532_
                                 _L26263_
                                 _g2627926281_
                                 _K25810_))))
                           _hd2586426257_
                           _hd2586126247_)
                          (_g2581626226_ _g2582426230_))))
                  (_g2581626226_ _g2582426230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581626226_
                                                   _g2582426230_))
                                              (_g2581626226_ _g2582426230_))
                                          (_g2581626226_ _g2582426230_))))
                                  (_g2581626226_ _g2582426230_))))
                           (_g2581426344_
                            (lambda (_g2582426289_)
                              (if (gx#stx-pair? _g2582426289_)
                                  (let ((_e2584626292_
                                         (gx#syntax-e _g2582426289_)))
                                    (let ((_hd2584726296_
                                           (##car _e2584626292_))
                                          (_tl2584826299_
                                           (##cdr _e2584626292_)))
                                      (if (gx#stx-datum? _hd2584726296_)
                                          (if (equal? (gx#stx-e _hd2584726296_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2584826299_)
                                                  (let ((_e2584926302_
                                                         (gx#syntax-e
                                                          _tl2584826299_)))
                                                    (let ((_hd2585026306_
                                                           (##car _e2584926302_))
                                                          (_tl2585126309_
                                                           (##cdr _e2584926302_)))
                                                      (if (gx#stx-pair?
                                                           _tl2585126309_)
                                                          (let ((_e2585226312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2585126309_)))
                    (let ((_hd2585326316_ (##car _e2585226312_))
                          (_tl2585426319_ (##cdr _e2585226312_)))
                      (if (gx#stx-null? _tl2585426319_)
                          ((lambda (_L26322_ _L26324_)
                             (_loop25532_
                              _L26324_
                              _vars25809_
                              (lambda (_g2633826340_)
                                (_loop25532_
                                 _L26322_
                                 _g2633826340_
                                 _K25810_))))
                           _hd2585326316_
                           _hd2585026306_)
                          (_g2581526285_ _g2582426289_))))
                  (_g2581526285_ _g2582426289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581526285_
                                                   _g2582426289_))
                                              (_g2581526285_ _g2582426289_))
                                          (_g2581526285_ _g2582426289_))))
                                  (_g2581526285_ _g2582426289_))))
                           (_g2581326384_
                            (lambda (_g2582426348_)
                              (if (gx#stx-pair? _g2582426348_)
                                  (let ((_e2583826351_
                                         (gx#syntax-e _g2582426348_)))
                                    (let ((_hd2583926355_
                                           (##car _e2583826351_))
                                          (_tl2584026358_
                                           (##cdr _e2583826351_)))
                                      (if (gx#stx-datum? _hd2583926355_)
                                          (if (equal? (gx#stx-e _hd2583926355_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2584026358_)
                                                  (let ((_e2584126361_
                                                         (gx#syntax-e
                                                          _tl2584026358_)))
                                                    (let ((_hd2584226365_
                                                           (##car _e2584126361_))
                                                          (_tl2584326368_
                                                           (##cdr _e2584126361_)))
                                                      (if (gx#stx-null?
                                                           _tl2584326368_)
                                                          ((lambda (_L26371_)
                                                             (_loop25532_
                                                              _L26371_
                                                              _vars25809_
                                                              _K25810_))
                                                           _hd2584226365_)
                                                          (_g2581426344_
                                                           _g2582426348_))))
                                                  (_g2581426344_
                                                   _g2582426348_))
                                              (_g2581426344_ _g2582426348_))
                                          (_g2581426344_ _g2582426348_))))
                                  (_g2581426344_ _g2582426348_))))
                           (_g2581226483_
                            (lambda (_g2582426388_)
                              (if (gx#stx-pair? _g2582426388_)
                                  (let ((_e2583426391_
                                         (gx#syntax-e _g2582426388_)))
                                    (let ((_hd2583526395_
                                           (##car _e2583426391_))
                                          (_tl2583626398_
                                           (##cdr _e2583426391_)))
                                      ((lambda (_L26401_ _L26403_)
                                         (if (let ((_$e26414_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26403_)))
                                               (if _$e26414_
                                                   _$e26414_
                                                   (gx#stx-eq? 'or: _L26403_)))
                                             (let* ((_g2641926431_
                                                     (lambda (_g2642026427_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2642026427_)))
                                                    (_g2641826442_
                                                     (lambda (_g2642026435_)
                                                       ((lambda ()
                                                          (_K25810_
                                                           _vars25809_)))))
                                                    (_g2641726479_
                                                     (lambda (_g2642026446_)
                                                       (if (gx#stx-pair?
                                                            _g2642026446_)
                                                           (let ((_e2642326449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2642026446_)))
                     (let ((_hd2642426453_ (##car _e2642326449_))
                           (_tl2642526456_ (##cdr _e2642326449_)))
                       ((lambda (_L26459_ _L26461_)
                          (_loop25532_
                           _L26461_
                           _vars25809_
                           (lambda (_g2647326475_)
                             (_loop25532_
                              (cons _L26403_ _L26459_)
                              _g2647326475_
                              _K25810_))))
                        _tl2642526456_
                        _hd2642426453_)))
                   (_g2641826442_ _g2642026446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2641726479_ _L26401_))
                                             (_g2581326384_ _g2582426388_)))
                                       _tl2583626398_
                                       _hd2583526395_)))
                                  (_g2581326384_ _g2582426388_))))
                           (_g2581126736_
                            (lambda (_g2582426487_)
                              (if (gx#stx-pair? _g2582426487_)
                                  (let ((_e2582626490_
                                         (gx#syntax-e _g2582426487_)))
                                    (let ((_hd2582726494_
                                           (##car _e2582626490_))
                                          (_tl2582826497_
                                           (##cdr _e2582626490_)))
                                      (if (gx#stx-datum? _hd2582726494_)
                                          (if (equal? (gx#stx-e _hd2582726494_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2582826497_)
                                                  (let ((_e2582926500_
                                                         (gx#syntax-e
                                                          _tl2582826497_)))
                                                    (let ((_hd2583026504_
                                                           (##car _e2582926500_))
                                                          (_tl2583126507_
                                                           (##cdr _e2582926500_)))
                                                      ((lambda (_L26510_)
                                                         (let* ((_g2652626563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2652726559_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2652726559_)))
                        (_g2652526574_
                         (lambda (_g2652726567_)
                           ((lambda () (_K25810_ _vars25809_)))))
                        (_g2652426652_
                         (lambda (_g2652726578_)
                           (if (gx#stx-pair? _g2652726578_)
                               (let ((_e2654326581_
                                      (gx#syntax-e _g2652726578_)))
                                 (let ((_hd2654426585_ (##car _e2654326581_))
                                       (_tl2654526588_ (##cdr _e2654326581_)))
                                   (if (gx#stx-pair? _tl2654526588_)
                                       (let ((_e2654626591_
                                              (gx#syntax-e _tl2654526588_)))
                                         (let ((_hd2654726595_
                                                (##car _e2654626591_))
                                               (_tl2654826598_
                                                (##cdr _e2654626591_)))
                                           (if (gx#stx-datum? _hd2654726595_)
                                               (if (equal? (gx#stx-e
                                                            _hd2654726595_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2654826598_)
                                                       (let ((_e2654926601_
                                                              (gx#syntax-e
                                                               _tl2654826598_)))
                                                         (let ((_hd2655026605_
                                                                (##car _e2654926601_))
                                                               (_tl2655126608_
                                                                (##cdr _e2654926601_)))
                                                           (if (gx#stx-pair?
                                                                _tl2655126608_)
                                                               (let ((_e2655226611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2655126608_)))
                         (let ((_hd2655326615_ (##car _e2655226611_))
                               (_tl2655426618_ (##cdr _e2655226611_)))
                           (if (gx#stx-datum? _hd2655326615_)
                               (if (equal? (gx#stx-e _hd2655326615_) '=>:)
                                   (if (gx#stx-pair? _tl2655426618_)
                                       (let ((_e2655526621_
                                              (gx#syntax-e _tl2655426618_)))
                                         (let ((_hd2655626625_
                                                (##car _e2655526621_))
                                               (_tl2655726628_
                                                (##cdr _e2655526621_)))
                                           (if (gx#stx-null? _tl2655726628_)
                                               ((lambda (_L26631_)
                                                  (_loop25532_
                                                   _L26631_
                                                   _vars25809_
                                                   _K25810_))
                                                _hd2655626625_)
                                               (_g2652526574_ _g2652726578_))))
                                       (_g2652526574_ _g2652726578_))
                                   (_g2652526574_ _g2652726578_))
                               (_g2652526574_ _g2652726578_))))
                       (_g2652526574_ _g2652726578_))))
               (_g2652526574_ _g2652726578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2652526574_
                                                    _g2652726578_))
                                               (_g2652526574_ _g2652726578_))))
                                       (_g2652526574_ _g2652726578_))))
                               (_g2652526574_ _g2652726578_))))
                        (_g2652326704_
                         (lambda (_g2652726656_)
                           (if (gx#stx-pair? _g2652726656_)
                               (let ((_e2653326659_
                                      (gx#syntax-e _g2652726656_)))
                                 (let ((_hd2653426663_ (##car _e2653326659_))
                                       (_tl2653526666_ (##cdr _e2653326659_)))
                                   (if (gx#stx-pair? _tl2653526666_)
                                       (let ((_e2653626669_
                                              (gx#syntax-e _tl2653526666_)))
                                         (let ((_hd2653726673_
                                                (##car _e2653626669_))
                                               (_tl2653826676_
                                                (##cdr _e2653626669_)))
                                           (if (gx#stx-datum? _hd2653726673_)
                                               (if (equal? (gx#stx-e
                                                            _hd2653726673_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2653826676_)
                                                       (let ((_e2653926679_
                                                              (gx#syntax-e
                                                               _tl2653826676_)))
                                                         (let ((_hd2654026683_
                                                                (##car _e2653926679_))
                                                               (_tl2654126686_
                                                                (##cdr _e2653926679_)))
                                                           (if (gx#stx-null?
                                                                _tl2654126686_)
                                                               ((lambda (_L26689_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop25532_ _L26689_ _vars25809_ _K25810_))
                        _hd2654026683_)
                       (_g2652426652_ _g2652726656_))))
               (_g2652426652_ _g2652726656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2652426652_
                                                    _g2652726656_))
                                               (_g2652426652_ _g2652726656_))))
                                       (_g2652426652_ _g2652726656_))))
                               (_g2652426652_ _g2652726656_))))
                        (_g2652226732_
                         (lambda (_g2652726708_)
                           (if (gx#stx-pair? _g2652726708_)
                               (let ((_e2652926711_
                                      (gx#syntax-e _g2652726708_)))
                                 (let ((_hd2653026715_ (##car _e2652926711_))
                                       (_tl2653126718_ (##cdr _e2652926711_)))
                                   (if (gx#stx-null? _tl2653126718_)
                                       ((lambda (_L26721_)
                                          (_loop25532_
                                           _L26721_
                                           _vars25809_
                                           _K25810_))
                                        _hd2653026715_)
                                       (_g2652326704_ _g2652726708_))))
                               (_g2652326704_ _g2652726708_)))))
                   (_g2652226732_ _L26510_)))
               _tl2583126507_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581226483_
                                                   _g2582426487_))
                                              (_g2581226483_ _g2582426487_))
                                          (_g2581226483_ _g2582426487_))))
                                  (_g2581226483_ _g2582426487_)))))
                      (_g2581126736_ _ptree25807_))))
                 (_loop-vector25534_
                  (lambda (_body25695_ _vars25697_ _K25698_)
                    (let* ((_g2570125722_
                            (lambda (_g2570225718_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2570225718_)))
                           (_g2570025763_
                            (lambda (_g2570225726_)
                              (if (gx#stx-pair? _g2570225726_)
                                  (let ((_e2571125729_
                                         (gx#syntax-e _g2570225726_)))
                                    (let ((_hd2571225733_
                                           (##car _e2571125729_))
                                          (_tl2571325736_
                                           (##cdr _e2571125729_)))
                                      (if (gx#stx-datum? _hd2571225733_)
                                          (if (equal? (gx#stx-e _hd2571225733_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2571325736_)
                                                  (let ((_e2571425739_
                                                         (gx#syntax-e
                                                          _tl2571325736_)))
                                                    (let ((_hd2571525743_
                                                           (##car _e2571425739_))
                                                          (_tl2571625746_
                                                           (##cdr _e2571425739_)))
                                                      (if (gx#stx-null?
                                                           _tl2571625746_)
                                                          ((lambda (_L25749_)
                                                             (_loop25532_
                                                              _L25749_
                                                              _vars25697_
                                                              _K25698_))
                                                           _hd2571525743_)
                                                          (_g2570125722_
                                                           _g2570225726_))))
                                                  (_g2570125722_
                                                   _g2570225726_))
                                              (_g2570125722_ _g2570225726_))
                                          (_g2570125722_ _g2570225726_))))
                                  (_g2570125722_ _g2570225726_))))
                           (_g2569925803_
                            (lambda (_g2570225767_)
                              (if (gx#stx-pair? _g2570225767_)
                                  (let ((_e2570425770_
                                         (gx#syntax-e _g2570225767_)))
                                    (let ((_hd2570525774_
                                           (##car _e2570425770_))
                                          (_tl2570625777_
                                           (##cdr _e2570425770_)))
                                      (if (gx#stx-datum? _hd2570525774_)
                                          (if (equal? (gx#stx-e _hd2570525774_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2570625777_)
                                                  (let ((_e2570725780_
                                                         (gx#syntax-e
                                                          _tl2570625777_)))
                                                    (let ((_hd2570825784_
                                                           (##car _e2570725780_))
                                                          (_tl2570925787_
                                                           (##cdr _e2570725780_)))
                                                      (if (gx#stx-null?
                                                           _tl2570925787_)
                                                          ((lambda (_L25790_)
                                                             (_loop-list25535_
                                                              _L25790_
                                                              _vars25697_
                                                              _K25698_))
                                                           _hd2570825784_)
                                                          (_g2570025763_
                                                           _g2570225767_))))
                                                  (_g2570025763_
                                                   _g2570225767_))
                                              (_g2570025763_ _g2570225767_))
                                          (_g2570025763_ _g2570225767_))))
                                  (_g2570025763_ _g2570225767_)))))
                      (_g2569925803_ _body25695_))))
                 (_loop-list25535_
                  (lambda (_rest25625_ _vars25627_ _K25628_)
                    (let* ((_g2563125643_
                            (lambda (_g2563225639_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2563225639_)))
                           (_g2563025654_
                            (lambda (_g2563225647_)
                              ((lambda () (_K25628_ _vars25627_)))))
                           (_g2562925691_
                            (lambda (_g2563225658_)
                              (if (gx#stx-pair? _g2563225658_)
                                  (let ((_e2563525661_
                                         (gx#syntax-e _g2563225658_)))
                                    (let ((_hd2563625665_
                                           (##car _e2563525661_))
                                          (_tl2563725668_
                                           (##cdr _e2563525661_)))
                                      ((lambda (_L25671_ _L25673_)
                                         (_loop25532_
                                          _L25673_
                                          _vars25627_
                                          (lambda (_g2568525687_)
                                            (_loop-list25535_
                                             _L25671_
                                             _g2568525687_
                                             _K25628_))))
                                       _tl2563725668_
                                       _hd2563625665_)))
                                  (_g2563025654_ _g2563225658_)))))
                      (_g2562925691_ _rest25625_))))
                 (_loop-class-list25536_
                  (lambda (_rest25538_ _vars25540_ _K25541_)
                    (let* ((_g2554425559_
                            (lambda (_g2554525555_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2554525555_)))
                           (_g2554325570_
                            (lambda (_g2554525563_)
                              ((lambda () (_K25541_ _vars25540_)))))
                           (_g2554225621_
                            (lambda (_g2554525574_)
                              (if (gx#stx-pair? _g2554525574_)
                                  (let ((_e2554825577_
                                         (gx#syntax-e _g2554525574_)))
                                    (let ((_hd2554925581_
                                           (##car _e2554825577_))
                                          (_tl2555025584_
                                           (##cdr _e2554825577_)))
                                      (if (gx#stx-pair? _tl2555025584_)
                                          (let ((_e2555125587_
                                                 (gx#syntax-e _tl2555025584_)))
                                            (let ((_hd2555225591_
                                                   (##car _e2555125587_))
                                                  (_tl2555325594_
                                                   (##cdr _e2555125587_)))
                                              ((lambda (_L25597_ _L25599_)
                                                 (_loop25532_
                                                  _L25599_
                                                  _vars25540_
                                                  (lambda (_g2561525617_)
                                                    (_loop-class-list25536_
                                                     _L25597_
                                                     _g2561525617_
                                                     _K25541_))))
                                               _tl2555325594_
                                               _hd2555225591_)))
                                          (_g2554325570_ _g2554525574_))))
                                  (_g2554325570_ _g2554525574_)))))
                      (_g2554225621_ _rest25538_)))))
          (_loop25532_ _ptree25529_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22345_ _tgt22347_ _ptree22348_ _K22349_ _E22350_)
        (letrec ((_generate122352_
                  (lambda (_tgt23882_ _ptree23884_ _K23885_ _E23886_)
                    (let* ((_g2388823896_
                            (lambda (_g2388923892_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2388923892_)))
                           (_g2388725525_
                            (lambda (_g2388923900_)
                              ((lambda (_L23903_)
                                 (let ()
                                   (let* ((_g2393024056_
                                           (lambda (_g2393124052_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2393124052_)))
                                          (_g2392924077_
                                           (lambda (_g2393124060_)
                                             (if (gx#stx-pair? _g2393124060_)
                                                 (let ((_e2404824063_
                                                        (gx#syntax-e
                                                         _g2393124060_)))
                                                   (let ((_hd2404924067_
                                                          (##car _e2404824063_))
                                                         (_tl2405024070_
                                                          (##cdr _e2404824063_)))
                                                     (if (gx#stx-datum?
                                                          _hd2404924067_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2404924067_)
                             'any:)
                     (if (gx#stx-null? _tl2405024070_)
                         ((lambda () _K23885_))
                         (_g2393024056_ _g2393124060_))
                     (_g2393024056_ _g2393124060_))
                 (_g2393024056_ _g2393124060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2393024056_
                                                  _g2393124060_))))
                                          (_g2392824120_
                                           (lambda (_g2393124081_)
                                             (if (gx#stx-pair? _g2393124081_)
                                                 (let ((_e2404224084_
                                                        (gx#syntax-e
                                                         _g2393124081_)))
                                                   (let ((_hd2404324088_
                                                          (##car _e2404224084_))
                                                         (_tl2404424091_
                                                          (##cdr _e2404224084_)))
                                                     (if (gx#stx-datum?
                                                          _hd2404324088_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2404324088_)
                             'var:)
                     (if (gx#stx-pair? _tl2404424091_)
                         (let ((_e2404524094_ (gx#syntax-e _tl2404424091_)))
                           (let ((_hd2404624098_ (##car _e2404524094_))
                                 (_tl2404724101_ (##cdr _e2404524094_)))
                             (if (gx#stx-null? _tl2404724101_)
                                 ((lambda (_L24104_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24104_
                                                            (cons _L23903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K23885_ '()))))
                                  _hd2404624098_)
                                 (_g2392924077_ _g2393124081_))))
                         (_g2392924077_ _g2393124081_))
                     (_g2392924077_ _g2393124081_))
                 (_g2392924077_ _g2393124081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392924077_
                                                  _g2393124081_))))
                                          (_g2392724205_
                                           (lambda (_g2393124124_)
                                             (if (gx#stx-pair? _g2393124124_)
                                                 (let ((_e2403224127_
                                                        (gx#syntax-e
                                                         _g2393124124_)))
                                                   (let ((_hd2403324131_
                                                          (##car _e2403224127_))
                                                         (_tl2403424134_
                                                          (##cdr _e2403224127_)))
                                                     (if (gx#stx-datum?
                                                          _hd2403324131_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2403324131_)
                             'apply:)
                     (if (gx#stx-pair? _tl2403424134_)
                         (let ((_e2403524137_ (gx#syntax-e _tl2403424134_)))
                           (let ((_hd2403624141_ (##car _e2403524137_))
                                 (_tl2403724144_ (##cdr _e2403524137_)))
                             (if (gx#stx-pair? _tl2403724144_)
                                 (let ((_e2403824147_
                                        (gx#syntax-e _tl2403724144_)))
                                   (let ((_hd2403924151_ (##car _e2403824147_))
                                         (_tl2404024154_
                                          (##cdr _e2403824147_)))
                                     (if (gx#stx-null? _tl2404024154_)
                                         ((lambda (_L24157_ _L24159_)
                                            (let* ((_g2417424182_
                                                    (lambda (_g2417524178_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2417524178_)))
                                                   (_g2417324201_
                                                    (lambda (_g2417524186_)
                                                      ((lambda (_L24189_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L24189_
                                           (cons (cons _L24159_
                                                       (cons _L23903_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122352_
                                      _L24189_
                                      _L24157_
                                      _K23885_
                                      _E23886_)
                                     '())))))
               _g2417524186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2417324201_
                                               (gx#genident 'e))))
                                          _hd2403924151_
                                          _hd2403624141_)
                                         (_g2392824120_ _g2393124124_))))
                                 (_g2392824120_ _g2393124124_))))
                         (_g2392824120_ _g2393124124_))
                     (_g2392824120_ _g2393124124_))
                 (_g2392824120_ _g2393124124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392824120_
                                                  _g2393124124_))))
                                          (_g2392624287_
                                           (lambda (_g2393124209_)
                                             (if (gx#stx-pair? _g2393124209_)
                                                 (let ((_e2402424212_
                                                        (gx#syntax-e
                                                         _g2393124209_)))
                                                   (let ((_hd2402524216_
                                                          (##car _e2402424212_))
                                                         (_tl2402624219_
                                                          (##cdr _e2402424212_)))
                                                     (if (gx#stx-datum?
                                                          _hd2402524216_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2402524216_)
                             'datum:)
                     (if (gx#stx-pair? _tl2402624219_)
                         (let ((_e2402724222_ (gx#syntax-e _tl2402624219_)))
                           (let ((_hd2402824226_ (##car _e2402724222_))
                                 (_tl2402924229_ (##cdr _e2402724222_)))
                             (if (gx#stx-null? _tl2402924229_)
                                 ((lambda (_L24232_)
                                    (let* ((_g2424524253_
                                            (lambda (_g2424624249_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2424624249_)))
                                           (_g2424424272_
                                            (lambda (_g2424624257_)
                                              ((lambda (_L24260_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L24260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L23903_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24232_ '()))
                                         '())))
                       (cons _K23885_ (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2424624257_))))
                                      (_g2424424272_
                                       (let ((_e24276_ (gx#stx-e _L24232_)))
                                         (if (let ((_$e24279_
                                                    (symbol? _e24276_)))
                                               (if _$e24279_
                                                   _$e24279_
                                                   (let ((_$e24283_
                                                          (keyword? _e24276_)))
                                                     (if _$e24283_
                                                         _$e24283_
                                                         (immediate?
                                                          _e24276_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e24276_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2402824226_)
                                 (_g2392724205_ _g2393124209_))))
                         (_g2392724205_ _g2393124209_))
                     (_g2392724205_ _g2393124209_))
                 (_g2392724205_ _g2393124209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392724205_
                                                  _g2393124209_))))
                                          (_g2392524341_
                                           (lambda (_g2393124291_)
                                             (if (gx#stx-pair? _g2393124291_)
                                                 (let ((_e2401424294_
                                                        (gx#syntax-e
                                                         _g2393124291_)))
                                                   (let ((_hd2401524298_
                                                          (##car _e2401424294_))
                                                         (_tl2401624301_
                                                          (##cdr _e2401424294_)))
                                                     (if (gx#stx-datum?
                                                          _hd2401524298_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2401524298_)
                             'class:)
                     (if (gx#stx-pair? _tl2401624301_)
                         (let ((_e2401724304_ (gx#syntax-e _tl2401624301_)))
                           (let ((_hd2401824308_ (##car _e2401724304_))
                                 (_tl2401924311_ (##cdr _e2401724304_)))
                             (if (gx#stx-pair? _tl2401924311_)
                                 (let ((_e2402024314_
                                        (gx#syntax-e _tl2401924311_)))
                                   (let ((_hd2402124318_ (##car _e2402024314_))
                                         (_tl2402224321_
                                          (##cdr _e2402024314_)))
                                     (if (gx#stx-null? _tl2402224321_)
                                         ((lambda (_L24324_ _L24326_)
                                            (_generate-class22358_
                                             (gx#stx-e _L24326_)
                                             _tgt23882_
                                             _L24324_
                                             _K23885_
                                             _E23886_))
                                          _hd2402124318_
                                          _hd2401824308_)
                                         (_g2392624287_ _g2393124291_))))
                                 (_g2392624287_ _g2393124291_))))
                         (_g2392624287_ _g2393124291_))
                     (_g2392624287_ _g2393124291_))
                 (_g2392624287_ _g2393124291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392624287_
                                                  _g2393124291_))))
                                          (_g2392424395_
                                           (lambda (_g2393124345_)
                                             (if (gx#stx-pair? _g2393124345_)
                                                 (let ((_e2400324348_
                                                        (gx#syntax-e
                                                         _g2393124345_)))
                                                   (let ((_hd2400424352_
                                                          (##car _e2400324348_))
                                                         (_tl2400524355_
                                                          (##cdr _e2400324348_)))
                                                     (if (gx#stx-datum?
                                                          _hd2400424352_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2400424352_)
                             'struct:)
                     (if (gx#stx-pair? _tl2400524355_)
                         (let ((_e2400624358_ (gx#syntax-e _tl2400524355_)))
                           (let ((_hd2400724362_ (##car _e2400624358_))
                                 (_tl2400824365_ (##cdr _e2400624358_)))
                             (if (gx#stx-pair? _tl2400824365_)
                                 (let ((_e2400924368_
                                        (gx#syntax-e _tl2400824365_)))
                                   (let ((_hd2401024372_ (##car _e2400924368_))
                                         (_tl2401124375_
                                          (##cdr _e2400924368_)))
                                     (if (gx#stx-null? _tl2401124375_)
                                         ((lambda (_L24378_ _L24380_)
                                            (_generate-struct22357_
                                             (gx#stx-e _L24380_)
                                             _tgt23882_
                                             _L24378_
                                             _K23885_
                                             _E23886_))
                                          _hd2401024372_
                                          _hd2400724362_)
                                         (_g2392524341_ _g2393124345_))))
                                 (_g2392524341_ _g2393124345_))))
                         (_g2392524341_ _g2393124345_))
                     (_g2392524341_ _g2393124345_))
                 (_g2392524341_ _g2393124345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392524341_
                                                  _g2393124345_))))
                                          (_g2392324573_
                                           (lambda (_g2393124399_)
                                             (if (gx#stx-pair? _g2393124399_)
                                                 (let ((_e2399524402_
                                                        (gx#syntax-e
                                                         _g2393124399_)))
                                                   (let ((_hd2399624406_
                                                          (##car _e2399524402_))
                                                         (_tl2399724409_
                                                          (##cdr _e2399524402_)))
                                                     (if (gx#stx-datum?
                                                          _hd2399624406_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2399624406_)
                             'vector:)
                     (if (gx#stx-pair? _tl2399724409_)
                         (let ((_e2399824412_ (gx#syntax-e _tl2399724409_)))
                           (let ((_hd2399924416_ (##car _e2399824412_))
                                 (_tl2400024419_ (##cdr _e2399824412_)))
                             (if (gx#stx-null? _tl2400024419_)
                                 ((lambda (_L24422_)
                                    (let* ((_g2443624457_
                                            (lambda (_g2443724453_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2443724453_)))
                                           (_g2443524498_
                                            (lambda (_g2443724461_)
                                              (if (gx#stx-pair? _g2443724461_)
                                                  (let ((_e2444624464_
                                                         (gx#syntax-e
                                                          _g2443724461_)))
                                                    (let ((_hd2444724468_
                                                           (##car _e2444624464_))
                                                          (_tl2444824471_
                                                           (##cdr _e2444624464_)))
                                                      (if (gx#stx-datum?
                                                           _hd2444724468_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2444724468_)
                              'list:)
                      (if (gx#stx-pair? _tl2444824471_)
                          (let ((_e2444924474_ (gx#syntax-e _tl2444824471_)))
                            (let ((_hd2445024478_ (##car _e2444924474_))
                                  (_tl2445124481_ (##cdr _e2444924474_)))
                              (if (gx#stx-null? _tl2445124481_)
                                  ((lambda (_L24484_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L23903_ '()))
                                                 (cons (_generate-list-vector22356_
                                                        _tgt23882_
                                                        _L24484_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K23885_
                                                        _E23886_)
                                                       (cons _E23886_ '())))))
                                   _hd2445024478_)
                                  (_g2443624457_ _g2443724461_))))
                          (_g2443624457_ _g2443724461_))
                      (_g2443624457_ _g2443724461_))
                  (_g2443624457_ _g2443724461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2443624457_
                                                   _g2443724461_))))
                                           (_g2443424569_
                                            (lambda (_g2443724502_)
                                              (if (gx#stx-pair? _g2443724502_)
                                                  (let ((_e2443924505_
                                                         (gx#syntax-e
                                                          _g2443724502_)))
                                                    (let ((_hd2444024509_
                                                           (##car _e2443924505_))
                                                          (_tl2444124512_
                                                           (##cdr _e2443924505_)))
                                                      (if (gx#stx-datum?
                                                           _hd2444024509_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2444024509_)
                              'simple:)
                      (if (gx#stx-pair? _tl2444124512_)
                          (let ((_e2444224515_ (gx#syntax-e _tl2444124512_)))
                            (let ((_hd2444324519_ (##car _e2444224515_))
                                  (_tl2444424522_ (##cdr _e2444224515_)))
                              (if (gx#stx-null? _tl2444424522_)
                                  ((lambda (_L24525_)
                                     (let* ((_g2453824546_
                                             (lambda (_g2453924542_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2453924542_)))
                                            (_g2453724565_
                                             (lambda (_g2453924550_)
                                               ((lambda (_L24553_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L23903_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L23903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L24553_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector22355_
                               _tgt23882_
                               _L24525_
                               '0
                               _K23885_
                               _E23886_)
                              (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2453924550_))))
                                       (_g2453724565_
                                        (gx#stx-length _L24525_))))
                                   _hd2444324519_)
                                  (_g2443524498_ _g2443724502_))))
                          (_g2443524498_ _g2443724502_))
                      (_g2443524498_ _g2443724502_))
                  (_g2443524498_ _g2443724502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2443524498_
                                                   _g2443724502_)))))
                                      (_g2443424569_ _L24422_)))
                                  _hd2399924416_)
                                 (_g2392424395_ _g2393124399_))))
                         (_g2392424395_ _g2393124399_))
                     (_g2392424395_ _g2393124399_))
                 (_g2392424395_ _g2393124399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392424395_
                                                  _g2393124399_))))
                                          (_g2392224751_
                                           (lambda (_g2393124577_)
                                             (if (gx#stx-pair? _g2393124577_)
                                                 (let ((_e2398824580_
                                                        (gx#syntax-e
                                                         _g2393124577_)))
                                                   (let ((_hd2398924584_
                                                          (##car _e2398824580_))
                                                         (_tl2399024587_
                                                          (##cdr _e2398824580_)))
                                                     (if (gx#stx-datum?
                                                          _hd2398924584_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2398924584_)
                             'values:)
                     (if (gx#stx-pair? _tl2399024587_)
                         (let ((_e2399124590_ (gx#syntax-e _tl2399024587_)))
                           (let ((_hd2399224594_ (##car _e2399124590_))
                                 (_tl2399324597_ (##cdr _e2399124590_)))
                             (if (gx#stx-null? _tl2399324597_)
                                 ((lambda (_L24600_)
                                    (let* ((_g2461424635_
                                            (lambda (_g2461524631_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2461524631_)))
                                           (_g2461324676_
                                            (lambda (_g2461524639_)
                                              (if (gx#stx-pair? _g2461524639_)
                                                  (let ((_e2462424642_
                                                         (gx#syntax-e
                                                          _g2461524639_)))
                                                    (let ((_hd2462524646_
                                                           (##car _e2462424642_))
                                                          (_tl2462624649_
                                                           (##cdr _e2462424642_)))
                                                      (if (gx#stx-datum?
                                                           _hd2462524646_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2462524646_)
                              'list:)
                      (if (gx#stx-pair? _tl2462624649_)
                          (let ((_e2462724652_ (gx#syntax-e _tl2462624649_)))
                            (let ((_hd2462824656_ (##car _e2462724652_))
                                  (_tl2462924659_ (##cdr _e2462724652_)))
                              (if (gx#stx-null? _tl2462924659_)
                                  ((lambda (_L24662_)
                                     (_generate-list-vector22356_
                                      _tgt23882_
                                      _L24662_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K23885_
                                      _E23886_))
                                   _hd2462824656_)
                                  (_g2461424635_ _g2461524639_))))
                          (_g2461424635_ _g2461524639_))
                      (_g2461424635_ _g2461524639_))
                  (_g2461424635_ _g2461524639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2461424635_
                                                   _g2461524639_))))
                                           (_g2461224747_
                                            (lambda (_g2461524680_)
                                              (if (gx#stx-pair? _g2461524680_)
                                                  (let ((_e2461724683_
                                                         (gx#syntax-e
                                                          _g2461524680_)))
                                                    (let ((_hd2461824687_
                                                           (##car _e2461724683_))
                                                          (_tl2461924690_
                                                           (##cdr _e2461724683_)))
                                                      (if (gx#stx-datum?
                                                           _hd2461824687_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2461824687_)
                              'simple:)
                      (if (gx#stx-pair? _tl2461924690_)
                          (let ((_e2462024693_ (gx#syntax-e _tl2461924690_)))
                            (let ((_hd2462124697_ (##car _e2462024693_))
                                  (_tl2462224700_ (##cdr _e2462024693_)))
                              (if (gx#stx-null? _tl2462224700_)
                                  ((lambda (_L24703_)
                                     (let* ((_g2471624724_
                                             (lambda (_g2471724720_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2471724720_)))
                                            (_g2471524743_
                                             (lambda (_g2471724728_)
                                               ((lambda (_L24731_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L23903_ '()))
                                    (cons _L24731_ '())))
                        (cons (_generate-simple-vector22355_
                               _tgt23882_
                               _L24703_
                               '0
                               _K23885_
                               _E23886_)
                              (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2471724728_))))
                                       (_g2471524743_
                                        (gx#stx-length _L24703_))))
                                   _hd2462124697_)
                                  (_g2461324676_ _g2461524680_))))
                          (_g2461324676_ _g2461524680_))
                      (_g2461324676_ _g2461524680_))
                  (_g2461324676_ _g2461524680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2461324676_
                                                   _g2461524680_)))))
                                      (_g2461224747_ _L24600_)))
                                  _hd2399224594_)
                                 (_g2392324573_ _g2393124577_))))
                         (_g2392324573_ _g2393124577_))
                     (_g2392324573_ _g2393124577_))
                 (_g2392324573_ _g2393124577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392324573_
                                                  _g2393124577_))))
                                          (_g2392124822_
                                           (lambda (_g2393124755_)
                                             (if (gx#stx-pair? _g2393124755_)
                                                 (let ((_e2398124758_
                                                        (gx#syntax-e
                                                         _g2393124755_)))
                                                   (let ((_hd2398224762_
                                                          (##car _e2398124758_))
                                                         (_tl2398324765_
                                                          (##cdr _e2398124758_)))
                                                     (if (gx#stx-datum?
                                                          _hd2398224762_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2398224762_)
                             'box:)
                     (if (gx#stx-pair? _tl2398324765_)
                         (let ((_e2398424768_ (gx#syntax-e _tl2398324765_)))
                           (let ((_hd2398524772_ (##car _e2398424768_))
                                 (_tl2398624775_ (##cdr _e2398424768_)))
                             (if (gx#stx-null? _tl2398624775_)
                                 ((lambda (_L24778_)
                                    (let* ((_g2479124799_
                                            (lambda (_g2479224795_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2479224795_)))
                                           (_g2479024818_
                                            (lambda (_g2479224803_)
                                              ((lambda (_L24806_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L23903_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L24806_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L23903_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122352_
                                                _L24806_
                                                _L24778_
                                                _K23885_
                                                _E23886_)
                                               '())))
                             (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2479224803_))))
                                      (_g2479024818_ (gx#genident 'e))))
                                  _hd2398524772_)
                                 (_g2392224751_ _g2393124755_))))
                         (_g2392224751_ _g2393124755_))
                     (_g2392224751_ _g2393124755_))
                 (_g2392224751_ _g2393124755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392224751_
                                                  _g2393124755_))))
                                          (_g2392024876_
                                           (lambda (_g2393124826_)
                                             (if (gx#stx-pair? _g2393124826_)
                                                 (let ((_e2397124829_
                                                        (gx#syntax-e
                                                         _g2393124826_)))
                                                   (let ((_hd2397224833_
                                                          (##car _e2397124829_))
                                                         (_tl2397324836_
                                                          (##cdr _e2397124829_)))
                                                     (if (gx#stx-datum?
                                                          _hd2397224833_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2397224833_)
                             'splice:)
                     (if (gx#stx-pair? _tl2397324836_)
                         (let ((_e2397424839_ (gx#syntax-e _tl2397324836_)))
                           (let ((_hd2397524843_ (##car _e2397424839_))
                                 (_tl2397624846_ (##cdr _e2397424839_)))
                             (if (gx#stx-pair? _tl2397624846_)
                                 (let ((_e2397724849_
                                        (gx#syntax-e _tl2397624846_)))
                                   (let ((_hd2397824853_ (##car _e2397724849_))
                                         (_tl2397924856_
                                          (##cdr _e2397724849_)))
                                     (if (gx#stx-null? _tl2397924856_)
                                         ((lambda (_L24859_ _L24861_)
                                            (_generate-splice22354_
                                             _tgt23882_
                                             _L24861_
                                             _L24859_
                                             _K23885_
                                             _E23886_))
                                          _hd2397824853_
                                          _hd2397524843_)
                                         (_g2392124822_ _g2393124826_))))
                                 (_g2392124822_ _g2393124826_))))
                         (_g2392124822_ _g2393124826_))
                     (_g2392124822_ _g2393124826_))
                 (_g2392124822_ _g2393124826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392124822_
                                                  _g2393124826_))))
                                          (_g2391924897_
                                           (lambda (_g2393124880_)
                                             (if (gx#stx-pair? _g2393124880_)
                                                 (let ((_e2396624883_
                                                        (gx#syntax-e
                                                         _g2393124880_)))
                                                   (let ((_hd2396724887_
                                                          (##car _e2396624883_))
                                                         (_tl2396824890_
                                                          (##cdr _e2396624883_)))
                                                     (if (gx#stx-datum?
                                                          _hd2396724887_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2396724887_)
                             'null:)
                     (if (gx#stx-null? _tl2396824890_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L23903_ '()))
                                        (cons _K23885_ (cons _E23886_ '()))))))
                         (_g2392024876_ _g2393124880_))
                     (_g2392024876_ _g2393124880_))
                 (_g2392024876_ _g2393124880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392024876_
                                                  _g2393124880_))))
                                          (_g2391825016_
                                           (lambda (_g2393124901_)
                                             (if (gx#stx-pair? _g2393124901_)
                                                 (let ((_e2395724904_
                                                        (gx#syntax-e
                                                         _g2393124901_)))
                                                   (let ((_hd2395824908_
                                                          (##car _e2395724904_))
                                                         (_tl2395924911_
                                                          (##cdr _e2395724904_)))
                                                     (if (gx#stx-datum?
                                                          _hd2395824908_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2395824908_)
                             'cons:)
                     (if (gx#stx-pair? _tl2395924911_)
                         (let ((_e2396024914_ (gx#syntax-e _tl2395924911_)))
                           (let ((_hd2396124918_ (##car _e2396024914_))
                                 (_tl2396224921_ (##cdr _e2396024914_)))
                             (if (gx#stx-pair? _tl2396224921_)
                                 (let ((_e2396324924_
                                        (gx#syntax-e _tl2396224921_)))
                                   (let ((_hd2396424928_ (##car _e2396324924_))
                                         (_tl2396524931_
                                          (##cdr _e2396324924_)))
                                     (if (gx#stx-null? _tl2396524931_)
                                         ((lambda (_L24934_ _L24936_)
                                            (let* ((_g2495224967_
                                                    (lambda (_g2495324963_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2495324963_)))
                                                   (_g2495125012_
                                                    (lambda (_g2495324971_)
                                                      (if (gx#stx-pair?
                                                           _g2495324971_)
                                                          (let ((_e2495624974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2495324971_)))
                    (let ((_hd2495724978_ (##car _e2495624974_))
                          (_tl2495824981_ (##cdr _e2495624974_)))
                      (if (gx#stx-pair? _tl2495824981_)
                          (let ((_e2495924984_ (gx#syntax-e _tl2495824981_)))
                            (let ((_hd2496024988_ (##car _e2495924984_))
                                  (_tl2496124991_ (##cdr _e2495924984_)))
                              (if (gx#stx-null? _tl2496124991_)
                                  ((lambda (_L24994_ _L24996_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L23903_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L24996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L23903_ '()))
                                               '()))
                                   (cons (cons _L24994_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23903_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate122352_
                                    _L24996_
                                    _L24936_
                                    (_generate122352_
                                     _L24994_
                                     _L24934_
                                     _K23885_
                                     _E23886_)
                                    _E23886_)
                                   '())))
                 (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2496024988_
                                   _hd2495724978_)
                                  (_g2495224967_ _g2495324971_))))
                          (_g2495224967_ _g2495324971_))))
                  (_g2495224967_ _g2495324971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2495125012_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2396424928_
                                          _hd2396124918_)
                                         (_g2391924897_ _g2393124901_))))
                                 (_g2391924897_ _g2393124901_))))
                         (_g2391924897_ _g2393124901_))
                     (_g2391924897_ _g2393124901_))
                 (_g2391924897_ _g2393124901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391924897_
                                                  _g2393124901_))))
                                          (_g2391725056_
                                           (lambda (_g2393125020_)
                                             (if (gx#stx-pair? _g2393125020_)
                                                 (let ((_e2394925023_
                                                        (gx#syntax-e
                                                         _g2393125020_)))
                                                   (let ((_hd2395025027_
                                                          (##car _e2394925023_))
                                                         (_tl2395125030_
                                                          (##cdr _e2394925023_)))
                                                     (if (gx#stx-datum?
                                                          _hd2395025027_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2395025027_)
                             'not:)
                     (if (gx#stx-pair? _tl2395125030_)
                         (let ((_e2395225033_ (gx#syntax-e _tl2395125030_)))
                           (let ((_hd2395325037_ (##car _e2395225033_))
                                 (_tl2395425040_ (##cdr _e2395225033_)))
                             (if (gx#stx-null? _tl2395425040_)
                                 ((lambda (_L25043_)
                                    (_generate122352_
                                     _tgt23882_
                                     _L25043_
                                     _E23886_
                                     _K23885_))
                                  _hd2395325037_)
                                 (_g2391825016_ _g2393125020_))))
                         (_g2391825016_ _g2393125020_))
                     (_g2391825016_ _g2393125020_))
                 (_g2391825016_ _g2393125020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391825016_
                                                  _g2393125020_))))
                                          (_g2391625144_
                                           (lambda (_g2393125060_)
                                             (if (gx#stx-pair? _g2393125060_)
                                                 (let ((_e2394525063_
                                                        (gx#syntax-e
                                                         _g2393125060_)))
                                                   (let ((_hd2394625067_
                                                          (##car _e2394525063_))
                                                         (_tl2394725070_
                                                          (##cdr _e2394525063_)))
                                                     (if (gx#stx-datum?
                                                          _hd2394625067_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2394625067_)
                             'or:)
                     ((lambda (_L25073_)
                        (let* ((_g2508525097_
                                (lambda (_g2508625093_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2508625093_)))
                               (_g2508425108_
                                (lambda (_g2508625101_)
                                  ((lambda () _E23886_))))
                               (_g2508325140_
                                (lambda (_g2508625112_)
                                  (if (gx#stx-pair? _g2508625112_)
                                      (let ((_e2508925115_
                                             (gx#syntax-e _g2508625112_)))
                                        (let ((_hd2509025119_
                                               (##car _e2508925115_))
                                              (_tl2509125122_
                                               (##cdr _e2508925115_)))
                                          ((lambda (_L25125_ _L25127_)
                                             (_generate122352_
                                              _tgt23882_
                                              _L25127_
                                              _K23885_
                                              (_generate122352_
                                               _tgt23882_
                                               (cons 'or: _L25125_)
                                               _K23885_
                                               _E23886_)))
                                           _tl2509125122_
                                           _hd2509025119_)))
                                      (_g2508425108_ _g2508625112_)))))
                          (_g2508325140_ _L25073_)))
                      _tl2394725070_)
                     (_g2391725056_ _g2393125060_))
                 (_g2391725056_ _g2393125060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391725056_
                                                  _g2393125060_))))
                                          (_g2391525232_
                                           (lambda (_g2393125148_)
                                             (if (gx#stx-pair? _g2393125148_)
                                                 (let ((_e2394125151_
                                                        (gx#syntax-e
                                                         _g2393125148_)))
                                                   (let ((_hd2394225155_
                                                          (##car _e2394125151_))
                                                         (_tl2394325158_
                                                          (##cdr _e2394125151_)))
                                                     (if (gx#stx-datum?
                                                          _hd2394225155_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2394225155_)
                             'and:)
                     ((lambda (_L25161_)
                        (let* ((_g2517325185_
                                (lambda (_g2517425181_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2517425181_)))
                               (_g2517225196_
                                (lambda (_g2517425189_)
                                  ((lambda () _K23885_))))
                               (_g2517125228_
                                (lambda (_g2517425200_)
                                  (if (gx#stx-pair? _g2517425200_)
                                      (let ((_e2517725203_
                                             (gx#syntax-e _g2517425200_)))
                                        (let ((_hd2517825207_
                                               (##car _e2517725203_))
                                              (_tl2517925210_
                                               (##cdr _e2517725203_)))
                                          ((lambda (_L25213_ _L25215_)
                                             (_generate122352_
                                              _tgt23882_
                                              _L25215_
                                              (_generate122352_
                                               _tgt23882_
                                               (cons 'and: _L25213_)
                                               _K23885_
                                               _E23886_)
                                              _E23886_))
                                           _tl2517925210_
                                           _hd2517825207_)))
                                      (_g2517225196_ _g2517425200_)))))
                          (_g2517125228_ _L25161_)))
                      _tl2394325158_)
                     (_g2391625144_ _g2393125148_))
                 (_g2391625144_ _g2393125148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391625144_
                                                  _g2393125148_))))
                                          (_g2391425521_
                                           (lambda (_g2393125236_)
                                             (if (gx#stx-pair? _g2393125236_)
                                                 (let ((_e2393425239_
                                                        (gx#syntax-e
                                                         _g2393125236_)))
                                                   (let ((_hd2393525243_
                                                          (##car _e2393425239_))
                                                         (_tl2393625246_
                                                          (##cdr _e2393425239_)))
                                                     (if (gx#stx-datum?
                                                          _hd2393525243_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2393525243_)
                             '?:)
                     (if (gx#stx-pair? _tl2393625246_)
                         (let ((_e2393725249_ (gx#syntax-e _tl2393625246_)))
                           (let ((_hd2393825253_ (##car _e2393725249_))
                                 (_tl2393925256_ (##cdr _e2393725249_)))
                             ((lambda (_L25259_ _L25261_)
                                (let* ((_g2527725309_
                                        (lambda (_g2527825305_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2527825305_)))
                                       (_g2527625407_
                                        (lambda (_g2527825313_)
                                          (if (gx#stx-pair? _g2527825313_)
                                              (let ((_e2529225316_
                                                     (gx#syntax-e
                                                      _g2527825313_)))
                                                (let ((_hd2529325320_
                                                       (##car _e2529225316_))
                                                      (_tl2529425323_
                                                       (##cdr _e2529225316_)))
                                                  (if (gx#stx-datum?
                                                       _hd2529325320_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2529325320_)
                          '::)
                  (if (gx#stx-pair? _tl2529425323_)
                      (let ((_e2529525326_ (gx#syntax-e _tl2529425323_)))
                        (let ((_hd2529625330_ (##car _e2529525326_))
                              (_tl2529725333_ (##cdr _e2529525326_)))
                          (if (gx#stx-pair? _tl2529725333_)
                              (let ((_e2529825336_
                                     (gx#syntax-e _tl2529725333_)))
                                (let ((_hd2529925340_ (##car _e2529825336_))
                                      (_tl2530025343_ (##cdr _e2529825336_)))
                                  (if (gx#stx-datum? _hd2529925340_)
                                      (if (equal? (gx#stx-e _hd2529925340_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2530025343_)
                                              (let ((_e2530125346_
                                                     (gx#syntax-e
                                                      _tl2530025343_)))
                                                (let ((_hd2530225350_
                                                       (##car _e2530125346_))
                                                      (_tl2530325353_
                                                       (##cdr _e2530125346_)))
                                                  (if (gx#stx-null?
                                                       _tl2530325353_)
                                                      ((lambda (_L25356_
                                                                _L25358_)
                                                         (let* ((_g2537625384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2537725380_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2537725380_)))
                        (_g2537525403_
                         (lambda (_g2537725388_)
                           ((lambda (_L25391_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25261_
                                                        (cons _L23903_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L25391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25358_ (cons _L23903_ '()))
                                        '()))
                            '())
                      (cons (_generate122352_
                             _L25391_
                             _L25356_
                             _K23885_
                             _E23886_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E23886_ '()))))))
                            _g2537725388_))))
                   (_g2537525403_ (gx#genident 'e))))
               _hd2530225350_
               _hd2529625330_)
              (_g2527725309_ _g2527825313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527725309_ _g2527825313_))
                                          (_g2527725309_ _g2527825313_))
                                      (_g2527725309_ _g2527825313_))))
                              (_g2527725309_ _g2527825313_))))
                      (_g2527725309_ _g2527825313_))
                  (_g2527725309_ _g2527825313_))
              (_g2527725309_ _g2527825313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527725309_ _g2527825313_))))
                                       (_g2527525478_
                                        (lambda (_g2527825411_)
                                          (if (gx#stx-pair? _g2527825411_)
                                              (let ((_e2528425414_
                                                     (gx#syntax-e
                                                      _g2527825411_)))
                                                (let ((_hd2528525418_
                                                       (##car _e2528425414_))
                                                      (_tl2528625421_
                                                       (##cdr _e2528425414_)))
                                                  (if (gx#stx-datum?
                                                       _hd2528525418_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2528525418_)
                          '=>:)
                  (if (gx#stx-pair? _tl2528625421_)
                      (let ((_e2528725424_ (gx#syntax-e _tl2528625421_)))
                        (let ((_hd2528825428_ (##car _e2528725424_))
                              (_tl2528925431_ (##cdr _e2528725424_)))
                          (if (gx#stx-null? _tl2528925431_)
                              ((lambda (_L25434_)
                                 (let* ((_g2544725455_
                                         (lambda (_g2544825451_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2544825451_)))
                                        (_g2544625474_
                                         (lambda (_g2544825459_)
                                           ((lambda (_L25462_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L25462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25261_ (cons _L23903_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L25462_
                                      (cons (_generate122352_
                                             _L25462_
                                             _L25434_
                                             _K23885_
                                             _E23886_)
                                            (cons _E23886_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2544825459_))))
                                   (_g2544625474_ (gx#genident 'e))))
                               _hd2528825428_)
                              (_g2527625407_ _g2527825411_))))
                      (_g2527625407_ _g2527825411_))
                  (_g2527625407_ _g2527825411_))
              (_g2527625407_ _g2527825411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527625407_ _g2527825411_))))
                                       (_g2527425506_
                                        (lambda (_g2527825482_)
                                          (if (gx#stx-pair? _g2527825482_)
                                              (let ((_e2528025485_
                                                     (gx#syntax-e
                                                      _g2527825482_)))
                                                (let ((_hd2528125489_
                                                       (##car _e2528025485_))
                                                      (_tl2528225492_
                                                       (##cdr _e2528025485_)))
                                                  (if (gx#stx-null?
                                                       _tl2528225492_)
                                                      ((lambda (_L25495_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25261_ (cons _L23903_ '())))
                             (cons (_generate122352_
                                    _tgt23882_
                                    _L25495_
                                    _K23885_
                                    _E23886_)
                                   (cons _E23886_ '())))))
               _hd2528125489_)
              (_g2527525478_ _g2527825482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527525478_ _g2527825482_))))
                                       (_g2527325517_
                                        (lambda (_g2527825510_)
                                          (if (gx#stx-null? _g2527825510_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25261_ (cons _L23903_ '())))
                     (cons _K23885_ (cons _E23886_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527425506_ _g2527825510_)))))
                                  (_g2527325517_ _L25259_)))
                              _tl2393925256_
                              _hd2393825253_)))
                         (_g2391525232_ _g2393125236_))
                     (_g2391525232_ _g2393125236_))
                 (_g2391525232_ _g2393125236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391525232_
                                                  _g2393125236_)))))
                                     (_g2391425521_ _ptree23884_))))
                               _g2388923900_))))
                      (_g2388725525_ _tgt23882_))))
                 (_generate-splice22354_
                  (lambda (_tgt23254_ _hd23256_ _rest23257_ _K23258_ _E23259_)
                    (let* ((_g2326123278_
                            (lambda (_g2326223274_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2326223274_)))
                           (_g2326023878_
                            (lambda (_g2326223282_)
                              (if (gx#stx-pair/null? _g2326223282_)
                                  (if (fx>= (gx#stx-length _g2326223282_) '0)
                                      (let ((_g34857_
                                             (gx#syntax-split-splice
                                              _g2326223282_
                                              '0)))
                                        (begin
                                          (let ((_g34858_
                                                 (values-count _g34857_)))
                                            (if (not (fx= _g34858_ 2))
                                                (error "Context expects 2 values"
                                                       _g34858_)))
                                          (let ((_target2326423285_
                                                 (values-ref _g34857_ 0))
                                                (_tl2326623288_
                                                 (values-ref _g34857_ 1)))
                                            (if (gx#stx-null? _tl2326623288_)
                                                (letrec ((_loop2326723291_
                                                          (lambda (_hd2326523295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2327123298_)
                    (if (gx#stx-pair? _hd2326523295_)
                        (let ((_e2326823301_ (gx#syntax-e _hd2326523295_)))
                          (let ((_lp-hd2326923305_ (##car _e2326823301_))
                                (_lp-tl2327023308_ (##cdr _e2326823301_)))
                            (_loop2326723291_
                             _lp-tl2327023308_
                             (cons _lp-hd2326923305_ _var2327123298_))))
                        (let ((_var2327223311_ (reverse _var2327123298_)))
                          ((lambda (_L23315_)
                             (let ()
                               (let* ((_g2333123348_
                                       (lambda (_g2333223344_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2333223344_)))
                                      (_g2333023866_
                                       (lambda (_g2333223352_)
                                         (if (gx#stx-pair/null? _g2333223352_)
                                             (if (fx>= (gx#stx-length
                                                        _g2333223352_)
                                                       '0)
                                                 (let ((_g34859_
                                                        (gx#syntax-split-splice
                                                         _g2333223352_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34860_
                                                            (values-count
                                                             _g34859_)))
                                                       (if (not (fx= _g34860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2333423355_
                                                            (values-ref
                                                             _g34859_
                                                             0))
                                                           (_tl2333623358_
                                                            (values-ref
                                                             _g34859_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2333623358_)
                                                           (letrec ((_loop2333723361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2333523365_ _var-r2334123368_)
                               (if (gx#stx-pair? _hd2333523365_)
                                   (let ((_e2333823371_
                                          (gx#syntax-e _hd2333523365_)))
                                     (let ((_lp-hd2333923375_
                                            (##car _e2333823371_))
                                           (_lp-tl2334023378_
                                            (##cdr _e2333823371_)))
                                       (_loop2333723361_
                                        _lp-tl2334023378_
                                        (cons _lp-hd2333923375_
                                              _var-r2334123368_))))
                                   (let ((_var-r2334223381_
                                          (reverse _var-r2334123368_)))
                                     ((lambda (_L23385_)
                                        (let ()
                                          (let* ((_g2340223419_
                                                  (lambda (_g2340323415_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2340323415_)))
                                                 (_g2340123854_
                                                  (lambda (_g2340323423_)
                                                    (if (gx#stx-pair/null?
                                                         _g2340323423_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2340323423_)
                          '0)
                    (let ((_g34861_ (gx#syntax-split-splice _g2340323423_ '0)))
                      (begin
                        (let ((_g34862_ (values-count _g34861_)))
                          (if (not (fx= _g34862_ 2))
                              (error "Context expects 2 values" _g34862_)))
                        (let ((_target2340523426_ (values-ref _g34861_ 0))
                              (_tl2340723429_ (values-ref _g34861_ 1)))
                          (if (gx#stx-null? _tl2340723429_)
                              (letrec ((_loop2340823432_
                                        (lambda (_hd2340623436_
                                                 _init2341223439_)
                                          (if (gx#stx-pair? _hd2340623436_)
                                              (let ((_e2340923442_
                                                     (gx#syntax-e
                                                      _hd2340623436_)))
                                                (let ((_lp-hd2341023446_
                                                       (##car _e2340923442_))
                                                      (_lp-tl2341123449_
                                                       (##cdr _e2340923442_)))
                                                  (_loop2340823432_
                                                   _lp-tl2341123449_
                                                   (cons _lp-hd2341023446_
                                                         _init2341223439_))))
                                              (let ((_init2341323452_
                                                     (reverse _init2341223439_)))
                                                ((lambda (_L23456_)
                                                   (let ()
                                                     (let* ((_g2347323481_
                                                             (lambda (_g2347423477_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2347423477_)))
                                                            (_g2347223850_
                                                             (lambda (_g2347423485_)
                                                               ((lambda (_L23488_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2350123509_
                                    (lambda (_g2350223505_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2350223505_)))
                                   (_g2350023846_
                                    (lambda (_g2350223513_)
                                      ((lambda (_L23516_)
                                         (let ()
                                           (let* ((_g2352923537_
                                                   (lambda (_g2353023533_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2353023533_)))
                                                  (_g2352823842_
                                                   (lambda (_g2353023541_)
                                                     ((lambda (_L23544_)
                                                        (let ()
                                                          (let* ((_g2355723565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2355823561_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2355823561_)))
                         (_g2355623838_
                          (lambda (_g2355823569_)
                            ((lambda (_L23572_)
                               (let ()
                                 (let* ((_g2358523593_
                                         (lambda (_g2358623589_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2358623589_)))
                                        (_g2358423834_
                                         (lambda (_g2358623597_)
                                           ((lambda (_L23600_)
                                              (let ()
                                                (let* ((_g2361323621_
                                                        (lambda (_g2361423617_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2361423617_)))
                                                       (_g2361223830_
                                                        (lambda (_g2361423625_)
                                                          ((lambda (_L23628_)
                                                             (let ()
                                                               (let* ((_g2364123649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2364223645_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2364223645_)))
                              (_g2364023826_
                               (lambda (_g2364223653_)
                                 ((lambda (_L23656_)
                                    (let ()
                                      (let* ((_g2366923677_
                                              (lambda (_g2367023673_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2367023673_)))
                                             (_g2366823811_
                                              (lambda (_g2367023681_)
                                                ((lambda (_L23684_)
                                                   (let ()
                                                     (let* ((_g2369723705_
                                                             (lambda (_g2369823701_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2369823701_)))
                                                            (_g2369623799_
                                                             (lambda (_g2369823709_)
                                                               ((lambda (_L23712_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2372523733_
                                    (lambda (_g2372623729_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2372623729_)))
                                   (_g2372423795_
                                    (lambda (_g2372623737_)
                                      ((lambda (_L23740_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L23516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L23628_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2375423765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2375523768_)
                        (cons _g2375423765_ _g2375523768_))
                      '()
                      _L23315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L23656_ '())))
                                   '()))
                       (cons (cons _L23572_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L23600_
                                                           (cons _L23628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2375623771_ _g2375723774_)
                                    (cons _g2375623771_ _g2375723774_))
                                  '()
                                  _L23385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23740_ '())))
                                         '()))
                             (cons (cons _L23544_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L23628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2375823777_ _g2375923780_)
                                    (cons _g2375823777_ _g2375923780_))
                                  '()
                                  _L23385_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L23628_ '()))
                                     (cons (cons _L23572_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L23628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L23628_
                     (begin
                       '#!void
                       (foldr (lambda (_g2376023783_ _g2376123786_)
                                (cons _g2376023783_ _g2376123786_))
                              '()
                              _L23385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L23712_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L23544_
                             (cons _L23488_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2376223789_
                                                     _g2376323792_)
                                              (cons _g2376223789_
                                                    _g2376323792_))
                                            '()
                                            _L23456_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2372623737_))))
                              (_g2372423795_
                               (_generate122352_
                                _L23600_
                                _hd23256_
                                _L23684_
                                _L23712_)))))
                        _g2369823709_))))
               (_g2369623799_
                (cons _L23516_
                      (cons _L23628_
                            (begin
                              '#!void
                              (foldr (lambda (_g2380223805_ _g2380323808_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2380223805_ '()))
                                             _g2380323808_))
                                     '()
                                     _L23385_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2367023681_))))
                                        (_g2366823811_
                                         (cons _L23544_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23628_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23385_
                                                        _L23315_)
                                                       (foldr (lambda (_g2381423818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2381523821_
                               _g2381623823_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2381523821_
                                          (cons _g2381423818_ '())))
                              _g2381623823_))
                      '()
                      _L23385_
                      _L23315_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2364223653_))))
                         (_g2364023826_
                          (_generate122352_
                           _L23628_
                           _rest23257_
                           _K23258_
                           _E23259_)))))
                   _g2361423625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2361223830_
                                                   (gx#genident 'rest)))))
                                            _g2358623597_))))
                                   (_g2358423834_ (gx#genident 'hd)))))
                             _g2355823569_))))
                    (_g2355623838_ (gx#genident 'splice-try)))))
              _g2353023541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2352823842_
                                              (gx#genident 'splice-loop)))))
                                       _g2350223513_))))
                              (_g2350023846_ (gx#genident 'splice-rest)))))
                        _g2347423485_))))
               (_g2347223850_ _tgt23254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2341323452_))))))
                                (_loop2340823432_ _target2340523426_ '()))
                              (_g2340223419_ _g2340323423_)))))
                    (_g2340223419_ _g2340323423_))
                (_g2340223419_ _g2340323423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2340123854_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2385723860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2385823863_)
                  (cons _g2385723860_ _g2385823863_))
                '()
                _L23315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2334223381_))))))
                     (_loop2333723361_ _target2333423355_ '()))
                   (_g2333123348_ _g2333223352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2333123348_ _g2333223352_))
                                             (_g2333123348_ _g2333223352_)))))
                                 (_g2333023866_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2386923872_
                                                     _g2387023875_)
                                              (cons _g2386923872_
                                                    _g2387023875_))
                                            '()
                                            _L23315_)))))))
                           _var2327223311_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2326723291_
                                                   _target2326423285_
                                                   '()))
                                                (_g2326123278_
                                                 _g2326223282_)))))
                                      (_g2326123278_ _g2326223282_))
                                  (_g2326123278_ _g2326223282_)))))
                      (_g2326023878_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23256_)))))
                 (_generate-simple-vector22355_
                  (lambda (_tgt23096_
                           _body23098_
                           _start23099_
                           _K23100_
                           _E23101_)
                    (let _recur23103_ ((_rest23106_ _body23098_)
                                       (_off23108_ _start23099_))
                      (let* ((_g2311123123_
                              (lambda (_g2311223119_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2311223119_)))
                             (_g2311023134_
                              (lambda (_g2311223127_) ((lambda () _K23100_))))
                             (_g2310923250_
                              (lambda (_g2311223138_)
                                (if (gx#stx-pair? _g2311223138_)
                                    (let ((_e2311523141_
                                           (gx#syntax-e _g2311223138_)))
                                      (let ((_hd2311623145_
                                             (##car _e2311523141_))
                                            (_tl2311723148_
                                             (##cdr _e2311523141_)))
                                        ((lambda (_L23151_ _L23153_)
                                           (let* ((_g2316823187_
                                                   (lambda (_g2316923183_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2316923183_)))
                                                  (_g2316723246_
                                                   (lambda (_g2316923191_)
                                                     (if (gx#stx-pair?
                                                          _g2316923191_)
                                                         (let ((_e2317323194_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2316923191_)))
                   (let ((_hd2317423198_ (##car _e2317323194_))
                         (_tl2317523201_ (##cdr _e2317323194_)))
                     (if (gx#stx-pair? _tl2317523201_)
                         (let ((_e2317623204_ (gx#syntax-e _tl2317523201_)))
                           (let ((_hd2317723208_ (##car _e2317623204_))
                                 (_tl2317823211_ (##cdr _e2317623204_)))
                             (if (gx#stx-pair? _tl2317823211_)
                                 (let ((_e2317923214_
                                        (gx#syntax-e _tl2317823211_)))
                                   (let ((_hd2318023218_ (##car _e2317923214_))
                                         (_tl2318123221_
                                          (##cdr _e2317923214_)))
                                     (if (gx#stx-null? _tl2318123221_)
                                         ((lambda (_L23224_ _L23226_ _L23227_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L23227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23226_ (cons _L23224_ '())))
                                    '()))
                        '())
                  (cons (_generate122352_
                         _L23227_
                         _L23153_
                         (_recur23103_ _L23151_ (fx1+ _off23108_))
                         _E23101_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2318023218_
                                          _hd2317723208_
                                          _hd2317423198_)
                                         (_g2316823187_ _g2316923191_))))
                                 (_g2316823187_ _g2316923191_))))
                         (_g2316823187_ _g2316923191_))))
                 (_g2316823187_ _g2316923191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2316723246_
                                              (list (gx#genident 'e)
                                                    _tgt23096_
                                                    _off23108_))))
                                         _tl2311723148_
                                         _hd2311623145_)))
                                    (_g2311023134_ _g2311223138_)))))
                        (_g2310923250_ _rest23106_)))))
                 (_generate-list-vector22356_
                  (lambda (_tgt23006_
                           _body23008_
                           _tgt->list23009_
                           _start23010_
                           _K23011_
                           _E23012_)
                    (let* ((_g2301423033_
                            (lambda (_g2301523029_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2301523029_)))
                           (_g2301323092_
                            (lambda (_g2301523037_)
                              (if (gx#stx-pair? _g2301523037_)
                                  (let ((_e2301923040_
                                         (gx#syntax-e _g2301523037_)))
                                    (let ((_hd2302023044_
                                           (##car _e2301923040_))
                                          (_tl2302123047_
                                           (##cdr _e2301923040_)))
                                      (if (gx#stx-pair? _tl2302123047_)
                                          (let ((_e2302223050_
                                                 (gx#syntax-e _tl2302123047_)))
                                            (let ((_hd2302323054_
                                                   (##car _e2302223050_))
                                                  (_tl2302423057_
                                                   (##cdr _e2302223050_)))
                                              (if (gx#stx-pair? _tl2302423057_)
                                                  (let ((_e2302523060_
                                                         (gx#syntax-e
                                                          _tl2302423057_)))
                                                    (let ((_hd2302623064_
                                                           (##car _e2302523060_))
                                                          (_tl2302723067_
                                                           (##cdr _e2302523060_)))
                                                      (if (gx#stx-null?
                                                           _tl2302723067_)
                                                          ((lambda (_L23070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23072_
                            _L23073_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L23073_
                                               (cons (cons _L23070_
                                                           (cons _L23072_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122352_
                                          _L23073_
                                          _body23008_
                                          _K23011_
                                          _E23012_)
                                         '())))))
                   _hd2302623064_
                   _hd2302323054_
                   _hd2302023044_)
                  (_g2301423033_ _g2301523037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2301423033_
                                                   _g2301523037_))))
                                          (_g2301423033_ _g2301523037_))))
                                  (_g2301423033_ _g2301523037_)))))
                      (_g2301323092_
                       (list (gx#genident 'e) _tgt23006_ _tgt->list23009_)))))
                 (_generate-struct22357_
                  (lambda (_info22739_
                           _tgt22741_
                           _body22742_
                           _K22743_
                           _E22744_)
                    (let* ((_rtd22746_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info22739_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info22739_)
                                '#f))
                           (_fields22756_
                            (let _lp22749_ ((_rtd22752_ _rtd22746_)
                                            (_k22754_ '0))
                              (if _rtd22752_
                                  (_lp22749_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd22752_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd22752_))
                                        _k22754_))
                                  _k22754_)))
                           (_final?22759_
                            (if _rtd22746_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd22746_))
                                '#f))
                           (_g2276222770_
                            (lambda (_g2276322766_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2276322766_)))
                           (_g2276123002_
                            (lambda (_g2276322774_)
                              ((lambda (_L22777_)
                                 (let ()
                                   (let* ((_g2279222800_
                                           (lambda (_g2279322796_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2279322796_)))
                                          (_g2279122998_
                                           (lambda (_g2279322804_)
                                             ((lambda (_L22807_)
                                                (let ()
                                                  (let* ((_g2282022828_
                                                          (lambda (_g2282122824_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2282122824_)))
                                                         (_g2281922994_
                                                          (lambda (_g2282122832_)
                                                            ((lambda (_L22835_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2285122872_
                                   (lambda (_g2285222868_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2285222868_)))
                                  (_g2285022915_
                                   (lambda (_g2285222876_)
                                     (if (gx#stx-pair? _g2285222876_)
                                         (let ((_e2286122879_
                                                (gx#syntax-e _g2285222876_)))
                                           (let ((_hd2286222883_
                                                  (##car _e2286122879_))
                                                 (_tl2286322886_
                                                  (##cdr _e2286122879_)))
                                             (if (gx#stx-datum? _hd2286222883_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2286222883_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl2286322886_)
                                                         (let ((_e2286422889_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2286322886_)))
                   (let ((_hd2286522893_ (##car _e2286422889_))
                         (_tl2286622896_ (##cdr _e2286422889_)))
                     (if (gx#stx-null? _tl2286622896_)
                         ((lambda (_L22899_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L22835_
                                              (cons _L22807_
                                                    (cons _L22777_ '())))
                                        (cons (_generate-list-vector22356_
                                               _tgt22741_
                                               _L22899_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K22743_
                                               _E22744_)
                                              (cons _E22744_ '())))))
                          _hd2286522893_)
                         (_g2285122872_ _g2285222876_))))
                 (_g2285122872_ _g2285222876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2285122872_
                                                      _g2285222876_))
                                                 (_g2285122872_
                                                  _g2285222876_))))
                                         (_g2285122872_ _g2285222876_))))
                                  (_g2284922990_
                                   (lambda (_g2285222919_)
                                     (if (gx#stx-pair? _g2285222919_)
                                         (let ((_e2285422922_
                                                (gx#syntax-e _g2285222919_)))
                                           (let ((_hd2285522926_
                                                  (##car _e2285422922_))
                                                 (_tl2285622929_
                                                  (##cdr _e2285422922_)))
                                             (if (gx#stx-datum? _hd2285522926_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2285522926_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl2285622929_)
                                                         (let ((_e2285722932_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2285622929_)))
                   (let ((_hd2285822936_ (##car _e2285722932_))
                         (_tl2285922939_ (##cdr _e2285722932_)))
                     (if (gx#stx-null? _tl2285922939_)
                         ((lambda (_L22942_)
                            (let ((_K22955_
                                   (_generate-simple-vector22355_
                                    _tgt22741_
                                    _L22942_
                                    '1
                                    _K22743_
                                    _E22744_)))
                              (if (if _rtd22746_
                                      (fx<= (gx#stx-length _L22942_)
                                            _fields22756_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L22835_
                                                    (cons _L22807_
                                                          (cons _L22777_ '())))
                                              (cons _K22955_
                                                    (cons _E22744_ '()))))
                                  (let* ((_g2295822966_
                                          (lambda (_g2295922962_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2295922962_)))
                                         (_g2295722986_
                                          (lambda (_g2295922970_)
                                            ((lambda (_L22973_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L22835_
                                       (cons _L22807_ (cons _L22777_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L22973_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L22777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K22955_ (cons _E22744_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2295922970_))))
                                    (_g2295722986_
                                     (gx#stx-length _L22942_))))))
                          _hd2285822936_)
                         (_g2285022915_ _g2285222919_))))
                 (_g2285022915_ _g2285222919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2285022915_
                                                      _g2285222919_))
                                                 (_g2285022915_
                                                  _g2285222919_))))
                                         (_g2285022915_ _g2285222919_)))))
                             (_g2284922990_ _body22742_)))))
                     _g2282122832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2281922994_
                                                     (if _final?22759_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g2279322804_))))
                                     (_g2279122998_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info22739_)))))
                               _g2276322774_))))
                      (_g2276123002_ _tgt22741_))))
                 (_generate-class22358_
                  (lambda (_info22360_
                           _tgt22362_
                           _body22363_
                           _K22364_
                           _E22365_)
                    (letrec* ((_rtd22367_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22360_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22360_)
                                   '#f))
                              (_known-slot?22369_
                               (if _rtd22367_
                                   (lambda (_key22733_)
                                     (let ((_slot22736_
                                            (keyword->symbol
                                             (gx#stx-e _key22733_))))
                                       (_rtd-known-slot?22371_
                                        _rtd22367_
                                        _slot22736_)))
                                   false))
                              (_final?22370_
                               (if _rtd22367_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22367_))
                                   '#f))
                              (_rtd-known-slot?22371_
                               (lambda (_rtd22720_ _slot22722_)
                                 (if _rtd22720_
                                     (let ((_$e22724_
                                            (memq _slot22722_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd22720_))))
                                       (if _$e22724_
                                           _$e22724_
                                           (ormap (lambda (_g2272722729_)
                                                    (_rtd-known-slot?22371_
                                                     _g2272722729_
                                                     _slot22722_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd22720_)))))
                                     '#f)))
                              (_recur22372_
                               (lambda (_klass22506_ _rest22508_)
                                 (let* ((_g2251122527_
                                         (lambda (_g2251222523_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2251222523_)))
                                        (_g2251022538_
                                         (lambda (_g2251222531_)
                                           ((lambda () _K22364_))))
                                        (_g2250922716_
                                         (lambda (_g2251222542_)
                                           (if (gx#stx-pair? _g2251222542_)
                                               (let ((_e2251622545_
                                                      (gx#syntax-e
                                                       _g2251222542_)))
                                                 (let ((_hd2251722549_
                                                        (##car _e2251622545_))
                                                       (_tl2251822552_
                                                        (##cdr _e2251622545_)))
                                                   (if (gx#stx-pair?
                                                        _tl2251822552_)
                                                       (let ((_e2251922555_
                                                              (gx#syntax-e
                                                               _tl2251822552_)))
                                                         (let ((_hd2252022559_
                                                                (##car _e2251922555_))
                                                               (_tl2252122562_
                                                                (##cdr _e2251922555_)))
                                                           ((lambda (_L22565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22567_
                             _L22568_)
                      (let* ((_g2258422592_
                              (lambda (_g2258522588_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2258522588_)))
                             (_g2258322712_
                              (lambda (_g2258522596_)
                                ((lambda (_L22599_)
                                   (let ()
                                     (let* ((_g2261122619_
                                             (lambda (_g2261222615_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2261222615_)))
                                            (_g2261022708_
                                             (lambda (_g2261222623_)
                                               ((lambda (_L22626_)
                                                  (let ()
                                                    (let* ((_g2263922647_
                                                            (lambda (_g2264022643_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2264022643_)))
                                                           (_g2263822704_
                                                            (lambda (_g2264022651_)
                                                              ((lambda (_L22654_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2266722675_
                                   (lambda (_g2266822671_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2266822671_)))
                                  (_g2266622700_
                                   (lambda (_g2266822679_)
                                     ((lambda (_L22682_)
                                        (let ()
                                          (let ((_K22695_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L22682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L22599_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L22654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122352_
                            _L22682_
                            _L22567_
                            (_recur22372_ _klass22506_ _L22565_)
                            _E22365_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22369_ _L22568_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22626_
                                                  (cons _L22568_ '())))
                                      '()))
                          '())
                    (cons _K22695_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22626_
                                                  (cons _L22568_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22654_
                                      (cons _K22695_ (cons _E22365_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2266822679_))))
                             (_g2266622700_ (gx#genident 'e)))))
                       _g2264022651_))))
              (_g2263822704_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2261222623_))))
                                       (_g2261022708_ _klass22506_))))
                                 _g2258522596_))))
                        (_g2258322712_ _tgt22362_)))
                    _tl2252122562_
                    _hd2252022559_
                    _hd2251722549_)))
               (_g2251022538_ _g2251222542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2251022538_
                                                _g2251222542_)))))
                                   (_g2250922716_ _rest22508_)))))
                      (let* ((_g2237422382_
                              (lambda (_g2237522378_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2237522378_)))
                             (_g2237322502_
                              (lambda (_g2237522386_)
                                ((lambda (_L22389_)
                                   (let ()
                                     (let* ((_g2240422412_
                                             (lambda (_g2240522408_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2240522408_)))
                                            (_g2240322498_
                                             (lambda (_g2240522416_)
                                               ((lambda (_L22419_)
                                                  (let ()
                                                    (let* ((_g2243222440_
                                                            (lambda (_g2243322436_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2243322436_)))
                                                           (_g2243122494_
                                                            (lambda (_g2243322444_)
                                                              ((lambda (_L22447_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2246022468_
                                   (lambda (_g2246122464_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2246122464_)))
                                  (_g2245922490_
                                   (lambda (_g2246122472_)
                                     ((lambda (_L22475_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L22475_
                                                              (cons _L22447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22419_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L22389_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22419_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22372_ _L22389_ _body22363_)
                                        '())))
                      (cons _E22365_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2246122472_))))
                             (_g2245922490_
                              (if _final?22370_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2243322444_))))
              (_g2243122494_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2240522416_))))
                                       (_g2240322498_ _tgt22362_))))
                                 _g2237522386_))))
                        (_g2237322502_ (gx#genident 'class)))))))
          (_generate122352_ _tgt22347_ _ptree22348_ _K22349_ _E22350_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21344_ _tgt-lst21346_ _clauses21347_)
        (letrec ((_parse-body21349_
                  (lambda (_hd-len22167_)
                    (let _lp22170_ ((_rest22173_ _clauses21347_)
                                    (_r22175_ '()))
                      (let* ((_g2217822190_
                              (lambda (_g2217922186_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2217922186_)))
                             (_g2217722201_
                              (lambda (_g2217922194_) ((lambda () _r22175_))))
                             (_g2217622341_
                              (lambda (_g2217922205_)
                                (if (gx#stx-pair? _g2217922205_)
                                    (let ((_e2218222208_
                                           (gx#syntax-e _g2217922205_)))
                                      (let ((_hd2218322212_
                                             (##car _e2218222208_))
                                            (_tl2218422215_
                                             (##cdr _e2218222208_)))
                                        ((lambda (_L22218_ _L22220_)
                                           (let* ((_g2223722253_
                                                   (lambda (_g2223822249_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2223822249_)))
                                                  (_g2223622264_
                                                   (lambda (_g2223822257_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21344_
                                                         _L22220_)))))
                                                  (_g2223522305_
                                                   (lambda (_g2223822268_)
                                                     (if (gx#stx-pair?
                                                          _g2223822268_)
                                                         (let ((_e2224522271_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2223822268_)))
                   (let ((_hd2224622275_ (##car _e2224522271_))
                         (_tl2224722278_ (##cdr _e2224522271_)))
                     ((lambda (_L22281_ _L22283_)
                        (if (if (gx#stx-list? _L22283_)
                                (if (fx= (gx#stx-length _L22283_)
                                         _hd-len22167_)
                                    (if (gx#stx-list? _L22281_)
                                        (not (gx#stx-null? _L22281_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22170_
                             _L22218_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2229522297_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2229522297_
                                                   _stx21344_))
                                                _L22283_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22281_)
                                                      (let ((_$e22301_
                                                             (gx#stx-source
                                                              _L22220_)))
                                                        (if _$e22301_
                                                            _$e22301_
                                                            (gx#stx-source
                                                             _stx21344_))))
                                                     '())))
                                   _r22175_))
                            (_g2223622264_ _g2223822268_)))
                      _tl2224722278_
                      _hd2224622275_)))
                 (_g2223622264_ _g2223822268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223422337_
                                                   (lambda (_g2223822309_)
                                                     (if (gx#stx-pair?
                                                          _g2223822309_)
                                                         (let ((_e2224022312_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2223822309_)))
                   (let ((_hd2224122316_ (##car _e2224022312_))
                         (_tl2224222319_ (##cdr _e2224022312_)))
                     (if (gx#identifier? _hd2224122316_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g34863_|
                              _hd2224122316_)
                             ((lambda (_L22322_)
                                (if (if (gx#stx-list? _L22322_)
                                        (not (gx#stx-null? _L22322_))
                                        '#f)
                                    (if (gx#stx-null? _L22218_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22322_)
                         (let ((_$e22333_ (gx#stx-source _L22220_)))
                           (if _$e22333_
                               _$e22333_
                               (gx#stx-source _stx21344_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22175_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21344_
                                         _L22220_))
                                    (_g2223522305_ _g2223822309_)))
                              _tl2224222319_)
                             (_g2223522305_ _g2223822309_))
                         (_g2223522305_ _g2223822309_))))
                 (_g2223522305_ _g2223822309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2223422337_ _L22220_)))
                                         _tl2218422215_
                                         _hd2218322212_)))
                                    (_g2217722201_ _g2217922205_)))))
                        (_g2217622341_ _rest22173_)))))
                 (_generate-body21351_
                  (lambda (_body21984_)
                    (let* ((_g2198721995_
                            (lambda (_g2198821991_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2198821991_)))
                           (_g2198622163_
                            (lambda (_g2198821999_)
                              ((lambda (_L22002_)
                                 (let ()
                                   (let* ((_g2201422031_
                                           (lambda (_g2201522027_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2201522027_)))
                                          (_g2201322159_
                                           (lambda (_g2201522035_)
                                             (if (gx#stx-pair/null?
                                                  _g2201522035_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2201522035_)
                                                           '0)
                                                     (let ((_g34864_
                                                            (gx#syntax-split-splice
                                                             _g2201522035_
                                                             '0)))
                                                       (begin
                                                         (let ((_g34865_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34864_)))
                   (if (not (fx= _g34865_ 2))
                       (error "Context expects 2 values" _g34865_)))
                 (let ((_target2201722038_ (values-ref _g34864_ 0))
                       (_tl2201922041_ (values-ref _g34864_ 1)))
                   (if (gx#stx-null? _tl2201922041_)
                       (letrec ((_loop2202022044_
                                 (lambda (_hd2201822048_ _target2202422051_)
                                   (if (gx#stx-pair? _hd2201822048_)
                                       (let ((_e2202122054_
                                              (gx#syntax-e _hd2201822048_)))
                                         (let ((_lp-hd2202222058_
                                                (##car _e2202122054_))
                                               (_lp-tl2202322061_
                                                (##cdr _e2202122054_)))
                                           (_loop2202022044_
                                            _lp-tl2202322061_
                                            (cons _lp-hd2202222058_
                                                  _target2202422051_))))
                                       (let ((_target2202522064_
                                              (reverse _target2202422051_)))
                                         ((lambda (_L22068_)
                                            (let ()
                                              (let* ((_g2208522093_
                                                      (lambda (_g2208622089_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2208622089_)))
                                                     (_g2208422147_
                                                      (lambda (_g2208622097_)
                                                        ((lambda (_L22100_)
                                                           (let ()
                                                             (let* ((_g2211322121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2211422117_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2211422117_)))
                            (_g2211222143_
                             (lambda (_g2211422125_)
                               ((lambda (_L22128_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L22002_
                                                              (cons _L22100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L22128_ '()))))))
                                _g2211422125_))))
                       (_g2211222143_
                        (_generate-clauses21352_
                         _body21984_
                         (cons _L22002_ '()))))))
                 _g2208622097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2208422147_
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
                                          (foldr (lambda (_g2215022153_
                                                          _g2215122156_)
                                                   (cons _g2215022153_
                                                         _g2215122156_))
                                                 '()
                                                 _L22068_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21344_))))))
                                          _target2202522064_))))))
                         (_loop2202022044_ _target2201722038_ '()))
                       (_g2201422031_ _g2201522035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2201422031_
                                                      _g2201522035_))
                                                 (_g2201422031_
                                                  _g2201522035_)))))
                                     (_g2201322159_ _tgt-lst21346_))))
                               _g2198821999_))))
                      (_g2198622163_ (gx#genident 'E)))))
                 (_generate-clauses21352_
                  (lambda (_rest21666_ _E21668_)
                    (let* ((_g2167221688_
                            (lambda (_g2167321684_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2167321684_)))
                           (_g2167121699_
                            (lambda (_g2167321692_) ((lambda () _E21668_))))
                           (_g2167021875_
                            (lambda (_g2167321703_)
                              (if (gx#stx-pair? _g2167321703_)
                                  (let ((_e2168021706_
                                         (gx#syntax-e _g2167321703_)))
                                    (let ((_hd2168121710_
                                           (##car _e2168021706_))
                                          (_tl2168221713_
                                           (##cdr _e2168021706_)))
                                      ((lambda (_L21716_ _L21718_)
                                         (let* ((_g2173121750_
                                                 (lambda (_g2173221746_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2173221746_)))
                                                (_g2173021871_
                                                 (lambda (_g2173221754_)
                                                   (if (gx#stx-pair?
                                                        _g2173221754_)
                                                       (let ((_e2173621757_
                                                              (gx#syntax-e
                                                               _g2173221754_)))
                                                         (let ((_hd2173721761_
                                                                (##car _e2173621757_))
                                                               (_tl2173821764_
                                                                (##cdr _e2173621757_)))
                                                           (if (gx#stx-pair?
                                                                _tl2173821764_)
                                                               (let ((_e2173921767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2173821764_)))
                         (let ((_hd2174021771_ (##car _e2173921767_))
                               (_tl2174121774_ (##cdr _e2173921767_)))
                           (if (gx#stx-pair? _tl2174121774_)
                               (let ((_e2174221777_
                                      (gx#syntax-e _tl2174121774_)))
                                 (let ((_hd2174321781_ (##car _e2174221777_))
                                       (_tl2174421784_ (##cdr _e2174221777_)))
                                   (if (gx#stx-null? _tl2174421784_)
                                       ((lambda (_L21787_ _L21789_ _L21790_)
                                          (let* ((_g2180721822_
                                                  (lambda (_g2180821818_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2180821818_)))
                                                 (_g2180621867_
                                                  (lambda (_g2180821826_)
                                                    (if (gx#stx-pair?
                                                         _g2180821826_)
                                                        (let ((_e2181121829_
                                                               (gx#syntax-e
                                                                _g2180821826_)))
                                                          (let ((_hd2181221833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2181121829_))
                        (_tl2181321836_ (##cdr _e2181121829_)))
                    (if (gx#stx-pair? _tl2181321836_)
                        (let ((_e2181421839_ (gx#syntax-e _tl2181321836_)))
                          (let ((_hd2181521843_ (##car _e2181421839_))
                                (_tl2181621846_ (##cdr _e2181421839_)))
                            (if (gx#stx-null? _tl2181621846_)
                                ((lambda (_L21849_ _L21851_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L21790_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L21851_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L21849_ '())))))
                                 _hd2181521843_
                                 _hd2181221833_)
                                (_g2180721822_ _g2180821826_))))
                        (_g2180721822_ _g2180821826_))))
                (_g2180721822_ _g2180821826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2180621867_
                                             (list (if (gx#stx-e _L21789_)
                                                       (_generate121353_
                                                        _L21789_
                                                        _L21787_
                                                        _E21668_)
                                                       _L21787_)
                                                   (_generate-clauses21352_
                                                    _L21716_
                                                    (cons _L21790_ '()))))))
                                        _hd2174321781_
                                        _hd2174021771_
                                        _hd2173721761_)
                                       (_g2173121750_ _g2173221754_))))
                               (_g2173121750_ _g2173221754_))))
                       (_g2173121750_ _g2173221754_))))
               (_g2173121750_ _g2173221754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2173021871_ _L21718_)))
                                       _tl2168221713_
                                       _hd2168121710_)))
                                  (_g2167121699_ _g2167321703_))))
                           (_g2166921980_
                            (lambda (_g2167321879_)
                              (if (gx#stx-pair? _g2167321879_)
                                  (let ((_e2167521882_
                                         (gx#syntax-e _g2167321879_)))
                                    (let ((_hd2167621886_
                                           (##car _e2167521882_))
                                          (_tl2167721889_
                                           (##cdr _e2167521882_)))
                                      (if (gx#stx-null? _tl2167721889_)
                                          ((lambda (_L21892_)
                                             (let* ((_g2190321921_
                                                     (lambda (_g2190421917_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2190421917_)))
                                                    (_g2190221976_
                                                     (lambda (_g2190421925_)
                                                       (if (gx#stx-pair?
                                                            _g2190421925_)
                                                           (let ((_e2190721928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2190421925_)))
                     (let ((_hd2190821932_ (##car _e2190721928_))
                           (_tl2190921935_ (##cdr _e2190721928_)))
                       (if (gx#stx-pair? _tl2190921935_)
                           (let ((_e2191021938_ (gx#syntax-e _tl2190921935_)))
                             (let ((_hd2191121942_ (##car _e2191021938_))
                                   (_tl2191221945_ (##cdr _e2191021938_)))
                               (if (gx#stx-pair? _tl2191221945_)
                                   (let ((_e2191321948_
                                          (gx#syntax-e _tl2191221945_)))
                                     (let ((_hd2191421952_
                                            (##car _e2191321948_))
                                           (_tl2191521955_
                                            (##cdr _e2191321948_)))
                                       (if (gx#stx-null? _tl2191521955_)
                                           ((lambda (_L21958_ _L21960_)
                                              (if (gx#stx-e _L21960_)
                                                  (_generate121353_
                                                   _L21960_
                                                   _L21958_
                                                   _E21668_)
                                                  _L21958_))
                                            _hd2191421952_
                                            _hd2191121942_)
                                           (_g2190321921_ _g2190421925_))))
                                   (_g2190321921_ _g2190421925_))))
                           (_g2190321921_ _g2190421925_))))
                   (_g2190321921_ _g2190421925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2190221976_ _L21892_)))
                                           _hd2167621886_)
                                          (_g2167021875_ _g2167321879_))))
                                  (_g2167021875_ _g2167321879_)))))
                      (_g2166921980_ _rest21666_))))
                 (_generate121353_
                  (lambda (_clause21355_ _body21357_ _E21358_)
                    (let _recur21360_ ((_rest21363_ _clause21355_)
                                       (_rest-targets21365_ _tgt-lst21346_))
                      (let* ((_g2136821380_
                              (lambda (_g2136921376_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2136921376_)))
                             (_g2136721391_
                              (lambda (_g2136921384_)
                                ((lambda () _body21357_))))
                             (_g2136621662_
                              (lambda (_g2136921395_)
                                (if (gx#stx-pair? _g2136921395_)
                                    (let ((_e2137221398_
                                           (gx#syntax-e _g2136921395_)))
                                      (let ((_hd2137321402_
                                             (##car _e2137221398_))
                                            (_tl2137421405_
                                             (##cdr _e2137221398_)))
                                        ((lambda (_L21408_ _L21410_)
                                           (let* ((_g2142721439_
                                                   (lambda (_g2142821435_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2142821435_)))
                                                  (_g2142621658_
                                                   (lambda (_g2142821443_)
                                                     (if (gx#stx-pair?
                                                          _g2142821443_)
                                                         (let ((_e2143121446_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2142821443_)))
                   (let ((_hd2143221450_ (##car _e2143121446_))
                         (_tl2143321453_ (##cdr _e2143121446_)))
                     ((lambda (_L21456_ _L21458_)
                        (let* ((_g2147021478_
                                (lambda (_g2147121474_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2147121474_)))
                               (_g2146921654_
                                (lambda (_g2147121482_)
                                  ((lambda (_L21485_)
                                     (let ()
                                       (let* ((_g2149721514_
                                               (lambda (_g2149821510_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2149821510_)))
                                              (_g2149621650_
                                               (lambda (_g2149821518_)
                                                 (if (gx#stx-pair/null?
                                                      _g2149821518_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2149821518_)
                                                               '0)
                                                         (let ((_g34866_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2149821518_
                         '0)))
                   (begin
                     (let ((_g34867_ (values-count _g34866_)))
                       (if (not (fx= _g34867_ 2))
                           (error "Context expects 2 values" _g34867_)))
                     (let ((_target2150021521_ (values-ref _g34866_ 0))
                           (_tl2150221524_ (values-ref _g34866_ 1)))
                       (if (gx#stx-null? _tl2150221524_)
                           (letrec ((_loop2150321527_
                                     (lambda (_hd2150121531_ _var2150721534_)
                                       (if (gx#stx-pair? _hd2150121531_)
                                           (let ((_e2150421537_
                                                  (gx#syntax-e
                                                   _hd2150121531_)))
                                             (let ((_lp-hd2150521541_
                                                    (##car _e2150421537_))
                                                   (_lp-tl2150621544_
                                                    (##cdr _e2150421537_)))
                                               (_loop2150321527_
                                                _lp-tl2150621544_
                                                (cons _lp-hd2150521541_
                                                      _var2150721534_))))
                                           (let ((_var2150821547_
                                                  (reverse _var2150721534_)))
                                             ((lambda (_L21551_)
                                                (let ()
                                                  (let* ((_g2156821576_
                                                          (lambda (_g2156921572_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2156921572_)))
                                                         (_g2156721646_
                                                          (lambda (_g2156921580_)
                                                            ((lambda (_L21583_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2159621604_
                                 (lambda (_g2159721600_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2159721600_)))
                                (_g2159521634_
                                 (lambda (_g2159721608_)
                                   ((lambda (_L21611_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2162521628_
                                                              _g2162621631_)
                                                       (cons _g2162521628_
                                                             _g2162621631_))
                                                     '()
                                                     _L21551_))
                                            (cons _L21583_ '())))
                                '()))
                    '())
              (cons _L21611_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2159721608_))))
                           (_g2159521634_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21344_
                             _L21458_
                             _L21410_
                             (cons _L21485_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2163721640_
                                                     _g2163821643_)
                                              (cons _g2163721640_
                                                    _g2163821643_))
                                            '()
                                            _L21551_)))
                             _E21358_)))))
                     _g2156921580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2156721646_
                                                     (_recur21360_
                                                      _L21408_
                                                      _L21456_)))))
                                              _var2150821547_))))))
                             (_loop2150321527_ _target2150021521_ '()))
                           (_g2149721514_ _g2149821518_)))))
                 (_g2149721514_ _g2149821518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2149721514_
                                                      _g2149821518_)))))
                                         (_g2149621650_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21410_)))))
                                   _g2147121482_))))
                          (_g2146921654_ (gx#genident 'K))))
                      _tl2143321453_
                      _hd2143221450_)))
                 (_g2142721439_ _g2142821443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2142621658_
                                              _rest-targets21365_)))
                                         _tl2137421405_
                                         _hd2137321402_)))
                                    (_g2136721391_ _g2136921395_)))))
                        (_g2136621662_ _rest21363_))))))
          (_generate-body21351_
           (_parse-body21349_ (gx#stx-length _tgt-lst21346_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21246_ _tgt21248_ _clauses21249_)
        (letrec ((_reclause21251_
                  (lambda (_clause21254_)
                    (let* ((_g2125921274_
                            (lambda (_g2126021270_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2126021270_)))
                           (_g2125821285_
                            (lambda (_g2126021278_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21246_
                                  _clause21254_)))))
                           (_g2125721319_
                            (lambda (_g2126021289_)
                              (if (gx#stx-pair? _g2126021289_)
                                  (let ((_e2126621292_
                                         (gx#syntax-e _g2126021289_)))
                                    (let ((_hd2126721296_
                                           (##car _e2126621292_))
                                          (_tl2126821299_
                                           (##cdr _e2126621292_)))
                                      ((lambda (_L21302_ _L21304_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21304_ '()) _L21302_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2126821299_
                                       _hd2126721296_)))
                                  (_g2125821285_ _g2126021289_))))
                           (_g2125621340_
                            (lambda (_g2126021323_)
                              (if (gx#stx-pair? _g2126021323_)
                                  (let ((_e2126121326_
                                         (gx#syntax-e _g2126021323_)))
                                    (let ((_hd2126221330_
                                           (##car _e2126121326_))
                                          (_tl2126321333_
                                           (##cdr _e2126121326_)))
                                      (if (gx#identifier? _hd2126221330_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g34868_|
                                               _hd2126221330_)
                                              ((lambda () _clause21254_))
                                              (_g2125721319_ _g2126021323_))
                                          (_g2125721319_ _g2126021323_))))
                                  (_g2125721319_ _g2126021323_)))))
                      (_g2125621340_ _clause21254_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21246_
           (cons _tgt21248_ '())
           (gx#stx-map _reclause21251_ _clauses21249_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx28453_)
        (let* ((_g2845828487_
                (lambda (_g2845928483_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2845928483_)))
               (_g2845728595_
                (lambda (_g2845928491_)
                  (if (gx#stx-pair? _g2845928491_)
                      (let ((_e2847628494_ (gx#syntax-e _g2845928491_)))
                        (let ((_hd2847728498_ (##car _e2847628494_))
                              (_tl2847828501_ (##cdr _e2847628494_)))
                          (if (gx#stx-pair? _tl2847828501_)
                              (let ((_e2847928504_
                                     (gx#syntax-e _tl2847828501_)))
                                (let ((_hd2848028508_ (##car _e2847928504_))
                                      (_tl2848128511_ (##cdr _e2847928504_)))
                                  ((lambda (_L28514_ _L28516_)
                                     (if (gx#stx-list? _L28514_)
                                         (let* ((_g2853028538_
                                                 (lambda (_g2853128534_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2853128534_)))
                                                (_g2852928591_
                                                 (lambda (_g2853128542_)
                                                   ((lambda (_L28545_)
                                                      (let ()
                                                        (let* ((_g2855728565_
                                                                (lambda (_g2855828561_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2855828561_)))
                       (_g2855628587_
                        (lambda (_g2855828569_)
                          ((lambda (_L28572_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L28545_
                                                         (cons _L28516_ '()))
                                                   '())
                                             (cons _L28572_ '()))))))
                           _g2855828569_))))
                  (_g2855628587_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx28453_
                    _L28545_
                    _L28514_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2853128542_))))
                                           (_g2852928591_
                                            (gx#genident _L28516_)))
                                         (_g2845828487_ _g2845928491_)))
                                   _tl2848128511_
                                   _hd2848028508_)))
                              (_g2845828487_ _g2845928491_))))
                      (_g2845828487_ _g2845928491_))))
               (_g2845628700_
                (lambda (_g2845928599_)
                  (if (gx#stx-pair? _g2845928599_)
                      (let ((_e2846828602_ (gx#syntax-e _g2845928599_)))
                        (let ((_hd2846928606_ (##car _e2846828602_))
                              (_tl2847028609_ (##cdr _e2846828602_)))
                          (if (gx#stx-pair? _tl2847028609_)
                              (let ((_e2847128612_
                                     (gx#syntax-e _tl2847028609_)))
                                (let ((_hd2847228616_ (##car _e2847128612_))
                                      (_tl2847328619_ (##cdr _e2847128612_)))
                                  (if (gx#identifier? _hd2847228616_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34869_|
                                           _hd2847228616_)
                                          ((lambda (_L28622_)
                                             (if (gx#stx-list? _L28622_)
                                                 (let* ((_g2863528643_
                                                         (lambda (_g2863628639_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2863628639_)))
                                                        (_g2863428696_
                                                         (lambda (_g2863628647_)
                                                           ((lambda (_L28650_)
                                                              (let ()
                                                                (let* ((_g2866228670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2866328666_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2866328666_)))
                               (_g2866128692_
                                (lambda (_g2866328674_)
                                  ((lambda (_L28677_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L28650_
                                                     (cons _L28677_ '()))))))
                                   _g2866328674_))))
                          (_g2866128692_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28650_ _L28622_))
                            (gx#stx-source _stx28453_))))))
                    _g2863628647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2863428696_
                                                    (gx#genident 'args)))
                                                 (_g2845728595_
                                                  _g2845928599_)))
                                           _tl2847328619_)
                                          (_g2845728595_ _g2845928599_))
                                      (_g2845728595_ _g2845928599_))))
                              (_g2845728595_ _g2845928599_))))
                      (_g2845728595_ _g2845928599_))))
               (_g2845528805_
                (lambda (_g2845928704_)
                  (if (gx#stx-pair? _g2845928704_)
                      (let ((_e2846128707_ (gx#syntax-e _g2845928704_)))
                        (let ((_hd2846228711_ (##car _e2846128707_))
                              (_tl2846328714_ (##cdr _e2846128707_)))
                          (if (gx#stx-pair? _tl2846328714_)
                              (let ((_e2846428717_
                                     (gx#syntax-e _tl2846328714_)))
                                (let ((_hd2846528721_ (##car _e2846428717_))
                                      (_tl2846628724_ (##cdr _e2846428717_)))
                                  (if (gx#identifier? _hd2846528721_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34870_|
                                           _hd2846528721_)
                                          ((lambda (_L28727_)
                                             (if (gx#stx-list? _L28727_)
                                                 (let* ((_g2874028748_
                                                         (lambda (_g2874128744_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2874128744_)))
                                                        (_g2873928801_
                                                         (lambda (_g2874128752_)
                                                           ((lambda (_L28755_)
                                                              (let ()
                                                                (let* ((_g2876728775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2876828771_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2876828771_)))
                               (_g2876628797_
                                (lambda (_g2876828779_)
                                  ((lambda (_L28782_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L28755_ '())
                                                     (cons _L28782_ '()))))))
                                   _g2876828779_))))
                          (_g2876628797_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28755_ _L28727_))
                            (gx#stx-source _stx28453_))))))
                    _g2874128752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2873928801_
                                                    (gx#genident 'e)))
                                                 (_g2845628700_
                                                  _g2845928704_)))
                                           _tl2846628724_)
                                          (_g2845628700_ _g2845928704_))
                                      (_g2845628700_ _g2845928704_))))
                              (_g2845628700_ _g2845928704_))))
                      (_g2845628700_ _g2845928704_)))))
          (_g2845528805_ _stx28453_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx28809_)
        (let* ((_g2881228836_
                (lambda (_g2881328832_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2881328832_)))
               (_g2881129048_
                (lambda (_g2881328840_)
                  (if (gx#stx-pair? _g2881328840_)
                      (let ((_e2881628843_ (gx#syntax-e _g2881328840_)))
                        (let ((_hd2881728847_ (##car _e2881628843_))
                              (_tl2881828850_ (##cdr _e2881628843_)))
                          (if (gx#stx-pair? _tl2881828850_)
                              (let ((_e2881928853_
                                     (gx#syntax-e _tl2881828850_)))
                                (let ((_hd2882028857_ (##car _e2881928853_))
                                      (_tl2882128860_ (##cdr _e2881928853_)))
                                  (if (gx#stx-pair/null? _hd2882028857_)
                                      (if (fx>= (gx#stx-length _hd2882028857_)
                                                '0)
                                          (let ((_g34871_
                                                 (gx#syntax-split-splice
                                                  _hd2882028857_
                                                  '0)))
                                            (begin
                                              (let ((_g34872_
                                                     (values-count _g34871_)))
                                                (if (not (fx= _g34872_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34872_)))
                                              (let ((_target2882228863_
                                                     (values-ref _g34871_ 0))
                                                    (_tl2882428866_
                                                     (values-ref _g34871_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2882428866_)
                                                    (letrec ((_loop2882528869_
                                                              (lambda (_hd2882328873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2882928876_)
                        (if (gx#stx-pair? _hd2882328873_)
                            (let ((_e2882628879_ (gx#syntax-e _hd2882328873_)))
                              (let ((_lp-hd2882728883_ (##car _e2882628879_))
                                    (_lp-tl2882828886_ (##cdr _e2882628879_)))
                                (_loop2882528869_
                                 _lp-tl2882828886_
                                 (cons _lp-hd2882728883_ _e2882928876_))))
                            (let ((_e2883028889_ (reverse _e2882928876_)))
                              ((lambda (_L28893_ _L28895_)
                                 (if (gx#stx-list? _L28893_)
                                     (let* ((_g2891328930_
                                             (lambda (_g2891428926_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2891428926_)))
                                            (_g2891229036_
                                             (lambda (_g2891428934_)
                                               (if (gx#stx-pair/null?
                                                    _g2891428934_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2891428934_)
                                                             '0)
                                                       (let ((_g34873_
                                                              (gx#syntax-split-splice
                                                               _g2891428934_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34873_)))
                     (if (not (fx= _g34874_ 2))
                         (error "Context expects 2 values" _g34874_)))
                   (let ((_target2891628937_ (values-ref _g34873_ 0))
                         (_tl2891828940_ (values-ref _g34873_ 1)))
                     (if (gx#stx-null? _tl2891828940_)
                         (letrec ((_loop2891928943_
                                   (lambda (_hd2891728947_ _$e2892328950_)
                                     (if (gx#stx-pair? _hd2891728947_)
                                         (let ((_e2892028953_
                                                (gx#syntax-e _hd2891728947_)))
                                           (let ((_lp-hd2892128957_
                                                  (##car _e2892028953_))
                                                 (_lp-tl2892228960_
                                                  (##cdr _e2892028953_)))
                                             (_loop2891928943_
                                              _lp-tl2892228960_
                                              (cons _lp-hd2892128957_
                                                    _$e2892328950_))))
                                         (let ((_$e2892428963_
                                                (reverse _$e2892328950_)))
                                           ((lambda (_L28967_)
                                              (let ()
                                                (let* ((_g2898328991_
                                                        (lambda (_g2898428987_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2898428987_)))
                                                       (_g2898229024_
                                                        (lambda (_g2898428995_)
                                                          ((lambda (_L28998_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L28895_
                                        _L28967_)
                                       (foldr (lambda (_g2901229016_
                                                       _g2901329019_
                                                       _g2901429021_)
                                                (cons (cons _g2901329019_
                                                            (cons _g2901229016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2901429021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L28895_
                                              _L28967_))
                                     (cons _L28998_ '()))))))
                   _g2898428995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2898229024_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx28809_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2902729030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2902829033_)
                       (cons _g2902729030_ _g2902829033_))
                     '()
                     _L28967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L28893_)))))
                                            _$e2892428963_))))))
                           (_loop2891928943_ _target2891628937_ '()))
                         (_g2891328930_ _g2891428934_)))))
               (_g2891328930_ _g2891428934_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2891328930_
                                                    _g2891428934_)))))
                                       (_g2891229036_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2903929042_
                                                           _g2904029045_)
                                                    (cons _g2903929042_
                                                          _g2904029045_))
                                                  '()
                                                  _L28895_)))))
                                     (_g2881228836_ _g2881328840_)))
                               _tl2882128860_
                               _e2883028889_))))))
              (_loop2882528869_ _target2882228863_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2881228836_
                                                     _g2881328840_)))))
                                          (_g2881228836_ _g2881328840_))
                                      (_g2881228836_ _g2881328840_))))
                              (_g2881228836_ _g2881328840_))))
                      (_g2881228836_ _g2881328840_)))))
          (_g2881129048_ _stx28809_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29054_)
        (let* ((_g2906029143_
                (lambda (_g2906129139_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2906129139_)))
               (_g2905929304_
                (lambda (_g2906129147_)
                  (if (gx#stx-pair? _g2906129147_)
                      (let ((_e2910629150_ (gx#syntax-e _g2906129147_)))
                        (let ((_hd2910729154_ (##car _e2910629150_))
                              (_tl2910829157_ (##cdr _e2910629150_)))
                          (if (gx#stx-pair? _tl2910829157_)
                              (let ((_e2910929160_
                                     (gx#syntax-e _tl2910829157_)))
                                (let ((_hd2911029164_ (##car _e2910929160_))
                                      (_tl2911129167_ (##cdr _e2910929160_)))
                                  (if (gx#stx-pair/null? _hd2911029164_)
                                      (if (fx>= (gx#stx-length _hd2911029164_)
                                                '0)
                                          (let ((_g34875_
                                                 (gx#syntax-split-splice
                                                  _hd2911029164_
                                                  '0)))
                                            (begin
                                              (let ((_g34876_
                                                     (values-count _g34875_)))
                                                (if (not (fx= _g34876_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34876_)))
                                              (let ((_target2911229170_
                                                     (values-ref _g34875_ 0))
                                                    (_tl2911429173_
                                                     (values-ref _g34875_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2911429173_)
                                                    (letrec ((_loop2911529176_
                                                              (lambda (_hd2911329180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2911929183_
                               _hd2912029185_)
                        (if (gx#stx-pair? _hd2911329180_)
                            (let ((_e2911629188_ (gx#syntax-e _hd2911329180_)))
                              (let ((_lp-hd2911729192_ (##car _e2911629188_))
                                    (_lp-tl2911829195_ (##cdr _e2911629188_)))
                                (if (gx#stx-pair? _lp-hd2911729192_)
                                    (let ((_e2912329198_
                                           (gx#syntax-e _lp-hd2911729192_)))
                                      (let ((_hd2912429202_
                                             (##car _e2912329198_))
                                            (_tl2912529205_
                                             (##cdr _e2912329198_)))
                                        (if (gx#stx-pair? _tl2912529205_)
                                            (let ((_e2912629208_
                                                   (gx#syntax-e
                                                    _tl2912529205_)))
                                              (let ((_hd2912729212_
                                                     (##car _e2912629208_))
                                                    (_tl2912829215_
                                                     (##cdr _e2912629208_)))
                                                (if (gx#stx-null?
                                                     _tl2912829215_)
                                                    (_loop2911529176_
                                                     _lp-tl2911829195_
                                                     (cons _hd2912729212_
                                                           _expr2911929183_)
                                                     (cons _hd2912429202_
                                                           _hd2912029185_))
                                                    (_g2906029143_
                                                     _g2906129147_))))
                                            (_g2906029143_ _g2906129147_))))
                                    (_g2906029143_ _g2906129147_))))
                            (let ((_expr2912129218_ (reverse _expr2911929183_))
                                  (_hd2912229221_ (reverse _hd2912029185_)))
                              (if (gx#stx-pair/null? _tl2911129167_)
                                  (if (fx>= (gx#stx-length _tl2911129167_) '0)
                                      (let ((_g34877_
                                             (gx#syntax-split-splice
                                              _tl2911129167_
                                              '0)))
                                        (begin
                                          (let ((_g34878_
                                                 (values-count _g34877_)))
                                            (if (not (fx= _g34878_ 2))
                                                (error "Context expects 2 values"
                                                       _g34878_)))
                                          (let ((_target2912929224_
                                                 (values-ref _g34877_ 0))
                                                (_tl2913129227_
                                                 (values-ref _g34877_ 1)))
                                            (if (gx#stx-null? _tl2913129227_)
                                                (letrec ((_loop2913229230_
                                                          (lambda (_hd2913029234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2913629237_)
                    (if (gx#stx-pair? _hd2913029234_)
                        (let ((_e2913329240_ (gx#syntax-e _hd2913029234_)))
                          (let ((_lp-hd2913429244_ (##car _e2913329240_))
                                (_lp-tl2913529247_ (##cdr _e2913329240_)))
                            (_loop2913229230_
                             _lp-tl2913529247_
                             (cons _lp-hd2913429244_ _body2913629237_))))
                        (let ((_body2913729250_ (reverse _body2913629237_)))
                          ((lambda (_L29254_ _L29256_ _L29257_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2927929286_
                                                           _g2928029289_)
                                                    (cons _g2927929286_
                                                          _g2928029289_))
                                                  '()
                                                  _L29256_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2928129292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2928229295_)
                        (cons _g2928129292_ _g2928229295_))
                      '()
                      _L29257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2928329298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2928429301_)
                        (cons _g2928329298_ _g2928429301_))
                      '()
                      _L29254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2913729250_
                           _expr2912129218_
                           _hd2912229221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2913229230_
                                                   _target2912929224_
                                                   '()))
                                                (_g2906029143_
                                                 _g2906129147_)))))
                                      (_g2906029143_ _g2906129147_))
                                  (_g2906029143_ _g2906129147_)))))))
              (_loop2911529176_ _target2911229170_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2906029143_
                                                     _g2906129147_)))))
                                          (_g2906029143_ _g2906129147_))
                                      (_g2906029143_ _g2906129147_))))
                              (_g2906029143_ _g2906129147_))))
                      (_g2906029143_ _g2906129147_))))
               (_g2905829416_
                (lambda (_g2906129308_)
                  (if (gx#stx-pair? _g2906129308_)
                      (let ((_e2908229311_ (gx#syntax-e _g2906129308_)))
                        (let ((_hd2908329315_ (##car _e2908229311_))
                              (_tl2908429318_ (##cdr _e2908229311_)))
                          (if (gx#stx-pair? _tl2908429318_)
                              (let ((_e2908529321_
                                     (gx#syntax-e _tl2908429318_)))
                                (let ((_hd2908629325_ (##car _e2908529321_))
                                      (_tl2908729328_ (##cdr _e2908529321_)))
                                  (if (gx#stx-pair? _hd2908629325_)
                                      (let ((_e2908829331_
                                             (gx#syntax-e _hd2908629325_)))
                                        (let ((_hd2908929335_
                                               (##car _e2908829331_))
                                              (_tl2909029338_
                                               (##cdr _e2908829331_)))
                                          (if (gx#stx-pair? _tl2909029338_)
                                              (let ((_e2909129341_
                                                     (gx#syntax-e
                                                      _tl2909029338_)))
                                                (let ((_hd2909229345_
                                                       (##car _e2909129341_))
                                                      (_tl2909329348_
                                                       (##cdr _e2909129341_)))
                                                  (if (gx#stx-null?
                                                       _tl2909329348_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2908729328_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2908729328_)
                            '0)
                      (let ((_g34879_
                             (gx#syntax-split-splice _tl2908729328_ '0)))
                        (begin
                          (let ((_g34880_ (values-count _g34879_)))
                            (if (not (fx= _g34880_ 2))
                                (error "Context expects 2 values" _g34880_)))
                          (let ((_target2909429351_ (values-ref _g34879_ 0))
                                (_tl2909629354_ (values-ref _g34879_ 1)))
                            (if (gx#stx-null? _tl2909629354_)
                                (letrec ((_loop2909729357_
                                          (lambda (_hd2909529361_
                                                   _body2910129364_)
                                            (if (gx#stx-pair? _hd2909529361_)
                                                (let ((_e2909829367_
                                                       (gx#syntax-e
                                                        _hd2909529361_)))
                                                  (let ((_lp-hd2909929371_
                                                         (##car _e2909829367_))
                                                        (_lp-tl2910029374_
                                                         (##cdr _e2909829367_)))
                                                    (_loop2909729357_
                                                     _lp-tl2910029374_
                                                     (cons _lp-hd2909929371_
                                                           _body2910129364_))))
                                                (let ((_body2910229377_
                                                       (reverse _body2910129364_)))
                                                  ((lambda (_L29381_
                                                            _L29383_
                                                            _L29384_
                                                            _L29385_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29384_)
                                                         (cons _L29385_
                                                               (cons (cons (cons _L29384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29383_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2940729410_ _g2940829413_)
                                        (cons _g2940729410_ _g2940829413_))
                                      '()
                                      _L29381_))))
                 (_g2905929304_ _g2906129308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2910229377_
                                                   _hd2909229345_
                                                   _hd2908929335_
                                                   _hd2908329315_))))))
                                  (_loop2909729357_ _target2909429351_ '()))
                                (_g2905929304_ _g2906129308_)))))
                      (_g2905929304_ _g2906129308_))
                  (_g2905929304_ _g2906129308_))
              (_g2905929304_ _g2906129308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905929304_ _g2906129308_))))
                                      (_g2905929304_ _g2906129308_))))
                              (_g2905929304_ _g2906129308_))))
                      (_g2905929304_ _g2906129308_))))
               (_g2905729498_
                (lambda (_g2906129420_)
                  (if (gx#stx-pair? _g2906129420_)
                      (let ((_e2906329423_ (gx#syntax-e _g2906129420_)))
                        (let ((_hd2906429427_ (##car _e2906329423_))
                              (_tl2906529430_ (##cdr _e2906329423_)))
                          (if (gx#stx-pair? _tl2906529430_)
                              (let ((_e2906629433_
                                     (gx#syntax-e _tl2906529430_)))
                                (let ((_hd2906729437_ (##car _e2906629433_))
                                      (_tl2906829440_ (##cdr _e2906629433_)))
                                  (if (gx#stx-null? _hd2906729437_)
                                      (if (gx#stx-pair/null? _tl2906829440_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2906829440_)
                                                    '0)
                                              (let ((_g34881_
                                                     (gx#syntax-split-splice
                                                      _tl2906829440_
                                                      '0)))
                                                (begin
                                                  (let ((_g34882_
                                                         (values-count
                                                          _g34881_)))
                                                    (if (not (fx= _g34882_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34882_)))
                                                  (let ((_target2906929443_
                                                         (values-ref
                                                          _g34881_
                                                          0))
                                                        (_tl2907129446_
                                                         (values-ref
                                                          _g34881_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2907129446_)
                                                        (letrec ((_loop2907229449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2907029453_ _body2907629456_)
                            (if (gx#stx-pair? _hd2907029453_)
                                (let ((_e2907329459_
                                       (gx#syntax-e _hd2907029453_)))
                                  (let ((_lp-hd2907429463_
                                         (##car _e2907329459_))
                                        (_lp-tl2907529466_
                                         (##cdr _e2907329459_)))
                                    (_loop2907229449_
                                     _lp-tl2907529466_
                                     (cons _lp-hd2907429463_
                                           _body2907629456_))))
                                (let ((_body2907729469_
                                       (reverse _body2907629456_)))
                                  ((lambda (_L29473_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2948929492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2949029495_)
                    (cons _g2948929492_ _g2949029495_))
                  '()
                  _L29473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2907729469_))))))
                  (_loop2907229449_ _target2906929443_ '()))
                (_g2905829416_ _g2906129420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905829416_ _g2906129420_))
                                          (_g2905829416_ _g2906129420_))
                                      (_g2905829416_ _g2906129420_))))
                              (_g2905829416_ _g2906129420_))))
                      (_g2905829416_ _g2906129420_)))))
          (_g2905729498_ _$stx29054_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx29506_)
        (let* ((_g2951129563_
                (lambda (_g2951229559_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2951229559_)))
               (_g2951029646_
                (lambda (_g2951229567_)
                  (if (gx#stx-pair? _g2951229567_)
                      (let ((_e2954329570_ (gx#syntax-e _g2951229567_)))
                        (let ((_hd2954429574_ (##car _e2954329570_))
                              (_tl2954529577_ (##cdr _e2954329570_)))
                          (if (gx#stx-pair? _tl2954529577_)
                              (let ((_e2954629580_
                                     (gx#syntax-e _tl2954529577_)))
                                (let ((_hd2954729584_ (##car _e2954629580_))
                                      (_tl2954829587_ (##cdr _e2954629580_)))
                                  (if (gx#stx-null? _hd2954729584_)
                                      (if (gx#stx-pair/null? _tl2954829587_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2954829587_)
                                                    '0)
                                              (let ((_g34883_
                                                     (gx#syntax-split-splice
                                                      _tl2954829587_
                                                      '0)))
                                                (begin
                                                  (let ((_g34884_
                                                         (values-count
                                                          _g34883_)))
                                                    (if (not (fx= _g34884_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34884_)))
                                                  (let ((_target2954929590_
                                                         (values-ref
                                                          _g34883_
                                                          0))
                                                        (_tl2955129593_
                                                         (values-ref
                                                          _g34883_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2955129593_)
                                                        (letrec ((_loop2955229596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2955029600_ _body2955629603_)
                            (if (gx#stx-pair? _hd2955029600_)
                                (let ((_e2955329606_
                                       (gx#syntax-e _hd2955029600_)))
                                  (let ((_lp-hd2955429610_
                                         (##car _e2955329606_))
                                        (_lp-tl2955529613_
                                         (##cdr _e2955329606_)))
                                    (_loop2955229596_
                                     _lp-tl2955529613_
                                     (cons _lp-hd2955429610_
                                           _body2955629603_))))
                                (let ((_body2955729616_
                                       (reverse _body2955629603_)))
                                  ((lambda (_L29620_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2963729640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2963829643_)
                    (cons _g2963729640_ _g2963829643_))
                  '()
                  _L29620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2955729616_))))))
                  (_loop2955229596_ _target2954929590_ '()))
                (_g2951129563_ _g2951229567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2951129563_ _g2951229567_))
                                          (_g2951129563_ _g2951229567_))
                                      (_g2951129563_ _g2951229567_))))
                              (_g2951129563_ _g2951229567_))))
                      (_g2951129563_ _g2951229567_))))
               (_g2950929772_
                (lambda (_g2951229650_)
                  (if (gx#stx-pair? _g2951229650_)
                      (let ((_e2951829653_ (gx#syntax-e _g2951229650_)))
                        (let ((_hd2951929657_ (##car _e2951829653_))
                              (_tl2952029660_ (##cdr _e2951829653_)))
                          (if (gx#stx-pair? _tl2952029660_)
                              (let ((_e2952129663_
                                     (gx#syntax-e _tl2952029660_)))
                                (let ((_hd2952229667_ (##car _e2952129663_))
                                      (_tl2952329670_ (##cdr _e2952129663_)))
                                  (if (gx#stx-pair? _hd2952229667_)
                                      (let ((_e2952429673_
                                             (gx#syntax-e _hd2952229667_)))
                                        (let ((_hd2952529677_
                                               (##car _e2952429673_))
                                              (_tl2952629680_
                                               (##cdr _e2952429673_)))
                                          (if (gx#stx-pair? _hd2952529677_)
                                              (let ((_e2952729683_
                                                     (gx#syntax-e
                                                      _hd2952529677_)))
                                                (let ((_hd2952829687_
                                                       (##car _e2952729683_))
                                                      (_tl2952929690_
                                                       (##cdr _e2952729683_)))
                                                  (if (gx#stx-pair?
                                                       _tl2952929690_)
                                                      (let ((_e2953029693_
                                                             (gx#syntax-e
                                                              _tl2952929690_)))
                                                        (let ((_hd2953129697_
                                                               (##car _e2953029693_))
                                                              (_tl2953229700_
                                                               (##cdr _e2953029693_)))
                                                          (if (gx#stx-null?
                                                               _tl2953229700_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2952329670_)
                          (if (fx>= (gx#stx-length _tl2952329670_) '0)
                              (let ((_g34885_
                                     (gx#syntax-split-splice
                                      _tl2952329670_
                                      '0)))
                                (begin
                                  (let ((_g34886_ (values-count _g34885_)))
                                    (if (not (fx= _g34886_ 2))
                                        (error "Context expects 2 values"
                                               _g34886_)))
                                  (let ((_target2953329703_
                                         (values-ref _g34885_ 0))
                                        (_tl2953529706_
                                         (values-ref _g34885_ 1)))
                                    (if (gx#stx-null? _tl2953529706_)
                                        (letrec ((_loop2953629709_
                                                  (lambda (_hd2953429713_
                                                           _body2954029716_)
                                                    (if (gx#stx-pair?
                                                         _hd2953429713_)
                                                        (let ((_e2953729719_
                                                               (gx#syntax-e
                                                                _hd2953429713_)))
                                                          (let ((_lp-hd2953829723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2953729719_))
                        (_lp-tl2953929726_ (##cdr _e2953729719_)))
                    (_loop2953629709_
                     _lp-tl2953929726_
                     (cons _lp-hd2953829723_ _body2954029716_))))
                (let ((_body2954129729_ (reverse _body2954029716_)))
                  ((lambda (_L29733_ _L29735_ _L29736_ _L29737_ _L29738_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L29737_ (cons _L29736_ '())) '())
                                 (cons (cons _L29738_
                                             (cons _L29735_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2976329766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2976429769_)
                      (cons _g2976329766_ _g2976429769_))
                    '()
                    _L29733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2954129729_
                   _tl2952629680_
                   _hd2953129697_
                   _hd2952829687_
                   _hd2951929657_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2953629709_
                                           _target2953329703_
                                           '()))
                                        (_g2951029646_ _g2951229650_)))))
                              (_g2951029646_ _g2951229650_))
                          (_g2951029646_ _g2951229650_))
                      (_g2951029646_ _g2951229650_))))
              (_g2951029646_ _g2951229650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2951029646_ _g2951229650_))))
                                      (_g2951029646_ _g2951229650_))))
                              (_g2951029646_ _g2951229650_))))
                      (_g2951029646_ _g2951229650_)))))
          (_g2950929772_ _$stx29506_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx29778_)
        (let* ((_g2978929933_
                (lambda (_g2979029929_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2979029929_)))
               (_g2978830028_
                (lambda (_g2979029937_)
                  (if (gx#stx-pair? _g2979029937_)
                      (let ((_e2991029940_ (gx#syntax-e _g2979029937_)))
                        (let ((_hd2991129944_ (##car _e2991029940_))
                              (_tl2991229947_ (##cdr _e2991029940_)))
                          (if (gx#stx-pair? _tl2991229947_)
                              (let ((_e2991329950_
                                     (gx#syntax-e _tl2991229947_)))
                                (let ((_hd2991429954_ (##car _e2991329950_))
                                      (_tl2991529957_ (##cdr _e2991329950_)))
                                  (if (gx#stx-pair? _tl2991529957_)
                                      (let ((_e2991629960_
                                             (gx#syntax-e _tl2991529957_)))
                                        (let ((_hd2991729964_
                                               (##car _e2991629960_))
                                              (_tl2991829967_
                                               (##cdr _e2991629960_)))
                                          (if (gx#stx-datum? _hd2991729964_)
                                              (if (equal? (gx#stx-e
                                                           _hd2991729964_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2991829967_)
                                                      (let ((_e2991929970_
                                                             (gx#syntax-e
                                                              _tl2991829967_)))
                                                        (let ((_hd2992029974_
                                                               (##car _e2991929970_))
                                                              (_tl2992129977_
                                                               (##cdr _e2991929970_)))
                                                          (if (gx#stx-pair?
                                                               _tl2992129977_)
                                                              (let ((_e2992229980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2992129977_)))
                        (let ((_hd2992329984_ (##car _e2992229980_))
                              (_tl2992429987_ (##cdr _e2992229980_)))
                          (if (gx#identifier? _hd2992329984_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34887_|
                                   _hd2992329984_)
                                  (if (gx#stx-pair? _tl2992429987_)
                                      (let ((_e2992529990_
                                             (gx#syntax-e _tl2992429987_)))
                                        (let ((_hd2992629994_
                                               (##car _e2992529990_))
                                              (_tl2992729997_
                                               (##cdr _e2992529990_)))
                                          (if (gx#stx-null? _tl2992729997_)
                                              ((lambda (_L30000_
                                                        _L30002_
                                                        _L30003_
                                                        _L30004_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30004_
                                             (cons _L30003_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30000_
                                                   (cons (cons _L30002_
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
                                               _hd2992629994_
                                               _hd2992029974_
                                               _hd2991429954_
                                               _hd2991129944_)
                                              (_g2978929933_ _g2979029937_))))
                                      (_g2978929933_ _g2979029937_))
                                  (_g2978929933_ _g2979029937_))
                              (_g2978929933_ _g2979029937_))))
                      (_g2978929933_ _g2979029937_))))
              (_g2978929933_ _g2979029937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978929933_
                                                   _g2979029937_))
                                              (_g2978929933_ _g2979029937_))))
                                      (_g2978929933_ _g2979029937_))))
                              (_g2978929933_ _g2979029937_))))
                      (_g2978929933_ _g2979029937_))))
               (_g2978730096_
                (lambda (_g2979030032_)
                  (if (gx#stx-pair? _g2979030032_)
                      (let ((_e2989430035_ (gx#syntax-e _g2979030032_)))
                        (let ((_hd2989530039_ (##car _e2989430035_))
                              (_tl2989630042_ (##cdr _e2989430035_)))
                          (if (gx#stx-pair? _tl2989630042_)
                              (let ((_e2989730045_
                                     (gx#syntax-e _tl2989630042_)))
                                (let ((_hd2989830049_ (##car _e2989730045_))
                                      (_tl2989930052_ (##cdr _e2989730045_)))
                                  (if (gx#stx-pair? _tl2989930052_)
                                      (let ((_e2990030055_
                                             (gx#syntax-e _tl2989930052_)))
                                        (let ((_hd2990130059_
                                               (##car _e2990030055_))
                                              (_tl2990230062_
                                               (##cdr _e2990030055_)))
                                          (if (gx#stx-datum? _hd2990130059_)
                                              (if (equal? (gx#stx-e
                                                           _hd2990130059_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2990230062_)
                                                      (let ((_e2990330065_
                                                             (gx#syntax-e
                                                              _tl2990230062_)))
                                                        (let ((_hd2990430069_
                                                               (##car _e2990330065_))
                                                              (_tl2990530072_
                                                               (##cdr _e2990330065_)))
                                                          (if (gx#stx-null?
                                                               _tl2990530072_)
                                                              ((lambda (_L30075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30077_
                                _L30078_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30077_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30075_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2990430069_
                       _hd2989830049_
                       _hd2989530039_)
                      (_g2978830028_ _g2979030032_))))
              (_g2978830028_ _g2979030032_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978830028_
                                                   _g2979030032_))
                                              (_g2978830028_ _g2979030032_))))
                                      (_g2978830028_ _g2979030032_))))
                              (_g2978830028_ _g2979030032_))))
                      (_g2978830028_ _g2979030032_))))
               (_g2978630164_
                (lambda (_g2979030100_)
                  (if (gx#stx-pair? _g2979030100_)
                      (let ((_e2987930103_ (gx#syntax-e _g2979030100_)))
                        (let ((_hd2988030107_ (##car _e2987930103_))
                              (_tl2988130110_ (##cdr _e2987930103_)))
                          (if (gx#stx-pair? _tl2988130110_)
                              (let ((_e2988230113_
                                     (gx#syntax-e _tl2988130110_)))
                                (let ((_hd2988330117_ (##car _e2988230113_))
                                      (_tl2988430120_ (##cdr _e2988230113_)))
                                  (if (gx#stx-pair? _tl2988430120_)
                                      (let ((_e2988530123_
                                             (gx#syntax-e _tl2988430120_)))
                                        (let ((_hd2988630127_
                                               (##car _e2988530123_))
                                              (_tl2988730130_
                                               (##cdr _e2988530123_)))
                                          (if (gx#identifier? _hd2988630127_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34888_|
                                                   _hd2988630127_)
                                                  (if (gx#stx-pair?
                                                       _tl2988730130_)
                                                      (let ((_e2988830133_
                                                             (gx#syntax-e
                                                              _tl2988730130_)))
                                                        (let ((_hd2988930137_
                                                               (##car _e2988830133_))
                                                              (_tl2989030140_
                                                               (##cdr _e2988830133_)))
                                                          (if (gx#stx-null?
                                                               _tl2989030140_)
                                                              ((lambda (_L30143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30145_
                                _L30146_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30146_
                                                             (cons _L30145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30143_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2988930137_
                       _hd2988330117_
                       _hd2988030107_)
                      (_g2978730096_ _g2979030100_))))
              (_g2978730096_ _g2979030100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978730096_
                                                   _g2979030100_))
                                              (_g2978730096_ _g2979030100_))))
                                      (_g2978730096_ _g2979030100_))))
                              (_g2978730096_ _g2979030100_))))
                      (_g2978730096_ _g2979030100_))))
               (_g2978530206_
                (lambda (_g2979030168_)
                  (if (gx#stx-pair? _g2979030168_)
                      (let ((_e2987030171_ (gx#syntax-e _g2979030168_)))
                        (let ((_hd2987130175_ (##car _e2987030171_))
                              (_tl2987230178_ (##cdr _e2987030171_)))
                          (if (gx#stx-pair? _tl2987230178_)
                              (let ((_e2987330181_
                                     (gx#syntax-e _tl2987230178_)))
                                (let ((_hd2987430185_ (##car _e2987330181_))
                                      (_tl2987530188_ (##cdr _e2987330181_)))
                                  (if (gx#stx-null? _tl2987530188_)
                                      ((lambda (_L30191_ _L30193_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30191_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2987430185_
                                       _hd2987130175_)
                                      (_g2978630164_ _g2979030168_))))
                              (_g2978630164_ _g2979030168_))))
                      (_g2978630164_ _g2979030168_))))
               (_g2978430260_
                (lambda (_g2979030210_)
                  (if (gx#stx-pair? _g2979030210_)
                      (let ((_e2985930213_ (gx#syntax-e _g2979030210_)))
                        (let ((_hd2986030217_ (##car _e2985930213_))
                              (_tl2986130220_ (##cdr _e2985930213_)))
                          (if (gx#stx-pair? _tl2986130220_)
                              (let ((_e2986230223_
                                     (gx#syntax-e _tl2986130220_)))
                                (let ((_hd2986330227_ (##car _e2986230223_))
                                      (_tl2986430230_ (##cdr _e2986230223_)))
                                  (if (gx#stx-pair? _tl2986430230_)
                                      (let ((_e2986530233_
                                             (gx#syntax-e _tl2986430230_)))
                                        (let ((_hd2986630237_
                                               (##car _e2986530233_))
                                              (_tl2986730240_
                                               (##cdr _e2986530233_)))
                                          (if (gx#stx-null? _tl2986730240_)
                                              ((lambda (_L30243_ _L30245_)
                                                 (cons _L30245_
                                                       (cons _L30243_ '())))
                                               _hd2986630237_
                                               _hd2986330227_)
                                              (_g2978530206_ _g2979030210_))))
                                      (_g2978530206_ _g2979030210_))))
                              (_g2978530206_ _g2979030210_))))
                      (_g2978530206_ _g2979030210_))))
               (_g2978330340_
                (lambda (_g2979030264_)
                  (if (gx#stx-pair? _g2979030264_)
                      (let ((_e2984230267_ (gx#syntax-e _g2979030264_)))
                        (let ((_hd2984330271_ (##car _e2984230267_))
                              (_tl2984430274_ (##cdr _e2984230267_)))
                          (if (gx#stx-pair? _tl2984430274_)
                              (let ((_e2984530277_
                                     (gx#syntax-e _tl2984430274_)))
                                (let ((_hd2984630281_ (##car _e2984530277_))
                                      (_tl2984730284_ (##cdr _e2984530277_)))
                                  (if (gx#stx-pair? _hd2984630281_)
                                      (let ((_e2984830287_
                                             (gx#syntax-e _hd2984630281_)))
                                        (let ((_hd2984930291_
                                               (##car _e2984830287_))
                                              (_tl2985030294_
                                               (##cdr _e2984830287_)))
                                          (if (gx#identifier? _hd2984930291_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34889_|
                                                   _hd2984930291_)
                                                  (if (gx#stx-pair?
                                                       _tl2985030294_)
                                                      (let ((_e2985130297_
                                                             (gx#syntax-e
                                                              _tl2985030294_)))
                                                        (let ((_hd2985230301_
                                                               (##car _e2985130297_))
                                                              (_tl2985330304_
                                                               (##cdr _e2985130297_)))
                                                          (if (gx#stx-null?
                                                               _tl2985330304_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2984730284_)
                          (let ((_e2985430307_ (gx#syntax-e _tl2984730284_)))
                            (let ((_hd2985530311_ (##car _e2985430307_))
                                  (_tl2985630314_ (##cdr _e2985430307_)))
                              (if (gx#stx-null? _tl2985630314_)
                                  ((lambda (_L30317_ _L30319_ _L30320_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30320_
                                                       (cons _L30319_
                                                             (cons _L30317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2985530311_
                                   _hd2985230301_
                                   _hd2984330271_)
                                  (_g2978430260_ _g2979030264_))))
                          (_g2978430260_ _g2979030264_))
                      (_g2978430260_ _g2979030264_))))
              (_g2978430260_ _g2979030264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978430260_
                                                   _g2979030264_))
                                              (_g2978430260_ _g2979030264_))))
                                      (_g2978430260_ _g2979030264_))))
                              (_g2978430260_ _g2979030264_))))
                      (_g2978430260_ _g2979030264_))))
               (_g2978230450_
                (lambda (_g2979030344_)
                  (if (gx#stx-pair? _g2979030344_)
                      (let ((_e2981830347_ (gx#syntax-e _g2979030344_)))
                        (let ((_hd2981930351_ (##car _e2981830347_))
                              (_tl2982030354_ (##cdr _e2981830347_)))
                          (if (gx#stx-pair? _tl2982030354_)
                              (let ((_e2982130357_
                                     (gx#syntax-e _tl2982030354_)))
                                (let ((_hd2982230361_ (##car _e2982130357_))
                                      (_tl2982330364_ (##cdr _e2982130357_)))
                                  (if (gx#stx-pair? _hd2982230361_)
                                      (let ((_e2982430367_
                                             (gx#syntax-e _hd2982230361_)))
                                        (let ((_hd2982530371_
                                               (##car _e2982430367_))
                                              (_tl2982630374_
                                               (##cdr _e2982430367_)))
                                          (if (gx#identifier? _hd2982530371_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34890_|
                                                   _hd2982530371_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2982630374_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2982630374_)
                        '0)
                  (let ((_g34891_ (gx#syntax-split-splice _tl2982630374_ '0)))
                    (begin
                      (let ((_g34892_ (values-count _g34891_)))
                        (if (not (fx= _g34892_ 2))
                            (error "Context expects 2 values" _g34892_)))
                      (let ((_target2982730377_ (values-ref _g34891_ 0))
                            (_tl2982930380_ (values-ref _g34891_ 1)))
                        (if (gx#stx-null? _tl2982930380_)
                            (letrec ((_loop2983030383_
                                      (lambda (_hd2982830387_ _pred2983430390_)
                                        (if (gx#stx-pair? _hd2982830387_)
                                            (let ((_e2983130393_
                                                   (gx#syntax-e
                                                    _hd2982830387_)))
                                              (let ((_lp-hd2983230397_
                                                     (##car _e2983130393_))
                                                    (_lp-tl2983330400_
                                                     (##cdr _e2983130393_)))
                                                (_loop2983030383_
                                                 _lp-tl2983330400_
                                                 (cons _lp-hd2983230397_
                                                       _pred2983430390_))))
                                            (let ((_pred2983530403_
                                                   (reverse _pred2983430390_)))
                                              (if (gx#stx-pair? _tl2982330364_)
                                                  (let ((_e2983630407_
                                                         (gx#syntax-e
                                                          _tl2982330364_)))
                                                    (let ((_hd2983730411_
                                                           (##car _e2983630407_))
                                                          (_tl2983830414_
                                                           (##cdr _e2983630407_)))
                                                      (if (gx#stx-null?
                                                           _tl2983830414_)
                                                          ((lambda (_L30417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30419_
                            _L30420_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3044130444_ _g3044230447_)
                                      (cons (cons _L30420_
                                                  (cons _g3044130444_
                                                        (cons _L30417_ '())))
                                            _g3044230447_))
                                    '()
                                    _L30419_))))
                   _hd2983730411_
                   _pred2983530403_
                   _hd2981930351_)
                  (_g2978330340_ _g2979030344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978330340_
                                                   _g2979030344_)))))))
                              (_loop2983030383_ _target2982730377_ '()))
                            (_g2978330340_ _g2979030344_)))))
                  (_g2978330340_ _g2979030344_))
              (_g2978330340_ _g2979030344_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978330340_
                                                   _g2979030344_))
                                              (_g2978330340_ _g2979030344_))))
                                      (_g2978330340_ _g2979030344_))))
                              (_g2978330340_ _g2979030344_))))
                      (_g2978330340_ _g2979030344_))))
               (_g2978130560_
                (lambda (_g2979030454_)
                  (if (gx#stx-pair? _g2979030454_)
                      (let ((_e2979430457_ (gx#syntax-e _g2979030454_)))
                        (let ((_hd2979530461_ (##car _e2979430457_))
                              (_tl2979630464_ (##cdr _e2979430457_)))
                          (if (gx#stx-pair? _tl2979630464_)
                              (let ((_e2979730467_
                                     (gx#syntax-e _tl2979630464_)))
                                (let ((_hd2979830471_ (##car _e2979730467_))
                                      (_tl2979930474_ (##cdr _e2979730467_)))
                                  (if (gx#stx-pair? _hd2979830471_)
                                      (let ((_e2980030477_
                                             (gx#syntax-e _hd2979830471_)))
                                        (let ((_hd2980130481_
                                               (##car _e2980030477_))
                                              (_tl2980230484_
                                               (##cdr _e2980030477_)))
                                          (if (gx#identifier? _hd2980130481_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34893_|
                                                   _hd2980130481_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2980230484_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2980230484_)
                        '0)
                  (let ((_g34894_ (gx#syntax-split-splice _tl2980230484_ '0)))
                    (begin
                      (let ((_g34895_ (values-count _g34894_)))
                        (if (not (fx= _g34895_ 2))
                            (error "Context expects 2 values" _g34895_)))
                      (let ((_target2980330487_ (values-ref _g34894_ 0))
                            (_tl2980530490_ (values-ref _g34894_ 1)))
                        (if (gx#stx-null? _tl2980530490_)
                            (letrec ((_loop2980630493_
                                      (lambda (_hd2980430497_ _pred2981030500_)
                                        (if (gx#stx-pair? _hd2980430497_)
                                            (let ((_e2980730503_
                                                   (gx#syntax-e
                                                    _hd2980430497_)))
                                              (let ((_lp-hd2980830507_
                                                     (##car _e2980730503_))
                                                    (_lp-tl2980930510_
                                                     (##cdr _e2980730503_)))
                                                (_loop2980630493_
                                                 _lp-tl2980930510_
                                                 (cons _lp-hd2980830507_
                                                       _pred2981030500_))))
                                            (let ((_pred2981130513_
                                                   (reverse _pred2981030500_)))
                                              (if (gx#stx-pair? _tl2979930474_)
                                                  (let ((_e2981230517_
                                                         (gx#syntax-e
                                                          _tl2979930474_)))
                                                    (let ((_hd2981330521_
                                                           (##car _e2981230517_))
                                                          (_tl2981430524_
                                                           (##cdr _e2981230517_)))
                                                      (if (gx#stx-null?
                                                           _tl2981430524_)
                                                          ((lambda (_L30527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30529_
                            _L30530_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3055130554_ _g3055230557_)
                                      (cons (cons _L30530_
                                                  (cons _g3055130554_
                                                        (cons _L30527_ '())))
                                            _g3055230557_))
                                    '()
                                    _L30529_))))
                   _hd2981330521_
                   _pred2981130513_
                   _hd2979530461_)
                  (_g2978230450_ _g2979030454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978230450_
                                                   _g2979030454_)))))))
                              (_loop2980630493_ _target2980330487_ '()))
                            (_g2978230450_ _g2979030454_)))))
                  (_g2978230450_ _g2979030454_))
              (_g2978230450_ _g2979030454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978230450_
                                                   _g2979030454_))
                                              (_g2978230450_ _g2979030454_))))
                                      (_g2978230450_ _g2979030454_))))
                              (_g2978230450_ _g2979030454_))))
                      (_g2978230450_ _g2979030454_)))))
          (_g2978130560_ _$stx29778_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx30566_)
        (let* ((_g3057130605_
                (lambda (_g3057230601_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3057230601_)))
               (_g3057030662_
                (lambda (_g3057230609_)
                  (if (gx#stx-pair? _g3057230609_)
                      (let ((_e3059130612_ (gx#syntax-e _g3057230609_)))
                        (let ((_hd3059230616_ (##car _e3059130612_))
                              (_tl3059330619_ (##cdr _e3059130612_)))
                          (if (gx#stx-pair? _tl3059330619_)
                              (let ((_e3059430622_
                                     (gx#syntax-e _tl3059330619_)))
                                (let ((_hd3059530626_ (##car _e3059430622_))
                                      (_tl3059630629_ (##cdr _e3059430622_)))
                                  (if (gx#stx-pair? _tl3059630629_)
                                      (let ((_e3059730632_
                                             (gx#syntax-e _tl3059630629_)))
                                        (let ((_hd3059830636_
                                               (##car _e3059730632_))
                                              (_tl3059930639_
                                               (##cdr _e3059730632_)))
                                          (if (gx#stx-null? _tl3059930639_)
                                              ((lambda (_L30642_
                                                        _L30644_
                                                        _L30645_)
                                                 (cons _L30645_
                                                       (cons _L30644_
                                                             (cons _L30642_
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
                                               _hd3059830636_
                                               _hd3059530626_
                                               _hd3059230616_)
                                              (_g3057130605_ _g3057230609_))))
                                      (_g3057130605_ _g3057230609_))))
                              (_g3057130605_ _g3057230609_))))
                      (_g3057130605_ _g3057230609_))))
               (_g3056930730_
                (lambda (_g3057230666_)
                  (if (gx#stx-pair? _g3057230666_)
                      (let ((_e3057630669_ (gx#syntax-e _g3057230666_)))
                        (let ((_hd3057730673_ (##car _e3057630669_))
                              (_tl3057830676_ (##cdr _e3057630669_)))
                          (if (gx#stx-pair? _tl3057830676_)
                              (let ((_e3057930679_
                                     (gx#syntax-e _tl3057830676_)))
                                (let ((_hd3058030683_ (##car _e3057930679_))
                                      (_tl3058130686_ (##cdr _e3057930679_)))
                                  (if (gx#stx-pair? _tl3058130686_)
                                      (let ((_e3058230689_
                                             (gx#syntax-e _tl3058130686_)))
                                        (let ((_hd3058330693_
                                               (##car _e3058230689_))
                                              (_tl3058430696_
                                               (##cdr _e3058230689_)))
                                          (if (gx#stx-pair? _tl3058430696_)
                                              (let ((_e3058530699_
                                                     (gx#syntax-e
                                                      _tl3058430696_)))
                                                (let ((_hd3058630703_
                                                       (##car _e3058530699_))
                                                      (_tl3058730706_
                                                       (##cdr _e3058530699_)))
                                                  (if (gx#stx-null?
                                                       _tl3058730706_)
                                                      ((lambda (_L30709_
                                                                _L30711_
                                                                _L30712_)
                                                         (if (gx#identifier?
                                                              _L30712_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L30712_
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
                                         (cons _L30711_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L30709_ '()))
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
                     (_g3057030662_ _g3057230666_)))
               _hd3058630703_
               _hd3058330693_
               _hd3058030683_)
              (_g3057030662_ _g3057230666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3057030662_ _g3057230666_))))
                                      (_g3057030662_ _g3057230666_))))
                              (_g3057030662_ _g3057230666_))))
                      (_g3057030662_ _g3057230666_)))))
          (_g3056930730_ _$stx30566_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx30734_)
        (let* ((_g3073830753_
                (lambda (_g3073930749_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3073930749_)))
               (_g3073730796_
                (lambda (_g3073930757_)
                  (if (gx#stx-pair? _g3073930757_)
                      (let ((_e3074230760_ (gx#syntax-e _g3073930757_)))
                        (let ((_hd3074330764_ (##car _e3074230760_))
                              (_tl3074430767_ (##cdr _e3074230760_)))
                          (if (gx#stx-pair? _tl3074430767_)
                              (let ((_e3074530770_
                                     (gx#syntax-e _tl3074430767_)))
                                (let ((_hd3074630774_ (##car _e3074530770_))
                                      (_tl3074730777_ (##cdr _e3074530770_)))
                                  ((lambda (_L30780_ _L30782_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L30782_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L30780_)
                                                       '()))))
                                   _tl3074730777_
                                   _hd3074630774_)))
                              (_g3073830753_ _g3073930757_))))
                      (_g3073830753_ _g3073930757_)))))
          (_g3073730796_ _$stx30734_))))))
