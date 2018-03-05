(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g34832_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34833_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34834_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34837_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34838_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34839_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34840_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34841_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34842_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34843_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34844_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34845_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34846_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34847_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34848_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34849_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34858_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34863_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34864_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34865_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34882_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34883_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34884_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34885_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34888_|
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
      (lambda _$args28436_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args28436_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx28433_)
        (if (gx#identifier? _stx28433_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx28433_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2674928419_
             (lambda (_stx26751_ _match-stx26753_)
               (letrec ((_parse126755_
                         (lambda (_hd27102_)
                           (let* ((_g2712827270_
                                   (lambda (_g2712927266_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2712927266_)))
                                  (_g2712727281_
                                   (lambda (_g2712927274_)
                                     ((lambda ()
                                        (_parse-error26762_ _hd27102_)))))
                                  (_g2712627299_
                                   (lambda (_g2712927285_)
                                     ((lambda (_L27288_)
                                        (if (gx#stx-datum? _L27288_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27288_)
                                                        '()))
                                            (_g2712727281_ _g2712927285_)))
                                      _g2712927285_)))
                                  (_g2712527315_
                                   (lambda (_g2712927303_)
                                     ((lambda (_L27306_)
                                        (if (if (gx#identifier? _L27306_)
                                                (not (gx#ellipsis? _L27306_))
                                                '#f)
                                            (cons 'var: (cons _L27306_ '()))
                                            (_g2712627299_ _g2712927303_)))
                                      _g2712927303_)))
                                  (_g2712427331_
                                   (lambda (_g2712927319_)
                                     ((lambda (_L27322_)
                                        (if (gx#underscore? _L27322_)
                                            (cons 'any: '())
                                            (_g2712527315_ _g2712927319_)))
                                      _g2712927319_)))
                                  (_g2712327363_
                                   (lambda (_g2712927335_)
                                     (if (gx#stx-pair? _g2712927335_)
                                         (let ((_e2725927338_
                                                (gx#syntax-e _g2712927335_)))
                                           (let ((_hd2726027342_
                                                  (##car _e2725927338_))
                                                 (_tl2726127345_
                                                  (##cdr _e2725927338_)))
                                             ((lambda (_L27348_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27348_)
                                                    (_parse126755_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27348_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27102_)
                                                       (let ((_$e27359_
                                                              (gx#stx-source
                                                               _hd27102_)))
                                                         (if _$e27359_
                                                             _$e27359_
                                                             (gx#stx-source
                                                              _stx26751_))))))
                                                    (_g2712427331_
                                                     _g2712927335_)))
                                              _hd2726027342_)))
                                         (_g2712427331_ _g2712927335_))))
                                  (_g2712227417_
                                   (lambda (_g2712927367_)
                                     (if (gx#stx-pair? _g2712927367_)
                                         (let ((_e2724927370_
                                                (gx#syntax-e _g2712927367_)))
                                           (let ((_hd2725027374_
                                                  (##car _e2724927370_))
                                                 (_tl2725127377_
                                                  (##cdr _e2724927370_)))
                                             (if (gx#identifier?
                                                  _hd2725027374_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34832_|
                                                      _hd2725027374_)
                                                     (if (gx#stx-pair?
                                                          _tl2725127377_)
                                                         (let ((_e2725227380_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2725127377_)))
                   (let ((_hd2725327384_ (##car _e2725227380_))
                         (_tl2725427387_ (##cdr _e2725227380_)))
                     (if (gx#stx-pair? _tl2725427387_)
                         (let ((_e2725527390_ (gx#syntax-e _tl2725427387_)))
                           (let ((_hd2725627394_ (##car _e2725527390_))
                                 (_tl2725727397_ (##cdr _e2725527390_)))
                             (if (gx#stx-null? _tl2725727397_)
                                 ((lambda (_L27400_ _L27402_)
                                    (cons 'apply:
                                          (cons _L27402_
                                                (cons (_parse126755_ _L27400_)
                                                      '()))))
                                  _hd2725627394_
                                  _hd2725327384_)
                                 (_g2712327363_ _g2712927367_))))
                         (_g2712327363_ _g2712927367_))))
                 (_g2712327363_ _g2712927367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712327363_
                                                      _g2712927367_))
                                                 (_g2712327363_
                                                  _g2712927367_))))
                                         (_g2712327363_ _g2712927367_))))
                                  (_g2712127457_
                                   (lambda (_g2712927421_)
                                     (if (gx#stx-pair? _g2712927421_)
                                         (let ((_e2724127424_
                                                (gx#syntax-e _g2712927421_)))
                                           (let ((_hd2724227428_
                                                  (##car _e2724127424_))
                                                 (_tl2724327431_
                                                  (##cdr _e2724127424_)))
                                             (if (gx#identifier?
                                                  _hd2724227428_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34833_|
                                                      _hd2724227428_)
                                                     (if (gx#stx-pair?
                                                          _tl2724327431_)
                                                         (let ((_e2724427434_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2724327431_)))
                   (let ((_hd2724527438_ (##car _e2724427434_))
                         (_tl2724627441_ (##cdr _e2724427434_)))
                     (if (gx#stx-null? _tl2724627441_)
                         ((lambda (_L27444_) (_parse-qq26761_ _L27444_))
                          _hd2724527438_)
                         (_g2712227417_ _g2712927421_))))
                 (_g2712227417_ _g2712927421_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712227417_
                                                      _g2712927421_))
                                                 (_g2712227417_
                                                  _g2712927421_))))
                                         (_g2712227417_ _g2712927421_))))
                                  (_g2712027497_
                                   (lambda (_g2712927461_)
                                     (if (gx#stx-pair? _g2712927461_)
                                         (let ((_e2723427464_
                                                (gx#syntax-e _g2712927461_)))
                                           (let ((_hd2723527468_
                                                  (##car _e2723427464_))
                                                 (_tl2723627471_
                                                  (##cdr _e2723427464_)))
                                             (if (gx#identifier?
                                                  _hd2723527468_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34834_|
                                                      _hd2723527468_)
                                                     (if (gx#stx-pair?
                                                          _tl2723627471_)
                                                         (let ((_e2723727474_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2723627471_)))
                   (let ((_hd2723827478_ (##car _e2723727474_))
                         (_tl2723927481_ (##cdr _e2723727474_)))
                     (if (gx#stx-null? _tl2723927481_)
                         ((lambda (_L27484_)
                            (cons 'datum: (cons (gx#stx-e _L27484_) '())))
                          _hd2723827478_)
                         (_g2712127457_ _g2712927461_))))
                 (_g2712127457_ _g2712927461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2712127457_
                                                      _g2712927461_))
                                                 (_g2712127457_
                                                  _g2712927461_))))
                                         (_g2712127457_ _g2712927461_))))
                                  (_g2711927547_
                                   (lambda (_g2712927501_)
                                     (if (gx#stx-pair? _g2712927501_)
                                         (let ((_e2722727504_
                                                (gx#syntax-e _g2712927501_)))
                                           (let ((_hd2722827508_
                                                  (##car _e2722727504_))
                                                 (_tl2722927511_
                                                  (##cdr _e2722727504_)))
                                             (if (gx#stx-pair? _tl2722927511_)
                                                 (let ((_e2723027514_
                                                        (gx#syntax-e
                                                         _tl2722927511_)))
                                                   (let ((_hd2723127518_
                                                          (##car _e2723027514_))
                                                         (_tl2723227521_
                                                          (##cdr _e2723027514_)))
                                                     (if (gx#stx-null?
                                                          _tl2723227521_)
                                                         ((lambda (_L27524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27526_)
                    (if (if (gx#identifier? _L27526_)
                            (let ((_$e27539_
                                   (gx#free-identifier=?
                                    _L27526_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e27539_
                                  _$e27539_
                                  (let ((_$e27543_
                                         (gx#free-identifier=?
                                          _L27526_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e27543_
                                        _$e27543_
                                        (gx#free-identifier=?
                                         _L27526_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L27526_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L27524_ '()))))
                                    '()))
                        (_g2712027497_ _g2712927501_)))
                  _hd2723127518_
                  _hd2722827508_)
                 (_g2712027497_ _g2712927501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2712027497_
                                                  _g2712927501_))))
                                         (_g2712027497_ _g2712927501_))))
                                  (_g2711827577_
                                   (lambda (_g2712927551_)
                                     (if (gx#stx-pair? _g2712927551_)
                                         (let ((_e2722227554_
                                                (gx#syntax-e _g2712927551_)))
                                           (let ((_hd2722327558_
                                                  (##car _e2722227554_))
                                                 (_tl2722427561_
                                                  (##cdr _e2722227554_)))
                                             ((lambda (_L27564_ _L27566_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L27566_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27566_)
                        (cons (_parse-class-body26760_ _L27564_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2711927547_
                                                     _g2712927551_)))
                                              _tl2722427561_
                                              _hd2722327558_)))
                                         (_g2711927547_ _g2712927551_))))
                                  (_g2711727607_
                                   (lambda (_g2712927581_)
                                     (if (gx#stx-pair? _g2712927581_)
                                         (let ((_e2721727584_
                                                (gx#syntax-e _g2712927581_)))
                                           (let ((_hd2721827588_
                                                  (##car _e2721727584_))
                                                 (_tl2721927591_
                                                  (##cdr _e2721727584_)))
                                             ((lambda (_L27594_ _L27596_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L27596_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27596_)
                        (cons (_parse-vector26758_ _L27594_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2711827577_
                                                     _g2712927581_)))
                                              _tl2721927591_
                                              _hd2721827588_)))
                                         (_g2711827577_ _g2712927581_))))
                                  (_g2711627670_
                                   (lambda (_g2712927611_)
                                     (if (gx#stx-vector? _g2712927611_)
                                         (let ((_e2720527614_
                                                (vector->list
                                                 (gx#syntax-e _g2712927611_))))
                                           (if (gx#stx-pair/null?
                                                _e2720527614_)
                                               (if (fx>= (gx#stx-length
                                                          _e2720527614_)
                                                         '0)
                                                   (let ((_g34835_
                                                          (gx#syntax-split-splice
                                                           _e2720527614_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34836_
                                                              (values-count
                                                               _g34835_)))
                                                         (if (not (fx= _g34836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34836_)))
               (let ((_target2720627618_ (values-ref _g34835_ 0))
                     (_tl2720827621_ (values-ref _g34835_ 1)))
                 (if (gx#stx-null? _tl2720827621_)
                     (letrec ((_loop2720927624_
                               (lambda (_hd2720727628_ _body2721327631_)
                                 (if (gx#stx-pair? _hd2720727628_)
                                     (let ((_e2721027634_
                                            (gx#syntax-e _hd2720727628_)))
                                       (let ((_lp-hd2721127638_
                                              (##car _e2721027634_))
                                             (_lp-tl2721227641_
                                              (##cdr _e2721027634_)))
                                         (_loop2720927624_
                                          _lp-tl2721227641_
                                          (cons _lp-hd2721127638_
                                                _body2721327631_))))
                                     (let ((_body2721427644_
                                            (reverse _body2721327631_)))
                                       ((lambda (_L27648_)
                                          (cons 'vector:
                                                (cons (_parse-vector26758_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2766127664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2766227667_)
                          (cons _g2766127664_ _g2766227667_))
                        '()
                        _L27648_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2721427644_))))))
                       (_loop2720927624_ _target2720627618_ '()))
                     (_g2711727607_ _g2712927611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2711727607_
                                                    _g2712927611_))
                                               (_g2711727607_ _g2712927611_)))
                                         (_g2711727607_ _g2712927611_))))
                                  (_g2711527698_
                                   (lambda (_g2712927674_)
                                     (if (gx#stx-pair? _g2712927674_)
                                         (let ((_e2720127677_
                                                (gx#syntax-e _g2712927674_)))
                                           (let ((_hd2720227681_
                                                  (##car _e2720127677_))
                                                 (_tl2720327684_
                                                  (##cdr _e2720127677_)))
                                             (if (gx#identifier?
                                                  _hd2720227681_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34837_|
                                                      _hd2720227681_)
                                                     ((lambda (_L27687_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector26758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27687_)
                            '())))
              _tl2720327684_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711627670_
                                                      _g2712927674_))
                                                 (_g2711627670_
                                                  _g2712927674_))))
                                         (_g2711627670_ _g2712927674_))))
                                  (_g2711427726_
                                   (lambda (_g2712927702_)
                                     (if (gx#stx-pair? _g2712927702_)
                                         (let ((_e2719727705_
                                                (gx#syntax-e _g2712927702_)))
                                           (let ((_hd2719827709_
                                                  (##car _e2719727705_))
                                                 (_tl2719927712_
                                                  (##cdr _e2719727705_)))
                                             (if (gx#identifier?
                                                  _hd2719827709_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34838_|
                                                      _hd2719827709_)
                                                     ((lambda (_L27715_)
                                                        (cons 'values:
                                                              (cons (_parse-vector26758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27715_)
                            '())))
              _tl2719927712_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711527698_
                                                      _g2712927702_))
                                                 (_g2711527698_
                                                  _g2712927702_))))
                                         (_g2711527698_ _g2712927702_))))
                                  (_g2711327766_
                                   (lambda (_g2712927730_)
                                     (if (gx#stx-pair? _g2712927730_)
                                         (let ((_e2719027733_
                                                (gx#syntax-e _g2712927730_)))
                                           (let ((_hd2719127737_
                                                  (##car _e2719027733_))
                                                 (_tl2719227740_
                                                  (##cdr _e2719027733_)))
                                             (if (gx#identifier?
                                                  _hd2719127737_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34839_|
                                                      _hd2719127737_)
                                                     (if (gx#stx-pair?
                                                          _tl2719227740_)
                                                         (let ((_e2719327743_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2719227740_)))
                   (let ((_hd2719427747_ (##car _e2719327743_))
                         (_tl2719527750_ (##cdr _e2719327743_)))
                     (if (gx#stx-null? _tl2719527750_)
                         ((lambda (_L27753_) (_parse126755_ _L27753_))
                          _hd2719427747_)
                         (_g2711427726_ _g2712927730_))))
                 (_g2711427726_ _g2712927730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711427726_
                                                      _g2712927730_))
                                                 (_g2711427726_
                                                  _g2712927730_))))
                                         (_g2711427726_ _g2712927730_))))
                                  (_g2711227787_
                                   (lambda (_g2712927770_)
                                     (if (gx#stx-box? _g2712927770_)
                                         (let ((_e2718827773_
                                                (unbox (gx#syntax-e
                                                        _g2712927770_))))
                                           ((lambda (_L27777_)
                                              (cons 'box:
                                                    (cons (_parse126755_
                                                           _L27777_)
                                                          '())))
                                            _e2718827773_))
                                         (_g2711327766_ _g2712927770_))))
                                  (_g2711127827_
                                   (lambda (_g2712927791_)
                                     (if (gx#stx-pair? _g2712927791_)
                                         (let ((_e2718127794_
                                                (gx#syntax-e _g2712927791_)))
                                           (let ((_hd2718227798_
                                                  (##car _e2718127794_))
                                                 (_tl2718327801_
                                                  (##cdr _e2718127794_)))
                                             (if (gx#identifier?
                                                  _hd2718227798_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34840_|
                                                      _hd2718227798_)
                                                     (if (gx#stx-pair?
                                                          _tl2718327801_)
                                                         (let ((_e2718427804_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2718327801_)))
                   (let ((_hd2718527808_ (##car _e2718427804_))
                         (_tl2718627811_ (##cdr _e2718427804_)))
                     (if (gx#stx-null? _tl2718627811_)
                         ((lambda (_L27814_)
                            (cons 'box: (cons (_parse126755_ _L27814_) '())))
                          _hd2718527808_)
                         (_g2711227787_ _g2712927791_))))
                 (_g2711227787_ _g2712927791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711227787_
                                                      _g2712927791_))
                                                 (_g2711227787_
                                                  _g2712927791_))))
                                         (_g2711227787_ _g2712927791_))))
                                  (_g2711027855_
                                   (lambda (_g2712927831_)
                                     (if (gx#stx-pair? _g2712927831_)
                                         (let ((_e2717727834_
                                                (gx#syntax-e _g2712927831_)))
                                           (let ((_hd2717827838_
                                                  (##car _e2717727834_))
                                                 (_tl2717927841_
                                                  (##cdr _e2717727834_)))
                                             (if (gx#identifier?
                                                  _hd2717827838_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34841_|
                                                      _hd2717827838_)
                                                     ((lambda (_L27844_)
                                                        (_parse-list26757_
                                                         _L27844_))
                                                      _tl2717927841_)
                                                     (_g2711127827_
                                                      _g2712927831_))
                                                 (_g2711127827_
                                                  _g2712927831_))))
                                         (_g2711127827_ _g2712927831_))))
                                  (_g2710927911_
                                   (lambda (_g2712927859_)
                                     (if (gx#stx-pair? _g2712927859_)
                                         (let ((_e2716727862_
                                                (gx#syntax-e _g2712927859_)))
                                           (let ((_hd2716827866_
                                                  (##car _e2716727862_))
                                                 (_tl2716927869_
                                                  (##cdr _e2716727862_)))
                                             (if (gx#identifier?
                                                  _hd2716827866_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34842_|
                                                      _hd2716827866_)
                                                     (if (gx#stx-pair?
                                                          _tl2716927869_)
                                                         (let ((_e2717027872_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2716927869_)))
                   (let ((_hd2717127876_ (##car _e2717027872_))
                         (_tl2717227879_ (##cdr _e2717027872_)))
                     (if (gx#stx-pair? _tl2717227879_)
                         (let ((_e2717327882_ (gx#syntax-e _tl2717227879_)))
                           (let ((_hd2717427886_ (##car _e2717327882_))
                                 (_tl2717527889_ (##cdr _e2717327882_)))
                             ((lambda (_L27892_ _L27894_ _L27895_)
                                (if (gx#stx-null? _L27892_)
                                    (cons 'cons:
                                          (cons (_parse126755_ _L27895_)
                                                (cons (_parse126755_ _L27894_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse126755_ _L27895_)
                                                (cons (_parse126755_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L27894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27892_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2717527889_
                              _hd2717427886_
                              _hd2717127876_)))
                         (_g2711027855_ _g2712927859_))))
                 (_g2711027855_ _g2712927859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2711027855_
                                                      _g2712927859_))
                                                 (_g2711027855_
                                                  _g2712927859_))))
                                         (_g2711027855_ _g2712927859_))))
                                  (_g2710827965_
                                   (lambda (_g2712927915_)
                                     (if (gx#stx-pair? _g2712927915_)
                                         (let ((_e2715527918_
                                                (gx#syntax-e _g2712927915_)))
                                           (let ((_hd2715627922_
                                                  (##car _e2715527918_))
                                                 (_tl2715727925_
                                                  (##cdr _e2715527918_)))
                                             (if (gx#identifier?
                                                  _hd2715627922_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34843_|
                                                      _hd2715627922_)
                                                     (if (gx#stx-pair?
                                                          _tl2715727925_)
                                                         (let ((_e2715827928_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2715727925_)))
                   (let ((_hd2715927932_ (##car _e2715827928_))
                         (_tl2716027935_ (##cdr _e2715827928_)))
                     (if (gx#stx-pair? _tl2716027935_)
                         (let ((_e2716127938_ (gx#syntax-e _tl2716027935_)))
                           (let ((_hd2716227942_ (##car _e2716127938_))
                                 (_tl2716327945_ (##cdr _e2716127938_)))
                             (if (gx#stx-null? _tl2716327945_)
                                 ((lambda (_L27948_ _L27950_)
                                    (cons 'cons:
                                          (cons (_parse126755_ _L27950_)
                                                (cons (_parse126755_ _L27948_)
                                                      '()))))
                                  _hd2716227942_
                                  _hd2715927932_)
                                 (_g2710927911_ _g2712927915_))))
                         (_g2710927911_ _g2712927915_))))
                 (_g2710927911_ _g2712927915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2710927911_
                                                      _g2712927915_))
                                                 (_g2710927911_
                                                  _g2712927915_))))
                                         (_g2710927911_ _g2712927915_))))
                                  (_g2710728005_
                                   (lambda (_g2712927969_)
                                     (if (gx#stx-pair? _g2712927969_)
                                         (let ((_e2714727972_
                                                (gx#syntax-e _g2712927969_)))
                                           (let ((_hd2714827976_
                                                  (##car _e2714727972_))
                                                 (_tl2714927979_
                                                  (##cdr _e2714727972_)))
                                             (if (gx#identifier?
                                                  _hd2714827976_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34844_|
                                                      _hd2714827976_)
                                                     (if (gx#stx-pair?
                                                          _tl2714927979_)
                                                         (let ((_e2715027982_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2714927979_)))
                   (let ((_hd2715127986_ (##car _e2715027982_))
                         (_tl2715227989_ (##cdr _e2715027982_)))
                     (if (gx#stx-null? _tl2715227989_)
                         ((lambda (_L27992_)
                            (cons 'not: (cons (_parse126755_ _L27992_) '())))
                          _hd2715127986_)
                         (_g2710827965_ _g2712927969_))))
                 (_g2710827965_ _g2712927969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2710827965_
                                                      _g2712927969_))
                                                 (_g2710827965_
                                                  _g2712927969_))))
                                         (_g2710827965_ _g2712927969_))))
                                  (_g2710628090_
                                   (lambda (_g2712928009_)
                                     (if (gx#stx-pair? _g2712928009_)
                                         (let ((_e2714328012_
                                                (gx#syntax-e _g2712928009_)))
                                           (let ((_hd2714428016_
                                                  (##car _e2714328012_))
                                                 (_tl2714528019_
                                                  (##cdr _e2714328012_)))
                                             (if (gx#identifier?
                                                  _hd2714428016_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34845_|
                                                      _hd2714428016_)
                                                     ((lambda (_L28022_)
                                                        (if (gx#stx-list?
                                                             _L28022_)
                                                            (let* ((_g2803428045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2803528041_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2803528041_)))
                           (_g2803328056_
                            (lambda (_g2803528049_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse126755_ _L28022_))))))
                           (_g2803228086_
                            (lambda (_g2803528060_)
                              (if (gx#stx-pair? _g2803528060_)
                                  (let ((_e2803728063_
                                         (gx#syntax-e _g2803528060_)))
                                    (let ((_hd2803828067_
                                           (##car _e2803728063_))
                                          (_tl2803928070_
                                           (##cdr _e2803728063_)))
                                      (if (gx#stx-null? _tl2803928070_)
                                          ((lambda (_L28073_)
                                             (_parse126755_ _L28073_))
                                           _hd2803828067_)
                                          (_g2803328056_ _g2803528060_))))
                                  (_g2803328056_ _g2803528060_)))))
                      (_g2803228086_ _L28022_))
                    (_g2710728005_ _g2712928009_)))
              _tl2714528019_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2710728005_
                                                      _g2712928009_))
                                                 (_g2710728005_
                                                  _g2712928009_))))
                                         (_g2710728005_ _g2712928009_))))
                                  (_g2710528175_
                                   (lambda (_g2712928094_)
                                     (if (gx#stx-pair? _g2712928094_)
                                         (let ((_e2713928097_
                                                (gx#syntax-e _g2712928094_)))
                                           (let ((_hd2714028101_
                                                  (##car _e2713928097_))
                                                 (_tl2714128104_
                                                  (##cdr _e2713928097_)))
                                             (if (gx#identifier?
                                                  _hd2714028101_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34846_|
                                                      _hd2714028101_)
                                                     ((lambda (_L28107_)
                                                        (if (gx#stx-list?
                                                             _L28107_)
                                                            (let* ((_g2811928130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2812028126_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2812028126_)))
                           (_g2811828141_
                            (lambda (_g2812028134_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse126755_ _L28107_))))))
                           (_g2811728171_
                            (lambda (_g2812028145_)
                              (if (gx#stx-pair? _g2812028145_)
                                  (let ((_e2812228148_
                                         (gx#syntax-e _g2812028145_)))
                                    (let ((_hd2812328152_
                                           (##car _e2812228148_))
                                          (_tl2812428155_
                                           (##cdr _e2812228148_)))
                                      (if (gx#stx-null? _tl2812428155_)
                                          ((lambda (_L28158_)
                                             (_parse126755_ _L28158_))
                                           _hd2812328152_)
                                          (_g2811828141_ _g2812028145_))))
                                  (_g2811828141_ _g2812028145_)))))
                      (_g2811728171_ _L28107_))
                    (_g2710628090_ _g2712928094_)))
              _tl2714128104_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2710628090_
                                                      _g2712928094_))
                                                 (_g2710628090_
                                                  _g2712928094_))))
                                         (_g2710628090_ _g2712928094_))))
                                  (_g2710428415_
                                   (lambda (_g2712928179_)
                                     (if (gx#stx-pair? _g2712928179_)
                                         (let ((_e2713228182_
                                                (gx#syntax-e _g2712928179_)))
                                           (let ((_hd2713328186_
                                                  (##car _e2713228182_))
                                                 (_tl2713428189_
                                                  (##cdr _e2713228182_)))
                                             (if (gx#identifier?
                                                  _hd2713328186_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34847_|
                                                      _hd2713328186_)
                                                     (if (gx#stx-pair?
                                                          _tl2713428189_)
                                                         (let ((_e2713528192_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2713428189_)))
                   (let ((_hd2713628196_ (##car _e2713528192_))
                         (_tl2713728199_ (##cdr _e2713528192_)))
                     ((lambda (_L28202_ _L28204_)
                        (let* ((_g2822128253_
                                (lambda (_g2822228249_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2822228249_)))
                               (_g2822028264_
                                (lambda (_g2822228257_)
                                  ((lambda ()
                                     (_parse-error26762_ _hd27102_)))))
                               (_g2821928332_
                                (lambda (_g2822228268_)
                                  (if (gx#stx-pair? _g2822228268_)
                                      (let ((_e2823628271_
                                             (gx#syntax-e _g2822228268_)))
                                        (let ((_hd2823728275_
                                               (##car _e2823628271_))
                                              (_tl2823828278_
                                               (##cdr _e2823628271_)))
                                          (if (gx#stx-datum? _hd2823728275_)
                                              (if (equal? (gx#stx-e
                                                           _hd2823728275_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2823828278_)
                                                      (let ((_e2823928281_
                                                             (gx#syntax-e
                                                              _tl2823828278_)))
                                                        (let ((_hd2824028285_
                                                               (##car _e2823928281_))
                                                              (_tl2824128288_
                                                               (##cdr _e2823928281_)))
                                                          (if (gx#stx-pair?
                                                               _tl2824128288_)
                                                              (let ((_e2824228291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2824128288_)))
                        (let ((_hd2824328295_ (##car _e2824228291_))
                              (_tl2824428298_ (##cdr _e2824228291_)))
                          (if (gx#identifier? _hd2824328295_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34848_|
                                   _hd2824328295_)
                                  (if (gx#stx-pair? _tl2824428298_)
                                      (let ((_e2824528301_
                                             (gx#syntax-e _tl2824428298_)))
                                        (let ((_hd2824628305_
                                               (##car _e2824528301_))
                                              (_tl2824728308_
                                               (##cdr _e2824528301_)))
                                          (if (gx#stx-null? _tl2824728308_)
                                              ((lambda (_L28311_ _L28313_)
                                                 (cons '?:
                                                       (cons _L28204_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28313_
                                 (cons '=>:
                                       (cons (_parse126755_ _L28311_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2824628305_
                                               _hd2824028285_)
                                              (_g2822028264_ _g2822228268_))))
                                      (_g2822028264_ _g2822228268_))
                                  (_g2822028264_ _g2822228268_))
                              (_g2822028264_ _g2822228268_))))
                      (_g2822028264_ _g2822228268_))))
              (_g2822028264_ _g2822228268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2822028264_
                                                   _g2822228268_))
                                              (_g2822028264_ _g2822228268_))))
                                      (_g2822028264_ _g2822228268_))))
                               (_g2821828372_
                                (lambda (_g2822228336_)
                                  (if (gx#stx-pair? _g2822228336_)
                                      (let ((_e2822828339_
                                             (gx#syntax-e _g2822228336_)))
                                        (let ((_hd2822928343_
                                               (##car _e2822828339_))
                                              (_tl2823028346_
                                               (##cdr _e2822828339_)))
                                          (if (gx#identifier? _hd2822928343_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34849_|
                                                   _hd2822928343_)
                                                  (if (gx#stx-pair?
                                                       _tl2823028346_)
                                                      (let ((_e2823128349_
                                                             (gx#syntax-e
                                                              _tl2823028346_)))
                                                        (let ((_hd2823228353_
                                                               (##car _e2823128349_))
                                                              (_tl2823328356_
                                                               (##cdr _e2823128349_)))
                                                          (if (gx#stx-null?
                                                               _tl2823328356_)
                                                              ((lambda (_L28359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28204_
                                     (cons '=>:
                                           (cons (_parse126755_ _L28359_)
                                                 '())))))
                       _hd2823228353_)
                      (_g2821928332_ _g2822228336_))))
              (_g2821928332_ _g2822228336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2821928332_
                                                   _g2822228336_))
                                              (_g2821928332_ _g2822228336_))))
                                      (_g2821928332_ _g2822228336_))))
                               (_g2821728400_
                                (lambda (_g2822228376_)
                                  (if (gx#stx-pair? _g2822228376_)
                                      (let ((_e2822428379_
                                             (gx#syntax-e _g2822228376_)))
                                        (let ((_hd2822528383_
                                               (##car _e2822428379_))
                                              (_tl2822628386_
                                               (##cdr _e2822428379_)))
                                          (if (gx#stx-null? _tl2822628386_)
                                              ((lambda (_L28389_)
                                                 (cons '?:
                                                       (cons _L28204_
                                                             (cons (_parse126755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28389_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2822528383_)
                                              (_g2821828372_ _g2822228376_))))
                                      (_g2821828372_ _g2822228376_))))
                               (_g2821628411_
                                (lambda (_g2822228404_)
                                  (if (gx#stx-null? _g2822228404_)
                                      ((lambda ()
                                         (cons '?: (cons _L28204_ '()))))
                                      (_g2821728400_ _g2822228404_)))))
                          (_g2821628411_ _L28202_)))
                      _tl2713728199_
                      _hd2713628196_)))
                 (_g2710528175_ _g2712928179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2710528175_
                                                      _g2712928179_))
                                                 (_g2710528175_
                                                  _g2712928179_))))
                                         (_g2710528175_ _g2712928179_)))))
                             (_g2710428415_ _hd27102_))))
                        (_parse-list26757_
                         (lambda (_body26937_)
                           (let* ((_g2694326971_
                                   (lambda (_g2694426967_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2694426967_)))
                                  (_g2694226982_
                                   (lambda (_g2694426975_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body26937_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body26937_))
                                                (_parse126755_ _body26937_)
                                                (_parse-error26762_
                                                 _body26937_)))))))
                                  (_g2694127014_
                                   (lambda (_g2694426986_)
                                     (if (gx#stx-pair? _g2694426986_)
                                         (let ((_e2696326989_
                                                (gx#syntax-e _g2694426986_)))
                                           (let ((_hd2696426993_
                                                  (##car _e2696326989_))
                                                 (_tl2696526996_
                                                  (##cdr _e2696326989_)))
                                             ((lambda (_L26999_ _L27001_)
                                                (if (not (gx#ellipsis?
                                                          _L27001_))
                                                    (cons 'cons:
                                                          (cons (_parse126755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27001_)
                        (cons (_parse-list26757_ _L26999_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2694226982_
                                                     _g2694426986_)))
                                              _tl2696526996_
                                              _hd2696426993_)))
                                         (_g2694226982_ _g2694426986_))))
                                  (_g2694027058_
                                   (lambda (_g2694427018_)
                                     (if (gx#stx-pair? _g2694427018_)
                                         (let ((_e2695527021_
                                                (gx#syntax-e _g2694427018_)))
                                           (let ((_hd2695627025_
                                                  (##car _e2695527021_))
                                                 (_tl2695727028_
                                                  (##cdr _e2695527021_)))
                                             (if (gx#stx-pair? _tl2695727028_)
                                                 (let ((_e2695827031_
                                                        (gx#syntax-e
                                                         _tl2695727028_)))
                                                   (let ((_hd2695927035_
                                                          (##car _e2695827031_))
                                                         (_tl2696027038_
                                                          (##cdr _e2695827031_)))
                                                     ((lambda (_L27041_
                                                               _L27043_
                                                               _L27044_)
                                                        (if (gx#ellipsis?
                                                             _L27043_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse126755_ _L27044_)
                                (cons (_parse-list26757_ _L27041_) '())))
                    (_g2694127014_ _g2694427018_)))
              _tl2696027038_
              _hd2695927035_
              _hd2695627025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2694127014_
                                                  _g2694427018_))))
                                         (_g2694127014_ _g2694427018_))))
                                  (_g2693927098_
                                   (lambda (_g2694427062_)
                                     (if (gx#stx-pair? _g2694427062_)
                                         (let ((_e2694627065_
                                                (gx#syntax-e _g2694427062_)))
                                           (let ((_hd2694727069_
                                                  (##car _e2694627065_))
                                                 (_tl2694827072_
                                                  (##cdr _e2694627065_)))
                                             (if (gx#stx-datum? _hd2694727069_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2694727069_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2694827072_)
                                                         (let ((_e2694927075_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2694827072_)))
                   (let ((_hd2695027079_ (##car _e2694927075_))
                         (_tl2695127082_ (##cdr _e2694927075_)))
                     (if (gx#stx-null? _tl2695127082_)
                         ((lambda (_L27085_) (_parse126755_ _L27085_))
                          _hd2695027079_)
                         (_g2694027058_ _g2694427062_))))
                 (_g2694027058_ _g2694427062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2694027058_
                                                      _g2694427062_))
                                                 (_g2694027058_
                                                  _g2694427062_))))
                                         (_g2694027058_ _g2694427062_)))))
                             (_g2693927098_ _body26937_))))
                        (_parse-vector26758_
                         (lambda (_body26934_)
                           (if (_simple-vector?26759_ _body26934_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse126755_
                                            _body26934_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list26757_ _body26934_)
                                           '())))))
                        (_simple-vector?26759_
                         (lambda (_body26871_)
                           (let* ((_g2687526887_
                                   (lambda (_g2687626883_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2687626883_)))
                                  (_g2687426898_
                                   (lambda (_g2687626891_)
                                     ((lambda () (gx#stx-null? _body26871_)))))
                                  (_g2687326930_
                                   (lambda (_g2687626902_)
                                     (if (gx#stx-pair? _g2687626902_)
                                         (let ((_e2687926905_
                                                (gx#syntax-e _g2687626902_)))
                                           (let ((_hd2688026909_
                                                  (##car _e2687926905_))
                                                 (_tl2688126912_
                                                  (##cdr _e2687926905_)))
                                             ((lambda (_L26915_ _L26917_)
                                                (if (not (gx#ellipsis?
                                                          _L26917_))
                                                    (_simple-vector?26759_
                                                     _L26915_)
                                                    '#f))
                                              _tl2688126912_
                                              _hd2688026909_)))
                                         (_g2687426898_ _g2687626902_)))))
                             (_g2687326930_ _body26871_))))
                        (_parse-class-body26760_
                         (lambda (_body26780_)
                           (let _recur26783_ ((_rest26786_ _body26780_))
                             (let* ((_g2679026806_
                                     (lambda (_g2679126802_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2679126802_)))
                                    (_g2678926817_
                                     (lambda (_g2679126810_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest26786_)
                                              '()
                                              (_parse-error26762_
                                               _rest26786_))))))
                                    (_g2678826867_
                                     (lambda (_g2679126821_)
                                       (if (gx#stx-pair? _g2679126821_)
                                           (let ((_e2679526824_
                                                  (gx#syntax-e _g2679126821_)))
                                             (let ((_hd2679626828_
                                                    (##car _e2679526824_))
                                                   (_tl2679726831_
                                                    (##cdr _e2679526824_)))
                                               (if (gx#stx-pair?
                                                    _tl2679726831_)
                                                   (let ((_e2679826834_
                                                          (gx#syntax-e
                                                           _tl2679726831_)))
                                                     (let ((_hd2679926838_
                                                            (##car _e2679826834_))
                                                           (_tl2680026841_
                                                            (##cdr _e2679826834_)))
                                                       ((lambda (_L26844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26846_
                         _L26847_)
                  (if (gx#stx-keyword? _L26847_)
                      (cons* _L26847_
                             (_parse126755_ _L26846_)
                             (_recur26783_ _L26844_))
                      (_g2678926817_ _g2679126821_)))
                _tl2680026841_
                _hd2679926838_
                _hd2679626828_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2678926817_
                                                    _g2679126821_))))
                                           (_g2678926817_ _g2679126821_)))))
                               (_g2678826867_ _rest26786_)))))
                        (_parse-qq26761_
                         (lambda (_hd26767_)
                           (let ((_g2676926776_
                                  (lambda (_g2677026772_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2677026772_))))
                             (_g2676926776_ _hd26767_))))
                        (_parse-error26762_
                         (lambda (_hd26764_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx26753_
                                      (cons _match-stx26753_
                                            (cons _stx26751_
                                                  (cons _hd26764_ '())))
                                      (cons _stx26751_
                                            (cons _hd26764_ '())))))))
                 (_parse126755_ _stx26751_)))))
        (lambda _g34851_
          (let ((_g34850_ (length _g34851_)))
            (cond ((fx= _g34850_ 1)
                   (apply (lambda (_stx28423_)
                            (let ((_match-stx28426_ '#f))
                              (_opt-lambda2674928419_
                               _stx28423_
                               _match-stx28426_)))
                          _g34851_))
                  ((fx= _g34850_ 2) (apply _opt-lambda2674928419_ _g34851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g34851_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx26735_)
        (call-with-escape
         (lambda (_E26739_)
           (with-exception-handler
            (let ((_E!26742_ (current-exception-handler)))
              (lambda (_e26745_)
                (if (gx#syntax-error? _e26745_)
                    (_E26739_ '#f)
                    (_E!26742_ _e26745_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx26735_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree25524_)
        (letrec ((_loop25527_
                  (lambda (_ptree25802_ _vars25804_ _K25805_)
                    (let* ((_g2581825919_
                            (lambda (_g2581925915_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2581925915_)))
                           (_g2581725930_
                            (lambda (_g2581925923_)
                              ((lambda () (_K25805_ _vars25804_)))))
                           (_g2581625977_
                            (lambda (_g2581925934_)
                              (if (gx#stx-pair? _g2581925934_)
                                  (let ((_e2590825937_
                                         (gx#syntax-e _g2581925934_)))
                                    (let ((_hd2590925941_
                                           (##car _e2590825937_))
                                          (_tl2591025944_
                                           (##cdr _e2590825937_)))
                                      (if (gx#stx-datum? _hd2590925941_)
                                          (if (equal? (gx#stx-e _hd2590925941_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2591025944_)
                                                  (let ((_e2591125947_
                                                         (gx#syntax-e
                                                          _tl2591025944_)))
                                                    (let ((_hd2591225951_
                                                           (##car _e2591125947_))
                                                          (_tl2591325954_
                                                           (##cdr _e2591125947_)))
                                                      (if (gx#stx-null?
                                                           _tl2591325954_)
                                                          ((lambda (_L25957_)
                                                             (if (find (lambda (_g2597125973_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2597125973_
                                  _L25957_))
                               _vars25804_)
                         (_K25805_ _vars25804_)
                         (_K25805_ (cons _L25957_ _vars25804_))))
                   _hd2591225951_)
                  (_g2581725930_ _g2581925934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581725930_
                                                   _g2581925934_))
                                              (_g2581725930_ _g2581925934_))
                                          (_g2581725930_ _g2581925934_))))
                                  (_g2581725930_ _g2581925934_))))
                           (_g2581526031_
                            (lambda (_g2581925981_)
                              (if (gx#stx-pair? _g2581925981_)
                                  (let ((_e2589825984_
                                         (gx#syntax-e _g2581925981_)))
                                    (let ((_hd2589925988_
                                           (##car _e2589825984_))
                                          (_tl2590025991_
                                           (##cdr _e2589825984_)))
                                      (if (gx#stx-datum? _hd2589925988_)
                                          (if (equal? (gx#stx-e _hd2589925988_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2590025991_)
                                                  (let ((_e2590125994_
                                                         (gx#syntax-e
                                                          _tl2590025991_)))
                                                    (let ((_hd2590225998_
                                                           (##car _e2590125994_))
                                                          (_tl2590326001_
                                                           (##cdr _e2590125994_)))
                                                      (if (gx#stx-pair?
                                                           _tl2590326001_)
                                                          (let ((_e2590426004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2590326001_)))
                    (let ((_hd2590526008_ (##car _e2590426004_))
                          (_tl2590626011_ (##cdr _e2590426004_)))
                      (if (gx#stx-null? _tl2590626011_)
                          ((lambda (_L26014_ _L26016_)
                             (_loop25527_ _L26014_ _vars25804_ _K25805_))
                           _hd2590526008_
                           _hd2590225998_)
                          (_g2581625977_ _g2581925981_))))
                  (_g2581625977_ _g2581925981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581625977_
                                                   _g2581925981_))
                                              (_g2581625977_ _g2581925981_))
                                          (_g2581625977_ _g2581925981_))))
                                  (_g2581625977_ _g2581925981_))))
                           (_g2581426083_
                            (lambda (_g2581926035_)
                              (if (gx#stx-pair? _g2581926035_)
                                  (let ((_e2588726038_
                                         (gx#syntax-e _g2581926035_)))
                                    (let ((_hd2588826042_
                                           (##car _e2588726038_))
                                          (_tl2588926045_
                                           (##cdr _e2588726038_)))
                                      (if (gx#stx-datum? _hd2588826042_)
                                          (if (equal? (gx#stx-e _hd2588826042_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2588926045_)
                                                  (let ((_e2589026048_
                                                         (gx#syntax-e
                                                          _tl2588926045_)))
                                                    (let ((_hd2589126052_
                                                           (##car _e2589026048_))
                                                          (_tl2589226055_
                                                           (##cdr _e2589026048_)))
                                                      (if (gx#stx-pair?
                                                           _tl2589226055_)
                                                          (let ((_e2589326058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2589226055_)))
                    (let ((_hd2589426062_ (##car _e2589326058_))
                          (_tl2589526065_ (##cdr _e2589326058_)))
                      (if (gx#stx-null? _tl2589526065_)
                          ((lambda (_L26068_)
                             (_loop-class-list25531_
                              _L26068_
                              _vars25804_
                              _K25805_))
                           _hd2589426062_)
                          (_g2581526031_ _g2581926035_))))
                  (_g2581526031_ _g2581926035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581526031_
                                                   _g2581926035_))
                                              (_g2581526031_ _g2581926035_))
                                          (_g2581526031_ _g2581926035_))))
                                  (_g2581526031_ _g2581926035_))))
                           (_g2581326135_
                            (lambda (_g2581926087_)
                              (if (gx#stx-pair? _g2581926087_)
                                  (let ((_e2587726090_
                                         (gx#syntax-e _g2581926087_)))
                                    (let ((_hd2587826094_
                                           (##car _e2587726090_))
                                          (_tl2587926097_
                                           (##cdr _e2587726090_)))
                                      (if (gx#stx-datum? _hd2587826094_)
                                          (if (equal? (gx#stx-e _hd2587826094_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2587926097_)
                                                  (let ((_e2588026100_
                                                         (gx#syntax-e
                                                          _tl2587926097_)))
                                                    (let ((_hd2588126104_
                                                           (##car _e2588026100_))
                                                          (_tl2588226107_
                                                           (##cdr _e2588026100_)))
                                                      (if (gx#stx-pair?
                                                           _tl2588226107_)
                                                          (let ((_e2588326110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2588226107_)))
                    (let ((_hd2588426114_ (##car _e2588326110_))
                          (_tl2588526117_ (##cdr _e2588326110_)))
                      (if (gx#stx-null? _tl2588526117_)
                          ((lambda (_L26120_)
                             (_loop-vector25529_
                              _L26120_
                              _vars25804_
                              _K25805_))
                           _hd2588426114_)
                          (_g2581426083_ _g2581926087_))))
                  (_g2581426083_ _g2581926087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581426083_
                                                   _g2581926087_))
                                              (_g2581426083_ _g2581926087_))
                                          (_g2581426083_ _g2581926087_))))
                                  (_g2581426083_ _g2581926087_))))
                           (_g2581226181_
                            (lambda (_g2581926139_)
                              (if (gx#stx-pair? _g2581926139_)
                                  (let ((_e2587026142_
                                         (gx#syntax-e _g2581926139_)))
                                    (let ((_hd2587126146_
                                           (##car _e2587026142_))
                                          (_tl2587226149_
                                           (##cdr _e2587026142_)))
                                      (if (gx#stx-pair? _tl2587226149_)
                                          (let ((_e2587326152_
                                                 (gx#syntax-e _tl2587226149_)))
                                            (let ((_hd2587426156_
                                                   (##car _e2587326152_))
                                                  (_tl2587526159_
                                                   (##cdr _e2587326152_)))
                                              (if (gx#stx-null? _tl2587526159_)
                                                  ((lambda (_L26162_ _L26164_)
                                                     (if (let ((_$e26177_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26164_)))
                   (if _$e26177_ _$e26177_ (gx#stx-eq? 'vector: _L26164_)))
                 (_loop-vector25529_ _L26162_ _vars25804_ _K25805_)
                 (_g2581326135_ _g2581926139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2587426156_
                                                   _hd2587126146_)
                                                  (_g2581326135_
                                                   _g2581926139_))))
                                          (_g2581326135_ _g2581926139_))))
                                  (_g2581326135_ _g2581926139_))))
                           (_g2581126221_
                            (lambda (_g2581926185_)
                              (if (gx#stx-pair? _g2581926185_)
                                  (let ((_e2586226188_
                                         (gx#syntax-e _g2581926185_)))
                                    (let ((_hd2586326192_
                                           (##car _e2586226188_))
                                          (_tl2586426195_
                                           (##cdr _e2586226188_)))
                                      (if (gx#stx-datum? _hd2586326192_)
                                          (if (equal? (gx#stx-e _hd2586326192_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2586426195_)
                                                  (let ((_e2586526198_
                                                         (gx#syntax-e
                                                          _tl2586426195_)))
                                                    (let ((_hd2586626202_
                                                           (##car _e2586526198_))
                                                          (_tl2586726205_
                                                           (##cdr _e2586526198_)))
                                                      (if (gx#stx-null?
                                                           _tl2586726205_)
                                                          ((lambda (_L26208_)
                                                             (_loop25527_
                                                              _L26208_
                                                              _vars25804_
                                                              _K25805_))
                                                           _hd2586626202_)
                                                          (_g2581226181_
                                                           _g2581926185_))))
                                                  (_g2581226181_
                                                   _g2581926185_))
                                              (_g2581226181_ _g2581926185_))
                                          (_g2581226181_ _g2581926185_))))
                                  (_g2581226181_ _g2581926185_))))
                           (_g2581026280_
                            (lambda (_g2581926225_)
                              (if (gx#stx-pair? _g2581926225_)
                                  (let ((_e2585226228_
                                         (gx#syntax-e _g2581926225_)))
                                    (let ((_hd2585326232_
                                           (##car _e2585226228_))
                                          (_tl2585426235_
                                           (##cdr _e2585226228_)))
                                      (if (gx#stx-datum? _hd2585326232_)
                                          (if (equal? (gx#stx-e _hd2585326232_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2585426235_)
                                                  (let ((_e2585526238_
                                                         (gx#syntax-e
                                                          _tl2585426235_)))
                                                    (let ((_hd2585626242_
                                                           (##car _e2585526238_))
                                                          (_tl2585726245_
                                                           (##cdr _e2585526238_)))
                                                      (if (gx#stx-pair?
                                                           _tl2585726245_)
                                                          (let ((_e2585826248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2585726245_)))
                    (let ((_hd2585926252_ (##car _e2585826248_))
                          (_tl2586026255_ (##cdr _e2585826248_)))
                      (if (gx#stx-null? _tl2586026255_)
                          ((lambda (_L26258_ _L26260_)
                             (_loop25527_
                              _L26260_
                              _vars25804_
                              (lambda (_g2627426276_)
                                (_loop25527_
                                 _L26258_
                                 _g2627426276_
                                 _K25805_))))
                           _hd2585926252_
                           _hd2585626242_)
                          (_g2581126221_ _g2581926225_))))
                  (_g2581126221_ _g2581926225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581126221_
                                                   _g2581926225_))
                                              (_g2581126221_ _g2581926225_))
                                          (_g2581126221_ _g2581926225_))))
                                  (_g2581126221_ _g2581926225_))))
                           (_g2580926339_
                            (lambda (_g2581926284_)
                              (if (gx#stx-pair? _g2581926284_)
                                  (let ((_e2584126287_
                                         (gx#syntax-e _g2581926284_)))
                                    (let ((_hd2584226291_
                                           (##car _e2584126287_))
                                          (_tl2584326294_
                                           (##cdr _e2584126287_)))
                                      (if (gx#stx-datum? _hd2584226291_)
                                          (if (equal? (gx#stx-e _hd2584226291_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2584326294_)
                                                  (let ((_e2584426297_
                                                         (gx#syntax-e
                                                          _tl2584326294_)))
                                                    (let ((_hd2584526301_
                                                           (##car _e2584426297_))
                                                          (_tl2584626304_
                                                           (##cdr _e2584426297_)))
                                                      (if (gx#stx-pair?
                                                           _tl2584626304_)
                                                          (let ((_e2584726307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2584626304_)))
                    (let ((_hd2584826311_ (##car _e2584726307_))
                          (_tl2584926314_ (##cdr _e2584726307_)))
                      (if (gx#stx-null? _tl2584926314_)
                          ((lambda (_L26317_ _L26319_)
                             (_loop25527_
                              _L26319_
                              _vars25804_
                              (lambda (_g2633326335_)
                                (_loop25527_
                                 _L26317_
                                 _g2633326335_
                                 _K25805_))))
                           _hd2584826311_
                           _hd2584526301_)
                          (_g2581026280_ _g2581926284_))))
                  (_g2581026280_ _g2581926284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2581026280_
                                                   _g2581926284_))
                                              (_g2581026280_ _g2581926284_))
                                          (_g2581026280_ _g2581926284_))))
                                  (_g2581026280_ _g2581926284_))))
                           (_g2580826379_
                            (lambda (_g2581926343_)
                              (if (gx#stx-pair? _g2581926343_)
                                  (let ((_e2583326346_
                                         (gx#syntax-e _g2581926343_)))
                                    (let ((_hd2583426350_
                                           (##car _e2583326346_))
                                          (_tl2583526353_
                                           (##cdr _e2583326346_)))
                                      (if (gx#stx-datum? _hd2583426350_)
                                          (if (equal? (gx#stx-e _hd2583426350_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2583526353_)
                                                  (let ((_e2583626356_
                                                         (gx#syntax-e
                                                          _tl2583526353_)))
                                                    (let ((_hd2583726360_
                                                           (##car _e2583626356_))
                                                          (_tl2583826363_
                                                           (##cdr _e2583626356_)))
                                                      (if (gx#stx-null?
                                                           _tl2583826363_)
                                                          ((lambda (_L26366_)
                                                             (_loop25527_
                                                              _L26366_
                                                              _vars25804_
                                                              _K25805_))
                                                           _hd2583726360_)
                                                          (_g2580926339_
                                                           _g2581926343_))))
                                                  (_g2580926339_
                                                   _g2581926343_))
                                              (_g2580926339_ _g2581926343_))
                                          (_g2580926339_ _g2581926343_))))
                                  (_g2580926339_ _g2581926343_))))
                           (_g2580726478_
                            (lambda (_g2581926383_)
                              (if (gx#stx-pair? _g2581926383_)
                                  (let ((_e2582926386_
                                         (gx#syntax-e _g2581926383_)))
                                    (let ((_hd2583026390_
                                           (##car _e2582926386_))
                                          (_tl2583126393_
                                           (##cdr _e2582926386_)))
                                      ((lambda (_L26396_ _L26398_)
                                         (if (let ((_$e26409_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26398_)))
                                               (if _$e26409_
                                                   _$e26409_
                                                   (gx#stx-eq? 'or: _L26398_)))
                                             (let* ((_g2641426426_
                                                     (lambda (_g2641526422_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2641526422_)))
                                                    (_g2641326437_
                                                     (lambda (_g2641526430_)
                                                       ((lambda ()
                                                          (_K25805_
                                                           _vars25804_)))))
                                                    (_g2641226474_
                                                     (lambda (_g2641526441_)
                                                       (if (gx#stx-pair?
                                                            _g2641526441_)
                                                           (let ((_e2641826444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2641526441_)))
                     (let ((_hd2641926448_ (##car _e2641826444_))
                           (_tl2642026451_ (##cdr _e2641826444_)))
                       ((lambda (_L26454_ _L26456_)
                          (_loop25527_
                           _L26456_
                           _vars25804_
                           (lambda (_g2646826470_)
                             (_loop25527_
                              (cons _L26398_ _L26454_)
                              _g2646826470_
                              _K25805_))))
                        _tl2642026451_
                        _hd2641926448_)))
                   (_g2641326437_ _g2641526441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2641226474_ _L26396_))
                                             (_g2580826379_ _g2581926383_)))
                                       _tl2583126393_
                                       _hd2583026390_)))
                                  (_g2580826379_ _g2581926383_))))
                           (_g2580626731_
                            (lambda (_g2581926482_)
                              (if (gx#stx-pair? _g2581926482_)
                                  (let ((_e2582126485_
                                         (gx#syntax-e _g2581926482_)))
                                    (let ((_hd2582226489_
                                           (##car _e2582126485_))
                                          (_tl2582326492_
                                           (##cdr _e2582126485_)))
                                      (if (gx#stx-datum? _hd2582226489_)
                                          (if (equal? (gx#stx-e _hd2582226489_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2582326492_)
                                                  (let ((_e2582426495_
                                                         (gx#syntax-e
                                                          _tl2582326492_)))
                                                    (let ((_hd2582526499_
                                                           (##car _e2582426495_))
                                                          (_tl2582626502_
                                                           (##cdr _e2582426495_)))
                                                      ((lambda (_L26505_)
                                                         (let* ((_g2652126558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2652226554_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2652226554_)))
                        (_g2652026569_
                         (lambda (_g2652226562_)
                           ((lambda () (_K25805_ _vars25804_)))))
                        (_g2651926647_
                         (lambda (_g2652226573_)
                           (if (gx#stx-pair? _g2652226573_)
                               (let ((_e2653826576_
                                      (gx#syntax-e _g2652226573_)))
                                 (let ((_hd2653926580_ (##car _e2653826576_))
                                       (_tl2654026583_ (##cdr _e2653826576_)))
                                   (if (gx#stx-pair? _tl2654026583_)
                                       (let ((_e2654126586_
                                              (gx#syntax-e _tl2654026583_)))
                                         (let ((_hd2654226590_
                                                (##car _e2654126586_))
                                               (_tl2654326593_
                                                (##cdr _e2654126586_)))
                                           (if (gx#stx-datum? _hd2654226590_)
                                               (if (equal? (gx#stx-e
                                                            _hd2654226590_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2654326593_)
                                                       (let ((_e2654426596_
                                                              (gx#syntax-e
                                                               _tl2654326593_)))
                                                         (let ((_hd2654526600_
                                                                (##car _e2654426596_))
                                                               (_tl2654626603_
                                                                (##cdr _e2654426596_)))
                                                           (if (gx#stx-pair?
                                                                _tl2654626603_)
                                                               (let ((_e2654726606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2654626603_)))
                         (let ((_hd2654826610_ (##car _e2654726606_))
                               (_tl2654926613_ (##cdr _e2654726606_)))
                           (if (gx#stx-datum? _hd2654826610_)
                               (if (equal? (gx#stx-e _hd2654826610_) '=>:)
                                   (if (gx#stx-pair? _tl2654926613_)
                                       (let ((_e2655026616_
                                              (gx#syntax-e _tl2654926613_)))
                                         (let ((_hd2655126620_
                                                (##car _e2655026616_))
                                               (_tl2655226623_
                                                (##cdr _e2655026616_)))
                                           (if (gx#stx-null? _tl2655226623_)
                                               ((lambda (_L26626_)
                                                  (_loop25527_
                                                   _L26626_
                                                   _vars25804_
                                                   _K25805_))
                                                _hd2655126620_)
                                               (_g2652026569_ _g2652226573_))))
                                       (_g2652026569_ _g2652226573_))
                                   (_g2652026569_ _g2652226573_))
                               (_g2652026569_ _g2652226573_))))
                       (_g2652026569_ _g2652226573_))))
               (_g2652026569_ _g2652226573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2652026569_
                                                    _g2652226573_))
                                               (_g2652026569_ _g2652226573_))))
                                       (_g2652026569_ _g2652226573_))))
                               (_g2652026569_ _g2652226573_))))
                        (_g2651826699_
                         (lambda (_g2652226651_)
                           (if (gx#stx-pair? _g2652226651_)
                               (let ((_e2652826654_
                                      (gx#syntax-e _g2652226651_)))
                                 (let ((_hd2652926658_ (##car _e2652826654_))
                                       (_tl2653026661_ (##cdr _e2652826654_)))
                                   (if (gx#stx-pair? _tl2653026661_)
                                       (let ((_e2653126664_
                                              (gx#syntax-e _tl2653026661_)))
                                         (let ((_hd2653226668_
                                                (##car _e2653126664_))
                                               (_tl2653326671_
                                                (##cdr _e2653126664_)))
                                           (if (gx#stx-datum? _hd2653226668_)
                                               (if (equal? (gx#stx-e
                                                            _hd2653226668_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2653326671_)
                                                       (let ((_e2653426674_
                                                              (gx#syntax-e
                                                               _tl2653326671_)))
                                                         (let ((_hd2653526678_
                                                                (##car _e2653426674_))
                                                               (_tl2653626681_
                                                                (##cdr _e2653426674_)))
                                                           (if (gx#stx-null?
                                                                _tl2653626681_)
                                                               ((lambda (_L26684_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop25527_ _L26684_ _vars25804_ _K25805_))
                        _hd2653526678_)
                       (_g2651926647_ _g2652226651_))))
               (_g2651926647_ _g2652226651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2651926647_
                                                    _g2652226651_))
                                               (_g2651926647_ _g2652226651_))))
                                       (_g2651926647_ _g2652226651_))))
                               (_g2651926647_ _g2652226651_))))
                        (_g2651726727_
                         (lambda (_g2652226703_)
                           (if (gx#stx-pair? _g2652226703_)
                               (let ((_e2652426706_
                                      (gx#syntax-e _g2652226703_)))
                                 (let ((_hd2652526710_ (##car _e2652426706_))
                                       (_tl2652626713_ (##cdr _e2652426706_)))
                                   (if (gx#stx-null? _tl2652626713_)
                                       ((lambda (_L26716_)
                                          (_loop25527_
                                           _L26716_
                                           _vars25804_
                                           _K25805_))
                                        _hd2652526710_)
                                       (_g2651826699_ _g2652226703_))))
                               (_g2651826699_ _g2652226703_)))))
                   (_g2651726727_ _L26505_)))
               _tl2582626502_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2580726478_
                                                   _g2581926482_))
                                              (_g2580726478_ _g2581926482_))
                                          (_g2580726478_ _g2581926482_))))
                                  (_g2580726478_ _g2581926482_)))))
                      (_g2580626731_ _ptree25802_))))
                 (_loop-vector25529_
                  (lambda (_body25690_ _vars25692_ _K25693_)
                    (let* ((_g2569625717_
                            (lambda (_g2569725713_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2569725713_)))
                           (_g2569525758_
                            (lambda (_g2569725721_)
                              (if (gx#stx-pair? _g2569725721_)
                                  (let ((_e2570625724_
                                         (gx#syntax-e _g2569725721_)))
                                    (let ((_hd2570725728_
                                           (##car _e2570625724_))
                                          (_tl2570825731_
                                           (##cdr _e2570625724_)))
                                      (if (gx#stx-datum? _hd2570725728_)
                                          (if (equal? (gx#stx-e _hd2570725728_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2570825731_)
                                                  (let ((_e2570925734_
                                                         (gx#syntax-e
                                                          _tl2570825731_)))
                                                    (let ((_hd2571025738_
                                                           (##car _e2570925734_))
                                                          (_tl2571125741_
                                                           (##cdr _e2570925734_)))
                                                      (if (gx#stx-null?
                                                           _tl2571125741_)
                                                          ((lambda (_L25744_)
                                                             (_loop25527_
                                                              _L25744_
                                                              _vars25692_
                                                              _K25693_))
                                                           _hd2571025738_)
                                                          (_g2569625717_
                                                           _g2569725721_))))
                                                  (_g2569625717_
                                                   _g2569725721_))
                                              (_g2569625717_ _g2569725721_))
                                          (_g2569625717_ _g2569725721_))))
                                  (_g2569625717_ _g2569725721_))))
                           (_g2569425798_
                            (lambda (_g2569725762_)
                              (if (gx#stx-pair? _g2569725762_)
                                  (let ((_e2569925765_
                                         (gx#syntax-e _g2569725762_)))
                                    (let ((_hd2570025769_
                                           (##car _e2569925765_))
                                          (_tl2570125772_
                                           (##cdr _e2569925765_)))
                                      (if (gx#stx-datum? _hd2570025769_)
                                          (if (equal? (gx#stx-e _hd2570025769_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2570125772_)
                                                  (let ((_e2570225775_
                                                         (gx#syntax-e
                                                          _tl2570125772_)))
                                                    (let ((_hd2570325779_
                                                           (##car _e2570225775_))
                                                          (_tl2570425782_
                                                           (##cdr _e2570225775_)))
                                                      (if (gx#stx-null?
                                                           _tl2570425782_)
                                                          ((lambda (_L25785_)
                                                             (_loop-list25530_
                                                              _L25785_
                                                              _vars25692_
                                                              _K25693_))
                                                           _hd2570325779_)
                                                          (_g2569525758_
                                                           _g2569725762_))))
                                                  (_g2569525758_
                                                   _g2569725762_))
                                              (_g2569525758_ _g2569725762_))
                                          (_g2569525758_ _g2569725762_))))
                                  (_g2569525758_ _g2569725762_)))))
                      (_g2569425798_ _body25690_))))
                 (_loop-list25530_
                  (lambda (_rest25620_ _vars25622_ _K25623_)
                    (let* ((_g2562625638_
                            (lambda (_g2562725634_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2562725634_)))
                           (_g2562525649_
                            (lambda (_g2562725642_)
                              ((lambda () (_K25623_ _vars25622_)))))
                           (_g2562425686_
                            (lambda (_g2562725653_)
                              (if (gx#stx-pair? _g2562725653_)
                                  (let ((_e2563025656_
                                         (gx#syntax-e _g2562725653_)))
                                    (let ((_hd2563125660_
                                           (##car _e2563025656_))
                                          (_tl2563225663_
                                           (##cdr _e2563025656_)))
                                      ((lambda (_L25666_ _L25668_)
                                         (_loop25527_
                                          _L25668_
                                          _vars25622_
                                          (lambda (_g2568025682_)
                                            (_loop-list25530_
                                             _L25666_
                                             _g2568025682_
                                             _K25623_))))
                                       _tl2563225663_
                                       _hd2563125660_)))
                                  (_g2562525649_ _g2562725653_)))))
                      (_g2562425686_ _rest25620_))))
                 (_loop-class-list25531_
                  (lambda (_rest25533_ _vars25535_ _K25536_)
                    (let* ((_g2553925554_
                            (lambda (_g2554025550_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2554025550_)))
                           (_g2553825565_
                            (lambda (_g2554025558_)
                              ((lambda () (_K25536_ _vars25535_)))))
                           (_g2553725616_
                            (lambda (_g2554025569_)
                              (if (gx#stx-pair? _g2554025569_)
                                  (let ((_e2554325572_
                                         (gx#syntax-e _g2554025569_)))
                                    (let ((_hd2554425576_
                                           (##car _e2554325572_))
                                          (_tl2554525579_
                                           (##cdr _e2554325572_)))
                                      (if (gx#stx-pair? _tl2554525579_)
                                          (let ((_e2554625582_
                                                 (gx#syntax-e _tl2554525579_)))
                                            (let ((_hd2554725586_
                                                   (##car _e2554625582_))
                                                  (_tl2554825589_
                                                   (##cdr _e2554625582_)))
                                              ((lambda (_L25592_ _L25594_)
                                                 (_loop25527_
                                                  _L25594_
                                                  _vars25535_
                                                  (lambda (_g2561025612_)
                                                    (_loop-class-list25531_
                                                     _L25592_
                                                     _g2561025612_
                                                     _K25536_))))
                                               _tl2554825589_
                                               _hd2554725586_)))
                                          (_g2553825565_ _g2554025569_))))
                                  (_g2553825565_ _g2554025569_)))))
                      (_g2553725616_ _rest25533_)))))
          (_loop25527_ _ptree25524_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22340_ _tgt22342_ _ptree22343_ _K22344_ _E22345_)
        (letrec ((_generate122347_
                  (lambda (_tgt23877_ _ptree23879_ _K23880_ _E23881_)
                    (let* ((_g2388323891_
                            (lambda (_g2388423887_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2388423887_)))
                           (_g2388225520_
                            (lambda (_g2388423895_)
                              ((lambda (_L23898_)
                                 (let ()
                                   (let* ((_g2392524051_
                                           (lambda (_g2392624047_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2392624047_)))
                                          (_g2392424072_
                                           (lambda (_g2392624055_)
                                             (if (gx#stx-pair? _g2392624055_)
                                                 (let ((_e2404324058_
                                                        (gx#syntax-e
                                                         _g2392624055_)))
                                                   (let ((_hd2404424062_
                                                          (##car _e2404324058_))
                                                         (_tl2404524065_
                                                          (##cdr _e2404324058_)))
                                                     (if (gx#stx-datum?
                                                          _hd2404424062_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2404424062_)
                             'any:)
                     (if (gx#stx-null? _tl2404524065_)
                         ((lambda () _K23880_))
                         (_g2392524051_ _g2392624055_))
                     (_g2392524051_ _g2392624055_))
                 (_g2392524051_ _g2392624055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392524051_
                                                  _g2392624055_))))
                                          (_g2392324115_
                                           (lambda (_g2392624076_)
                                             (if (gx#stx-pair? _g2392624076_)
                                                 (let ((_e2403724079_
                                                        (gx#syntax-e
                                                         _g2392624076_)))
                                                   (let ((_hd2403824083_
                                                          (##car _e2403724079_))
                                                         (_tl2403924086_
                                                          (##cdr _e2403724079_)))
                                                     (if (gx#stx-datum?
                                                          _hd2403824083_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2403824083_)
                             'var:)
                     (if (gx#stx-pair? _tl2403924086_)
                         (let ((_e2404024089_ (gx#syntax-e _tl2403924086_)))
                           (let ((_hd2404124093_ (##car _e2404024089_))
                                 (_tl2404224096_ (##cdr _e2404024089_)))
                             (if (gx#stx-null? _tl2404224096_)
                                 ((lambda (_L24099_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24099_
                                                            (cons _L23898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K23880_ '()))))
                                  _hd2404124093_)
                                 (_g2392424072_ _g2392624076_))))
                         (_g2392424072_ _g2392624076_))
                     (_g2392424072_ _g2392624076_))
                 (_g2392424072_ _g2392624076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392424072_
                                                  _g2392624076_))))
                                          (_g2392224200_
                                           (lambda (_g2392624119_)
                                             (if (gx#stx-pair? _g2392624119_)
                                                 (let ((_e2402724122_
                                                        (gx#syntax-e
                                                         _g2392624119_)))
                                                   (let ((_hd2402824126_
                                                          (##car _e2402724122_))
                                                         (_tl2402924129_
                                                          (##cdr _e2402724122_)))
                                                     (if (gx#stx-datum?
                                                          _hd2402824126_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2402824126_)
                             'apply:)
                     (if (gx#stx-pair? _tl2402924129_)
                         (let ((_e2403024132_ (gx#syntax-e _tl2402924129_)))
                           (let ((_hd2403124136_ (##car _e2403024132_))
                                 (_tl2403224139_ (##cdr _e2403024132_)))
                             (if (gx#stx-pair? _tl2403224139_)
                                 (let ((_e2403324142_
                                        (gx#syntax-e _tl2403224139_)))
                                   (let ((_hd2403424146_ (##car _e2403324142_))
                                         (_tl2403524149_
                                          (##cdr _e2403324142_)))
                                     (if (gx#stx-null? _tl2403524149_)
                                         ((lambda (_L24152_ _L24154_)
                                            (let* ((_g2416924177_
                                                    (lambda (_g2417024173_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2417024173_)))
                                                   (_g2416824196_
                                                    (lambda (_g2417024181_)
                                                      ((lambda (_L24184_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L24184_
                                           (cons (cons _L24154_
                                                       (cons _L23898_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122347_
                                      _L24184_
                                      _L24152_
                                      _K23880_
                                      _E23881_)
                                     '())))))
               _g2417024181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2416824196_
                                               (gx#genident 'e))))
                                          _hd2403424146_
                                          _hd2403124136_)
                                         (_g2392324115_ _g2392624119_))))
                                 (_g2392324115_ _g2392624119_))))
                         (_g2392324115_ _g2392624119_))
                     (_g2392324115_ _g2392624119_))
                 (_g2392324115_ _g2392624119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392324115_
                                                  _g2392624119_))))
                                          (_g2392124282_
                                           (lambda (_g2392624204_)
                                             (if (gx#stx-pair? _g2392624204_)
                                                 (let ((_e2401924207_
                                                        (gx#syntax-e
                                                         _g2392624204_)))
                                                   (let ((_hd2402024211_
                                                          (##car _e2401924207_))
                                                         (_tl2402124214_
                                                          (##cdr _e2401924207_)))
                                                     (if (gx#stx-datum?
                                                          _hd2402024211_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2402024211_)
                             'datum:)
                     (if (gx#stx-pair? _tl2402124214_)
                         (let ((_e2402224217_ (gx#syntax-e _tl2402124214_)))
                           (let ((_hd2402324221_ (##car _e2402224217_))
                                 (_tl2402424224_ (##cdr _e2402224217_)))
                             (if (gx#stx-null? _tl2402424224_)
                                 ((lambda (_L24227_)
                                    (let* ((_g2424024248_
                                            (lambda (_g2424124244_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2424124244_)))
                                           (_g2423924267_
                                            (lambda (_g2424124252_)
                                              ((lambda (_L24255_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L24255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L23898_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24227_ '()))
                                         '())))
                       (cons _K23880_ (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2424124252_))))
                                      (_g2423924267_
                                       (let ((_e24271_ (gx#stx-e _L24227_)))
                                         (if (let ((_$e24274_
                                                    (symbol? _e24271_)))
                                               (if _$e24274_
                                                   _$e24274_
                                                   (let ((_$e24278_
                                                          (keyword? _e24271_)))
                                                     (if _$e24278_
                                                         _$e24278_
                                                         (immediate?
                                                          _e24271_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e24271_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2402324221_)
                                 (_g2392224200_ _g2392624204_))))
                         (_g2392224200_ _g2392624204_))
                     (_g2392224200_ _g2392624204_))
                 (_g2392224200_ _g2392624204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392224200_
                                                  _g2392624204_))))
                                          (_g2392024336_
                                           (lambda (_g2392624286_)
                                             (if (gx#stx-pair? _g2392624286_)
                                                 (let ((_e2400924289_
                                                        (gx#syntax-e
                                                         _g2392624286_)))
                                                   (let ((_hd2401024293_
                                                          (##car _e2400924289_))
                                                         (_tl2401124296_
                                                          (##cdr _e2400924289_)))
                                                     (if (gx#stx-datum?
                                                          _hd2401024293_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2401024293_)
                             'class:)
                     (if (gx#stx-pair? _tl2401124296_)
                         (let ((_e2401224299_ (gx#syntax-e _tl2401124296_)))
                           (let ((_hd2401324303_ (##car _e2401224299_))
                                 (_tl2401424306_ (##cdr _e2401224299_)))
                             (if (gx#stx-pair? _tl2401424306_)
                                 (let ((_e2401524309_
                                        (gx#syntax-e _tl2401424306_)))
                                   (let ((_hd2401624313_ (##car _e2401524309_))
                                         (_tl2401724316_
                                          (##cdr _e2401524309_)))
                                     (if (gx#stx-null? _tl2401724316_)
                                         ((lambda (_L24319_ _L24321_)
                                            (_generate-class22353_
                                             (gx#stx-e _L24321_)
                                             _tgt23877_
                                             _L24319_
                                             _K23880_
                                             _E23881_))
                                          _hd2401624313_
                                          _hd2401324303_)
                                         (_g2392124282_ _g2392624286_))))
                                 (_g2392124282_ _g2392624286_))))
                         (_g2392124282_ _g2392624286_))
                     (_g2392124282_ _g2392624286_))
                 (_g2392124282_ _g2392624286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392124282_
                                                  _g2392624286_))))
                                          (_g2391924390_
                                           (lambda (_g2392624340_)
                                             (if (gx#stx-pair? _g2392624340_)
                                                 (let ((_e2399824343_
                                                        (gx#syntax-e
                                                         _g2392624340_)))
                                                   (let ((_hd2399924347_
                                                          (##car _e2399824343_))
                                                         (_tl2400024350_
                                                          (##cdr _e2399824343_)))
                                                     (if (gx#stx-datum?
                                                          _hd2399924347_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2399924347_)
                             'struct:)
                     (if (gx#stx-pair? _tl2400024350_)
                         (let ((_e2400124353_ (gx#syntax-e _tl2400024350_)))
                           (let ((_hd2400224357_ (##car _e2400124353_))
                                 (_tl2400324360_ (##cdr _e2400124353_)))
                             (if (gx#stx-pair? _tl2400324360_)
                                 (let ((_e2400424363_
                                        (gx#syntax-e _tl2400324360_)))
                                   (let ((_hd2400524367_ (##car _e2400424363_))
                                         (_tl2400624370_
                                          (##cdr _e2400424363_)))
                                     (if (gx#stx-null? _tl2400624370_)
                                         ((lambda (_L24373_ _L24375_)
                                            (_generate-struct22352_
                                             (gx#stx-e _L24375_)
                                             _tgt23877_
                                             _L24373_
                                             _K23880_
                                             _E23881_))
                                          _hd2400524367_
                                          _hd2400224357_)
                                         (_g2392024336_ _g2392624340_))))
                                 (_g2392024336_ _g2392624340_))))
                         (_g2392024336_ _g2392624340_))
                     (_g2392024336_ _g2392624340_))
                 (_g2392024336_ _g2392624340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2392024336_
                                                  _g2392624340_))))
                                          (_g2391824568_
                                           (lambda (_g2392624394_)
                                             (if (gx#stx-pair? _g2392624394_)
                                                 (let ((_e2399024397_
                                                        (gx#syntax-e
                                                         _g2392624394_)))
                                                   (let ((_hd2399124401_
                                                          (##car _e2399024397_))
                                                         (_tl2399224404_
                                                          (##cdr _e2399024397_)))
                                                     (if (gx#stx-datum?
                                                          _hd2399124401_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2399124401_)
                             'vector:)
                     (if (gx#stx-pair? _tl2399224404_)
                         (let ((_e2399324407_ (gx#syntax-e _tl2399224404_)))
                           (let ((_hd2399424411_ (##car _e2399324407_))
                                 (_tl2399524414_ (##cdr _e2399324407_)))
                             (if (gx#stx-null? _tl2399524414_)
                                 ((lambda (_L24417_)
                                    (let* ((_g2443124452_
                                            (lambda (_g2443224448_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2443224448_)))
                                           (_g2443024493_
                                            (lambda (_g2443224456_)
                                              (if (gx#stx-pair? _g2443224456_)
                                                  (let ((_e2444124459_
                                                         (gx#syntax-e
                                                          _g2443224456_)))
                                                    (let ((_hd2444224463_
                                                           (##car _e2444124459_))
                                                          (_tl2444324466_
                                                           (##cdr _e2444124459_)))
                                                      (if (gx#stx-datum?
                                                           _hd2444224463_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2444224463_)
                              'list:)
                      (if (gx#stx-pair? _tl2444324466_)
                          (let ((_e2444424469_ (gx#syntax-e _tl2444324466_)))
                            (let ((_hd2444524473_ (##car _e2444424469_))
                                  (_tl2444624476_ (##cdr _e2444424469_)))
                              (if (gx#stx-null? _tl2444624476_)
                                  ((lambda (_L24479_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L23898_ '()))
                                                 (cons (_generate-list-vector22351_
                                                        _tgt23877_
                                                        _L24479_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K23880_
                                                        _E23881_)
                                                       (cons _E23881_ '())))))
                                   _hd2444524473_)
                                  (_g2443124452_ _g2443224456_))))
                          (_g2443124452_ _g2443224456_))
                      (_g2443124452_ _g2443224456_))
                  (_g2443124452_ _g2443224456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2443124452_
                                                   _g2443224456_))))
                                           (_g2442924564_
                                            (lambda (_g2443224497_)
                                              (if (gx#stx-pair? _g2443224497_)
                                                  (let ((_e2443424500_
                                                         (gx#syntax-e
                                                          _g2443224497_)))
                                                    (let ((_hd2443524504_
                                                           (##car _e2443424500_))
                                                          (_tl2443624507_
                                                           (##cdr _e2443424500_)))
                                                      (if (gx#stx-datum?
                                                           _hd2443524504_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2443524504_)
                              'simple:)
                      (if (gx#stx-pair? _tl2443624507_)
                          (let ((_e2443724510_ (gx#syntax-e _tl2443624507_)))
                            (let ((_hd2443824514_ (##car _e2443724510_))
                                  (_tl2443924517_ (##cdr _e2443724510_)))
                              (if (gx#stx-null? _tl2443924517_)
                                  ((lambda (_L24520_)
                                     (let* ((_g2453324541_
                                             (lambda (_g2453424537_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2453424537_)))
                                            (_g2453224560_
                                             (lambda (_g2453424545_)
                                               ((lambda (_L24548_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L23898_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L23898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L24548_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector22350_
                               _tgt23877_
                               _L24520_
                               '0
                               _K23880_
                               _E23881_)
                              (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2453424545_))))
                                       (_g2453224560_
                                        (gx#stx-length _L24520_))))
                                   _hd2443824514_)
                                  (_g2443024493_ _g2443224497_))))
                          (_g2443024493_ _g2443224497_))
                      (_g2443024493_ _g2443224497_))
                  (_g2443024493_ _g2443224497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2443024493_
                                                   _g2443224497_)))))
                                      (_g2442924564_ _L24417_)))
                                  _hd2399424411_)
                                 (_g2391924390_ _g2392624394_))))
                         (_g2391924390_ _g2392624394_))
                     (_g2391924390_ _g2392624394_))
                 (_g2391924390_ _g2392624394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391924390_
                                                  _g2392624394_))))
                                          (_g2391724746_
                                           (lambda (_g2392624572_)
                                             (if (gx#stx-pair? _g2392624572_)
                                                 (let ((_e2398324575_
                                                        (gx#syntax-e
                                                         _g2392624572_)))
                                                   (let ((_hd2398424579_
                                                          (##car _e2398324575_))
                                                         (_tl2398524582_
                                                          (##cdr _e2398324575_)))
                                                     (if (gx#stx-datum?
                                                          _hd2398424579_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2398424579_)
                             'values:)
                     (if (gx#stx-pair? _tl2398524582_)
                         (let ((_e2398624585_ (gx#syntax-e _tl2398524582_)))
                           (let ((_hd2398724589_ (##car _e2398624585_))
                                 (_tl2398824592_ (##cdr _e2398624585_)))
                             (if (gx#stx-null? _tl2398824592_)
                                 ((lambda (_L24595_)
                                    (let* ((_g2460924630_
                                            (lambda (_g2461024626_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2461024626_)))
                                           (_g2460824671_
                                            (lambda (_g2461024634_)
                                              (if (gx#stx-pair? _g2461024634_)
                                                  (let ((_e2461924637_
                                                         (gx#syntax-e
                                                          _g2461024634_)))
                                                    (let ((_hd2462024641_
                                                           (##car _e2461924637_))
                                                          (_tl2462124644_
                                                           (##cdr _e2461924637_)))
                                                      (if (gx#stx-datum?
                                                           _hd2462024641_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2462024641_)
                              'list:)
                      (if (gx#stx-pair? _tl2462124644_)
                          (let ((_e2462224647_ (gx#syntax-e _tl2462124644_)))
                            (let ((_hd2462324651_ (##car _e2462224647_))
                                  (_tl2462424654_ (##cdr _e2462224647_)))
                              (if (gx#stx-null? _tl2462424654_)
                                  ((lambda (_L24657_)
                                     (_generate-list-vector22351_
                                      _tgt23877_
                                      _L24657_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K23880_
                                      _E23881_))
                                   _hd2462324651_)
                                  (_g2460924630_ _g2461024634_))))
                          (_g2460924630_ _g2461024634_))
                      (_g2460924630_ _g2461024634_))
                  (_g2460924630_ _g2461024634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2460924630_
                                                   _g2461024634_))))
                                           (_g2460724742_
                                            (lambda (_g2461024675_)
                                              (if (gx#stx-pair? _g2461024675_)
                                                  (let ((_e2461224678_
                                                         (gx#syntax-e
                                                          _g2461024675_)))
                                                    (let ((_hd2461324682_
                                                           (##car _e2461224678_))
                                                          (_tl2461424685_
                                                           (##cdr _e2461224678_)))
                                                      (if (gx#stx-datum?
                                                           _hd2461324682_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2461324682_)
                              'simple:)
                      (if (gx#stx-pair? _tl2461424685_)
                          (let ((_e2461524688_ (gx#syntax-e _tl2461424685_)))
                            (let ((_hd2461624692_ (##car _e2461524688_))
                                  (_tl2461724695_ (##cdr _e2461524688_)))
                              (if (gx#stx-null? _tl2461724695_)
                                  ((lambda (_L24698_)
                                     (let* ((_g2471124719_
                                             (lambda (_g2471224715_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2471224715_)))
                                            (_g2471024738_
                                             (lambda (_g2471224723_)
                                               ((lambda (_L24726_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L23898_ '()))
                                    (cons _L24726_ '())))
                        (cons (_generate-simple-vector22350_
                               _tgt23877_
                               _L24698_
                               '0
                               _K23880_
                               _E23881_)
                              (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2471224723_))))
                                       (_g2471024738_
                                        (gx#stx-length _L24698_))))
                                   _hd2461624692_)
                                  (_g2460824671_ _g2461024675_))))
                          (_g2460824671_ _g2461024675_))
                      (_g2460824671_ _g2461024675_))
                  (_g2460824671_ _g2461024675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2460824671_
                                                   _g2461024675_)))))
                                      (_g2460724742_ _L24595_)))
                                  _hd2398724589_)
                                 (_g2391824568_ _g2392624572_))))
                         (_g2391824568_ _g2392624572_))
                     (_g2391824568_ _g2392624572_))
                 (_g2391824568_ _g2392624572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391824568_
                                                  _g2392624572_))))
                                          (_g2391624817_
                                           (lambda (_g2392624750_)
                                             (if (gx#stx-pair? _g2392624750_)
                                                 (let ((_e2397624753_
                                                        (gx#syntax-e
                                                         _g2392624750_)))
                                                   (let ((_hd2397724757_
                                                          (##car _e2397624753_))
                                                         (_tl2397824760_
                                                          (##cdr _e2397624753_)))
                                                     (if (gx#stx-datum?
                                                          _hd2397724757_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2397724757_)
                             'box:)
                     (if (gx#stx-pair? _tl2397824760_)
                         (let ((_e2397924763_ (gx#syntax-e _tl2397824760_)))
                           (let ((_hd2398024767_ (##car _e2397924763_))
                                 (_tl2398124770_ (##cdr _e2397924763_)))
                             (if (gx#stx-null? _tl2398124770_)
                                 ((lambda (_L24773_)
                                    (let* ((_g2478624794_
                                            (lambda (_g2478724790_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2478724790_)))
                                           (_g2478524813_
                                            (lambda (_g2478724798_)
                                              ((lambda (_L24801_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L23898_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L24801_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L23898_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122347_
                                                _L24801_
                                                _L24773_
                                                _K23880_
                                                _E23881_)
                                               '())))
                             (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2478724798_))))
                                      (_g2478524813_ (gx#genident 'e))))
                                  _hd2398024767_)
                                 (_g2391724746_ _g2392624750_))))
                         (_g2391724746_ _g2392624750_))
                     (_g2391724746_ _g2392624750_))
                 (_g2391724746_ _g2392624750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391724746_
                                                  _g2392624750_))))
                                          (_g2391524871_
                                           (lambda (_g2392624821_)
                                             (if (gx#stx-pair? _g2392624821_)
                                                 (let ((_e2396624824_
                                                        (gx#syntax-e
                                                         _g2392624821_)))
                                                   (let ((_hd2396724828_
                                                          (##car _e2396624824_))
                                                         (_tl2396824831_
                                                          (##cdr _e2396624824_)))
                                                     (if (gx#stx-datum?
                                                          _hd2396724828_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2396724828_)
                             'splice:)
                     (if (gx#stx-pair? _tl2396824831_)
                         (let ((_e2396924834_ (gx#syntax-e _tl2396824831_)))
                           (let ((_hd2397024838_ (##car _e2396924834_))
                                 (_tl2397124841_ (##cdr _e2396924834_)))
                             (if (gx#stx-pair? _tl2397124841_)
                                 (let ((_e2397224844_
                                        (gx#syntax-e _tl2397124841_)))
                                   (let ((_hd2397324848_ (##car _e2397224844_))
                                         (_tl2397424851_
                                          (##cdr _e2397224844_)))
                                     (if (gx#stx-null? _tl2397424851_)
                                         ((lambda (_L24854_ _L24856_)
                                            (_generate-splice22349_
                                             _tgt23877_
                                             _L24856_
                                             _L24854_
                                             _K23880_
                                             _E23881_))
                                          _hd2397324848_
                                          _hd2397024838_)
                                         (_g2391624817_ _g2392624821_))))
                                 (_g2391624817_ _g2392624821_))))
                         (_g2391624817_ _g2392624821_))
                     (_g2391624817_ _g2392624821_))
                 (_g2391624817_ _g2392624821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391624817_
                                                  _g2392624821_))))
                                          (_g2391424892_
                                           (lambda (_g2392624875_)
                                             (if (gx#stx-pair? _g2392624875_)
                                                 (let ((_e2396124878_
                                                        (gx#syntax-e
                                                         _g2392624875_)))
                                                   (let ((_hd2396224882_
                                                          (##car _e2396124878_))
                                                         (_tl2396324885_
                                                          (##cdr _e2396124878_)))
                                                     (if (gx#stx-datum?
                                                          _hd2396224882_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2396224882_)
                             'null:)
                     (if (gx#stx-null? _tl2396324885_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L23898_ '()))
                                        (cons _K23880_ (cons _E23881_ '()))))))
                         (_g2391524871_ _g2392624875_))
                     (_g2391524871_ _g2392624875_))
                 (_g2391524871_ _g2392624875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391524871_
                                                  _g2392624875_))))
                                          (_g2391325011_
                                           (lambda (_g2392624896_)
                                             (if (gx#stx-pair? _g2392624896_)
                                                 (let ((_e2395224899_
                                                        (gx#syntax-e
                                                         _g2392624896_)))
                                                   (let ((_hd2395324903_
                                                          (##car _e2395224899_))
                                                         (_tl2395424906_
                                                          (##cdr _e2395224899_)))
                                                     (if (gx#stx-datum?
                                                          _hd2395324903_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2395324903_)
                             'cons:)
                     (if (gx#stx-pair? _tl2395424906_)
                         (let ((_e2395524909_ (gx#syntax-e _tl2395424906_)))
                           (let ((_hd2395624913_ (##car _e2395524909_))
                                 (_tl2395724916_ (##cdr _e2395524909_)))
                             (if (gx#stx-pair? _tl2395724916_)
                                 (let ((_e2395824919_
                                        (gx#syntax-e _tl2395724916_)))
                                   (let ((_hd2395924923_ (##car _e2395824919_))
                                         (_tl2396024926_
                                          (##cdr _e2395824919_)))
                                     (if (gx#stx-null? _tl2396024926_)
                                         ((lambda (_L24929_ _L24931_)
                                            (let* ((_g2494724962_
                                                    (lambda (_g2494824958_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2494824958_)))
                                                   (_g2494625007_
                                                    (lambda (_g2494824966_)
                                                      (if (gx#stx-pair?
                                                           _g2494824966_)
                                                          (let ((_e2495124969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2494824966_)))
                    (let ((_hd2495224973_ (##car _e2495124969_))
                          (_tl2495324976_ (##cdr _e2495124969_)))
                      (if (gx#stx-pair? _tl2495324976_)
                          (let ((_e2495424979_ (gx#syntax-e _tl2495324976_)))
                            (let ((_hd2495524983_ (##car _e2495424979_))
                                  (_tl2495624986_ (##cdr _e2495424979_)))
                              (if (gx#stx-null? _tl2495624986_)
                                  ((lambda (_L24989_ _L24991_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L23898_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L24991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L23898_ '()))
                                               '()))
                                   (cons (cons _L24989_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23898_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate122347_
                                    _L24991_
                                    _L24931_
                                    (_generate122347_
                                     _L24989_
                                     _L24929_
                                     _K23880_
                                     _E23881_)
                                    _E23881_)
                                   '())))
                 (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2495524983_
                                   _hd2495224973_)
                                  (_g2494724962_ _g2494824966_))))
                          (_g2494724962_ _g2494824966_))))
                  (_g2494724962_ _g2494824966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2494625007_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2395924923_
                                          _hd2395624913_)
                                         (_g2391424892_ _g2392624896_))))
                                 (_g2391424892_ _g2392624896_))))
                         (_g2391424892_ _g2392624896_))
                     (_g2391424892_ _g2392624896_))
                 (_g2391424892_ _g2392624896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391424892_
                                                  _g2392624896_))))
                                          (_g2391225051_
                                           (lambda (_g2392625015_)
                                             (if (gx#stx-pair? _g2392625015_)
                                                 (let ((_e2394425018_
                                                        (gx#syntax-e
                                                         _g2392625015_)))
                                                   (let ((_hd2394525022_
                                                          (##car _e2394425018_))
                                                         (_tl2394625025_
                                                          (##cdr _e2394425018_)))
                                                     (if (gx#stx-datum?
                                                          _hd2394525022_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2394525022_)
                             'not:)
                     (if (gx#stx-pair? _tl2394625025_)
                         (let ((_e2394725028_ (gx#syntax-e _tl2394625025_)))
                           (let ((_hd2394825032_ (##car _e2394725028_))
                                 (_tl2394925035_ (##cdr _e2394725028_)))
                             (if (gx#stx-null? _tl2394925035_)
                                 ((lambda (_L25038_)
                                    (_generate122347_
                                     _tgt23877_
                                     _L25038_
                                     _E23881_
                                     _K23880_))
                                  _hd2394825032_)
                                 (_g2391325011_ _g2392625015_))))
                         (_g2391325011_ _g2392625015_))
                     (_g2391325011_ _g2392625015_))
                 (_g2391325011_ _g2392625015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391325011_
                                                  _g2392625015_))))
                                          (_g2391125139_
                                           (lambda (_g2392625055_)
                                             (if (gx#stx-pair? _g2392625055_)
                                                 (let ((_e2394025058_
                                                        (gx#syntax-e
                                                         _g2392625055_)))
                                                   (let ((_hd2394125062_
                                                          (##car _e2394025058_))
                                                         (_tl2394225065_
                                                          (##cdr _e2394025058_)))
                                                     (if (gx#stx-datum?
                                                          _hd2394125062_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2394125062_)
                             'or:)
                     ((lambda (_L25068_)
                        (let* ((_g2508025092_
                                (lambda (_g2508125088_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2508125088_)))
                               (_g2507925103_
                                (lambda (_g2508125096_)
                                  ((lambda () _E23881_))))
                               (_g2507825135_
                                (lambda (_g2508125107_)
                                  (if (gx#stx-pair? _g2508125107_)
                                      (let ((_e2508425110_
                                             (gx#syntax-e _g2508125107_)))
                                        (let ((_hd2508525114_
                                               (##car _e2508425110_))
                                              (_tl2508625117_
                                               (##cdr _e2508425110_)))
                                          ((lambda (_L25120_ _L25122_)
                                             (_generate122347_
                                              _tgt23877_
                                              _L25122_
                                              _K23880_
                                              (_generate122347_
                                               _tgt23877_
                                               (cons 'or: _L25120_)
                                               _K23880_
                                               _E23881_)))
                                           _tl2508625117_
                                           _hd2508525114_)))
                                      (_g2507925103_ _g2508125107_)))))
                          (_g2507825135_ _L25068_)))
                      _tl2394225065_)
                     (_g2391225051_ _g2392625055_))
                 (_g2391225051_ _g2392625055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391225051_
                                                  _g2392625055_))))
                                          (_g2391025227_
                                           (lambda (_g2392625143_)
                                             (if (gx#stx-pair? _g2392625143_)
                                                 (let ((_e2393625146_
                                                        (gx#syntax-e
                                                         _g2392625143_)))
                                                   (let ((_hd2393725150_
                                                          (##car _e2393625146_))
                                                         (_tl2393825153_
                                                          (##cdr _e2393625146_)))
                                                     (if (gx#stx-datum?
                                                          _hd2393725150_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2393725150_)
                             'and:)
                     ((lambda (_L25156_)
                        (let* ((_g2516825180_
                                (lambda (_g2516925176_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2516925176_)))
                               (_g2516725191_
                                (lambda (_g2516925184_)
                                  ((lambda () _K23880_))))
                               (_g2516625223_
                                (lambda (_g2516925195_)
                                  (if (gx#stx-pair? _g2516925195_)
                                      (let ((_e2517225198_
                                             (gx#syntax-e _g2516925195_)))
                                        (let ((_hd2517325202_
                                               (##car _e2517225198_))
                                              (_tl2517425205_
                                               (##cdr _e2517225198_)))
                                          ((lambda (_L25208_ _L25210_)
                                             (_generate122347_
                                              _tgt23877_
                                              _L25210_
                                              (_generate122347_
                                               _tgt23877_
                                               (cons 'and: _L25208_)
                                               _K23880_
                                               _E23881_)
                                              _E23881_))
                                           _tl2517425205_
                                           _hd2517325202_)))
                                      (_g2516725191_ _g2516925195_)))))
                          (_g2516625223_ _L25156_)))
                      _tl2393825153_)
                     (_g2391125139_ _g2392625143_))
                 (_g2391125139_ _g2392625143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391125139_
                                                  _g2392625143_))))
                                          (_g2390925516_
                                           (lambda (_g2392625231_)
                                             (if (gx#stx-pair? _g2392625231_)
                                                 (let ((_e2392925234_
                                                        (gx#syntax-e
                                                         _g2392625231_)))
                                                   (let ((_hd2393025238_
                                                          (##car _e2392925234_))
                                                         (_tl2393125241_
                                                          (##cdr _e2392925234_)))
                                                     (if (gx#stx-datum?
                                                          _hd2393025238_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2393025238_)
                             '?:)
                     (if (gx#stx-pair? _tl2393125241_)
                         (let ((_e2393225244_ (gx#syntax-e _tl2393125241_)))
                           (let ((_hd2393325248_ (##car _e2393225244_))
                                 (_tl2393425251_ (##cdr _e2393225244_)))
                             ((lambda (_L25254_ _L25256_)
                                (let* ((_g2527225304_
                                        (lambda (_g2527325300_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2527325300_)))
                                       (_g2527125402_
                                        (lambda (_g2527325308_)
                                          (if (gx#stx-pair? _g2527325308_)
                                              (let ((_e2528725311_
                                                     (gx#syntax-e
                                                      _g2527325308_)))
                                                (let ((_hd2528825315_
                                                       (##car _e2528725311_))
                                                      (_tl2528925318_
                                                       (##cdr _e2528725311_)))
                                                  (if (gx#stx-datum?
                                                       _hd2528825315_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2528825315_)
                          '::)
                  (if (gx#stx-pair? _tl2528925318_)
                      (let ((_e2529025321_ (gx#syntax-e _tl2528925318_)))
                        (let ((_hd2529125325_ (##car _e2529025321_))
                              (_tl2529225328_ (##cdr _e2529025321_)))
                          (if (gx#stx-pair? _tl2529225328_)
                              (let ((_e2529325331_
                                     (gx#syntax-e _tl2529225328_)))
                                (let ((_hd2529425335_ (##car _e2529325331_))
                                      (_tl2529525338_ (##cdr _e2529325331_)))
                                  (if (gx#stx-datum? _hd2529425335_)
                                      (if (equal? (gx#stx-e _hd2529425335_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2529525338_)
                                              (let ((_e2529625341_
                                                     (gx#syntax-e
                                                      _tl2529525338_)))
                                                (let ((_hd2529725345_
                                                       (##car _e2529625341_))
                                                      (_tl2529825348_
                                                       (##cdr _e2529625341_)))
                                                  (if (gx#stx-null?
                                                       _tl2529825348_)
                                                      ((lambda (_L25351_
                                                                _L25353_)
                                                         (let* ((_g2537125379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2537225375_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2537225375_)))
                        (_g2537025398_
                         (lambda (_g2537225383_)
                           ((lambda (_L25386_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25256_
                                                        (cons _L23898_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L25386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25353_ (cons _L23898_ '()))
                                        '()))
                            '())
                      (cons (_generate122347_
                             _L25386_
                             _L25351_
                             _K23880_
                             _E23881_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E23881_ '()))))))
                            _g2537225383_))))
                   (_g2537025398_ (gx#genident 'e))))
               _hd2529725345_
               _hd2529125325_)
              (_g2527225304_ _g2527325308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527225304_ _g2527325308_))
                                          (_g2527225304_ _g2527325308_))
                                      (_g2527225304_ _g2527325308_))))
                              (_g2527225304_ _g2527325308_))))
                      (_g2527225304_ _g2527325308_))
                  (_g2527225304_ _g2527325308_))
              (_g2527225304_ _g2527325308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527225304_ _g2527325308_))))
                                       (_g2527025473_
                                        (lambda (_g2527325406_)
                                          (if (gx#stx-pair? _g2527325406_)
                                              (let ((_e2527925409_
                                                     (gx#syntax-e
                                                      _g2527325406_)))
                                                (let ((_hd2528025413_
                                                       (##car _e2527925409_))
                                                      (_tl2528125416_
                                                       (##cdr _e2527925409_)))
                                                  (if (gx#stx-datum?
                                                       _hd2528025413_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2528025413_)
                          '=>:)
                  (if (gx#stx-pair? _tl2528125416_)
                      (let ((_e2528225419_ (gx#syntax-e _tl2528125416_)))
                        (let ((_hd2528325423_ (##car _e2528225419_))
                              (_tl2528425426_ (##cdr _e2528225419_)))
                          (if (gx#stx-null? _tl2528425426_)
                              ((lambda (_L25429_)
                                 (let* ((_g2544225450_
                                         (lambda (_g2544325446_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2544325446_)))
                                        (_g2544125469_
                                         (lambda (_g2544325454_)
                                           ((lambda (_L25457_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L25457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25256_ (cons _L23898_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L25457_
                                      (cons (_generate122347_
                                             _L25457_
                                             _L25429_
                                             _K23880_
                                             _E23881_)
                                            (cons _E23881_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2544325454_))))
                                   (_g2544125469_ (gx#genident 'e))))
                               _hd2528325423_)
                              (_g2527125402_ _g2527325406_))))
                      (_g2527125402_ _g2527325406_))
                  (_g2527125402_ _g2527325406_))
              (_g2527125402_ _g2527325406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527125402_ _g2527325406_))))
                                       (_g2526925501_
                                        (lambda (_g2527325477_)
                                          (if (gx#stx-pair? _g2527325477_)
                                              (let ((_e2527525480_
                                                     (gx#syntax-e
                                                      _g2527325477_)))
                                                (let ((_hd2527625484_
                                                       (##car _e2527525480_))
                                                      (_tl2527725487_
                                                       (##cdr _e2527525480_)))
                                                  (if (gx#stx-null?
                                                       _tl2527725487_)
                                                      ((lambda (_L25490_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25256_ (cons _L23898_ '())))
                             (cons (_generate122347_
                                    _tgt23877_
                                    _L25490_
                                    _K23880_
                                    _E23881_)
                                   (cons _E23881_ '())))))
               _hd2527625484_)
              (_g2527025473_ _g2527325477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2527025473_ _g2527325477_))))
                                       (_g2526825512_
                                        (lambda (_g2527325505_)
                                          (if (gx#stx-null? _g2527325505_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25256_ (cons _L23898_ '())))
                     (cons _K23880_ (cons _E23881_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2526925501_ _g2527325505_)))))
                                  (_g2526825512_ _L25254_)))
                              _tl2393425251_
                              _hd2393325248_)))
                         (_g2391025227_ _g2392625231_))
                     (_g2391025227_ _g2392625231_))
                 (_g2391025227_ _g2392625231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2391025227_
                                                  _g2392625231_)))))
                                     (_g2390925516_ _ptree23879_))))
                               _g2388423895_))))
                      (_g2388225520_ _tgt23877_))))
                 (_generate-splice22349_
                  (lambda (_tgt23249_ _hd23251_ _rest23252_ _K23253_ _E23254_)
                    (let* ((_g2325623273_
                            (lambda (_g2325723269_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2325723269_)))
                           (_g2325523873_
                            (lambda (_g2325723277_)
                              (if (gx#stx-pair/null? _g2325723277_)
                                  (if (fx>= (gx#stx-length _g2325723277_) '0)
                                      (let ((_g34852_
                                             (gx#syntax-split-splice
                                              _g2325723277_
                                              '0)))
                                        (begin
                                          (let ((_g34853_
                                                 (values-count _g34852_)))
                                            (if (not (fx= _g34853_ 2))
                                                (error "Context expects 2 values"
                                                       _g34853_)))
                                          (let ((_target2325923280_
                                                 (values-ref _g34852_ 0))
                                                (_tl2326123283_
                                                 (values-ref _g34852_ 1)))
                                            (if (gx#stx-null? _tl2326123283_)
                                                (letrec ((_loop2326223286_
                                                          (lambda (_hd2326023290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2326623293_)
                    (if (gx#stx-pair? _hd2326023290_)
                        (let ((_e2326323296_ (gx#syntax-e _hd2326023290_)))
                          (let ((_lp-hd2326423300_ (##car _e2326323296_))
                                (_lp-tl2326523303_ (##cdr _e2326323296_)))
                            (_loop2326223286_
                             _lp-tl2326523303_
                             (cons _lp-hd2326423300_ _var2326623293_))))
                        (let ((_var2326723306_ (reverse _var2326623293_)))
                          ((lambda (_L23310_)
                             (let ()
                               (let* ((_g2332623343_
                                       (lambda (_g2332723339_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2332723339_)))
                                      (_g2332523861_
                                       (lambda (_g2332723347_)
                                         (if (gx#stx-pair/null? _g2332723347_)
                                             (if (fx>= (gx#stx-length
                                                        _g2332723347_)
                                                       '0)
                                                 (let ((_g34854_
                                                        (gx#syntax-split-splice
                                                         _g2332723347_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34855_
                                                            (values-count
                                                             _g34854_)))
                                                       (if (not (fx= _g34855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34855_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2332923350_
                                                            (values-ref
                                                             _g34854_
                                                             0))
                                                           (_tl2333123353_
                                                            (values-ref
                                                             _g34854_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2333123353_)
                                                           (letrec ((_loop2333223356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2333023360_ _var-r2333623363_)
                               (if (gx#stx-pair? _hd2333023360_)
                                   (let ((_e2333323366_
                                          (gx#syntax-e _hd2333023360_)))
                                     (let ((_lp-hd2333423370_
                                            (##car _e2333323366_))
                                           (_lp-tl2333523373_
                                            (##cdr _e2333323366_)))
                                       (_loop2333223356_
                                        _lp-tl2333523373_
                                        (cons _lp-hd2333423370_
                                              _var-r2333623363_))))
                                   (let ((_var-r2333723376_
                                          (reverse _var-r2333623363_)))
                                     ((lambda (_L23380_)
                                        (let ()
                                          (let* ((_g2339723414_
                                                  (lambda (_g2339823410_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2339823410_)))
                                                 (_g2339623849_
                                                  (lambda (_g2339823418_)
                                                    (if (gx#stx-pair/null?
                                                         _g2339823418_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2339823418_)
                          '0)
                    (let ((_g34856_ (gx#syntax-split-splice _g2339823418_ '0)))
                      (begin
                        (let ((_g34857_ (values-count _g34856_)))
                          (if (not (fx= _g34857_ 2))
                              (error "Context expects 2 values" _g34857_)))
                        (let ((_target2340023421_ (values-ref _g34856_ 0))
                              (_tl2340223424_ (values-ref _g34856_ 1)))
                          (if (gx#stx-null? _tl2340223424_)
                              (letrec ((_loop2340323427_
                                        (lambda (_hd2340123431_
                                                 _init2340723434_)
                                          (if (gx#stx-pair? _hd2340123431_)
                                              (let ((_e2340423437_
                                                     (gx#syntax-e
                                                      _hd2340123431_)))
                                                (let ((_lp-hd2340523441_
                                                       (##car _e2340423437_))
                                                      (_lp-tl2340623444_
                                                       (##cdr _e2340423437_)))
                                                  (_loop2340323427_
                                                   _lp-tl2340623444_
                                                   (cons _lp-hd2340523441_
                                                         _init2340723434_))))
                                              (let ((_init2340823447_
                                                     (reverse _init2340723434_)))
                                                ((lambda (_L23451_)
                                                   (let ()
                                                     (let* ((_g2346823476_
                                                             (lambda (_g2346923472_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2346923472_)))
                                                            (_g2346723845_
                                                             (lambda (_g2346923480_)
                                                               ((lambda (_L23483_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2349623504_
                                    (lambda (_g2349723500_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2349723500_)))
                                   (_g2349523841_
                                    (lambda (_g2349723508_)
                                      ((lambda (_L23511_)
                                         (let ()
                                           (let* ((_g2352423532_
                                                   (lambda (_g2352523528_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2352523528_)))
                                                  (_g2352323837_
                                                   (lambda (_g2352523536_)
                                                     ((lambda (_L23539_)
                                                        (let ()
                                                          (let* ((_g2355223560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2355323556_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2355323556_)))
                         (_g2355123833_
                          (lambda (_g2355323564_)
                            ((lambda (_L23567_)
                               (let ()
                                 (let* ((_g2358023588_
                                         (lambda (_g2358123584_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2358123584_)))
                                        (_g2357923829_
                                         (lambda (_g2358123592_)
                                           ((lambda (_L23595_)
                                              (let ()
                                                (let* ((_g2360823616_
                                                        (lambda (_g2360923612_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2360923612_)))
                                                       (_g2360723825_
                                                        (lambda (_g2360923620_)
                                                          ((lambda (_L23623_)
                                                             (let ()
                                                               (let* ((_g2363623644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2363723640_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2363723640_)))
                              (_g2363523821_
                               (lambda (_g2363723648_)
                                 ((lambda (_L23651_)
                                    (let ()
                                      (let* ((_g2366423672_
                                              (lambda (_g2366523668_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2366523668_)))
                                             (_g2366323806_
                                              (lambda (_g2366523676_)
                                                ((lambda (_L23679_)
                                                   (let ()
                                                     (let* ((_g2369223700_
                                                             (lambda (_g2369323696_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2369323696_)))
                                                            (_g2369123794_
                                                             (lambda (_g2369323704_)
                                                               ((lambda (_L23707_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2372023728_
                                    (lambda (_g2372123724_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2372123724_)))
                                   (_g2371923790_
                                    (lambda (_g2372123732_)
                                      ((lambda (_L23735_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L23511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L23623_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2374923760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2375023763_)
                        (cons _g2374923760_ _g2375023763_))
                      '()
                      _L23310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L23651_ '())))
                                   '()))
                       (cons (cons _L23567_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L23595_
                                                           (cons _L23623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2375123766_ _g2375223769_)
                                    (cons _g2375123766_ _g2375223769_))
                                  '()
                                  _L23380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23735_ '())))
                                         '()))
                             (cons (cons _L23539_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L23623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2375323772_ _g2375423775_)
                                    (cons _g2375323772_ _g2375423775_))
                                  '()
                                  _L23380_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L23623_ '()))
                                     (cons (cons _L23567_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L23623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L23623_
                     (begin
                       '#!void
                       (foldr (lambda (_g2375523778_ _g2375623781_)
                                (cons _g2375523778_ _g2375623781_))
                              '()
                              _L23380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L23707_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L23539_
                             (cons _L23483_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2375723784_
                                                     _g2375823787_)
                                              (cons _g2375723784_
                                                    _g2375823787_))
                                            '()
                                            _L23451_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2372123732_))))
                              (_g2371923790_
                               (_generate122347_
                                _L23595_
                                _hd23251_
                                _L23679_
                                _L23707_)))))
                        _g2369323704_))))
               (_g2369123794_
                (cons _L23511_
                      (cons _L23623_
                            (begin
                              '#!void
                              (foldr (lambda (_g2379723800_ _g2379823803_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2379723800_ '()))
                                             _g2379823803_))
                                     '()
                                     _L23380_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2366523676_))))
                                        (_g2366323806_
                                         (cons _L23539_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23623_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23380_
                                                        _L23310_)
                                                       (foldr (lambda (_g2380923813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2381023816_
                               _g2381123818_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2381023816_
                                          (cons _g2380923813_ '())))
                              _g2381123818_))
                      '()
                      _L23380_
                      _L23310_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2363723648_))))
                         (_g2363523821_
                          (_generate122347_
                           _L23623_
                           _rest23252_
                           _K23253_
                           _E23254_)))))
                   _g2360923620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2360723825_
                                                   (gx#genident 'rest)))))
                                            _g2358123592_))))
                                   (_g2357923829_ (gx#genident 'hd)))))
                             _g2355323564_))))
                    (_g2355123833_ (gx#genident 'splice-try)))))
              _g2352523536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2352323837_
                                              (gx#genident 'splice-loop)))))
                                       _g2349723508_))))
                              (_g2349523841_ (gx#genident 'splice-rest)))))
                        _g2346923480_))))
               (_g2346723845_ _tgt23249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2340823447_))))))
                                (_loop2340323427_ _target2340023421_ '()))
                              (_g2339723414_ _g2339823418_)))))
                    (_g2339723414_ _g2339823418_))
                (_g2339723414_ _g2339823418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2339623849_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2385223855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2385323858_)
                  (cons _g2385223855_ _g2385323858_))
                '()
                _L23310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2333723376_))))))
                     (_loop2333223356_ _target2332923350_ '()))
                   (_g2332623343_ _g2332723347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2332623343_ _g2332723347_))
                                             (_g2332623343_ _g2332723347_)))))
                                 (_g2332523861_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2386423867_
                                                     _g2386523870_)
                                              (cons _g2386423867_
                                                    _g2386523870_))
                                            '()
                                            _L23310_)))))))
                           _var2326723306_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2326223286_
                                                   _target2325923280_
                                                   '()))
                                                (_g2325623273_
                                                 _g2325723277_)))))
                                      (_g2325623273_ _g2325723277_))
                                  (_g2325623273_ _g2325723277_)))))
                      (_g2325523873_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23251_)))))
                 (_generate-simple-vector22350_
                  (lambda (_tgt23091_
                           _body23093_
                           _start23094_
                           _K23095_
                           _E23096_)
                    (let _recur23098_ ((_rest23101_ _body23093_)
                                       (_off23103_ _start23094_))
                      (let* ((_g2310623118_
                              (lambda (_g2310723114_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2310723114_)))
                             (_g2310523129_
                              (lambda (_g2310723122_) ((lambda () _K23095_))))
                             (_g2310423245_
                              (lambda (_g2310723133_)
                                (if (gx#stx-pair? _g2310723133_)
                                    (let ((_e2311023136_
                                           (gx#syntax-e _g2310723133_)))
                                      (let ((_hd2311123140_
                                             (##car _e2311023136_))
                                            (_tl2311223143_
                                             (##cdr _e2311023136_)))
                                        ((lambda (_L23146_ _L23148_)
                                           (let* ((_g2316323182_
                                                   (lambda (_g2316423178_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2316423178_)))
                                                  (_g2316223241_
                                                   (lambda (_g2316423186_)
                                                     (if (gx#stx-pair?
                                                          _g2316423186_)
                                                         (let ((_e2316823189_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2316423186_)))
                   (let ((_hd2316923193_ (##car _e2316823189_))
                         (_tl2317023196_ (##cdr _e2316823189_)))
                     (if (gx#stx-pair? _tl2317023196_)
                         (let ((_e2317123199_ (gx#syntax-e _tl2317023196_)))
                           (let ((_hd2317223203_ (##car _e2317123199_))
                                 (_tl2317323206_ (##cdr _e2317123199_)))
                             (if (gx#stx-pair? _tl2317323206_)
                                 (let ((_e2317423209_
                                        (gx#syntax-e _tl2317323206_)))
                                   (let ((_hd2317523213_ (##car _e2317423209_))
                                         (_tl2317623216_
                                          (##cdr _e2317423209_)))
                                     (if (gx#stx-null? _tl2317623216_)
                                         ((lambda (_L23219_ _L23221_ _L23222_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L23222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23221_ (cons _L23219_ '())))
                                    '()))
                        '())
                  (cons (_generate122347_
                         _L23222_
                         _L23148_
                         (_recur23098_ _L23146_ (fx1+ _off23103_))
                         _E23096_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2317523213_
                                          _hd2317223203_
                                          _hd2316923193_)
                                         (_g2316323182_ _g2316423186_))))
                                 (_g2316323182_ _g2316423186_))))
                         (_g2316323182_ _g2316423186_))))
                 (_g2316323182_ _g2316423186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2316223241_
                                              (list (gx#genident 'e)
                                                    _tgt23091_
                                                    _off23103_))))
                                         _tl2311223143_
                                         _hd2311123140_)))
                                    (_g2310523129_ _g2310723133_)))))
                        (_g2310423245_ _rest23101_)))))
                 (_generate-list-vector22351_
                  (lambda (_tgt23001_
                           _body23003_
                           _tgt->list23004_
                           _start23005_
                           _K23006_
                           _E23007_)
                    (let* ((_g2300923028_
                            (lambda (_g2301023024_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2301023024_)))
                           (_g2300823087_
                            (lambda (_g2301023032_)
                              (if (gx#stx-pair? _g2301023032_)
                                  (let ((_e2301423035_
                                         (gx#syntax-e _g2301023032_)))
                                    (let ((_hd2301523039_
                                           (##car _e2301423035_))
                                          (_tl2301623042_
                                           (##cdr _e2301423035_)))
                                      (if (gx#stx-pair? _tl2301623042_)
                                          (let ((_e2301723045_
                                                 (gx#syntax-e _tl2301623042_)))
                                            (let ((_hd2301823049_
                                                   (##car _e2301723045_))
                                                  (_tl2301923052_
                                                   (##cdr _e2301723045_)))
                                              (if (gx#stx-pair? _tl2301923052_)
                                                  (let ((_e2302023055_
                                                         (gx#syntax-e
                                                          _tl2301923052_)))
                                                    (let ((_hd2302123059_
                                                           (##car _e2302023055_))
                                                          (_tl2302223062_
                                                           (##cdr _e2302023055_)))
                                                      (if (gx#stx-null?
                                                           _tl2302223062_)
                                                          ((lambda (_L23065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23067_
                            _L23068_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L23068_
                                               (cons (cons _L23065_
                                                           (cons _L23067_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122347_
                                          _L23068_
                                          _body23003_
                                          _K23006_
                                          _E23007_)
                                         '())))))
                   _hd2302123059_
                   _hd2301823049_
                   _hd2301523039_)
                  (_g2300923028_ _g2301023032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2300923028_
                                                   _g2301023032_))))
                                          (_g2300923028_ _g2301023032_))))
                                  (_g2300923028_ _g2301023032_)))))
                      (_g2300823087_
                       (list (gx#genident 'e) _tgt23001_ _tgt->list23004_)))))
                 (_generate-struct22352_
                  (lambda (_info22734_
                           _tgt22736_
                           _body22737_
                           _K22738_
                           _E22739_)
                    (let* ((_rtd22741_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info22734_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info22734_)
                                '#f))
                           (_fields22751_
                            (let _lp22744_ ((_rtd22747_ _rtd22741_)
                                            (_k22749_ '0))
                              (if _rtd22747_
                                  (_lp22744_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd22747_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd22747_))
                                        _k22749_))
                                  _k22749_)))
                           (_final?22754_
                            (if _rtd22741_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd22741_))
                                '#f))
                           (_g2275722765_
                            (lambda (_g2275822761_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2275822761_)))
                           (_g2275622997_
                            (lambda (_g2275822769_)
                              ((lambda (_L22772_)
                                 (let ()
                                   (let* ((_g2278722795_
                                           (lambda (_g2278822791_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2278822791_)))
                                          (_g2278622993_
                                           (lambda (_g2278822799_)
                                             ((lambda (_L22802_)
                                                (let ()
                                                  (let* ((_g2281522823_
                                                          (lambda (_g2281622819_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2281622819_)))
                                                         (_g2281422989_
                                                          (lambda (_g2281622827_)
                                                            ((lambda (_L22830_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2284622867_
                                   (lambda (_g2284722863_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2284722863_)))
                                  (_g2284522910_
                                   (lambda (_g2284722871_)
                                     (if (gx#stx-pair? _g2284722871_)
                                         (let ((_e2285622874_
                                                (gx#syntax-e _g2284722871_)))
                                           (let ((_hd2285722878_
                                                  (##car _e2285622874_))
                                                 (_tl2285822881_
                                                  (##cdr _e2285622874_)))
                                             (if (gx#stx-datum? _hd2285722878_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2285722878_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl2285822881_)
                                                         (let ((_e2285922884_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2285822881_)))
                   (let ((_hd2286022888_ (##car _e2285922884_))
                         (_tl2286122891_ (##cdr _e2285922884_)))
                     (if (gx#stx-null? _tl2286122891_)
                         ((lambda (_L22894_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L22830_
                                              (cons _L22802_
                                                    (cons _L22772_ '())))
                                        (cons (_generate-list-vector22351_
                                               _tgt22736_
                                               _L22894_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K22738_
                                               _E22739_)
                                              (cons _E22739_ '())))))
                          _hd2286022888_)
                         (_g2284622867_ _g2284722871_))))
                 (_g2284622867_ _g2284722871_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2284622867_
                                                      _g2284722871_))
                                                 (_g2284622867_
                                                  _g2284722871_))))
                                         (_g2284622867_ _g2284722871_))))
                                  (_g2284422985_
                                   (lambda (_g2284722914_)
                                     (if (gx#stx-pair? _g2284722914_)
                                         (let ((_e2284922917_
                                                (gx#syntax-e _g2284722914_)))
                                           (let ((_hd2285022921_
                                                  (##car _e2284922917_))
                                                 (_tl2285122924_
                                                  (##cdr _e2284922917_)))
                                             (if (gx#stx-datum? _hd2285022921_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2285022921_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl2285122924_)
                                                         (let ((_e2285222927_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2285122924_)))
                   (let ((_hd2285322931_ (##car _e2285222927_))
                         (_tl2285422934_ (##cdr _e2285222927_)))
                     (if (gx#stx-null? _tl2285422934_)
                         ((lambda (_L22937_)
                            (let ((_K22950_
                                   (_generate-simple-vector22350_
                                    _tgt22736_
                                    _L22937_
                                    '1
                                    _K22738_
                                    _E22739_)))
                              (if (if _rtd22741_
                                      (fx<= (gx#stx-length _L22937_)
                                            _fields22751_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L22830_
                                                    (cons _L22802_
                                                          (cons _L22772_ '())))
                                              (cons _K22950_
                                                    (cons _E22739_ '()))))
                                  (let* ((_g2295322961_
                                          (lambda (_g2295422957_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2295422957_)))
                                         (_g2295222981_
                                          (lambda (_g2295422965_)
                                            ((lambda (_L22968_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L22830_
                                       (cons _L22802_ (cons _L22772_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L22968_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L22772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K22950_ (cons _E22739_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2295422965_))))
                                    (_g2295222981_
                                     (gx#stx-length _L22937_))))))
                          _hd2285322931_)
                         (_g2284522910_ _g2284722914_))))
                 (_g2284522910_ _g2284722914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2284522910_
                                                      _g2284722914_))
                                                 (_g2284522910_
                                                  _g2284722914_))))
                                         (_g2284522910_ _g2284722914_)))))
                             (_g2284422985_ _body22737_)))))
                     _g2281622827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2281422989_
                                                     (if _final?22754_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g2278822799_))))
                                     (_g2278622993_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info22734_)))))
                               _g2275822769_))))
                      (_g2275622997_ _tgt22736_))))
                 (_generate-class22353_
                  (lambda (_info22355_
                           _tgt22357_
                           _body22358_
                           _K22359_
                           _E22360_)
                    (letrec* ((_rtd22362_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22355_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22355_)
                                   '#f))
                              (_known-slot?22364_
                               (if _rtd22362_
                                   (lambda (_key22728_)
                                     (let ((_slot22731_
                                            (keyword->symbol
                                             (gx#stx-e _key22728_))))
                                       (_rtd-known-slot?22366_
                                        _rtd22362_
                                        _slot22731_)))
                                   false))
                              (_final?22365_
                               (if _rtd22362_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22362_))
                                   '#f))
                              (_rtd-known-slot?22366_
                               (lambda (_rtd22715_ _slot22717_)
                                 (if _rtd22715_
                                     (let ((_$e22719_
                                            (memq _slot22717_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd22715_))))
                                       (if _$e22719_
                                           _$e22719_
                                           (ormap (lambda (_g2272222724_)
                                                    (_rtd-known-slot?22366_
                                                     _g2272222724_
                                                     _slot22717_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd22715_)))))
                                     '#f)))
                              (_recur22367_
                               (lambda (_klass22501_ _rest22503_)
                                 (let* ((_g2250622522_
                                         (lambda (_g2250722518_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2250722518_)))
                                        (_g2250522533_
                                         (lambda (_g2250722526_)
                                           ((lambda () _K22359_))))
                                        (_g2250422711_
                                         (lambda (_g2250722537_)
                                           (if (gx#stx-pair? _g2250722537_)
                                               (let ((_e2251122540_
                                                      (gx#syntax-e
                                                       _g2250722537_)))
                                                 (let ((_hd2251222544_
                                                        (##car _e2251122540_))
                                                       (_tl2251322547_
                                                        (##cdr _e2251122540_)))
                                                   (if (gx#stx-pair?
                                                        _tl2251322547_)
                                                       (let ((_e2251422550_
                                                              (gx#syntax-e
                                                               _tl2251322547_)))
                                                         (let ((_hd2251522554_
                                                                (##car _e2251422550_))
                                                               (_tl2251622557_
                                                                (##cdr _e2251422550_)))
                                                           ((lambda (_L22560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22562_
                             _L22563_)
                      (let* ((_g2257922587_
                              (lambda (_g2258022583_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2258022583_)))
                             (_g2257822707_
                              (lambda (_g2258022591_)
                                ((lambda (_L22594_)
                                   (let ()
                                     (let* ((_g2260622614_
                                             (lambda (_g2260722610_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2260722610_)))
                                            (_g2260522703_
                                             (lambda (_g2260722618_)
                                               ((lambda (_L22621_)
                                                  (let ()
                                                    (let* ((_g2263422642_
                                                            (lambda (_g2263522638_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2263522638_)))
                                                           (_g2263322699_
                                                            (lambda (_g2263522646_)
                                                              ((lambda (_L22649_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2266222670_
                                   (lambda (_g2266322666_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2266322666_)))
                                  (_g2266122695_
                                   (lambda (_g2266322674_)
                                     ((lambda (_L22677_)
                                        (let ()
                                          (let ((_K22690_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L22677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L22594_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L22649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122347_
                            _L22677_
                            _L22562_
                            (_recur22367_ _klass22501_ _L22560_)
                            _E22360_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22364_ _L22563_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22621_
                                                  (cons _L22563_ '())))
                                      '()))
                          '())
                    (cons _K22690_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22621_
                                                  (cons _L22563_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22649_
                                      (cons _K22690_ (cons _E22360_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2266322674_))))
                             (_g2266122695_ (gx#genident 'e)))))
                       _g2263522646_))))
              (_g2263322699_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2260722618_))))
                                       (_g2260522703_ _klass22501_))))
                                 _g2258022591_))))
                        (_g2257822707_ _tgt22357_)))
                    _tl2251622557_
                    _hd2251522554_
                    _hd2251222544_)))
               (_g2250522533_ _g2250722537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2250522533_
                                                _g2250722537_)))))
                                   (_g2250422711_ _rest22503_)))))
                      (let* ((_g2236922377_
                              (lambda (_g2237022373_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2237022373_)))
                             (_g2236822497_
                              (lambda (_g2237022381_)
                                ((lambda (_L22384_)
                                   (let ()
                                     (let* ((_g2239922407_
                                             (lambda (_g2240022403_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2240022403_)))
                                            (_g2239822493_
                                             (lambda (_g2240022411_)
                                               ((lambda (_L22414_)
                                                  (let ()
                                                    (let* ((_g2242722435_
                                                            (lambda (_g2242822431_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2242822431_)))
                                                           (_g2242622489_
                                                            (lambda (_g2242822439_)
                                                              ((lambda (_L22442_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2245522463_
                                   (lambda (_g2245622459_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2245622459_)))
                                  (_g2245422485_
                                   (lambda (_g2245622467_)
                                     ((lambda (_L22470_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L22470_
                                                              (cons _L22442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22414_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L22384_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22414_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22367_ _L22384_ _body22358_)
                                        '())))
                      (cons _E22360_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2245622467_))))
                             (_g2245422485_
                              (if _final?22365_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2242822439_))))
              (_g2242622489_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2240022411_))))
                                       (_g2239822493_ _tgt22357_))))
                                 _g2237022381_))))
                        (_g2236822497_ (gx#genident 'class)))))))
          (_generate122347_ _tgt22342_ _ptree22343_ _K22344_ _E22345_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21339_ _tgt-lst21341_ _clauses21342_)
        (letrec ((_parse-body21344_
                  (lambda (_hd-len22162_)
                    (let _lp22165_ ((_rest22168_ _clauses21342_)
                                    (_r22170_ '()))
                      (let* ((_g2217322185_
                              (lambda (_g2217422181_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2217422181_)))
                             (_g2217222196_
                              (lambda (_g2217422189_) ((lambda () _r22170_))))
                             (_g2217122336_
                              (lambda (_g2217422200_)
                                (if (gx#stx-pair? _g2217422200_)
                                    (let ((_e2217722203_
                                           (gx#syntax-e _g2217422200_)))
                                      (let ((_hd2217822207_
                                             (##car _e2217722203_))
                                            (_tl2217922210_
                                             (##cdr _e2217722203_)))
                                        ((lambda (_L22213_ _L22215_)
                                           (let* ((_g2223222248_
                                                   (lambda (_g2223322244_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2223322244_)))
                                                  (_g2223122259_
                                                   (lambda (_g2223322252_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21339_
                                                         _L22215_)))))
                                                  (_g2223022300_
                                                   (lambda (_g2223322263_)
                                                     (if (gx#stx-pair?
                                                          _g2223322263_)
                                                         (let ((_e2224022266_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2223322263_)))
                   (let ((_hd2224122270_ (##car _e2224022266_))
                         (_tl2224222273_ (##cdr _e2224022266_)))
                     ((lambda (_L22276_ _L22278_)
                        (if (if (gx#stx-list? _L22278_)
                                (if (fx= (gx#stx-length _L22278_)
                                         _hd-len22162_)
                                    (if (gx#stx-list? _L22276_)
                                        (not (gx#stx-null? _L22276_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22165_
                             _L22213_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2229022292_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2229022292_
                                                   _stx21339_))
                                                _L22278_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22276_)
                                                      (let ((_$e22296_
                                                             (gx#stx-source
                                                              _L22215_)))
                                                        (if _$e22296_
                                                            _$e22296_
                                                            (gx#stx-source
                                                             _stx21339_))))
                                                     '())))
                                   _r22170_))
                            (_g2223122259_ _g2223322263_)))
                      _tl2224222273_
                      _hd2224122270_)))
                 (_g2223122259_ _g2223322263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2222922332_
                                                   (lambda (_g2223322304_)
                                                     (if (gx#stx-pair?
                                                          _g2223322304_)
                                                         (let ((_e2223522307_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2223322304_)))
                   (let ((_hd2223622311_ (##car _e2223522307_))
                         (_tl2223722314_ (##cdr _e2223522307_)))
                     (if (gx#identifier? _hd2223622311_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g34858_|
                              _hd2223622311_)
                             ((lambda (_L22317_)
                                (if (if (gx#stx-list? _L22317_)
                                        (not (gx#stx-null? _L22317_))
                                        '#f)
                                    (if (gx#stx-null? _L22213_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22317_)
                         (let ((_$e22328_ (gx#stx-source _L22215_)))
                           (if _$e22328_
                               _$e22328_
                               (gx#stx-source _stx21339_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22170_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21339_
                                         _L22215_))
                                    (_g2223022300_ _g2223322304_)))
                              _tl2223722314_)
                             (_g2223022300_ _g2223322304_))
                         (_g2223022300_ _g2223322304_))))
                 (_g2223022300_ _g2223322304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2222922332_ _L22215_)))
                                         _tl2217922210_
                                         _hd2217822207_)))
                                    (_g2217222196_ _g2217422200_)))))
                        (_g2217122336_ _rest22168_)))))
                 (_generate-body21346_
                  (lambda (_body21979_)
                    (let* ((_g2198221990_
                            (lambda (_g2198321986_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2198321986_)))
                           (_g2198122158_
                            (lambda (_g2198321994_)
                              ((lambda (_L21997_)
                                 (let ()
                                   (let* ((_g2200922026_
                                           (lambda (_g2201022022_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2201022022_)))
                                          (_g2200822154_
                                           (lambda (_g2201022030_)
                                             (if (gx#stx-pair/null?
                                                  _g2201022030_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2201022030_)
                                                           '0)
                                                     (let ((_g34859_
                                                            (gx#syntax-split-splice
                                                             _g2201022030_
                                                             '0)))
                                                       (begin
                                                         (let ((_g34860_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34859_)))
                   (if (not (fx= _g34860_ 2))
                       (error "Context expects 2 values" _g34860_)))
                 (let ((_target2201222033_ (values-ref _g34859_ 0))
                       (_tl2201422036_ (values-ref _g34859_ 1)))
                   (if (gx#stx-null? _tl2201422036_)
                       (letrec ((_loop2201522039_
                                 (lambda (_hd2201322043_ _target2201922046_)
                                   (if (gx#stx-pair? _hd2201322043_)
                                       (let ((_e2201622049_
                                              (gx#syntax-e _hd2201322043_)))
                                         (let ((_lp-hd2201722053_
                                                (##car _e2201622049_))
                                               (_lp-tl2201822056_
                                                (##cdr _e2201622049_)))
                                           (_loop2201522039_
                                            _lp-tl2201822056_
                                            (cons _lp-hd2201722053_
                                                  _target2201922046_))))
                                       (let ((_target2202022059_
                                              (reverse _target2201922046_)))
                                         ((lambda (_L22063_)
                                            (let ()
                                              (let* ((_g2208022088_
                                                      (lambda (_g2208122084_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2208122084_)))
                                                     (_g2207922142_
                                                      (lambda (_g2208122092_)
                                                        ((lambda (_L22095_)
                                                           (let ()
                                                             (let* ((_g2210822116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2210922112_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2210922112_)))
                            (_g2210722138_
                             (lambda (_g2210922120_)
                               ((lambda (_L22123_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L21997_
                                                              (cons _L22095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L22123_ '()))))))
                                _g2210922120_))))
                       (_g2210722138_
                        (_generate-clauses21347_
                         _body21979_
                         (cons _L21997_ '()))))))
                 _g2208122092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2207922142_
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
                                          (foldr (lambda (_g2214522148_
                                                          _g2214622151_)
                                                   (cons _g2214522148_
                                                         _g2214622151_))
                                                 '()
                                                 _L22063_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21339_))))))
                                          _target2202022059_))))))
                         (_loop2201522039_ _target2201222033_ '()))
                       (_g2200922026_ _g2201022030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2200922026_
                                                      _g2201022030_))
                                                 (_g2200922026_
                                                  _g2201022030_)))))
                                     (_g2200822154_ _tgt-lst21341_))))
                               _g2198321994_))))
                      (_g2198122158_ (gx#genident 'E)))))
                 (_generate-clauses21347_
                  (lambda (_rest21661_ _E21663_)
                    (let* ((_g2166721683_
                            (lambda (_g2166821679_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2166821679_)))
                           (_g2166621694_
                            (lambda (_g2166821687_) ((lambda () _E21663_))))
                           (_g2166521870_
                            (lambda (_g2166821698_)
                              (if (gx#stx-pair? _g2166821698_)
                                  (let ((_e2167521701_
                                         (gx#syntax-e _g2166821698_)))
                                    (let ((_hd2167621705_
                                           (##car _e2167521701_))
                                          (_tl2167721708_
                                           (##cdr _e2167521701_)))
                                      ((lambda (_L21711_ _L21713_)
                                         (let* ((_g2172621745_
                                                 (lambda (_g2172721741_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2172721741_)))
                                                (_g2172521866_
                                                 (lambda (_g2172721749_)
                                                   (if (gx#stx-pair?
                                                        _g2172721749_)
                                                       (let ((_e2173121752_
                                                              (gx#syntax-e
                                                               _g2172721749_)))
                                                         (let ((_hd2173221756_
                                                                (##car _e2173121752_))
                                                               (_tl2173321759_
                                                                (##cdr _e2173121752_)))
                                                           (if (gx#stx-pair?
                                                                _tl2173321759_)
                                                               (let ((_e2173421762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2173321759_)))
                         (let ((_hd2173521766_ (##car _e2173421762_))
                               (_tl2173621769_ (##cdr _e2173421762_)))
                           (if (gx#stx-pair? _tl2173621769_)
                               (let ((_e2173721772_
                                      (gx#syntax-e _tl2173621769_)))
                                 (let ((_hd2173821776_ (##car _e2173721772_))
                                       (_tl2173921779_ (##cdr _e2173721772_)))
                                   (if (gx#stx-null? _tl2173921779_)
                                       ((lambda (_L21782_ _L21784_ _L21785_)
                                          (let* ((_g2180221817_
                                                  (lambda (_g2180321813_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2180321813_)))
                                                 (_g2180121862_
                                                  (lambda (_g2180321821_)
                                                    (if (gx#stx-pair?
                                                         _g2180321821_)
                                                        (let ((_e2180621824_
                                                               (gx#syntax-e
                                                                _g2180321821_)))
                                                          (let ((_hd2180721828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2180621824_))
                        (_tl2180821831_ (##cdr _e2180621824_)))
                    (if (gx#stx-pair? _tl2180821831_)
                        (let ((_e2180921834_ (gx#syntax-e _tl2180821831_)))
                          (let ((_hd2181021838_ (##car _e2180921834_))
                                (_tl2181121841_ (##cdr _e2180921834_)))
                            (if (gx#stx-null? _tl2181121841_)
                                ((lambda (_L21844_ _L21846_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L21785_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L21846_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L21844_ '())))))
                                 _hd2181021838_
                                 _hd2180721828_)
                                (_g2180221817_ _g2180321821_))))
                        (_g2180221817_ _g2180321821_))))
                (_g2180221817_ _g2180321821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2180121862_
                                             (list (if (gx#stx-e _L21784_)
                                                       (_generate121348_
                                                        _L21784_
                                                        _L21782_
                                                        _E21663_)
                                                       _L21782_)
                                                   (_generate-clauses21347_
                                                    _L21711_
                                                    (cons _L21785_ '()))))))
                                        _hd2173821776_
                                        _hd2173521766_
                                        _hd2173221756_)
                                       (_g2172621745_ _g2172721749_))))
                               (_g2172621745_ _g2172721749_))))
                       (_g2172621745_ _g2172721749_))))
               (_g2172621745_ _g2172721749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2172521866_ _L21713_)))
                                       _tl2167721708_
                                       _hd2167621705_)))
                                  (_g2166621694_ _g2166821698_))))
                           (_g2166421975_
                            (lambda (_g2166821874_)
                              (if (gx#stx-pair? _g2166821874_)
                                  (let ((_e2167021877_
                                         (gx#syntax-e _g2166821874_)))
                                    (let ((_hd2167121881_
                                           (##car _e2167021877_))
                                          (_tl2167221884_
                                           (##cdr _e2167021877_)))
                                      (if (gx#stx-null? _tl2167221884_)
                                          ((lambda (_L21887_)
                                             (let* ((_g2189821916_
                                                     (lambda (_g2189921912_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2189921912_)))
                                                    (_g2189721971_
                                                     (lambda (_g2189921920_)
                                                       (if (gx#stx-pair?
                                                            _g2189921920_)
                                                           (let ((_e2190221923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2189921920_)))
                     (let ((_hd2190321927_ (##car _e2190221923_))
                           (_tl2190421930_ (##cdr _e2190221923_)))
                       (if (gx#stx-pair? _tl2190421930_)
                           (let ((_e2190521933_ (gx#syntax-e _tl2190421930_)))
                             (let ((_hd2190621937_ (##car _e2190521933_))
                                   (_tl2190721940_ (##cdr _e2190521933_)))
                               (if (gx#stx-pair? _tl2190721940_)
                                   (let ((_e2190821943_
                                          (gx#syntax-e _tl2190721940_)))
                                     (let ((_hd2190921947_
                                            (##car _e2190821943_))
                                           (_tl2191021950_
                                            (##cdr _e2190821943_)))
                                       (if (gx#stx-null? _tl2191021950_)
                                           ((lambda (_L21953_ _L21955_)
                                              (if (gx#stx-e _L21955_)
                                                  (_generate121348_
                                                   _L21955_
                                                   _L21953_
                                                   _E21663_)
                                                  _L21953_))
                                            _hd2190921947_
                                            _hd2190621937_)
                                           (_g2189821916_ _g2189921920_))))
                                   (_g2189821916_ _g2189921920_))))
                           (_g2189821916_ _g2189921920_))))
                   (_g2189821916_ _g2189921920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2189721971_ _L21887_)))
                                           _hd2167121881_)
                                          (_g2166521870_ _g2166821874_))))
                                  (_g2166521870_ _g2166821874_)))))
                      (_g2166421975_ _rest21661_))))
                 (_generate121348_
                  (lambda (_clause21350_ _body21352_ _E21353_)
                    (let _recur21355_ ((_rest21358_ _clause21350_)
                                       (_rest-targets21360_ _tgt-lst21341_))
                      (let* ((_g2136321375_
                              (lambda (_g2136421371_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2136421371_)))
                             (_g2136221386_
                              (lambda (_g2136421379_)
                                ((lambda () _body21352_))))
                             (_g2136121657_
                              (lambda (_g2136421390_)
                                (if (gx#stx-pair? _g2136421390_)
                                    (let ((_e2136721393_
                                           (gx#syntax-e _g2136421390_)))
                                      (let ((_hd2136821397_
                                             (##car _e2136721393_))
                                            (_tl2136921400_
                                             (##cdr _e2136721393_)))
                                        ((lambda (_L21403_ _L21405_)
                                           (let* ((_g2142221434_
                                                   (lambda (_g2142321430_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2142321430_)))
                                                  (_g2142121653_
                                                   (lambda (_g2142321438_)
                                                     (if (gx#stx-pair?
                                                          _g2142321438_)
                                                         (let ((_e2142621441_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2142321438_)))
                   (let ((_hd2142721445_ (##car _e2142621441_))
                         (_tl2142821448_ (##cdr _e2142621441_)))
                     ((lambda (_L21451_ _L21453_)
                        (let* ((_g2146521473_
                                (lambda (_g2146621469_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2146621469_)))
                               (_g2146421649_
                                (lambda (_g2146621477_)
                                  ((lambda (_L21480_)
                                     (let ()
                                       (let* ((_g2149221509_
                                               (lambda (_g2149321505_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2149321505_)))
                                              (_g2149121645_
                                               (lambda (_g2149321513_)
                                                 (if (gx#stx-pair/null?
                                                      _g2149321513_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2149321513_)
                                                               '0)
                                                         (let ((_g34861_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2149321513_
                         '0)))
                   (begin
                     (let ((_g34862_ (values-count _g34861_)))
                       (if (not (fx= _g34862_ 2))
                           (error "Context expects 2 values" _g34862_)))
                     (let ((_target2149521516_ (values-ref _g34861_ 0))
                           (_tl2149721519_ (values-ref _g34861_ 1)))
                       (if (gx#stx-null? _tl2149721519_)
                           (letrec ((_loop2149821522_
                                     (lambda (_hd2149621526_ _var2150221529_)
                                       (if (gx#stx-pair? _hd2149621526_)
                                           (let ((_e2149921532_
                                                  (gx#syntax-e
                                                   _hd2149621526_)))
                                             (let ((_lp-hd2150021536_
                                                    (##car _e2149921532_))
                                                   (_lp-tl2150121539_
                                                    (##cdr _e2149921532_)))
                                               (_loop2149821522_
                                                _lp-tl2150121539_
                                                (cons _lp-hd2150021536_
                                                      _var2150221529_))))
                                           (let ((_var2150321542_
                                                  (reverse _var2150221529_)))
                                             ((lambda (_L21546_)
                                                (let ()
                                                  (let* ((_g2156321571_
                                                          (lambda (_g2156421567_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2156421567_)))
                                                         (_g2156221641_
                                                          (lambda (_g2156421575_)
                                                            ((lambda (_L21578_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2159121599_
                                 (lambda (_g2159221595_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2159221595_)))
                                (_g2159021629_
                                 (lambda (_g2159221603_)
                                   ((lambda (_L21606_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2162021623_
                                                              _g2162121626_)
                                                       (cons _g2162021623_
                                                             _g2162121626_))
                                                     '()
                                                     _L21546_))
                                            (cons _L21578_ '())))
                                '()))
                    '())
              (cons _L21606_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2159221603_))))
                           (_g2159021629_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21339_
                             _L21453_
                             _L21405_
                             (cons _L21480_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2163221635_
                                                     _g2163321638_)
                                              (cons _g2163221635_
                                                    _g2163321638_))
                                            '()
                                            _L21546_)))
                             _E21353_)))))
                     _g2156421575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2156221641_
                                                     (_recur21355_
                                                      _L21403_
                                                      _L21451_)))))
                                              _var2150321542_))))))
                             (_loop2149821522_ _target2149521516_ '()))
                           (_g2149221509_ _g2149321513_)))))
                 (_g2149221509_ _g2149321513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2149221509_
                                                      _g2149321513_)))))
                                         (_g2149121645_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21405_)))))
                                   _g2146621477_))))
                          (_g2146421649_ (gx#genident 'K))))
                      _tl2142821448_
                      _hd2142721445_)))
                 (_g2142221434_ _g2142321438_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2142121653_
                                              _rest-targets21360_)))
                                         _tl2136921400_
                                         _hd2136821397_)))
                                    (_g2136221386_ _g2136421390_)))))
                        (_g2136121657_ _rest21358_))))))
          (_generate-body21346_
           (_parse-body21344_ (gx#stx-length _tgt-lst21341_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21241_ _tgt21243_ _clauses21244_)
        (letrec ((_reclause21246_
                  (lambda (_clause21249_)
                    (let* ((_g2125421269_
                            (lambda (_g2125521265_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2125521265_)))
                           (_g2125321280_
                            (lambda (_g2125521273_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21241_
                                  _clause21249_)))))
                           (_g2125221314_
                            (lambda (_g2125521284_)
                              (if (gx#stx-pair? _g2125521284_)
                                  (let ((_e2126121287_
                                         (gx#syntax-e _g2125521284_)))
                                    (let ((_hd2126221291_
                                           (##car _e2126121287_))
                                          (_tl2126321294_
                                           (##cdr _e2126121287_)))
                                      ((lambda (_L21297_ _L21299_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21299_ '()) _L21297_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2126321294_
                                       _hd2126221291_)))
                                  (_g2125321280_ _g2125521284_))))
                           (_g2125121335_
                            (lambda (_g2125521318_)
                              (if (gx#stx-pair? _g2125521318_)
                                  (let ((_e2125621321_
                                         (gx#syntax-e _g2125521318_)))
                                    (let ((_hd2125721325_
                                           (##car _e2125621321_))
                                          (_tl2125821328_
                                           (##cdr _e2125621321_)))
                                      (if (gx#identifier? _hd2125721325_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g34863_|
                                               _hd2125721325_)
                                              ((lambda () _clause21249_))
                                              (_g2125221314_ _g2125521318_))
                                          (_g2125221314_ _g2125521318_))))
                                  (_g2125221314_ _g2125521318_)))))
                      (_g2125121335_ _clause21249_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21241_
           (cons _tgt21243_ '())
           (gx#stx-map _reclause21246_ _clauses21244_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx28448_)
        (let* ((_g2845328482_
                (lambda (_g2845428478_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2845428478_)))
               (_g2845228590_
                (lambda (_g2845428486_)
                  (if (gx#stx-pair? _g2845428486_)
                      (let ((_e2847128489_ (gx#syntax-e _g2845428486_)))
                        (let ((_hd2847228493_ (##car _e2847128489_))
                              (_tl2847328496_ (##cdr _e2847128489_)))
                          (if (gx#stx-pair? _tl2847328496_)
                              (let ((_e2847428499_
                                     (gx#syntax-e _tl2847328496_)))
                                (let ((_hd2847528503_ (##car _e2847428499_))
                                      (_tl2847628506_ (##cdr _e2847428499_)))
                                  ((lambda (_L28509_ _L28511_)
                                     (if (gx#stx-list? _L28509_)
                                         (let* ((_g2852528533_
                                                 (lambda (_g2852628529_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2852628529_)))
                                                (_g2852428586_
                                                 (lambda (_g2852628537_)
                                                   ((lambda (_L28540_)
                                                      (let ()
                                                        (let* ((_g2855228560_
                                                                (lambda (_g2855328556_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2855328556_)))
                       (_g2855128582_
                        (lambda (_g2855328564_)
                          ((lambda (_L28567_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L28540_
                                                         (cons _L28511_ '()))
                                                   '())
                                             (cons _L28567_ '()))))))
                           _g2855328564_))))
                  (_g2855128582_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx28448_
                    _L28540_
                    _L28509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2852628537_))))
                                           (_g2852428586_
                                            (gx#genident _L28511_)))
                                         (_g2845328482_ _g2845428486_)))
                                   _tl2847628506_
                                   _hd2847528503_)))
                              (_g2845328482_ _g2845428486_))))
                      (_g2845328482_ _g2845428486_))))
               (_g2845128695_
                (lambda (_g2845428594_)
                  (if (gx#stx-pair? _g2845428594_)
                      (let ((_e2846328597_ (gx#syntax-e _g2845428594_)))
                        (let ((_hd2846428601_ (##car _e2846328597_))
                              (_tl2846528604_ (##cdr _e2846328597_)))
                          (if (gx#stx-pair? _tl2846528604_)
                              (let ((_e2846628607_
                                     (gx#syntax-e _tl2846528604_)))
                                (let ((_hd2846728611_ (##car _e2846628607_))
                                      (_tl2846828614_ (##cdr _e2846628607_)))
                                  (if (gx#identifier? _hd2846728611_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34864_|
                                           _hd2846728611_)
                                          ((lambda (_L28617_)
                                             (if (gx#stx-list? _L28617_)
                                                 (let* ((_g2863028638_
                                                         (lambda (_g2863128634_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2863128634_)))
                                                        (_g2862928691_
                                                         (lambda (_g2863128642_)
                                                           ((lambda (_L28645_)
                                                              (let ()
                                                                (let* ((_g2865728665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2865828661_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2865828661_)))
                               (_g2865628687_
                                (lambda (_g2865828669_)
                                  ((lambda (_L28672_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L28645_
                                                     (cons _L28672_ '()))))))
                                   _g2865828669_))))
                          (_g2865628687_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28645_ _L28617_))
                            (gx#stx-source _stx28448_))))))
                    _g2863128642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2862928691_
                                                    (gx#genident 'args)))
                                                 (_g2845228590_
                                                  _g2845428594_)))
                                           _tl2846828614_)
                                          (_g2845228590_ _g2845428594_))
                                      (_g2845228590_ _g2845428594_))))
                              (_g2845228590_ _g2845428594_))))
                      (_g2845228590_ _g2845428594_))))
               (_g2845028800_
                (lambda (_g2845428699_)
                  (if (gx#stx-pair? _g2845428699_)
                      (let ((_e2845628702_ (gx#syntax-e _g2845428699_)))
                        (let ((_hd2845728706_ (##car _e2845628702_))
                              (_tl2845828709_ (##cdr _e2845628702_)))
                          (if (gx#stx-pair? _tl2845828709_)
                              (let ((_e2845928712_
                                     (gx#syntax-e _tl2845828709_)))
                                (let ((_hd2846028716_ (##car _e2845928712_))
                                      (_tl2846128719_ (##cdr _e2845928712_)))
                                  (if (gx#identifier? _hd2846028716_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34865_|
                                           _hd2846028716_)
                                          ((lambda (_L28722_)
                                             (if (gx#stx-list? _L28722_)
                                                 (let* ((_g2873528743_
                                                         (lambda (_g2873628739_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2873628739_)))
                                                        (_g2873428796_
                                                         (lambda (_g2873628747_)
                                                           ((lambda (_L28750_)
                                                              (let ()
                                                                (let* ((_g2876228770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2876328766_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2876328766_)))
                               (_g2876128792_
                                (lambda (_g2876328774_)
                                  ((lambda (_L28777_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L28750_ '())
                                                     (cons _L28777_ '()))))))
                                   _g2876328774_))))
                          (_g2876128792_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28750_ _L28722_))
                            (gx#stx-source _stx28448_))))))
                    _g2873628747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2873428796_
                                                    (gx#genident 'e)))
                                                 (_g2845128695_
                                                  _g2845428699_)))
                                           _tl2846128719_)
                                          (_g2845128695_ _g2845428699_))
                                      (_g2845128695_ _g2845428699_))))
                              (_g2845128695_ _g2845428699_))))
                      (_g2845128695_ _g2845428699_)))))
          (_g2845028800_ _stx28448_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx28804_)
        (let* ((_g2880728831_
                (lambda (_g2880828827_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2880828827_)))
               (_g2880629043_
                (lambda (_g2880828835_)
                  (if (gx#stx-pair? _g2880828835_)
                      (let ((_e2881128838_ (gx#syntax-e _g2880828835_)))
                        (let ((_hd2881228842_ (##car _e2881128838_))
                              (_tl2881328845_ (##cdr _e2881128838_)))
                          (if (gx#stx-pair? _tl2881328845_)
                              (let ((_e2881428848_
                                     (gx#syntax-e _tl2881328845_)))
                                (let ((_hd2881528852_ (##car _e2881428848_))
                                      (_tl2881628855_ (##cdr _e2881428848_)))
                                  (if (gx#stx-pair/null? _hd2881528852_)
                                      (if (fx>= (gx#stx-length _hd2881528852_)
                                                '0)
                                          (let ((_g34866_
                                                 (gx#syntax-split-splice
                                                  _hd2881528852_
                                                  '0)))
                                            (begin
                                              (let ((_g34867_
                                                     (values-count _g34866_)))
                                                (if (not (fx= _g34867_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34867_)))
                                              (let ((_target2881728858_
                                                     (values-ref _g34866_ 0))
                                                    (_tl2881928861_
                                                     (values-ref _g34866_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2881928861_)
                                                    (letrec ((_loop2882028864_
                                                              (lambda (_hd2881828868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2882428871_)
                        (if (gx#stx-pair? _hd2881828868_)
                            (let ((_e2882128874_ (gx#syntax-e _hd2881828868_)))
                              (let ((_lp-hd2882228878_ (##car _e2882128874_))
                                    (_lp-tl2882328881_ (##cdr _e2882128874_)))
                                (_loop2882028864_
                                 _lp-tl2882328881_
                                 (cons _lp-hd2882228878_ _e2882428871_))))
                            (let ((_e2882528884_ (reverse _e2882428871_)))
                              ((lambda (_L28888_ _L28890_)
                                 (if (gx#stx-list? _L28888_)
                                     (let* ((_g2890828925_
                                             (lambda (_g2890928921_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2890928921_)))
                                            (_g2890729031_
                                             (lambda (_g2890928929_)
                                               (if (gx#stx-pair/null?
                                                    _g2890928929_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2890928929_)
                                                             '0)
                                                       (let ((_g34868_
                                                              (gx#syntax-split-splice
                                                               _g2890928929_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34868_)))
                     (if (not (fx= _g34869_ 2))
                         (error "Context expects 2 values" _g34869_)))
                   (let ((_target2891128932_ (values-ref _g34868_ 0))
                         (_tl2891328935_ (values-ref _g34868_ 1)))
                     (if (gx#stx-null? _tl2891328935_)
                         (letrec ((_loop2891428938_
                                   (lambda (_hd2891228942_ _$e2891828945_)
                                     (if (gx#stx-pair? _hd2891228942_)
                                         (let ((_e2891528948_
                                                (gx#syntax-e _hd2891228942_)))
                                           (let ((_lp-hd2891628952_
                                                  (##car _e2891528948_))
                                                 (_lp-tl2891728955_
                                                  (##cdr _e2891528948_)))
                                             (_loop2891428938_
                                              _lp-tl2891728955_
                                              (cons _lp-hd2891628952_
                                                    _$e2891828945_))))
                                         (let ((_$e2891928958_
                                                (reverse _$e2891828945_)))
                                           ((lambda (_L28962_)
                                              (let ()
                                                (let* ((_g2897828986_
                                                        (lambda (_g2897928982_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2897928982_)))
                                                       (_g2897729019_
                                                        (lambda (_g2897928990_)
                                                          ((lambda (_L28993_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L28890_
                                        _L28962_)
                                       (foldr (lambda (_g2900729011_
                                                       _g2900829014_
                                                       _g2900929016_)
                                                (cons (cons _g2900829014_
                                                            (cons _g2900729011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2900929016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L28890_
                                              _L28962_))
                                     (cons _L28993_ '()))))))
                   _g2897928990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2897729019_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx28804_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2902229025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2902329028_)
                       (cons _g2902229025_ _g2902329028_))
                     '()
                     _L28962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L28888_)))))
                                            _$e2891928958_))))))
                           (_loop2891428938_ _target2891128932_ '()))
                         (_g2890828925_ _g2890928929_)))))
               (_g2890828925_ _g2890928929_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2890828925_
                                                    _g2890928929_)))))
                                       (_g2890729031_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2903429037_
                                                           _g2903529040_)
                                                    (cons _g2903429037_
                                                          _g2903529040_))
                                                  '()
                                                  _L28890_)))))
                                     (_g2880728831_ _g2880828835_)))
                               _tl2881628855_
                               _e2882528884_))))))
              (_loop2882028864_ _target2881728858_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2880728831_
                                                     _g2880828835_)))))
                                          (_g2880728831_ _g2880828835_))
                                      (_g2880728831_ _g2880828835_))))
                              (_g2880728831_ _g2880828835_))))
                      (_g2880728831_ _g2880828835_)))))
          (_g2880629043_ _stx28804_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29049_)
        (let* ((_g2905529138_
                (lambda (_g2905629134_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2905629134_)))
               (_g2905429299_
                (lambda (_g2905629142_)
                  (if (gx#stx-pair? _g2905629142_)
                      (let ((_e2910129145_ (gx#syntax-e _g2905629142_)))
                        (let ((_hd2910229149_ (##car _e2910129145_))
                              (_tl2910329152_ (##cdr _e2910129145_)))
                          (if (gx#stx-pair? _tl2910329152_)
                              (let ((_e2910429155_
                                     (gx#syntax-e _tl2910329152_)))
                                (let ((_hd2910529159_ (##car _e2910429155_))
                                      (_tl2910629162_ (##cdr _e2910429155_)))
                                  (if (gx#stx-pair/null? _hd2910529159_)
                                      (if (fx>= (gx#stx-length _hd2910529159_)
                                                '0)
                                          (let ((_g34870_
                                                 (gx#syntax-split-splice
                                                  _hd2910529159_
                                                  '0)))
                                            (begin
                                              (let ((_g34871_
                                                     (values-count _g34870_)))
                                                (if (not (fx= _g34871_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34871_)))
                                              (let ((_target2910729165_
                                                     (values-ref _g34870_ 0))
                                                    (_tl2910929168_
                                                     (values-ref _g34870_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2910929168_)
                                                    (letrec ((_loop2911029171_
                                                              (lambda (_hd2910829175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2911429178_
                               _hd2911529180_)
                        (if (gx#stx-pair? _hd2910829175_)
                            (let ((_e2911129183_ (gx#syntax-e _hd2910829175_)))
                              (let ((_lp-hd2911229187_ (##car _e2911129183_))
                                    (_lp-tl2911329190_ (##cdr _e2911129183_)))
                                (if (gx#stx-pair? _lp-hd2911229187_)
                                    (let ((_e2911829193_
                                           (gx#syntax-e _lp-hd2911229187_)))
                                      (let ((_hd2911929197_
                                             (##car _e2911829193_))
                                            (_tl2912029200_
                                             (##cdr _e2911829193_)))
                                        (if (gx#stx-pair? _tl2912029200_)
                                            (let ((_e2912129203_
                                                   (gx#syntax-e
                                                    _tl2912029200_)))
                                              (let ((_hd2912229207_
                                                     (##car _e2912129203_))
                                                    (_tl2912329210_
                                                     (##cdr _e2912129203_)))
                                                (if (gx#stx-null?
                                                     _tl2912329210_)
                                                    (_loop2911029171_
                                                     _lp-tl2911329190_
                                                     (cons _hd2912229207_
                                                           _expr2911429178_)
                                                     (cons _hd2911929197_
                                                           _hd2911529180_))
                                                    (_g2905529138_
                                                     _g2905629142_))))
                                            (_g2905529138_ _g2905629142_))))
                                    (_g2905529138_ _g2905629142_))))
                            (let ((_expr2911629213_ (reverse _expr2911429178_))
                                  (_hd2911729216_ (reverse _hd2911529180_)))
                              (if (gx#stx-pair/null? _tl2910629162_)
                                  (if (fx>= (gx#stx-length _tl2910629162_) '0)
                                      (let ((_g34872_
                                             (gx#syntax-split-splice
                                              _tl2910629162_
                                              '0)))
                                        (begin
                                          (let ((_g34873_
                                                 (values-count _g34872_)))
                                            (if (not (fx= _g34873_ 2))
                                                (error "Context expects 2 values"
                                                       _g34873_)))
                                          (let ((_target2912429219_
                                                 (values-ref _g34872_ 0))
                                                (_tl2912629222_
                                                 (values-ref _g34872_ 1)))
                                            (if (gx#stx-null? _tl2912629222_)
                                                (letrec ((_loop2912729225_
                                                          (lambda (_hd2912529229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2913129232_)
                    (if (gx#stx-pair? _hd2912529229_)
                        (let ((_e2912829235_ (gx#syntax-e _hd2912529229_)))
                          (let ((_lp-hd2912929239_ (##car _e2912829235_))
                                (_lp-tl2913029242_ (##cdr _e2912829235_)))
                            (_loop2912729225_
                             _lp-tl2913029242_
                             (cons _lp-hd2912929239_ _body2913129232_))))
                        (let ((_body2913229245_ (reverse _body2913129232_)))
                          ((lambda (_L29249_ _L29251_ _L29252_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2927429281_
                                                           _g2927529284_)
                                                    (cons _g2927429281_
                                                          _g2927529284_))
                                                  '()
                                                  _L29251_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2927629287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2927729290_)
                        (cons _g2927629287_ _g2927729290_))
                      '()
                      _L29252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2927829293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2927929296_)
                        (cons _g2927829293_ _g2927929296_))
                      '()
                      _L29249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2913229245_
                           _expr2911629213_
                           _hd2911729216_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2912729225_
                                                   _target2912429219_
                                                   '()))
                                                (_g2905529138_
                                                 _g2905629142_)))))
                                      (_g2905529138_ _g2905629142_))
                                  (_g2905529138_ _g2905629142_)))))))
              (_loop2911029171_ _target2910729165_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2905529138_
                                                     _g2905629142_)))))
                                          (_g2905529138_ _g2905629142_))
                                      (_g2905529138_ _g2905629142_))))
                              (_g2905529138_ _g2905629142_))))
                      (_g2905529138_ _g2905629142_))))
               (_g2905329411_
                (lambda (_g2905629303_)
                  (if (gx#stx-pair? _g2905629303_)
                      (let ((_e2907729306_ (gx#syntax-e _g2905629303_)))
                        (let ((_hd2907829310_ (##car _e2907729306_))
                              (_tl2907929313_ (##cdr _e2907729306_)))
                          (if (gx#stx-pair? _tl2907929313_)
                              (let ((_e2908029316_
                                     (gx#syntax-e _tl2907929313_)))
                                (let ((_hd2908129320_ (##car _e2908029316_))
                                      (_tl2908229323_ (##cdr _e2908029316_)))
                                  (if (gx#stx-pair? _hd2908129320_)
                                      (let ((_e2908329326_
                                             (gx#syntax-e _hd2908129320_)))
                                        (let ((_hd2908429330_
                                               (##car _e2908329326_))
                                              (_tl2908529333_
                                               (##cdr _e2908329326_)))
                                          (if (gx#stx-pair? _tl2908529333_)
                                              (let ((_e2908629336_
                                                     (gx#syntax-e
                                                      _tl2908529333_)))
                                                (let ((_hd2908729340_
                                                       (##car _e2908629336_))
                                                      (_tl2908829343_
                                                       (##cdr _e2908629336_)))
                                                  (if (gx#stx-null?
                                                       _tl2908829343_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2908229323_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2908229323_)
                            '0)
                      (let ((_g34874_
                             (gx#syntax-split-splice _tl2908229323_ '0)))
                        (begin
                          (let ((_g34875_ (values-count _g34874_)))
                            (if (not (fx= _g34875_ 2))
                                (error "Context expects 2 values" _g34875_)))
                          (let ((_target2908929346_ (values-ref _g34874_ 0))
                                (_tl2909129349_ (values-ref _g34874_ 1)))
                            (if (gx#stx-null? _tl2909129349_)
                                (letrec ((_loop2909229352_
                                          (lambda (_hd2909029356_
                                                   _body2909629359_)
                                            (if (gx#stx-pair? _hd2909029356_)
                                                (let ((_e2909329362_
                                                       (gx#syntax-e
                                                        _hd2909029356_)))
                                                  (let ((_lp-hd2909429366_
                                                         (##car _e2909329362_))
                                                        (_lp-tl2909529369_
                                                         (##cdr _e2909329362_)))
                                                    (_loop2909229352_
                                                     _lp-tl2909529369_
                                                     (cons _lp-hd2909429366_
                                                           _body2909629359_))))
                                                (let ((_body2909729372_
                                                       (reverse _body2909629359_)))
                                                  ((lambda (_L29376_
                                                            _L29378_
                                                            _L29379_
                                                            _L29380_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29379_)
                                                         (cons _L29380_
                                                               (cons (cons (cons _L29379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29378_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2940229405_ _g2940329408_)
                                        (cons _g2940229405_ _g2940329408_))
                                      '()
                                      _L29376_))))
                 (_g2905429299_ _g2905629303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2909729372_
                                                   _hd2908729340_
                                                   _hd2908429330_
                                                   _hd2907829310_))))))
                                  (_loop2909229352_ _target2908929346_ '()))
                                (_g2905429299_ _g2905629303_)))))
                      (_g2905429299_ _g2905629303_))
                  (_g2905429299_ _g2905629303_))
              (_g2905429299_ _g2905629303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905429299_ _g2905629303_))))
                                      (_g2905429299_ _g2905629303_))))
                              (_g2905429299_ _g2905629303_))))
                      (_g2905429299_ _g2905629303_))))
               (_g2905229493_
                (lambda (_g2905629415_)
                  (if (gx#stx-pair? _g2905629415_)
                      (let ((_e2905829418_ (gx#syntax-e _g2905629415_)))
                        (let ((_hd2905929422_ (##car _e2905829418_))
                              (_tl2906029425_ (##cdr _e2905829418_)))
                          (if (gx#stx-pair? _tl2906029425_)
                              (let ((_e2906129428_
                                     (gx#syntax-e _tl2906029425_)))
                                (let ((_hd2906229432_ (##car _e2906129428_))
                                      (_tl2906329435_ (##cdr _e2906129428_)))
                                  (if (gx#stx-null? _hd2906229432_)
                                      (if (gx#stx-pair/null? _tl2906329435_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2906329435_)
                                                    '0)
                                              (let ((_g34876_
                                                     (gx#syntax-split-splice
                                                      _tl2906329435_
                                                      '0)))
                                                (begin
                                                  (let ((_g34877_
                                                         (values-count
                                                          _g34876_)))
                                                    (if (not (fx= _g34877_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34877_)))
                                                  (let ((_target2906429438_
                                                         (values-ref
                                                          _g34876_
                                                          0))
                                                        (_tl2906629441_
                                                         (values-ref
                                                          _g34876_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2906629441_)
                                                        (letrec ((_loop2906729444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2906529448_ _body2907129451_)
                            (if (gx#stx-pair? _hd2906529448_)
                                (let ((_e2906829454_
                                       (gx#syntax-e _hd2906529448_)))
                                  (let ((_lp-hd2906929458_
                                         (##car _e2906829454_))
                                        (_lp-tl2907029461_
                                         (##cdr _e2906829454_)))
                                    (_loop2906729444_
                                     _lp-tl2907029461_
                                     (cons _lp-hd2906929458_
                                           _body2907129451_))))
                                (let ((_body2907229464_
                                       (reverse _body2907129451_)))
                                  ((lambda (_L29468_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2948429487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2948529490_)
                    (cons _g2948429487_ _g2948529490_))
                  '()
                  _L29468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2907229464_))))))
                  (_loop2906729444_ _target2906429438_ '()))
                (_g2905329411_ _g2905629415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905329411_ _g2905629415_))
                                          (_g2905329411_ _g2905629415_))
                                      (_g2905329411_ _g2905629415_))))
                              (_g2905329411_ _g2905629415_))))
                      (_g2905329411_ _g2905629415_)))))
          (_g2905229493_ _$stx29049_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx29501_)
        (let* ((_g2950629558_
                (lambda (_g2950729554_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2950729554_)))
               (_g2950529641_
                (lambda (_g2950729562_)
                  (if (gx#stx-pair? _g2950729562_)
                      (let ((_e2953829565_ (gx#syntax-e _g2950729562_)))
                        (let ((_hd2953929569_ (##car _e2953829565_))
                              (_tl2954029572_ (##cdr _e2953829565_)))
                          (if (gx#stx-pair? _tl2954029572_)
                              (let ((_e2954129575_
                                     (gx#syntax-e _tl2954029572_)))
                                (let ((_hd2954229579_ (##car _e2954129575_))
                                      (_tl2954329582_ (##cdr _e2954129575_)))
                                  (if (gx#stx-null? _hd2954229579_)
                                      (if (gx#stx-pair/null? _tl2954329582_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2954329582_)
                                                    '0)
                                              (let ((_g34878_
                                                     (gx#syntax-split-splice
                                                      _tl2954329582_
                                                      '0)))
                                                (begin
                                                  (let ((_g34879_
                                                         (values-count
                                                          _g34878_)))
                                                    (if (not (fx= _g34879_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34879_)))
                                                  (let ((_target2954429585_
                                                         (values-ref
                                                          _g34878_
                                                          0))
                                                        (_tl2954629588_
                                                         (values-ref
                                                          _g34878_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2954629588_)
                                                        (letrec ((_loop2954729591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2954529595_ _body2955129598_)
                            (if (gx#stx-pair? _hd2954529595_)
                                (let ((_e2954829601_
                                       (gx#syntax-e _hd2954529595_)))
                                  (let ((_lp-hd2954929605_
                                         (##car _e2954829601_))
                                        (_lp-tl2955029608_
                                         (##cdr _e2954829601_)))
                                    (_loop2954729591_
                                     _lp-tl2955029608_
                                     (cons _lp-hd2954929605_
                                           _body2955129598_))))
                                (let ((_body2955229611_
                                       (reverse _body2955129598_)))
                                  ((lambda (_L29615_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2963229635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2963329638_)
                    (cons _g2963229635_ _g2963329638_))
                  '()
                  _L29615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2955229611_))))))
                  (_loop2954729591_ _target2954429585_ '()))
                (_g2950629558_ _g2950729562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2950629558_ _g2950729562_))
                                          (_g2950629558_ _g2950729562_))
                                      (_g2950629558_ _g2950729562_))))
                              (_g2950629558_ _g2950729562_))))
                      (_g2950629558_ _g2950729562_))))
               (_g2950429767_
                (lambda (_g2950729645_)
                  (if (gx#stx-pair? _g2950729645_)
                      (let ((_e2951329648_ (gx#syntax-e _g2950729645_)))
                        (let ((_hd2951429652_ (##car _e2951329648_))
                              (_tl2951529655_ (##cdr _e2951329648_)))
                          (if (gx#stx-pair? _tl2951529655_)
                              (let ((_e2951629658_
                                     (gx#syntax-e _tl2951529655_)))
                                (let ((_hd2951729662_ (##car _e2951629658_))
                                      (_tl2951829665_ (##cdr _e2951629658_)))
                                  (if (gx#stx-pair? _hd2951729662_)
                                      (let ((_e2951929668_
                                             (gx#syntax-e _hd2951729662_)))
                                        (let ((_hd2952029672_
                                               (##car _e2951929668_))
                                              (_tl2952129675_
                                               (##cdr _e2951929668_)))
                                          (if (gx#stx-pair? _hd2952029672_)
                                              (let ((_e2952229678_
                                                     (gx#syntax-e
                                                      _hd2952029672_)))
                                                (let ((_hd2952329682_
                                                       (##car _e2952229678_))
                                                      (_tl2952429685_
                                                       (##cdr _e2952229678_)))
                                                  (if (gx#stx-pair?
                                                       _tl2952429685_)
                                                      (let ((_e2952529688_
                                                             (gx#syntax-e
                                                              _tl2952429685_)))
                                                        (let ((_hd2952629692_
                                                               (##car _e2952529688_))
                                                              (_tl2952729695_
                                                               (##cdr _e2952529688_)))
                                                          (if (gx#stx-null?
                                                               _tl2952729695_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2951829665_)
                          (if (fx>= (gx#stx-length _tl2951829665_) '0)
                              (let ((_g34880_
                                     (gx#syntax-split-splice
                                      _tl2951829665_
                                      '0)))
                                (begin
                                  (let ((_g34881_ (values-count _g34880_)))
                                    (if (not (fx= _g34881_ 2))
                                        (error "Context expects 2 values"
                                               _g34881_)))
                                  (let ((_target2952829698_
                                         (values-ref _g34880_ 0))
                                        (_tl2953029701_
                                         (values-ref _g34880_ 1)))
                                    (if (gx#stx-null? _tl2953029701_)
                                        (letrec ((_loop2953129704_
                                                  (lambda (_hd2952929708_
                                                           _body2953529711_)
                                                    (if (gx#stx-pair?
                                                         _hd2952929708_)
                                                        (let ((_e2953229714_
                                                               (gx#syntax-e
                                                                _hd2952929708_)))
                                                          (let ((_lp-hd2953329718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2953229714_))
                        (_lp-tl2953429721_ (##cdr _e2953229714_)))
                    (_loop2953129704_
                     _lp-tl2953429721_
                     (cons _lp-hd2953329718_ _body2953529711_))))
                (let ((_body2953629724_ (reverse _body2953529711_)))
                  ((lambda (_L29728_ _L29730_ _L29731_ _L29732_ _L29733_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L29732_ (cons _L29731_ '())) '())
                                 (cons (cons _L29733_
                                             (cons _L29730_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2975829761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2975929764_)
                      (cons _g2975829761_ _g2975929764_))
                    '()
                    _L29728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2953629724_
                   _tl2952129675_
                   _hd2952629692_
                   _hd2952329682_
                   _hd2951429652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2953129704_
                                           _target2952829698_
                                           '()))
                                        (_g2950529641_ _g2950729645_)))))
                              (_g2950529641_ _g2950729645_))
                          (_g2950529641_ _g2950729645_))
                      (_g2950529641_ _g2950729645_))))
              (_g2950529641_ _g2950729645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2950529641_ _g2950729645_))))
                                      (_g2950529641_ _g2950729645_))))
                              (_g2950529641_ _g2950729645_))))
                      (_g2950529641_ _g2950729645_)))))
          (_g2950429767_ _$stx29501_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx29773_)
        (let* ((_g2978429928_
                (lambda (_g2978529924_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2978529924_)))
               (_g2978330023_
                (lambda (_g2978529932_)
                  (if (gx#stx-pair? _g2978529932_)
                      (let ((_e2990529935_ (gx#syntax-e _g2978529932_)))
                        (let ((_hd2990629939_ (##car _e2990529935_))
                              (_tl2990729942_ (##cdr _e2990529935_)))
                          (if (gx#stx-pair? _tl2990729942_)
                              (let ((_e2990829945_
                                     (gx#syntax-e _tl2990729942_)))
                                (let ((_hd2990929949_ (##car _e2990829945_))
                                      (_tl2991029952_ (##cdr _e2990829945_)))
                                  (if (gx#stx-pair? _tl2991029952_)
                                      (let ((_e2991129955_
                                             (gx#syntax-e _tl2991029952_)))
                                        (let ((_hd2991229959_
                                               (##car _e2991129955_))
                                              (_tl2991329962_
                                               (##cdr _e2991129955_)))
                                          (if (gx#stx-datum? _hd2991229959_)
                                              (if (equal? (gx#stx-e
                                                           _hd2991229959_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2991329962_)
                                                      (let ((_e2991429965_
                                                             (gx#syntax-e
                                                              _tl2991329962_)))
                                                        (let ((_hd2991529969_
                                                               (##car _e2991429965_))
                                                              (_tl2991629972_
                                                               (##cdr _e2991429965_)))
                                                          (if (gx#stx-pair?
                                                               _tl2991629972_)
                                                              (let ((_e2991729975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2991629972_)))
                        (let ((_hd2991829979_ (##car _e2991729975_))
                              (_tl2991929982_ (##cdr _e2991729975_)))
                          (if (gx#identifier? _hd2991829979_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34882_|
                                   _hd2991829979_)
                                  (if (gx#stx-pair? _tl2991929982_)
                                      (let ((_e2992029985_
                                             (gx#syntax-e _tl2991929982_)))
                                        (let ((_hd2992129989_
                                               (##car _e2992029985_))
                                              (_tl2992229992_
                                               (##cdr _e2992029985_)))
                                          (if (gx#stx-null? _tl2992229992_)
                                              ((lambda (_L29995_
                                                        _L29997_
                                                        _L29998_
                                                        _L29999_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L29999_
                                             (cons _L29998_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L29995_
                                                   (cons (cons _L29997_
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
                                               _hd2992129989_
                                               _hd2991529969_
                                               _hd2990929949_
                                               _hd2990629939_)
                                              (_g2978429928_ _g2978529932_))))
                                      (_g2978429928_ _g2978529932_))
                                  (_g2978429928_ _g2978529932_))
                              (_g2978429928_ _g2978529932_))))
                      (_g2978429928_ _g2978529932_))))
              (_g2978429928_ _g2978529932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978429928_
                                                   _g2978529932_))
                                              (_g2978429928_ _g2978529932_))))
                                      (_g2978429928_ _g2978529932_))))
                              (_g2978429928_ _g2978529932_))))
                      (_g2978429928_ _g2978529932_))))
               (_g2978230091_
                (lambda (_g2978530027_)
                  (if (gx#stx-pair? _g2978530027_)
                      (let ((_e2988930030_ (gx#syntax-e _g2978530027_)))
                        (let ((_hd2989030034_ (##car _e2988930030_))
                              (_tl2989130037_ (##cdr _e2988930030_)))
                          (if (gx#stx-pair? _tl2989130037_)
                              (let ((_e2989230040_
                                     (gx#syntax-e _tl2989130037_)))
                                (let ((_hd2989330044_ (##car _e2989230040_))
                                      (_tl2989430047_ (##cdr _e2989230040_)))
                                  (if (gx#stx-pair? _tl2989430047_)
                                      (let ((_e2989530050_
                                             (gx#syntax-e _tl2989430047_)))
                                        (let ((_hd2989630054_
                                               (##car _e2989530050_))
                                              (_tl2989730057_
                                               (##cdr _e2989530050_)))
                                          (if (gx#stx-datum? _hd2989630054_)
                                              (if (equal? (gx#stx-e
                                                           _hd2989630054_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2989730057_)
                                                      (let ((_e2989830060_
                                                             (gx#syntax-e
                                                              _tl2989730057_)))
                                                        (let ((_hd2989930064_
                                                               (##car _e2989830060_))
                                                              (_tl2990030067_
                                                               (##cdr _e2989830060_)))
                                                          (if (gx#stx-null?
                                                               _tl2990030067_)
                                                              ((lambda (_L30070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30072_
                                _L30073_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30072_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30070_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2989930064_
                       _hd2989330044_
                       _hd2989030034_)
                      (_g2978330023_ _g2978530027_))))
              (_g2978330023_ _g2978530027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978330023_
                                                   _g2978530027_))
                                              (_g2978330023_ _g2978530027_))))
                                      (_g2978330023_ _g2978530027_))))
                              (_g2978330023_ _g2978530027_))))
                      (_g2978330023_ _g2978530027_))))
               (_g2978130159_
                (lambda (_g2978530095_)
                  (if (gx#stx-pair? _g2978530095_)
                      (let ((_e2987430098_ (gx#syntax-e _g2978530095_)))
                        (let ((_hd2987530102_ (##car _e2987430098_))
                              (_tl2987630105_ (##cdr _e2987430098_)))
                          (if (gx#stx-pair? _tl2987630105_)
                              (let ((_e2987730108_
                                     (gx#syntax-e _tl2987630105_)))
                                (let ((_hd2987830112_ (##car _e2987730108_))
                                      (_tl2987930115_ (##cdr _e2987730108_)))
                                  (if (gx#stx-pair? _tl2987930115_)
                                      (let ((_e2988030118_
                                             (gx#syntax-e _tl2987930115_)))
                                        (let ((_hd2988130122_
                                               (##car _e2988030118_))
                                              (_tl2988230125_
                                               (##cdr _e2988030118_)))
                                          (if (gx#identifier? _hd2988130122_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34883_|
                                                   _hd2988130122_)
                                                  (if (gx#stx-pair?
                                                       _tl2988230125_)
                                                      (let ((_e2988330128_
                                                             (gx#syntax-e
                                                              _tl2988230125_)))
                                                        (let ((_hd2988430132_
                                                               (##car _e2988330128_))
                                                              (_tl2988530135_
                                                               (##cdr _e2988330128_)))
                                                          (if (gx#stx-null?
                                                               _tl2988530135_)
                                                              ((lambda (_L30138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30140_
                                _L30141_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30141_
                                                             (cons _L30140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30138_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2988430132_
                       _hd2987830112_
                       _hd2987530102_)
                      (_g2978230091_ _g2978530095_))))
              (_g2978230091_ _g2978530095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2978230091_
                                                   _g2978530095_))
                                              (_g2978230091_ _g2978530095_))))
                                      (_g2978230091_ _g2978530095_))))
                              (_g2978230091_ _g2978530095_))))
                      (_g2978230091_ _g2978530095_))))
               (_g2978030201_
                (lambda (_g2978530163_)
                  (if (gx#stx-pair? _g2978530163_)
                      (let ((_e2986530166_ (gx#syntax-e _g2978530163_)))
                        (let ((_hd2986630170_ (##car _e2986530166_))
                              (_tl2986730173_ (##cdr _e2986530166_)))
                          (if (gx#stx-pair? _tl2986730173_)
                              (let ((_e2986830176_
                                     (gx#syntax-e _tl2986730173_)))
                                (let ((_hd2986930180_ (##car _e2986830176_))
                                      (_tl2987030183_ (##cdr _e2986830176_)))
                                  (if (gx#stx-null? _tl2987030183_)
                                      ((lambda (_L30186_ _L30188_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30186_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2986930180_
                                       _hd2986630170_)
                                      (_g2978130159_ _g2978530163_))))
                              (_g2978130159_ _g2978530163_))))
                      (_g2978130159_ _g2978530163_))))
               (_g2977930255_
                (lambda (_g2978530205_)
                  (if (gx#stx-pair? _g2978530205_)
                      (let ((_e2985430208_ (gx#syntax-e _g2978530205_)))
                        (let ((_hd2985530212_ (##car _e2985430208_))
                              (_tl2985630215_ (##cdr _e2985430208_)))
                          (if (gx#stx-pair? _tl2985630215_)
                              (let ((_e2985730218_
                                     (gx#syntax-e _tl2985630215_)))
                                (let ((_hd2985830222_ (##car _e2985730218_))
                                      (_tl2985930225_ (##cdr _e2985730218_)))
                                  (if (gx#stx-pair? _tl2985930225_)
                                      (let ((_e2986030228_
                                             (gx#syntax-e _tl2985930225_)))
                                        (let ((_hd2986130232_
                                               (##car _e2986030228_))
                                              (_tl2986230235_
                                               (##cdr _e2986030228_)))
                                          (if (gx#stx-null? _tl2986230235_)
                                              ((lambda (_L30238_ _L30240_)
                                                 (cons _L30240_
                                                       (cons _L30238_ '())))
                                               _hd2986130232_
                                               _hd2985830222_)
                                              (_g2978030201_ _g2978530205_))))
                                      (_g2978030201_ _g2978530205_))))
                              (_g2978030201_ _g2978530205_))))
                      (_g2978030201_ _g2978530205_))))
               (_g2977830335_
                (lambda (_g2978530259_)
                  (if (gx#stx-pair? _g2978530259_)
                      (let ((_e2983730262_ (gx#syntax-e _g2978530259_)))
                        (let ((_hd2983830266_ (##car _e2983730262_))
                              (_tl2983930269_ (##cdr _e2983730262_)))
                          (if (gx#stx-pair? _tl2983930269_)
                              (let ((_e2984030272_
                                     (gx#syntax-e _tl2983930269_)))
                                (let ((_hd2984130276_ (##car _e2984030272_))
                                      (_tl2984230279_ (##cdr _e2984030272_)))
                                  (if (gx#stx-pair? _hd2984130276_)
                                      (let ((_e2984330282_
                                             (gx#syntax-e _hd2984130276_)))
                                        (let ((_hd2984430286_
                                               (##car _e2984330282_))
                                              (_tl2984530289_
                                               (##cdr _e2984330282_)))
                                          (if (gx#identifier? _hd2984430286_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34884_|
                                                   _hd2984430286_)
                                                  (if (gx#stx-pair?
                                                       _tl2984530289_)
                                                      (let ((_e2984630292_
                                                             (gx#syntax-e
                                                              _tl2984530289_)))
                                                        (let ((_hd2984730296_
                                                               (##car _e2984630292_))
                                                              (_tl2984830299_
                                                               (##cdr _e2984630292_)))
                                                          (if (gx#stx-null?
                                                               _tl2984830299_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2984230279_)
                          (let ((_e2984930302_ (gx#syntax-e _tl2984230279_)))
                            (let ((_hd2985030306_ (##car _e2984930302_))
                                  (_tl2985130309_ (##cdr _e2984930302_)))
                              (if (gx#stx-null? _tl2985130309_)
                                  ((lambda (_L30312_ _L30314_ _L30315_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30315_
                                                       (cons _L30314_
                                                             (cons _L30312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2985030306_
                                   _hd2984730296_
                                   _hd2983830266_)
                                  (_g2977930255_ _g2978530259_))))
                          (_g2977930255_ _g2978530259_))
                      (_g2977930255_ _g2978530259_))))
              (_g2977930255_ _g2978530259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2977930255_
                                                   _g2978530259_))
                                              (_g2977930255_ _g2978530259_))))
                                      (_g2977930255_ _g2978530259_))))
                              (_g2977930255_ _g2978530259_))))
                      (_g2977930255_ _g2978530259_))))
               (_g2977730445_
                (lambda (_g2978530339_)
                  (if (gx#stx-pair? _g2978530339_)
                      (let ((_e2981330342_ (gx#syntax-e _g2978530339_)))
                        (let ((_hd2981430346_ (##car _e2981330342_))
                              (_tl2981530349_ (##cdr _e2981330342_)))
                          (if (gx#stx-pair? _tl2981530349_)
                              (let ((_e2981630352_
                                     (gx#syntax-e _tl2981530349_)))
                                (let ((_hd2981730356_ (##car _e2981630352_))
                                      (_tl2981830359_ (##cdr _e2981630352_)))
                                  (if (gx#stx-pair? _hd2981730356_)
                                      (let ((_e2981930362_
                                             (gx#syntax-e _hd2981730356_)))
                                        (let ((_hd2982030366_
                                               (##car _e2981930362_))
                                              (_tl2982130369_
                                               (##cdr _e2981930362_)))
                                          (if (gx#identifier? _hd2982030366_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34885_|
                                                   _hd2982030366_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2982130369_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2982130369_)
                        '0)
                  (let ((_g34886_ (gx#syntax-split-splice _tl2982130369_ '0)))
                    (begin
                      (let ((_g34887_ (values-count _g34886_)))
                        (if (not (fx= _g34887_ 2))
                            (error "Context expects 2 values" _g34887_)))
                      (let ((_target2982230372_ (values-ref _g34886_ 0))
                            (_tl2982430375_ (values-ref _g34886_ 1)))
                        (if (gx#stx-null? _tl2982430375_)
                            (letrec ((_loop2982530378_
                                      (lambda (_hd2982330382_ _pred2982930385_)
                                        (if (gx#stx-pair? _hd2982330382_)
                                            (let ((_e2982630388_
                                                   (gx#syntax-e
                                                    _hd2982330382_)))
                                              (let ((_lp-hd2982730392_
                                                     (##car _e2982630388_))
                                                    (_lp-tl2982830395_
                                                     (##cdr _e2982630388_)))
                                                (_loop2982530378_
                                                 _lp-tl2982830395_
                                                 (cons _lp-hd2982730392_
                                                       _pred2982930385_))))
                                            (let ((_pred2983030398_
                                                   (reverse _pred2982930385_)))
                                              (if (gx#stx-pair? _tl2981830359_)
                                                  (let ((_e2983130402_
                                                         (gx#syntax-e
                                                          _tl2981830359_)))
                                                    (let ((_hd2983230406_
                                                           (##car _e2983130402_))
                                                          (_tl2983330409_
                                                           (##cdr _e2983130402_)))
                                                      (if (gx#stx-null?
                                                           _tl2983330409_)
                                                          ((lambda (_L30412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30414_
                            _L30415_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3043630439_ _g3043730442_)
                                      (cons (cons _L30415_
                                                  (cons _g3043630439_
                                                        (cons _L30412_ '())))
                                            _g3043730442_))
                                    '()
                                    _L30414_))))
                   _hd2983230406_
                   _pred2983030398_
                   _hd2981430346_)
                  (_g2977830335_ _g2978530339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2977830335_
                                                   _g2978530339_)))))))
                              (_loop2982530378_ _target2982230372_ '()))
                            (_g2977830335_ _g2978530339_)))))
                  (_g2977830335_ _g2978530339_))
              (_g2977830335_ _g2978530339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2977830335_
                                                   _g2978530339_))
                                              (_g2977830335_ _g2978530339_))))
                                      (_g2977830335_ _g2978530339_))))
                              (_g2977830335_ _g2978530339_))))
                      (_g2977830335_ _g2978530339_))))
               (_g2977630555_
                (lambda (_g2978530449_)
                  (if (gx#stx-pair? _g2978530449_)
                      (let ((_e2978930452_ (gx#syntax-e _g2978530449_)))
                        (let ((_hd2979030456_ (##car _e2978930452_))
                              (_tl2979130459_ (##cdr _e2978930452_)))
                          (if (gx#stx-pair? _tl2979130459_)
                              (let ((_e2979230462_
                                     (gx#syntax-e _tl2979130459_)))
                                (let ((_hd2979330466_ (##car _e2979230462_))
                                      (_tl2979430469_ (##cdr _e2979230462_)))
                                  (if (gx#stx-pair? _hd2979330466_)
                                      (let ((_e2979530472_
                                             (gx#syntax-e _hd2979330466_)))
                                        (let ((_hd2979630476_
                                               (##car _e2979530472_))
                                              (_tl2979730479_
                                               (##cdr _e2979530472_)))
                                          (if (gx#identifier? _hd2979630476_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34888_|
                                                   _hd2979630476_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2979730479_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2979730479_)
                        '0)
                  (let ((_g34889_ (gx#syntax-split-splice _tl2979730479_ '0)))
                    (begin
                      (let ((_g34890_ (values-count _g34889_)))
                        (if (not (fx= _g34890_ 2))
                            (error "Context expects 2 values" _g34890_)))
                      (let ((_target2979830482_ (values-ref _g34889_ 0))
                            (_tl2980030485_ (values-ref _g34889_ 1)))
                        (if (gx#stx-null? _tl2980030485_)
                            (letrec ((_loop2980130488_
                                      (lambda (_hd2979930492_ _pred2980530495_)
                                        (if (gx#stx-pair? _hd2979930492_)
                                            (let ((_e2980230498_
                                                   (gx#syntax-e
                                                    _hd2979930492_)))
                                              (let ((_lp-hd2980330502_
                                                     (##car _e2980230498_))
                                                    (_lp-tl2980430505_
                                                     (##cdr _e2980230498_)))
                                                (_loop2980130488_
                                                 _lp-tl2980430505_
                                                 (cons _lp-hd2980330502_
                                                       _pred2980530495_))))
                                            (let ((_pred2980630508_
                                                   (reverse _pred2980530495_)))
                                              (if (gx#stx-pair? _tl2979430469_)
                                                  (let ((_e2980730512_
                                                         (gx#syntax-e
                                                          _tl2979430469_)))
                                                    (let ((_hd2980830516_
                                                           (##car _e2980730512_))
                                                          (_tl2980930519_
                                                           (##cdr _e2980730512_)))
                                                      (if (gx#stx-null?
                                                           _tl2980930519_)
                                                          ((lambda (_L30522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30524_
                            _L30525_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3054630549_ _g3054730552_)
                                      (cons (cons _L30525_
                                                  (cons _g3054630549_
                                                        (cons _L30522_ '())))
                                            _g3054730552_))
                                    '()
                                    _L30524_))))
                   _hd2980830516_
                   _pred2980630508_
                   _hd2979030456_)
                  (_g2977730445_ _g2978530449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2977730445_
                                                   _g2978530449_)))))))
                              (_loop2980130488_ _target2979830482_ '()))
                            (_g2977730445_ _g2978530449_)))))
                  (_g2977730445_ _g2978530449_))
              (_g2977730445_ _g2978530449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2977730445_
                                                   _g2978530449_))
                                              (_g2977730445_ _g2978530449_))))
                                      (_g2977730445_ _g2978530449_))))
                              (_g2977730445_ _g2978530449_))))
                      (_g2977730445_ _g2978530449_)))))
          (_g2977630555_ _$stx29773_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx30561_)
        (let* ((_g3056630600_
                (lambda (_g3056730596_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3056730596_)))
               (_g3056530657_
                (lambda (_g3056730604_)
                  (if (gx#stx-pair? _g3056730604_)
                      (let ((_e3058630607_ (gx#syntax-e _g3056730604_)))
                        (let ((_hd3058730611_ (##car _e3058630607_))
                              (_tl3058830614_ (##cdr _e3058630607_)))
                          (if (gx#stx-pair? _tl3058830614_)
                              (let ((_e3058930617_
                                     (gx#syntax-e _tl3058830614_)))
                                (let ((_hd3059030621_ (##car _e3058930617_))
                                      (_tl3059130624_ (##cdr _e3058930617_)))
                                  (if (gx#stx-pair? _tl3059130624_)
                                      (let ((_e3059230627_
                                             (gx#syntax-e _tl3059130624_)))
                                        (let ((_hd3059330631_
                                               (##car _e3059230627_))
                                              (_tl3059430634_
                                               (##cdr _e3059230627_)))
                                          (if (gx#stx-null? _tl3059430634_)
                                              ((lambda (_L30637_
                                                        _L30639_
                                                        _L30640_)
                                                 (cons _L30640_
                                                       (cons _L30639_
                                                             (cons _L30637_
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
                                               _hd3059330631_
                                               _hd3059030621_
                                               _hd3058730611_)
                                              (_g3056630600_ _g3056730604_))))
                                      (_g3056630600_ _g3056730604_))))
                              (_g3056630600_ _g3056730604_))))
                      (_g3056630600_ _g3056730604_))))
               (_g3056430725_
                (lambda (_g3056730661_)
                  (if (gx#stx-pair? _g3056730661_)
                      (let ((_e3057130664_ (gx#syntax-e _g3056730661_)))
                        (let ((_hd3057230668_ (##car _e3057130664_))
                              (_tl3057330671_ (##cdr _e3057130664_)))
                          (if (gx#stx-pair? _tl3057330671_)
                              (let ((_e3057430674_
                                     (gx#syntax-e _tl3057330671_)))
                                (let ((_hd3057530678_ (##car _e3057430674_))
                                      (_tl3057630681_ (##cdr _e3057430674_)))
                                  (if (gx#stx-pair? _tl3057630681_)
                                      (let ((_e3057730684_
                                             (gx#syntax-e _tl3057630681_)))
                                        (let ((_hd3057830688_
                                               (##car _e3057730684_))
                                              (_tl3057930691_
                                               (##cdr _e3057730684_)))
                                          (if (gx#stx-pair? _tl3057930691_)
                                              (let ((_e3058030694_
                                                     (gx#syntax-e
                                                      _tl3057930691_)))
                                                (let ((_hd3058130698_
                                                       (##car _e3058030694_))
                                                      (_tl3058230701_
                                                       (##cdr _e3058030694_)))
                                                  (if (gx#stx-null?
                                                       _tl3058230701_)
                                                      ((lambda (_L30704_
                                                                _L30706_
                                                                _L30707_)
                                                         (if (gx#identifier?
                                                              _L30707_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L30707_
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
                                         (cons _L30706_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L30704_ '()))
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
                     (_g3056530657_ _g3056730661_)))
               _hd3058130698_
               _hd3057830688_
               _hd3057530678_)
              (_g3056530657_ _g3056730661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3056530657_ _g3056730661_))))
                                      (_g3056530657_ _g3056730661_))))
                              (_g3056530657_ _g3056730661_))))
                      (_g3056530657_ _g3056730661_)))))
          (_g3056430725_ _$stx30561_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx30729_)
        (let* ((_g3073330748_
                (lambda (_g3073430744_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3073430744_)))
               (_g3073230791_
                (lambda (_g3073430752_)
                  (if (gx#stx-pair? _g3073430752_)
                      (let ((_e3073730755_ (gx#syntax-e _g3073430752_)))
                        (let ((_hd3073830759_ (##car _e3073730755_))
                              (_tl3073930762_ (##cdr _e3073730755_)))
                          (if (gx#stx-pair? _tl3073930762_)
                              (let ((_e3074030765_
                                     (gx#syntax-e _tl3073930762_)))
                                (let ((_hd3074130769_ (##car _e3074030765_))
                                      (_tl3074230772_ (##cdr _e3074030765_)))
                                  ((lambda (_L30775_ _L30777_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L30777_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L30775_)
                                                       '()))))
                                   _tl3074230772_
                                   _hd3074130769_)))
                              (_g3073330748_ _g3073430752_))))
                      (_g3073330748_ _g3073430752_)))))
          (_g3073230791_ _$stx30729_))))))
