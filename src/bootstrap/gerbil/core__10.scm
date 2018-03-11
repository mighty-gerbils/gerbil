(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g35286_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35287_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35288_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35291_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35292_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35293_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35294_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35295_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35296_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35297_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35298_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35299_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35300_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35301_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35302_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35303_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35312_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35317_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35318_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35319_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35336_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35337_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35338_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35339_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35342_|
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
      (lambda _$args28886_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args28886_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx28883_)
        (if (gx#identifier? _stx28883_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx28883_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2719928869_
             (lambda (_stx27201_ _match-stx27203_)
               (letrec ((_parse127205_
                         (lambda (_hd27552_)
                           (let* ((_g2757827720_
                                   (lambda (_g2757927716_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2757927716_)))
                                  (_g2757727731_
                                   (lambda (_g2757927724_)
                                     ((lambda ()
                                        (_parse-error27212_ _hd27552_)))))
                                  (_g2757627749_
                                   (lambda (_g2757927735_)
                                     ((lambda (_L27738_)
                                        (if (gx#stx-datum? _L27738_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27738_)
                                                        '()))
                                            (_g2757727731_ _g2757927735_)))
                                      _g2757927735_)))
                                  (_g2757527765_
                                   (lambda (_g2757927753_)
                                     ((lambda (_L27756_)
                                        (if (if (gx#identifier? _L27756_)
                                                (not (gx#ellipsis? _L27756_))
                                                '#f)
                                            (cons 'var: (cons _L27756_ '()))
                                            (_g2757627749_ _g2757927753_)))
                                      _g2757927753_)))
                                  (_g2757427781_
                                   (lambda (_g2757927769_)
                                     ((lambda (_L27772_)
                                        (if (gx#underscore? _L27772_)
                                            (cons 'any: '())
                                            (_g2757527765_ _g2757927769_)))
                                      _g2757927769_)))
                                  (_g2757327813_
                                   (lambda (_g2757927785_)
                                     (if (gx#stx-pair? _g2757927785_)
                                         (let ((_e2770927788_
                                                (gx#syntax-e _g2757927785_)))
                                           (let ((_hd2771027792_
                                                  (##car _e2770927788_))
                                                 (_tl2771127795_
                                                  (##cdr _e2770927788_)))
                                             ((lambda (_L27798_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27798_)
                                                    (_parse127205_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27798_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27552_)
                                                       (let ((_$e27809_
                                                              (gx#stx-source
                                                               _hd27552_)))
                                                         (if _$e27809_
                                                             _$e27809_
                                                             (gx#stx-source
                                                              _stx27201_))))))
                                                    (_g2757427781_
                                                     _g2757927785_)))
                                              _hd2771027792_)))
                                         (_g2757427781_ _g2757927785_))))
                                  (_g2757227867_
                                   (lambda (_g2757927817_)
                                     (if (gx#stx-pair? _g2757927817_)
                                         (let ((_e2769927820_
                                                (gx#syntax-e _g2757927817_)))
                                           (let ((_hd2770027824_
                                                  (##car _e2769927820_))
                                                 (_tl2770127827_
                                                  (##cdr _e2769927820_)))
                                             (if (gx#identifier?
                                                  _hd2770027824_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35286_|
                                                      _hd2770027824_)
                                                     (if (gx#stx-pair?
                                                          _tl2770127827_)
                                                         (let ((_e2770227830_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2770127827_)))
                   (let ((_hd2770327834_ (##car _e2770227830_))
                         (_tl2770427837_ (##cdr _e2770227830_)))
                     (if (gx#stx-pair? _tl2770427837_)
                         (let ((_e2770527840_ (gx#syntax-e _tl2770427837_)))
                           (let ((_hd2770627844_ (##car _e2770527840_))
                                 (_tl2770727847_ (##cdr _e2770527840_)))
                             (if (gx#stx-null? _tl2770727847_)
                                 ((lambda (_L27850_ _L27852_)
                                    (cons 'apply:
                                          (cons _L27852_
                                                (cons (_parse127205_ _L27850_)
                                                      '()))))
                                  _hd2770627844_
                                  _hd2770327834_)
                                 (_g2757327813_ _g2757927817_))))
                         (_g2757327813_ _g2757927817_))))
                 (_g2757327813_ _g2757927817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2757327813_
                                                      _g2757927817_))
                                                 (_g2757327813_
                                                  _g2757927817_))))
                                         (_g2757327813_ _g2757927817_))))
                                  (_g2757127907_
                                   (lambda (_g2757927871_)
                                     (if (gx#stx-pair? _g2757927871_)
                                         (let ((_e2769127874_
                                                (gx#syntax-e _g2757927871_)))
                                           (let ((_hd2769227878_
                                                  (##car _e2769127874_))
                                                 (_tl2769327881_
                                                  (##cdr _e2769127874_)))
                                             (if (gx#identifier?
                                                  _hd2769227878_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35287_|
                                                      _hd2769227878_)
                                                     (if (gx#stx-pair?
                                                          _tl2769327881_)
                                                         (let ((_e2769427884_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2769327881_)))
                   (let ((_hd2769527888_ (##car _e2769427884_))
                         (_tl2769627891_ (##cdr _e2769427884_)))
                     (if (gx#stx-null? _tl2769627891_)
                         ((lambda (_L27894_) (_parse-qq27211_ _L27894_))
                          _hd2769527888_)
                         (_g2757227867_ _g2757927871_))))
                 (_g2757227867_ _g2757927871_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2757227867_
                                                      _g2757927871_))
                                                 (_g2757227867_
                                                  _g2757927871_))))
                                         (_g2757227867_ _g2757927871_))))
                                  (_g2757027947_
                                   (lambda (_g2757927911_)
                                     (if (gx#stx-pair? _g2757927911_)
                                         (let ((_e2768427914_
                                                (gx#syntax-e _g2757927911_)))
                                           (let ((_hd2768527918_
                                                  (##car _e2768427914_))
                                                 (_tl2768627921_
                                                  (##cdr _e2768427914_)))
                                             (if (gx#identifier?
                                                  _hd2768527918_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35288_|
                                                      _hd2768527918_)
                                                     (if (gx#stx-pair?
                                                          _tl2768627921_)
                                                         (let ((_e2768727924_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2768627921_)))
                   (let ((_hd2768827928_ (##car _e2768727924_))
                         (_tl2768927931_ (##cdr _e2768727924_)))
                     (if (gx#stx-null? _tl2768927931_)
                         ((lambda (_L27934_)
                            (cons 'datum: (cons (gx#stx-e _L27934_) '())))
                          _hd2768827928_)
                         (_g2757127907_ _g2757927911_))))
                 (_g2757127907_ _g2757927911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2757127907_
                                                      _g2757927911_))
                                                 (_g2757127907_
                                                  _g2757927911_))))
                                         (_g2757127907_ _g2757927911_))))
                                  (_g2756927997_
                                   (lambda (_g2757927951_)
                                     (if (gx#stx-pair? _g2757927951_)
                                         (let ((_e2767727954_
                                                (gx#syntax-e _g2757927951_)))
                                           (let ((_hd2767827958_
                                                  (##car _e2767727954_))
                                                 (_tl2767927961_
                                                  (##cdr _e2767727954_)))
                                             (if (gx#stx-pair? _tl2767927961_)
                                                 (let ((_e2768027964_
                                                        (gx#syntax-e
                                                         _tl2767927961_)))
                                                   (let ((_hd2768127968_
                                                          (##car _e2768027964_))
                                                         (_tl2768227971_
                                                          (##cdr _e2768027964_)))
                                                     (if (gx#stx-null?
                                                          _tl2768227971_)
                                                         ((lambda (_L27974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27976_)
                    (if (if (gx#identifier? _L27976_)
                            (let ((_$e27989_
                                   (gx#free-identifier=?
                                    _L27976_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e27989_
                                  _$e27989_
                                  (let ((_$e27993_
                                         (gx#free-identifier=?
                                          _L27976_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e27993_
                                        _$e27993_
                                        (gx#free-identifier=?
                                         _L27976_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L27976_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L27974_ '()))))
                                    '()))
                        (_g2757027947_ _g2757927951_)))
                  _hd2768127968_
                  _hd2767827958_)
                 (_g2757027947_ _g2757927951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2757027947_
                                                  _g2757927951_))))
                                         (_g2757027947_ _g2757927951_))))
                                  (_g2756828027_
                                   (lambda (_g2757928001_)
                                     (if (gx#stx-pair? _g2757928001_)
                                         (let ((_e2767228004_
                                                (gx#syntax-e _g2757928001_)))
                                           (let ((_hd2767328008_
                                                  (##car _e2767228004_))
                                                 (_tl2767428011_
                                                  (##cdr _e2767228004_)))
                                             ((lambda (_L28014_ _L28016_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L28016_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28016_)
                        (cons (_parse-class-body27210_ _L28014_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2756927997_
                                                     _g2757928001_)))
                                              _tl2767428011_
                                              _hd2767328008_)))
                                         (_g2756927997_ _g2757928001_))))
                                  (_g2756728057_
                                   (lambda (_g2757928031_)
                                     (if (gx#stx-pair? _g2757928031_)
                                         (let ((_e2766728034_
                                                (gx#syntax-e _g2757928031_)))
                                           (let ((_hd2766828038_
                                                  (##car _e2766728034_))
                                                 (_tl2766928041_
                                                  (##cdr _e2766728034_)))
                                             ((lambda (_L28044_ _L28046_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L28046_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28046_)
                        (cons (_parse-vector27208_ _L28044_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2756828027_
                                                     _g2757928031_)))
                                              _tl2766928041_
                                              _hd2766828038_)))
                                         (_g2756828027_ _g2757928031_))))
                                  (_g2756628120_
                                   (lambda (_g2757928061_)
                                     (if (gx#stx-vector? _g2757928061_)
                                         (let ((_e2765528064_
                                                (vector->list
                                                 (gx#syntax-e _g2757928061_))))
                                           (if (gx#stx-pair/null?
                                                _e2765528064_)
                                               (if (fx>= (gx#stx-length
                                                          _e2765528064_)
                                                         '0)
                                                   (let ((_g35289_
                                                          (gx#syntax-split-splice
                                                           _e2765528064_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35290_
                                                              (values-count
                                                               _g35289_)))
                                                         (if (not (fx= _g35290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g35290_)))
               (let ((_target2765628068_ (values-ref _g35289_ 0))
                     (_tl2765828071_ (values-ref _g35289_ 1)))
                 (if (gx#stx-null? _tl2765828071_)
                     (letrec ((_loop2765928074_
                               (lambda (_hd2765728078_ _body2766328081_)
                                 (if (gx#stx-pair? _hd2765728078_)
                                     (let ((_e2766028084_
                                            (gx#syntax-e _hd2765728078_)))
                                       (let ((_lp-hd2766128088_
                                              (##car _e2766028084_))
                                             (_lp-tl2766228091_
                                              (##cdr _e2766028084_)))
                                         (_loop2765928074_
                                          _lp-tl2766228091_
                                          (cons _lp-hd2766128088_
                                                _body2766328081_))))
                                     (let ((_body2766428094_
                                            (reverse _body2766328081_)))
                                       ((lambda (_L28098_)
                                          (cons 'vector:
                                                (cons (_parse-vector27208_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2811128114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2811228117_)
                          (cons _g2811128114_ _g2811228117_))
                        '()
                        _L28098_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2766428094_))))))
                       (_loop2765928074_ _target2765628068_ '()))
                     (_g2756728057_ _g2757928061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2756728057_
                                                    _g2757928061_))
                                               (_g2756728057_ _g2757928061_)))
                                         (_g2756728057_ _g2757928061_))))
                                  (_g2756528148_
                                   (lambda (_g2757928124_)
                                     (if (gx#stx-pair? _g2757928124_)
                                         (let ((_e2765128127_
                                                (gx#syntax-e _g2757928124_)))
                                           (let ((_hd2765228131_
                                                  (##car _e2765128127_))
                                                 (_tl2765328134_
                                                  (##cdr _e2765128127_)))
                                             (if (gx#identifier?
                                                  _hd2765228131_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35291_|
                                                      _hd2765228131_)
                                                     ((lambda (_L28137_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector27208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28137_)
                            '())))
              _tl2765328134_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2756628120_
                                                      _g2757928124_))
                                                 (_g2756628120_
                                                  _g2757928124_))))
                                         (_g2756628120_ _g2757928124_))))
                                  (_g2756428176_
                                   (lambda (_g2757928152_)
                                     (if (gx#stx-pair? _g2757928152_)
                                         (let ((_e2764728155_
                                                (gx#syntax-e _g2757928152_)))
                                           (let ((_hd2764828159_
                                                  (##car _e2764728155_))
                                                 (_tl2764928162_
                                                  (##cdr _e2764728155_)))
                                             (if (gx#identifier?
                                                  _hd2764828159_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35292_|
                                                      _hd2764828159_)
                                                     ((lambda (_L28165_)
                                                        (cons 'values:
                                                              (cons (_parse-vector27208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28165_)
                            '())))
              _tl2764928162_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2756528148_
                                                      _g2757928152_))
                                                 (_g2756528148_
                                                  _g2757928152_))))
                                         (_g2756528148_ _g2757928152_))))
                                  (_g2756328216_
                                   (lambda (_g2757928180_)
                                     (if (gx#stx-pair? _g2757928180_)
                                         (let ((_e2764028183_
                                                (gx#syntax-e _g2757928180_)))
                                           (let ((_hd2764128187_
                                                  (##car _e2764028183_))
                                                 (_tl2764228190_
                                                  (##cdr _e2764028183_)))
                                             (if (gx#identifier?
                                                  _hd2764128187_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35293_|
                                                      _hd2764128187_)
                                                     (if (gx#stx-pair?
                                                          _tl2764228190_)
                                                         (let ((_e2764328193_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2764228190_)))
                   (let ((_hd2764428197_ (##car _e2764328193_))
                         (_tl2764528200_ (##cdr _e2764328193_)))
                     (if (gx#stx-null? _tl2764528200_)
                         ((lambda (_L28203_) (_parse127205_ _L28203_))
                          _hd2764428197_)
                         (_g2756428176_ _g2757928180_))))
                 (_g2756428176_ _g2757928180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2756428176_
                                                      _g2757928180_))
                                                 (_g2756428176_
                                                  _g2757928180_))))
                                         (_g2756428176_ _g2757928180_))))
                                  (_g2756228237_
                                   (lambda (_g2757928220_)
                                     (if (gx#stx-box? _g2757928220_)
                                         (let ((_e2763828223_
                                                (unbox (gx#syntax-e
                                                        _g2757928220_))))
                                           ((lambda (_L28227_)
                                              (cons 'box:
                                                    (cons (_parse127205_
                                                           _L28227_)
                                                          '())))
                                            _e2763828223_))
                                         (_g2756328216_ _g2757928220_))))
                                  (_g2756128277_
                                   (lambda (_g2757928241_)
                                     (if (gx#stx-pair? _g2757928241_)
                                         (let ((_e2763128244_
                                                (gx#syntax-e _g2757928241_)))
                                           (let ((_hd2763228248_
                                                  (##car _e2763128244_))
                                                 (_tl2763328251_
                                                  (##cdr _e2763128244_)))
                                             (if (gx#identifier?
                                                  _hd2763228248_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35294_|
                                                      _hd2763228248_)
                                                     (if (gx#stx-pair?
                                                          _tl2763328251_)
                                                         (let ((_e2763428254_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2763328251_)))
                   (let ((_hd2763528258_ (##car _e2763428254_))
                         (_tl2763628261_ (##cdr _e2763428254_)))
                     (if (gx#stx-null? _tl2763628261_)
                         ((lambda (_L28264_)
                            (cons 'box: (cons (_parse127205_ _L28264_) '())))
                          _hd2763528258_)
                         (_g2756228237_ _g2757928241_))))
                 (_g2756228237_ _g2757928241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2756228237_
                                                      _g2757928241_))
                                                 (_g2756228237_
                                                  _g2757928241_))))
                                         (_g2756228237_ _g2757928241_))))
                                  (_g2756028305_
                                   (lambda (_g2757928281_)
                                     (if (gx#stx-pair? _g2757928281_)
                                         (let ((_e2762728284_
                                                (gx#syntax-e _g2757928281_)))
                                           (let ((_hd2762828288_
                                                  (##car _e2762728284_))
                                                 (_tl2762928291_
                                                  (##cdr _e2762728284_)))
                                             (if (gx#identifier?
                                                  _hd2762828288_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35295_|
                                                      _hd2762828288_)
                                                     ((lambda (_L28294_)
                                                        (_parse-list27207_
                                                         _L28294_))
                                                      _tl2762928291_)
                                                     (_g2756128277_
                                                      _g2757928281_))
                                                 (_g2756128277_
                                                  _g2757928281_))))
                                         (_g2756128277_ _g2757928281_))))
                                  (_g2755928361_
                                   (lambda (_g2757928309_)
                                     (if (gx#stx-pair? _g2757928309_)
                                         (let ((_e2761728312_
                                                (gx#syntax-e _g2757928309_)))
                                           (let ((_hd2761828316_
                                                  (##car _e2761728312_))
                                                 (_tl2761928319_
                                                  (##cdr _e2761728312_)))
                                             (if (gx#identifier?
                                                  _hd2761828316_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35296_|
                                                      _hd2761828316_)
                                                     (if (gx#stx-pair?
                                                          _tl2761928319_)
                                                         (let ((_e2762028322_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2761928319_)))
                   (let ((_hd2762128326_ (##car _e2762028322_))
                         (_tl2762228329_ (##cdr _e2762028322_)))
                     (if (gx#stx-pair? _tl2762228329_)
                         (let ((_e2762328332_ (gx#syntax-e _tl2762228329_)))
                           (let ((_hd2762428336_ (##car _e2762328332_))
                                 (_tl2762528339_ (##cdr _e2762328332_)))
                             ((lambda (_L28342_ _L28344_ _L28345_)
                                (if (gx#stx-null? _L28342_)
                                    (cons 'cons:
                                          (cons (_parse127205_ _L28345_)
                                                (cons (_parse127205_ _L28344_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse127205_ _L28345_)
                                                (cons (_parse127205_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L28344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28342_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2762528339_
                              _hd2762428336_
                              _hd2762128326_)))
                         (_g2756028305_ _g2757928309_))))
                 (_g2756028305_ _g2757928309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2756028305_
                                                      _g2757928309_))
                                                 (_g2756028305_
                                                  _g2757928309_))))
                                         (_g2756028305_ _g2757928309_))))
                                  (_g2755828415_
                                   (lambda (_g2757928365_)
                                     (if (gx#stx-pair? _g2757928365_)
                                         (let ((_e2760528368_
                                                (gx#syntax-e _g2757928365_)))
                                           (let ((_hd2760628372_
                                                  (##car _e2760528368_))
                                                 (_tl2760728375_
                                                  (##cdr _e2760528368_)))
                                             (if (gx#identifier?
                                                  _hd2760628372_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35297_|
                                                      _hd2760628372_)
                                                     (if (gx#stx-pair?
                                                          _tl2760728375_)
                                                         (let ((_e2760828378_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2760728375_)))
                   (let ((_hd2760928382_ (##car _e2760828378_))
                         (_tl2761028385_ (##cdr _e2760828378_)))
                     (if (gx#stx-pair? _tl2761028385_)
                         (let ((_e2761128388_ (gx#syntax-e _tl2761028385_)))
                           (let ((_hd2761228392_ (##car _e2761128388_))
                                 (_tl2761328395_ (##cdr _e2761128388_)))
                             (if (gx#stx-null? _tl2761328395_)
                                 ((lambda (_L28398_ _L28400_)
                                    (cons 'cons:
                                          (cons (_parse127205_ _L28400_)
                                                (cons (_parse127205_ _L28398_)
                                                      '()))))
                                  _hd2761228392_
                                  _hd2760928382_)
                                 (_g2755928361_ _g2757928365_))))
                         (_g2755928361_ _g2757928365_))))
                 (_g2755928361_ _g2757928365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2755928361_
                                                      _g2757928365_))
                                                 (_g2755928361_
                                                  _g2757928365_))))
                                         (_g2755928361_ _g2757928365_))))
                                  (_g2755728455_
                                   (lambda (_g2757928419_)
                                     (if (gx#stx-pair? _g2757928419_)
                                         (let ((_e2759728422_
                                                (gx#syntax-e _g2757928419_)))
                                           (let ((_hd2759828426_
                                                  (##car _e2759728422_))
                                                 (_tl2759928429_
                                                  (##cdr _e2759728422_)))
                                             (if (gx#identifier?
                                                  _hd2759828426_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35298_|
                                                      _hd2759828426_)
                                                     (if (gx#stx-pair?
                                                          _tl2759928429_)
                                                         (let ((_e2760028432_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2759928429_)))
                   (let ((_hd2760128436_ (##car _e2760028432_))
                         (_tl2760228439_ (##cdr _e2760028432_)))
                     (if (gx#stx-null? _tl2760228439_)
                         ((lambda (_L28442_)
                            (cons 'not: (cons (_parse127205_ _L28442_) '())))
                          _hd2760128436_)
                         (_g2755828415_ _g2757928419_))))
                 (_g2755828415_ _g2757928419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2755828415_
                                                      _g2757928419_))
                                                 (_g2755828415_
                                                  _g2757928419_))))
                                         (_g2755828415_ _g2757928419_))))
                                  (_g2755628540_
                                   (lambda (_g2757928459_)
                                     (if (gx#stx-pair? _g2757928459_)
                                         (let ((_e2759328462_
                                                (gx#syntax-e _g2757928459_)))
                                           (let ((_hd2759428466_
                                                  (##car _e2759328462_))
                                                 (_tl2759528469_
                                                  (##cdr _e2759328462_)))
                                             (if (gx#identifier?
                                                  _hd2759428466_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35299_|
                                                      _hd2759428466_)
                                                     ((lambda (_L28472_)
                                                        (if (gx#stx-list?
                                                             _L28472_)
                                                            (let* ((_g2848428495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2848528491_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2848528491_)))
                           (_g2848328506_
                            (lambda (_g2848528499_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse127205_ _L28472_))))))
                           (_g2848228536_
                            (lambda (_g2848528510_)
                              (if (gx#stx-pair? _g2848528510_)
                                  (let ((_e2848728513_
                                         (gx#syntax-e _g2848528510_)))
                                    (let ((_hd2848828517_
                                           (##car _e2848728513_))
                                          (_tl2848928520_
                                           (##cdr _e2848728513_)))
                                      (if (gx#stx-null? _tl2848928520_)
                                          ((lambda (_L28523_)
                                             (_parse127205_ _L28523_))
                                           _hd2848828517_)
                                          (_g2848328506_ _g2848528510_))))
                                  (_g2848328506_ _g2848528510_)))))
                      (_g2848228536_ _L28472_))
                    (_g2755728455_ _g2757928459_)))
              _tl2759528469_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2755728455_
                                                      _g2757928459_))
                                                 (_g2755728455_
                                                  _g2757928459_))))
                                         (_g2755728455_ _g2757928459_))))
                                  (_g2755528625_
                                   (lambda (_g2757928544_)
                                     (if (gx#stx-pair? _g2757928544_)
                                         (let ((_e2758928547_
                                                (gx#syntax-e _g2757928544_)))
                                           (let ((_hd2759028551_
                                                  (##car _e2758928547_))
                                                 (_tl2759128554_
                                                  (##cdr _e2758928547_)))
                                             (if (gx#identifier?
                                                  _hd2759028551_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35300_|
                                                      _hd2759028551_)
                                                     ((lambda (_L28557_)
                                                        (if (gx#stx-list?
                                                             _L28557_)
                                                            (let* ((_g2856928580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2857028576_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2857028576_)))
                           (_g2856828591_
                            (lambda (_g2857028584_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse127205_ _L28557_))))))
                           (_g2856728621_
                            (lambda (_g2857028595_)
                              (if (gx#stx-pair? _g2857028595_)
                                  (let ((_e2857228598_
                                         (gx#syntax-e _g2857028595_)))
                                    (let ((_hd2857328602_
                                           (##car _e2857228598_))
                                          (_tl2857428605_
                                           (##cdr _e2857228598_)))
                                      (if (gx#stx-null? _tl2857428605_)
                                          ((lambda (_L28608_)
                                             (_parse127205_ _L28608_))
                                           _hd2857328602_)
                                          (_g2856828591_ _g2857028595_))))
                                  (_g2856828591_ _g2857028595_)))))
                      (_g2856728621_ _L28557_))
                    (_g2755628540_ _g2757928544_)))
              _tl2759128554_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2755628540_
                                                      _g2757928544_))
                                                 (_g2755628540_
                                                  _g2757928544_))))
                                         (_g2755628540_ _g2757928544_))))
                                  (_g2755428865_
                                   (lambda (_g2757928629_)
                                     (if (gx#stx-pair? _g2757928629_)
                                         (let ((_e2758228632_
                                                (gx#syntax-e _g2757928629_)))
                                           (let ((_hd2758328636_
                                                  (##car _e2758228632_))
                                                 (_tl2758428639_
                                                  (##cdr _e2758228632_)))
                                             (if (gx#identifier?
                                                  _hd2758328636_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35301_|
                                                      _hd2758328636_)
                                                     (if (gx#stx-pair?
                                                          _tl2758428639_)
                                                         (let ((_e2758528642_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2758428639_)))
                   (let ((_hd2758628646_ (##car _e2758528642_))
                         (_tl2758728649_ (##cdr _e2758528642_)))
                     ((lambda (_L28652_ _L28654_)
                        (let* ((_g2867128703_
                                (lambda (_g2867228699_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2867228699_)))
                               (_g2867028714_
                                (lambda (_g2867228707_)
                                  ((lambda ()
                                     (_parse-error27212_ _hd27552_)))))
                               (_g2866928782_
                                (lambda (_g2867228718_)
                                  (if (gx#stx-pair? _g2867228718_)
                                      (let ((_e2868628721_
                                             (gx#syntax-e _g2867228718_)))
                                        (let ((_hd2868728725_
                                               (##car _e2868628721_))
                                              (_tl2868828728_
                                               (##cdr _e2868628721_)))
                                          (if (gx#stx-datum? _hd2868728725_)
                                              (if (equal? (gx#stx-e
                                                           _hd2868728725_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2868828728_)
                                                      (let ((_e2868928731_
                                                             (gx#syntax-e
                                                              _tl2868828728_)))
                                                        (let ((_hd2869028735_
                                                               (##car _e2868928731_))
                                                              (_tl2869128738_
                                                               (##cdr _e2868928731_)))
                                                          (if (gx#stx-pair?
                                                               _tl2869128738_)
                                                              (let ((_e2869228741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2869128738_)))
                        (let ((_hd2869328745_ (##car _e2869228741_))
                              (_tl2869428748_ (##cdr _e2869228741_)))
                          (if (gx#identifier? _hd2869328745_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35302_|
                                   _hd2869328745_)
                                  (if (gx#stx-pair? _tl2869428748_)
                                      (let ((_e2869528751_
                                             (gx#syntax-e _tl2869428748_)))
                                        (let ((_hd2869628755_
                                               (##car _e2869528751_))
                                              (_tl2869728758_
                                               (##cdr _e2869528751_)))
                                          (if (gx#stx-null? _tl2869728758_)
                                              ((lambda (_L28761_ _L28763_)
                                                 (cons '?:
                                                       (cons _L28654_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28763_
                                 (cons '=>:
                                       (cons (_parse127205_ _L28761_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2869628755_
                                               _hd2869028735_)
                                              (_g2867028714_ _g2867228718_))))
                                      (_g2867028714_ _g2867228718_))
                                  (_g2867028714_ _g2867228718_))
                              (_g2867028714_ _g2867228718_))))
                      (_g2867028714_ _g2867228718_))))
              (_g2867028714_ _g2867228718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2867028714_
                                                   _g2867228718_))
                                              (_g2867028714_ _g2867228718_))))
                                      (_g2867028714_ _g2867228718_))))
                               (_g2866828822_
                                (lambda (_g2867228786_)
                                  (if (gx#stx-pair? _g2867228786_)
                                      (let ((_e2867828789_
                                             (gx#syntax-e _g2867228786_)))
                                        (let ((_hd2867928793_
                                               (##car _e2867828789_))
                                              (_tl2868028796_
                                               (##cdr _e2867828789_)))
                                          (if (gx#identifier? _hd2867928793_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35303_|
                                                   _hd2867928793_)
                                                  (if (gx#stx-pair?
                                                       _tl2868028796_)
                                                      (let ((_e2868128799_
                                                             (gx#syntax-e
                                                              _tl2868028796_)))
                                                        (let ((_hd2868228803_
                                                               (##car _e2868128799_))
                                                              (_tl2868328806_
                                                               (##cdr _e2868128799_)))
                                                          (if (gx#stx-null?
                                                               _tl2868328806_)
                                                              ((lambda (_L28809_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28654_
                                     (cons '=>:
                                           (cons (_parse127205_ _L28809_)
                                                 '())))))
                       _hd2868228803_)
                      (_g2866928782_ _g2867228786_))))
              (_g2866928782_ _g2867228786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2866928782_
                                                   _g2867228786_))
                                              (_g2866928782_ _g2867228786_))))
                                      (_g2866928782_ _g2867228786_))))
                               (_g2866728850_
                                (lambda (_g2867228826_)
                                  (if (gx#stx-pair? _g2867228826_)
                                      (let ((_e2867428829_
                                             (gx#syntax-e _g2867228826_)))
                                        (let ((_hd2867528833_
                                               (##car _e2867428829_))
                                              (_tl2867628836_
                                               (##cdr _e2867428829_)))
                                          (if (gx#stx-null? _tl2867628836_)
                                              ((lambda (_L28839_)
                                                 (cons '?:
                                                       (cons _L28654_
                                                             (cons (_parse127205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28839_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2867528833_)
                                              (_g2866828822_ _g2867228826_))))
                                      (_g2866828822_ _g2867228826_))))
                               (_g2866628861_
                                (lambda (_g2867228854_)
                                  (if (gx#stx-null? _g2867228854_)
                                      ((lambda ()
                                         (cons '?: (cons _L28654_ '()))))
                                      (_g2866728850_ _g2867228854_)))))
                          (_g2866628861_ _L28652_)))
                      _tl2758728649_
                      _hd2758628646_)))
                 (_g2755528625_ _g2757928629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2755528625_
                                                      _g2757928629_))
                                                 (_g2755528625_
                                                  _g2757928629_))))
                                         (_g2755528625_ _g2757928629_)))))
                             (_g2755428865_ _hd27552_))))
                        (_parse-list27207_
                         (lambda (_body27387_)
                           (let* ((_g2739327421_
                                   (lambda (_g2739427417_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2739427417_)))
                                  (_g2739227432_
                                   (lambda (_g2739427425_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body27387_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body27387_))
                                                (_parse127205_ _body27387_)
                                                (_parse-error27212_
                                                 _body27387_)))))))
                                  (_g2739127464_
                                   (lambda (_g2739427436_)
                                     (if (gx#stx-pair? _g2739427436_)
                                         (let ((_e2741327439_
                                                (gx#syntax-e _g2739427436_)))
                                           (let ((_hd2741427443_
                                                  (##car _e2741327439_))
                                                 (_tl2741527446_
                                                  (##cdr _e2741327439_)))
                                             ((lambda (_L27449_ _L27451_)
                                                (if (not (gx#ellipsis?
                                                          _L27451_))
                                                    (cons 'cons:
                                                          (cons (_parse127205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27451_)
                        (cons (_parse-list27207_ _L27449_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2739227432_
                                                     _g2739427436_)))
                                              _tl2741527446_
                                              _hd2741427443_)))
                                         (_g2739227432_ _g2739427436_))))
                                  (_g2739027508_
                                   (lambda (_g2739427468_)
                                     (if (gx#stx-pair? _g2739427468_)
                                         (let ((_e2740527471_
                                                (gx#syntax-e _g2739427468_)))
                                           (let ((_hd2740627475_
                                                  (##car _e2740527471_))
                                                 (_tl2740727478_
                                                  (##cdr _e2740527471_)))
                                             (if (gx#stx-pair? _tl2740727478_)
                                                 (let ((_e2740827481_
                                                        (gx#syntax-e
                                                         _tl2740727478_)))
                                                   (let ((_hd2740927485_
                                                          (##car _e2740827481_))
                                                         (_tl2741027488_
                                                          (##cdr _e2740827481_)))
                                                     ((lambda (_L27491_
                                                               _L27493_
                                                               _L27494_)
                                                        (if (gx#ellipsis?
                                                             _L27493_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse127205_ _L27494_)
                                (cons (_parse-list27207_ _L27491_) '())))
                    (_g2739127464_ _g2739427468_)))
              _tl2741027488_
              _hd2740927485_
              _hd2740627475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2739127464_
                                                  _g2739427468_))))
                                         (_g2739127464_ _g2739427468_))))
                                  (_g2738927548_
                                   (lambda (_g2739427512_)
                                     (if (gx#stx-pair? _g2739427512_)
                                         (let ((_e2739627515_
                                                (gx#syntax-e _g2739427512_)))
                                           (let ((_hd2739727519_
                                                  (##car _e2739627515_))
                                                 (_tl2739827522_
                                                  (##cdr _e2739627515_)))
                                             (if (gx#stx-datum? _hd2739727519_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2739727519_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2739827522_)
                                                         (let ((_e2739927525_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2739827522_)))
                   (let ((_hd2740027529_ (##car _e2739927525_))
                         (_tl2740127532_ (##cdr _e2739927525_)))
                     (if (gx#stx-null? _tl2740127532_)
                         ((lambda (_L27535_) (_parse127205_ _L27535_))
                          _hd2740027529_)
                         (_g2739027508_ _g2739427512_))))
                 (_g2739027508_ _g2739427512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2739027508_
                                                      _g2739427512_))
                                                 (_g2739027508_
                                                  _g2739427512_))))
                                         (_g2739027508_ _g2739427512_)))))
                             (_g2738927548_ _body27387_))))
                        (_parse-vector27208_
                         (lambda (_body27384_)
                           (if (_simple-vector?27209_ _body27384_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse127205_
                                            _body27384_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list27207_ _body27384_)
                                           '())))))
                        (_simple-vector?27209_
                         (lambda (_body27321_)
                           (let* ((_g2732527337_
                                   (lambda (_g2732627333_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2732627333_)))
                                  (_g2732427348_
                                   (lambda (_g2732627341_)
                                     ((lambda () (gx#stx-null? _body27321_)))))
                                  (_g2732327380_
                                   (lambda (_g2732627352_)
                                     (if (gx#stx-pair? _g2732627352_)
                                         (let ((_e2732927355_
                                                (gx#syntax-e _g2732627352_)))
                                           (let ((_hd2733027359_
                                                  (##car _e2732927355_))
                                                 (_tl2733127362_
                                                  (##cdr _e2732927355_)))
                                             ((lambda (_L27365_ _L27367_)
                                                (if (not (gx#ellipsis?
                                                          _L27367_))
                                                    (_simple-vector?27209_
                                                     _L27365_)
                                                    '#f))
                                              _tl2733127362_
                                              _hd2733027359_)))
                                         (_g2732427348_ _g2732627352_)))))
                             (_g2732327380_ _body27321_))))
                        (_parse-class-body27210_
                         (lambda (_body27230_)
                           (let _recur27233_ ((_rest27236_ _body27230_))
                             (let* ((_g2724027256_
                                     (lambda (_g2724127252_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2724127252_)))
                                    (_g2723927267_
                                     (lambda (_g2724127260_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest27236_)
                                              '()
                                              (_parse-error27212_
                                               _rest27236_))))))
                                    (_g2723827317_
                                     (lambda (_g2724127271_)
                                       (if (gx#stx-pair? _g2724127271_)
                                           (let ((_e2724527274_
                                                  (gx#syntax-e _g2724127271_)))
                                             (let ((_hd2724627278_
                                                    (##car _e2724527274_))
                                                   (_tl2724727281_
                                                    (##cdr _e2724527274_)))
                                               (if (gx#stx-pair?
                                                    _tl2724727281_)
                                                   (let ((_e2724827284_
                                                          (gx#syntax-e
                                                           _tl2724727281_)))
                                                     (let ((_hd2724927288_
                                                            (##car _e2724827284_))
                                                           (_tl2725027291_
                                                            (##cdr _e2724827284_)))
                                                       ((lambda (_L27294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27296_
                         _L27297_)
                  (if (gx#stx-keyword? _L27297_)
                      (cons* _L27297_
                             (_parse127205_ _L27296_)
                             (_recur27233_ _L27294_))
                      (_g2723927267_ _g2724127271_)))
                _tl2725027291_
                _hd2724927288_
                _hd2724627278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2723927267_
                                                    _g2724127271_))))
                                           (_g2723927267_ _g2724127271_)))))
                               (_g2723827317_ _rest27236_)))))
                        (_parse-qq27211_
                         (lambda (_hd27217_)
                           (let ((_g2721927226_
                                  (lambda (_g2722027222_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2722027222_))))
                             (_g2721927226_ _hd27217_))))
                        (_parse-error27212_
                         (lambda (_hd27214_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx27203_
                                      (cons _match-stx27203_
                                            (cons _stx27201_
                                                  (cons _hd27214_ '())))
                                      (cons _stx27201_
                                            (cons _hd27214_ '())))))))
                 (_parse127205_ _stx27201_)))))
        (lambda _g35305_
          (let ((_g35304_ (length _g35305_)))
            (cond ((fx= _g35304_ 1)
                   (apply (lambda (_stx28873_)
                            (let ((_match-stx28876_ '#f))
                              (_opt-lambda2719928869_
                               _stx28873_
                               _match-stx28876_)))
                          _g35305_))
                  ((fx= _g35304_ 2) (apply _opt-lambda2719928869_ _g35305_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g35305_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx27185_)
        (call-with-escape
         (lambda (_E27189_)
           (with-exception-handler
            (let ((_E!27192_ (current-exception-handler)))
              (lambda (_e27195_)
                (if (gx#syntax-error? _e27195_)
                    (_E27189_ '#f)
                    (_E!27192_ _e27195_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx27185_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree25974_)
        (letrec ((_loop25977_
                  (lambda (_ptree26252_ _vars26254_ _K26255_)
                    (let* ((_g2626826369_
                            (lambda (_g2626926365_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2626926365_)))
                           (_g2626726380_
                            (lambda (_g2626926373_)
                              ((lambda () (_K26255_ _vars26254_)))))
                           (_g2626626427_
                            (lambda (_g2626926384_)
                              (if (gx#stx-pair? _g2626926384_)
                                  (let ((_e2635826387_
                                         (gx#syntax-e _g2626926384_)))
                                    (let ((_hd2635926391_
                                           (##car _e2635826387_))
                                          (_tl2636026394_
                                           (##cdr _e2635826387_)))
                                      (if (gx#stx-datum? _hd2635926391_)
                                          (if (equal? (gx#stx-e _hd2635926391_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2636026394_)
                                                  (let ((_e2636126397_
                                                         (gx#syntax-e
                                                          _tl2636026394_)))
                                                    (let ((_hd2636226401_
                                                           (##car _e2636126397_))
                                                          (_tl2636326404_
                                                           (##cdr _e2636126397_)))
                                                      (if (gx#stx-null?
                                                           _tl2636326404_)
                                                          ((lambda (_L26407_)
                                                             (if (find (lambda (_g2642126423_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2642126423_
                                  _L26407_))
                               _vars26254_)
                         (_K26255_ _vars26254_)
                         (_K26255_ (cons _L26407_ _vars26254_))))
                   _hd2636226401_)
                  (_g2626726380_ _g2626926384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626726380_
                                                   _g2626926384_))
                                              (_g2626726380_ _g2626926384_))
                                          (_g2626726380_ _g2626926384_))))
                                  (_g2626726380_ _g2626926384_))))
                           (_g2626526481_
                            (lambda (_g2626926431_)
                              (if (gx#stx-pair? _g2626926431_)
                                  (let ((_e2634826434_
                                         (gx#syntax-e _g2626926431_)))
                                    (let ((_hd2634926438_
                                           (##car _e2634826434_))
                                          (_tl2635026441_
                                           (##cdr _e2634826434_)))
                                      (if (gx#stx-datum? _hd2634926438_)
                                          (if (equal? (gx#stx-e _hd2634926438_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2635026441_)
                                                  (let ((_e2635126444_
                                                         (gx#syntax-e
                                                          _tl2635026441_)))
                                                    (let ((_hd2635226448_
                                                           (##car _e2635126444_))
                                                          (_tl2635326451_
                                                           (##cdr _e2635126444_)))
                                                      (if (gx#stx-pair?
                                                           _tl2635326451_)
                                                          (let ((_e2635426454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2635326451_)))
                    (let ((_hd2635526458_ (##car _e2635426454_))
                          (_tl2635626461_ (##cdr _e2635426454_)))
                      (if (gx#stx-null? _tl2635626461_)
                          ((lambda (_L26464_ _L26466_)
                             (_loop25977_ _L26464_ _vars26254_ _K26255_))
                           _hd2635526458_
                           _hd2635226448_)
                          (_g2626626427_ _g2626926431_))))
                  (_g2626626427_ _g2626926431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626626427_
                                                   _g2626926431_))
                                              (_g2626626427_ _g2626926431_))
                                          (_g2626626427_ _g2626926431_))))
                                  (_g2626626427_ _g2626926431_))))
                           (_g2626426533_
                            (lambda (_g2626926485_)
                              (if (gx#stx-pair? _g2626926485_)
                                  (let ((_e2633726488_
                                         (gx#syntax-e _g2626926485_)))
                                    (let ((_hd2633826492_
                                           (##car _e2633726488_))
                                          (_tl2633926495_
                                           (##cdr _e2633726488_)))
                                      (if (gx#stx-datum? _hd2633826492_)
                                          (if (equal? (gx#stx-e _hd2633826492_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2633926495_)
                                                  (let ((_e2634026498_
                                                         (gx#syntax-e
                                                          _tl2633926495_)))
                                                    (let ((_hd2634126502_
                                                           (##car _e2634026498_))
                                                          (_tl2634226505_
                                                           (##cdr _e2634026498_)))
                                                      (if (gx#stx-pair?
                                                           _tl2634226505_)
                                                          (let ((_e2634326508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2634226505_)))
                    (let ((_hd2634426512_ (##car _e2634326508_))
                          (_tl2634526515_ (##cdr _e2634326508_)))
                      (if (gx#stx-null? _tl2634526515_)
                          ((lambda (_L26518_)
                             (_loop-class-list25981_
                              _L26518_
                              _vars26254_
                              _K26255_))
                           _hd2634426512_)
                          (_g2626526481_ _g2626926485_))))
                  (_g2626526481_ _g2626926485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626526481_
                                                   _g2626926485_))
                                              (_g2626526481_ _g2626926485_))
                                          (_g2626526481_ _g2626926485_))))
                                  (_g2626526481_ _g2626926485_))))
                           (_g2626326585_
                            (lambda (_g2626926537_)
                              (if (gx#stx-pair? _g2626926537_)
                                  (let ((_e2632726540_
                                         (gx#syntax-e _g2626926537_)))
                                    (let ((_hd2632826544_
                                           (##car _e2632726540_))
                                          (_tl2632926547_
                                           (##cdr _e2632726540_)))
                                      (if (gx#stx-datum? _hd2632826544_)
                                          (if (equal? (gx#stx-e _hd2632826544_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2632926547_)
                                                  (let ((_e2633026550_
                                                         (gx#syntax-e
                                                          _tl2632926547_)))
                                                    (let ((_hd2633126554_
                                                           (##car _e2633026550_))
                                                          (_tl2633226557_
                                                           (##cdr _e2633026550_)))
                                                      (if (gx#stx-pair?
                                                           _tl2633226557_)
                                                          (let ((_e2633326560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2633226557_)))
                    (let ((_hd2633426564_ (##car _e2633326560_))
                          (_tl2633526567_ (##cdr _e2633326560_)))
                      (if (gx#stx-null? _tl2633526567_)
                          ((lambda (_L26570_)
                             (_loop-vector25979_
                              _L26570_
                              _vars26254_
                              _K26255_))
                           _hd2633426564_)
                          (_g2626426533_ _g2626926537_))))
                  (_g2626426533_ _g2626926537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626426533_
                                                   _g2626926537_))
                                              (_g2626426533_ _g2626926537_))
                                          (_g2626426533_ _g2626926537_))))
                                  (_g2626426533_ _g2626926537_))))
                           (_g2626226631_
                            (lambda (_g2626926589_)
                              (if (gx#stx-pair? _g2626926589_)
                                  (let ((_e2632026592_
                                         (gx#syntax-e _g2626926589_)))
                                    (let ((_hd2632126596_
                                           (##car _e2632026592_))
                                          (_tl2632226599_
                                           (##cdr _e2632026592_)))
                                      (if (gx#stx-pair? _tl2632226599_)
                                          (let ((_e2632326602_
                                                 (gx#syntax-e _tl2632226599_)))
                                            (let ((_hd2632426606_
                                                   (##car _e2632326602_))
                                                  (_tl2632526609_
                                                   (##cdr _e2632326602_)))
                                              (if (gx#stx-null? _tl2632526609_)
                                                  ((lambda (_L26612_ _L26614_)
                                                     (if (let ((_$e26627_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26614_)))
                   (if _$e26627_ _$e26627_ (gx#stx-eq? 'vector: _L26614_)))
                 (_loop-vector25979_ _L26612_ _vars26254_ _K26255_)
                 (_g2626326585_ _g2626926589_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2632426606_
                                                   _hd2632126596_)
                                                  (_g2626326585_
                                                   _g2626926589_))))
                                          (_g2626326585_ _g2626926589_))))
                                  (_g2626326585_ _g2626926589_))))
                           (_g2626126671_
                            (lambda (_g2626926635_)
                              (if (gx#stx-pair? _g2626926635_)
                                  (let ((_e2631226638_
                                         (gx#syntax-e _g2626926635_)))
                                    (let ((_hd2631326642_
                                           (##car _e2631226638_))
                                          (_tl2631426645_
                                           (##cdr _e2631226638_)))
                                      (if (gx#stx-datum? _hd2631326642_)
                                          (if (equal? (gx#stx-e _hd2631326642_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2631426645_)
                                                  (let ((_e2631526648_
                                                         (gx#syntax-e
                                                          _tl2631426645_)))
                                                    (let ((_hd2631626652_
                                                           (##car _e2631526648_))
                                                          (_tl2631726655_
                                                           (##cdr _e2631526648_)))
                                                      (if (gx#stx-null?
                                                           _tl2631726655_)
                                                          ((lambda (_L26658_)
                                                             (_loop25977_
                                                              _L26658_
                                                              _vars26254_
                                                              _K26255_))
                                                           _hd2631626652_)
                                                          (_g2626226631_
                                                           _g2626926635_))))
                                                  (_g2626226631_
                                                   _g2626926635_))
                                              (_g2626226631_ _g2626926635_))
                                          (_g2626226631_ _g2626926635_))))
                                  (_g2626226631_ _g2626926635_))))
                           (_g2626026730_
                            (lambda (_g2626926675_)
                              (if (gx#stx-pair? _g2626926675_)
                                  (let ((_e2630226678_
                                         (gx#syntax-e _g2626926675_)))
                                    (let ((_hd2630326682_
                                           (##car _e2630226678_))
                                          (_tl2630426685_
                                           (##cdr _e2630226678_)))
                                      (if (gx#stx-datum? _hd2630326682_)
                                          (if (equal? (gx#stx-e _hd2630326682_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2630426685_)
                                                  (let ((_e2630526688_
                                                         (gx#syntax-e
                                                          _tl2630426685_)))
                                                    (let ((_hd2630626692_
                                                           (##car _e2630526688_))
                                                          (_tl2630726695_
                                                           (##cdr _e2630526688_)))
                                                      (if (gx#stx-pair?
                                                           _tl2630726695_)
                                                          (let ((_e2630826698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2630726695_)))
                    (let ((_hd2630926702_ (##car _e2630826698_))
                          (_tl2631026705_ (##cdr _e2630826698_)))
                      (if (gx#stx-null? _tl2631026705_)
                          ((lambda (_L26708_ _L26710_)
                             (_loop25977_
                              _L26710_
                              _vars26254_
                              (lambda (_g2672426726_)
                                (_loop25977_
                                 _L26708_
                                 _g2672426726_
                                 _K26255_))))
                           _hd2630926702_
                           _hd2630626692_)
                          (_g2626126671_ _g2626926675_))))
                  (_g2626126671_ _g2626926675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626126671_
                                                   _g2626926675_))
                                              (_g2626126671_ _g2626926675_))
                                          (_g2626126671_ _g2626926675_))))
                                  (_g2626126671_ _g2626926675_))))
                           (_g2625926789_
                            (lambda (_g2626926734_)
                              (if (gx#stx-pair? _g2626926734_)
                                  (let ((_e2629126737_
                                         (gx#syntax-e _g2626926734_)))
                                    (let ((_hd2629226741_
                                           (##car _e2629126737_))
                                          (_tl2629326744_
                                           (##cdr _e2629126737_)))
                                      (if (gx#stx-datum? _hd2629226741_)
                                          (if (equal? (gx#stx-e _hd2629226741_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2629326744_)
                                                  (let ((_e2629426747_
                                                         (gx#syntax-e
                                                          _tl2629326744_)))
                                                    (let ((_hd2629526751_
                                                           (##car _e2629426747_))
                                                          (_tl2629626754_
                                                           (##cdr _e2629426747_)))
                                                      (if (gx#stx-pair?
                                                           _tl2629626754_)
                                                          (let ((_e2629726757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2629626754_)))
                    (let ((_hd2629826761_ (##car _e2629726757_))
                          (_tl2629926764_ (##cdr _e2629726757_)))
                      (if (gx#stx-null? _tl2629926764_)
                          ((lambda (_L26767_ _L26769_)
                             (_loop25977_
                              _L26769_
                              _vars26254_
                              (lambda (_g2678326785_)
                                (_loop25977_
                                 _L26767_
                                 _g2678326785_
                                 _K26255_))))
                           _hd2629826761_
                           _hd2629526751_)
                          (_g2626026730_ _g2626926734_))))
                  (_g2626026730_ _g2626926734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2626026730_
                                                   _g2626926734_))
                                              (_g2626026730_ _g2626926734_))
                                          (_g2626026730_ _g2626926734_))))
                                  (_g2626026730_ _g2626926734_))))
                           (_g2625826829_
                            (lambda (_g2626926793_)
                              (if (gx#stx-pair? _g2626926793_)
                                  (let ((_e2628326796_
                                         (gx#syntax-e _g2626926793_)))
                                    (let ((_hd2628426800_
                                           (##car _e2628326796_))
                                          (_tl2628526803_
                                           (##cdr _e2628326796_)))
                                      (if (gx#stx-datum? _hd2628426800_)
                                          (if (equal? (gx#stx-e _hd2628426800_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2628526803_)
                                                  (let ((_e2628626806_
                                                         (gx#syntax-e
                                                          _tl2628526803_)))
                                                    (let ((_hd2628726810_
                                                           (##car _e2628626806_))
                                                          (_tl2628826813_
                                                           (##cdr _e2628626806_)))
                                                      (if (gx#stx-null?
                                                           _tl2628826813_)
                                                          ((lambda (_L26816_)
                                                             (_loop25977_
                                                              _L26816_
                                                              _vars26254_
                                                              _K26255_))
                                                           _hd2628726810_)
                                                          (_g2625926789_
                                                           _g2626926793_))))
                                                  (_g2625926789_
                                                   _g2626926793_))
                                              (_g2625926789_ _g2626926793_))
                                          (_g2625926789_ _g2626926793_))))
                                  (_g2625926789_ _g2626926793_))))
                           (_g2625726928_
                            (lambda (_g2626926833_)
                              (if (gx#stx-pair? _g2626926833_)
                                  (let ((_e2627926836_
                                         (gx#syntax-e _g2626926833_)))
                                    (let ((_hd2628026840_
                                           (##car _e2627926836_))
                                          (_tl2628126843_
                                           (##cdr _e2627926836_)))
                                      ((lambda (_L26846_ _L26848_)
                                         (if (let ((_$e26859_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26848_)))
                                               (if _$e26859_
                                                   _$e26859_
                                                   (gx#stx-eq? 'or: _L26848_)))
                                             (let* ((_g2686426876_
                                                     (lambda (_g2686526872_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2686526872_)))
                                                    (_g2686326887_
                                                     (lambda (_g2686526880_)
                                                       ((lambda ()
                                                          (_K26255_
                                                           _vars26254_)))))
                                                    (_g2686226924_
                                                     (lambda (_g2686526891_)
                                                       (if (gx#stx-pair?
                                                            _g2686526891_)
                                                           (let ((_e2686826894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2686526891_)))
                     (let ((_hd2686926898_ (##car _e2686826894_))
                           (_tl2687026901_ (##cdr _e2686826894_)))
                       ((lambda (_L26904_ _L26906_)
                          (_loop25977_
                           _L26906_
                           _vars26254_
                           (lambda (_g2691826920_)
                             (_loop25977_
                              (cons _L26848_ _L26904_)
                              _g2691826920_
                              _K26255_))))
                        _tl2687026901_
                        _hd2686926898_)))
                   (_g2686326887_ _g2686526891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2686226924_ _L26846_))
                                             (_g2625826829_ _g2626926833_)))
                                       _tl2628126843_
                                       _hd2628026840_)))
                                  (_g2625826829_ _g2626926833_))))
                           (_g2625627181_
                            (lambda (_g2626926932_)
                              (if (gx#stx-pair? _g2626926932_)
                                  (let ((_e2627126935_
                                         (gx#syntax-e _g2626926932_)))
                                    (let ((_hd2627226939_
                                           (##car _e2627126935_))
                                          (_tl2627326942_
                                           (##cdr _e2627126935_)))
                                      (if (gx#stx-datum? _hd2627226939_)
                                          (if (equal? (gx#stx-e _hd2627226939_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2627326942_)
                                                  (let ((_e2627426945_
                                                         (gx#syntax-e
                                                          _tl2627326942_)))
                                                    (let ((_hd2627526949_
                                                           (##car _e2627426945_))
                                                          (_tl2627626952_
                                                           (##cdr _e2627426945_)))
                                                      ((lambda (_L26955_)
                                                         (let* ((_g2697127008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2697227004_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2697227004_)))
                        (_g2697027019_
                         (lambda (_g2697227012_)
                           ((lambda () (_K26255_ _vars26254_)))))
                        (_g2696927097_
                         (lambda (_g2697227023_)
                           (if (gx#stx-pair? _g2697227023_)
                               (let ((_e2698827026_
                                      (gx#syntax-e _g2697227023_)))
                                 (let ((_hd2698927030_ (##car _e2698827026_))
                                       (_tl2699027033_ (##cdr _e2698827026_)))
                                   (if (gx#stx-pair? _tl2699027033_)
                                       (let ((_e2699127036_
                                              (gx#syntax-e _tl2699027033_)))
                                         (let ((_hd2699227040_
                                                (##car _e2699127036_))
                                               (_tl2699327043_
                                                (##cdr _e2699127036_)))
                                           (if (gx#stx-datum? _hd2699227040_)
                                               (if (equal? (gx#stx-e
                                                            _hd2699227040_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2699327043_)
                                                       (let ((_e2699427046_
                                                              (gx#syntax-e
                                                               _tl2699327043_)))
                                                         (let ((_hd2699527050_
                                                                (##car _e2699427046_))
                                                               (_tl2699627053_
                                                                (##cdr _e2699427046_)))
                                                           (if (gx#stx-pair?
                                                                _tl2699627053_)
                                                               (let ((_e2699727056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2699627053_)))
                         (let ((_hd2699827060_ (##car _e2699727056_))
                               (_tl2699927063_ (##cdr _e2699727056_)))
                           (if (gx#stx-datum? _hd2699827060_)
                               (if (equal? (gx#stx-e _hd2699827060_) '=>:)
                                   (if (gx#stx-pair? _tl2699927063_)
                                       (let ((_e2700027066_
                                              (gx#syntax-e _tl2699927063_)))
                                         (let ((_hd2700127070_
                                                (##car _e2700027066_))
                                               (_tl2700227073_
                                                (##cdr _e2700027066_)))
                                           (if (gx#stx-null? _tl2700227073_)
                                               ((lambda (_L27076_)
                                                  (_loop25977_
                                                   _L27076_
                                                   _vars26254_
                                                   _K26255_))
                                                _hd2700127070_)
                                               (_g2697027019_ _g2697227023_))))
                                       (_g2697027019_ _g2697227023_))
                                   (_g2697027019_ _g2697227023_))
                               (_g2697027019_ _g2697227023_))))
                       (_g2697027019_ _g2697227023_))))
               (_g2697027019_ _g2697227023_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2697027019_
                                                    _g2697227023_))
                                               (_g2697027019_ _g2697227023_))))
                                       (_g2697027019_ _g2697227023_))))
                               (_g2697027019_ _g2697227023_))))
                        (_g2696827149_
                         (lambda (_g2697227101_)
                           (if (gx#stx-pair? _g2697227101_)
                               (let ((_e2697827104_
                                      (gx#syntax-e _g2697227101_)))
                                 (let ((_hd2697927108_ (##car _e2697827104_))
                                       (_tl2698027111_ (##cdr _e2697827104_)))
                                   (if (gx#stx-pair? _tl2698027111_)
                                       (let ((_e2698127114_
                                              (gx#syntax-e _tl2698027111_)))
                                         (let ((_hd2698227118_
                                                (##car _e2698127114_))
                                               (_tl2698327121_
                                                (##cdr _e2698127114_)))
                                           (if (gx#stx-datum? _hd2698227118_)
                                               (if (equal? (gx#stx-e
                                                            _hd2698227118_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2698327121_)
                                                       (let ((_e2698427124_
                                                              (gx#syntax-e
                                                               _tl2698327121_)))
                                                         (let ((_hd2698527128_
                                                                (##car _e2698427124_))
                                                               (_tl2698627131_
                                                                (##cdr _e2698427124_)))
                                                           (if (gx#stx-null?
                                                                _tl2698627131_)
                                                               ((lambda (_L27134_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop25977_ _L27134_ _vars26254_ _K26255_))
                        _hd2698527128_)
                       (_g2696927097_ _g2697227101_))))
               (_g2696927097_ _g2697227101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2696927097_
                                                    _g2697227101_))
                                               (_g2696927097_ _g2697227101_))))
                                       (_g2696927097_ _g2697227101_))))
                               (_g2696927097_ _g2697227101_))))
                        (_g2696727177_
                         (lambda (_g2697227153_)
                           (if (gx#stx-pair? _g2697227153_)
                               (let ((_e2697427156_
                                      (gx#syntax-e _g2697227153_)))
                                 (let ((_hd2697527160_ (##car _e2697427156_))
                                       (_tl2697627163_ (##cdr _e2697427156_)))
                                   (if (gx#stx-null? _tl2697627163_)
                                       ((lambda (_L27166_)
                                          (_loop25977_
                                           _L27166_
                                           _vars26254_
                                           _K26255_))
                                        _hd2697527160_)
                                       (_g2696827149_ _g2697227153_))))
                               (_g2696827149_ _g2697227153_)))))
                   (_g2696727177_ _L26955_)))
               _tl2627626952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2625726928_
                                                   _g2626926932_))
                                              (_g2625726928_ _g2626926932_))
                                          (_g2625726928_ _g2626926932_))))
                                  (_g2625726928_ _g2626926932_)))))
                      (_g2625627181_ _ptree26252_))))
                 (_loop-vector25979_
                  (lambda (_body26140_ _vars26142_ _K26143_)
                    (let* ((_g2614626167_
                            (lambda (_g2614726163_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2614726163_)))
                           (_g2614526208_
                            (lambda (_g2614726171_)
                              (if (gx#stx-pair? _g2614726171_)
                                  (let ((_e2615626174_
                                         (gx#syntax-e _g2614726171_)))
                                    (let ((_hd2615726178_
                                           (##car _e2615626174_))
                                          (_tl2615826181_
                                           (##cdr _e2615626174_)))
                                      (if (gx#stx-datum? _hd2615726178_)
                                          (if (equal? (gx#stx-e _hd2615726178_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2615826181_)
                                                  (let ((_e2615926184_
                                                         (gx#syntax-e
                                                          _tl2615826181_)))
                                                    (let ((_hd2616026188_
                                                           (##car _e2615926184_))
                                                          (_tl2616126191_
                                                           (##cdr _e2615926184_)))
                                                      (if (gx#stx-null?
                                                           _tl2616126191_)
                                                          ((lambda (_L26194_)
                                                             (_loop25977_
                                                              _L26194_
                                                              _vars26142_
                                                              _K26143_))
                                                           _hd2616026188_)
                                                          (_g2614626167_
                                                           _g2614726171_))))
                                                  (_g2614626167_
                                                   _g2614726171_))
                                              (_g2614626167_ _g2614726171_))
                                          (_g2614626167_ _g2614726171_))))
                                  (_g2614626167_ _g2614726171_))))
                           (_g2614426248_
                            (lambda (_g2614726212_)
                              (if (gx#stx-pair? _g2614726212_)
                                  (let ((_e2614926215_
                                         (gx#syntax-e _g2614726212_)))
                                    (let ((_hd2615026219_
                                           (##car _e2614926215_))
                                          (_tl2615126222_
                                           (##cdr _e2614926215_)))
                                      (if (gx#stx-datum? _hd2615026219_)
                                          (if (equal? (gx#stx-e _hd2615026219_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2615126222_)
                                                  (let ((_e2615226225_
                                                         (gx#syntax-e
                                                          _tl2615126222_)))
                                                    (let ((_hd2615326229_
                                                           (##car _e2615226225_))
                                                          (_tl2615426232_
                                                           (##cdr _e2615226225_)))
                                                      (if (gx#stx-null?
                                                           _tl2615426232_)
                                                          ((lambda (_L26235_)
                                                             (_loop-list25980_
                                                              _L26235_
                                                              _vars26142_
                                                              _K26143_))
                                                           _hd2615326229_)
                                                          (_g2614526208_
                                                           _g2614726212_))))
                                                  (_g2614526208_
                                                   _g2614726212_))
                                              (_g2614526208_ _g2614726212_))
                                          (_g2614526208_ _g2614726212_))))
                                  (_g2614526208_ _g2614726212_)))))
                      (_g2614426248_ _body26140_))))
                 (_loop-list25980_
                  (lambda (_rest26070_ _vars26072_ _K26073_)
                    (let* ((_g2607626088_
                            (lambda (_g2607726084_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2607726084_)))
                           (_g2607526099_
                            (lambda (_g2607726092_)
                              ((lambda () (_K26073_ _vars26072_)))))
                           (_g2607426136_
                            (lambda (_g2607726103_)
                              (if (gx#stx-pair? _g2607726103_)
                                  (let ((_e2608026106_
                                         (gx#syntax-e _g2607726103_)))
                                    (let ((_hd2608126110_
                                           (##car _e2608026106_))
                                          (_tl2608226113_
                                           (##cdr _e2608026106_)))
                                      ((lambda (_L26116_ _L26118_)
                                         (_loop25977_
                                          _L26118_
                                          _vars26072_
                                          (lambda (_g2613026132_)
                                            (_loop-list25980_
                                             _L26116_
                                             _g2613026132_
                                             _K26073_))))
                                       _tl2608226113_
                                       _hd2608126110_)))
                                  (_g2607526099_ _g2607726103_)))))
                      (_g2607426136_ _rest26070_))))
                 (_loop-class-list25981_
                  (lambda (_rest25983_ _vars25985_ _K25986_)
                    (let* ((_g2598926004_
                            (lambda (_g2599026000_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2599026000_)))
                           (_g2598826015_
                            (lambda (_g2599026008_)
                              ((lambda () (_K25986_ _vars25985_)))))
                           (_g2598726066_
                            (lambda (_g2599026019_)
                              (if (gx#stx-pair? _g2599026019_)
                                  (let ((_e2599326022_
                                         (gx#syntax-e _g2599026019_)))
                                    (let ((_hd2599426026_
                                           (##car _e2599326022_))
                                          (_tl2599526029_
                                           (##cdr _e2599326022_)))
                                      (if (gx#stx-pair? _tl2599526029_)
                                          (let ((_e2599626032_
                                                 (gx#syntax-e _tl2599526029_)))
                                            (let ((_hd2599726036_
                                                   (##car _e2599626032_))
                                                  (_tl2599826039_
                                                   (##cdr _e2599626032_)))
                                              ((lambda (_L26042_ _L26044_)
                                                 (_loop25977_
                                                  _L26044_
                                                  _vars25985_
                                                  (lambda (_g2606026062_)
                                                    (_loop-class-list25981_
                                                     _L26042_
                                                     _g2606026062_
                                                     _K25986_))))
                                               _tl2599826039_
                                               _hd2599726036_)))
                                          (_g2598826015_ _g2599026019_))))
                                  (_g2598826015_ _g2599026019_)))))
                      (_g2598726066_ _rest25983_)))))
          (_loop25977_ _ptree25974_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22790_ _tgt22792_ _ptree22793_ _K22794_ _E22795_)
        (letrec ((_generate122797_
                  (lambda (_tgt24327_ _ptree24329_ _K24330_ _E24331_)
                    (let* ((_g2433324341_
                            (lambda (_g2433424337_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2433424337_)))
                           (_g2433225970_
                            (lambda (_g2433424345_)
                              ((lambda (_L24348_)
                                 (let ()
                                   (let* ((_g2437524501_
                                           (lambda (_g2437624497_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2437624497_)))
                                          (_g2437424522_
                                           (lambda (_g2437624505_)
                                             (if (gx#stx-pair? _g2437624505_)
                                                 (let ((_e2449324508_
                                                        (gx#syntax-e
                                                         _g2437624505_)))
                                                   (let ((_hd2449424512_
                                                          (##car _e2449324508_))
                                                         (_tl2449524515_
                                                          (##cdr _e2449324508_)))
                                                     (if (gx#stx-datum?
                                                          _hd2449424512_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2449424512_)
                             'any:)
                     (if (gx#stx-null? _tl2449524515_)
                         ((lambda () _K24330_))
                         (_g2437524501_ _g2437624505_))
                     (_g2437524501_ _g2437624505_))
                 (_g2437524501_ _g2437624505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437524501_
                                                  _g2437624505_))))
                                          (_g2437324565_
                                           (lambda (_g2437624526_)
                                             (if (gx#stx-pair? _g2437624526_)
                                                 (let ((_e2448724529_
                                                        (gx#syntax-e
                                                         _g2437624526_)))
                                                   (let ((_hd2448824533_
                                                          (##car _e2448724529_))
                                                         (_tl2448924536_
                                                          (##cdr _e2448724529_)))
                                                     (if (gx#stx-datum?
                                                          _hd2448824533_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2448824533_)
                             'var:)
                     (if (gx#stx-pair? _tl2448924536_)
                         (let ((_e2449024539_ (gx#syntax-e _tl2448924536_)))
                           (let ((_hd2449124543_ (##car _e2449024539_))
                                 (_tl2449224546_ (##cdr _e2449024539_)))
                             (if (gx#stx-null? _tl2449224546_)
                                 ((lambda (_L24549_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24549_
                                                            (cons _L24348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K24330_ '()))))
                                  _hd2449124543_)
                                 (_g2437424522_ _g2437624526_))))
                         (_g2437424522_ _g2437624526_))
                     (_g2437424522_ _g2437624526_))
                 (_g2437424522_ _g2437624526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437424522_
                                                  _g2437624526_))))
                                          (_g2437224650_
                                           (lambda (_g2437624569_)
                                             (if (gx#stx-pair? _g2437624569_)
                                                 (let ((_e2447724572_
                                                        (gx#syntax-e
                                                         _g2437624569_)))
                                                   (let ((_hd2447824576_
                                                          (##car _e2447724572_))
                                                         (_tl2447924579_
                                                          (##cdr _e2447724572_)))
                                                     (if (gx#stx-datum?
                                                          _hd2447824576_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2447824576_)
                             'apply:)
                     (if (gx#stx-pair? _tl2447924579_)
                         (let ((_e2448024582_ (gx#syntax-e _tl2447924579_)))
                           (let ((_hd2448124586_ (##car _e2448024582_))
                                 (_tl2448224589_ (##cdr _e2448024582_)))
                             (if (gx#stx-pair? _tl2448224589_)
                                 (let ((_e2448324592_
                                        (gx#syntax-e _tl2448224589_)))
                                   (let ((_hd2448424596_ (##car _e2448324592_))
                                         (_tl2448524599_
                                          (##cdr _e2448324592_)))
                                     (if (gx#stx-null? _tl2448524599_)
                                         ((lambda (_L24602_ _L24604_)
                                            (let* ((_g2461924627_
                                                    (lambda (_g2462024623_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2462024623_)))
                                                   (_g2461824646_
                                                    (lambda (_g2462024631_)
                                                      ((lambda (_L24634_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L24634_
                                           (cons (cons _L24604_
                                                       (cons _L24348_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122797_
                                      _L24634_
                                      _L24602_
                                      _K24330_
                                      _E24331_)
                                     '())))))
               _g2462024631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2461824646_
                                               (gx#genident 'e))))
                                          _hd2448424596_
                                          _hd2448124586_)
                                         (_g2437324565_ _g2437624569_))))
                                 (_g2437324565_ _g2437624569_))))
                         (_g2437324565_ _g2437624569_))
                     (_g2437324565_ _g2437624569_))
                 (_g2437324565_ _g2437624569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437324565_
                                                  _g2437624569_))))
                                          (_g2437124732_
                                           (lambda (_g2437624654_)
                                             (if (gx#stx-pair? _g2437624654_)
                                                 (let ((_e2446924657_
                                                        (gx#syntax-e
                                                         _g2437624654_)))
                                                   (let ((_hd2447024661_
                                                          (##car _e2446924657_))
                                                         (_tl2447124664_
                                                          (##cdr _e2446924657_)))
                                                     (if (gx#stx-datum?
                                                          _hd2447024661_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2447024661_)
                             'datum:)
                     (if (gx#stx-pair? _tl2447124664_)
                         (let ((_e2447224667_ (gx#syntax-e _tl2447124664_)))
                           (let ((_hd2447324671_ (##car _e2447224667_))
                                 (_tl2447424674_ (##cdr _e2447224667_)))
                             (if (gx#stx-null? _tl2447424674_)
                                 ((lambda (_L24677_)
                                    (let* ((_g2469024698_
                                            (lambda (_g2469124694_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2469124694_)))
                                           (_g2468924717_
                                            (lambda (_g2469124702_)
                                              ((lambda (_L24705_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L24705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L24348_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24677_ '()))
                                         '())))
                       (cons _K24330_ (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2469124702_))))
                                      (_g2468924717_
                                       (let ((_e24721_ (gx#stx-e _L24677_)))
                                         (if (let ((_$e24724_
                                                    (symbol? _e24721_)))
                                               (if _$e24724_
                                                   _$e24724_
                                                   (let ((_$e24728_
                                                          (keyword? _e24721_)))
                                                     (if _$e24728_
                                                         _$e24728_
                                                         (immediate?
                                                          _e24721_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e24721_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2447324671_)
                                 (_g2437224650_ _g2437624654_))))
                         (_g2437224650_ _g2437624654_))
                     (_g2437224650_ _g2437624654_))
                 (_g2437224650_ _g2437624654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437224650_
                                                  _g2437624654_))))
                                          (_g2437024786_
                                           (lambda (_g2437624736_)
                                             (if (gx#stx-pair? _g2437624736_)
                                                 (let ((_e2445924739_
                                                        (gx#syntax-e
                                                         _g2437624736_)))
                                                   (let ((_hd2446024743_
                                                          (##car _e2445924739_))
                                                         (_tl2446124746_
                                                          (##cdr _e2445924739_)))
                                                     (if (gx#stx-datum?
                                                          _hd2446024743_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2446024743_)
                             'class:)
                     (if (gx#stx-pair? _tl2446124746_)
                         (let ((_e2446224749_ (gx#syntax-e _tl2446124746_)))
                           (let ((_hd2446324753_ (##car _e2446224749_))
                                 (_tl2446424756_ (##cdr _e2446224749_)))
                             (if (gx#stx-pair? _tl2446424756_)
                                 (let ((_e2446524759_
                                        (gx#syntax-e _tl2446424756_)))
                                   (let ((_hd2446624763_ (##car _e2446524759_))
                                         (_tl2446724766_
                                          (##cdr _e2446524759_)))
                                     (if (gx#stx-null? _tl2446724766_)
                                         ((lambda (_L24769_ _L24771_)
                                            (_generate-class22803_
                                             (gx#stx-e _L24771_)
                                             _tgt24327_
                                             _L24769_
                                             _K24330_
                                             _E24331_))
                                          _hd2446624763_
                                          _hd2446324753_)
                                         (_g2437124732_ _g2437624736_))))
                                 (_g2437124732_ _g2437624736_))))
                         (_g2437124732_ _g2437624736_))
                     (_g2437124732_ _g2437624736_))
                 (_g2437124732_ _g2437624736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437124732_
                                                  _g2437624736_))))
                                          (_g2436924840_
                                           (lambda (_g2437624790_)
                                             (if (gx#stx-pair? _g2437624790_)
                                                 (let ((_e2444824793_
                                                        (gx#syntax-e
                                                         _g2437624790_)))
                                                   (let ((_hd2444924797_
                                                          (##car _e2444824793_))
                                                         (_tl2445024800_
                                                          (##cdr _e2444824793_)))
                                                     (if (gx#stx-datum?
                                                          _hd2444924797_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2444924797_)
                             'struct:)
                     (if (gx#stx-pair? _tl2445024800_)
                         (let ((_e2445124803_ (gx#syntax-e _tl2445024800_)))
                           (let ((_hd2445224807_ (##car _e2445124803_))
                                 (_tl2445324810_ (##cdr _e2445124803_)))
                             (if (gx#stx-pair? _tl2445324810_)
                                 (let ((_e2445424813_
                                        (gx#syntax-e _tl2445324810_)))
                                   (let ((_hd2445524817_ (##car _e2445424813_))
                                         (_tl2445624820_
                                          (##cdr _e2445424813_)))
                                     (if (gx#stx-null? _tl2445624820_)
                                         ((lambda (_L24823_ _L24825_)
                                            (_generate-struct22802_
                                             (gx#stx-e _L24825_)
                                             _tgt24327_
                                             _L24823_
                                             _K24330_
                                             _E24331_))
                                          _hd2445524817_
                                          _hd2445224807_)
                                         (_g2437024786_ _g2437624790_))))
                                 (_g2437024786_ _g2437624790_))))
                         (_g2437024786_ _g2437624790_))
                     (_g2437024786_ _g2437624790_))
                 (_g2437024786_ _g2437624790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2437024786_
                                                  _g2437624790_))))
                                          (_g2436825018_
                                           (lambda (_g2437624844_)
                                             (if (gx#stx-pair? _g2437624844_)
                                                 (let ((_e2444024847_
                                                        (gx#syntax-e
                                                         _g2437624844_)))
                                                   (let ((_hd2444124851_
                                                          (##car _e2444024847_))
                                                         (_tl2444224854_
                                                          (##cdr _e2444024847_)))
                                                     (if (gx#stx-datum?
                                                          _hd2444124851_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2444124851_)
                             'vector:)
                     (if (gx#stx-pair? _tl2444224854_)
                         (let ((_e2444324857_ (gx#syntax-e _tl2444224854_)))
                           (let ((_hd2444424861_ (##car _e2444324857_))
                                 (_tl2444524864_ (##cdr _e2444324857_)))
                             (if (gx#stx-null? _tl2444524864_)
                                 ((lambda (_L24867_)
                                    (let* ((_g2488124902_
                                            (lambda (_g2488224898_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2488224898_)))
                                           (_g2488024943_
                                            (lambda (_g2488224906_)
                                              (if (gx#stx-pair? _g2488224906_)
                                                  (let ((_e2489124909_
                                                         (gx#syntax-e
                                                          _g2488224906_)))
                                                    (let ((_hd2489224913_
                                                           (##car _e2489124909_))
                                                          (_tl2489324916_
                                                           (##cdr _e2489124909_)))
                                                      (if (gx#stx-datum?
                                                           _hd2489224913_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2489224913_)
                              'list:)
                      (if (gx#stx-pair? _tl2489324916_)
                          (let ((_e2489424919_ (gx#syntax-e _tl2489324916_)))
                            (let ((_hd2489524923_ (##car _e2489424919_))
                                  (_tl2489624926_ (##cdr _e2489424919_)))
                              (if (gx#stx-null? _tl2489624926_)
                                  ((lambda (_L24929_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L24348_ '()))
                                                 (cons (_generate-list-vector22801_
                                                        _tgt24327_
                                                        _L24929_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K24330_
                                                        _E24331_)
                                                       (cons _E24331_ '())))))
                                   _hd2489524923_)
                                  (_g2488124902_ _g2488224906_))))
                          (_g2488124902_ _g2488224906_))
                      (_g2488124902_ _g2488224906_))
                  (_g2488124902_ _g2488224906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2488124902_
                                                   _g2488224906_))))
                                           (_g2487925014_
                                            (lambda (_g2488224947_)
                                              (if (gx#stx-pair? _g2488224947_)
                                                  (let ((_e2488424950_
                                                         (gx#syntax-e
                                                          _g2488224947_)))
                                                    (let ((_hd2488524954_
                                                           (##car _e2488424950_))
                                                          (_tl2488624957_
                                                           (##cdr _e2488424950_)))
                                                      (if (gx#stx-datum?
                                                           _hd2488524954_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2488524954_)
                              'simple:)
                      (if (gx#stx-pair? _tl2488624957_)
                          (let ((_e2488724960_ (gx#syntax-e _tl2488624957_)))
                            (let ((_hd2488824964_ (##car _e2488724960_))
                                  (_tl2488924967_ (##cdr _e2488724960_)))
                              (if (gx#stx-null? _tl2488924967_)
                                  ((lambda (_L24970_)
                                     (let* ((_g2498324991_
                                             (lambda (_g2498424987_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2498424987_)))
                                            (_g2498225010_
                                             (lambda (_g2498424995_)
                                               ((lambda (_L24998_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L24348_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L24348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L24998_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector22800_
                               _tgt24327_
                               _L24970_
                               '0
                               _K24330_
                               _E24331_)
                              (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2498424995_))))
                                       (_g2498225010_
                                        (gx#stx-length _L24970_))))
                                   _hd2488824964_)
                                  (_g2488024943_ _g2488224947_))))
                          (_g2488024943_ _g2488224947_))
                      (_g2488024943_ _g2488224947_))
                  (_g2488024943_ _g2488224947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2488024943_
                                                   _g2488224947_)))))
                                      (_g2487925014_ _L24867_)))
                                  _hd2444424861_)
                                 (_g2436924840_ _g2437624844_))))
                         (_g2436924840_ _g2437624844_))
                     (_g2436924840_ _g2437624844_))
                 (_g2436924840_ _g2437624844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436924840_
                                                  _g2437624844_))))
                                          (_g2436725196_
                                           (lambda (_g2437625022_)
                                             (if (gx#stx-pair? _g2437625022_)
                                                 (let ((_e2443325025_
                                                        (gx#syntax-e
                                                         _g2437625022_)))
                                                   (let ((_hd2443425029_
                                                          (##car _e2443325025_))
                                                         (_tl2443525032_
                                                          (##cdr _e2443325025_)))
                                                     (if (gx#stx-datum?
                                                          _hd2443425029_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2443425029_)
                             'values:)
                     (if (gx#stx-pair? _tl2443525032_)
                         (let ((_e2443625035_ (gx#syntax-e _tl2443525032_)))
                           (let ((_hd2443725039_ (##car _e2443625035_))
                                 (_tl2443825042_ (##cdr _e2443625035_)))
                             (if (gx#stx-null? _tl2443825042_)
                                 ((lambda (_L25045_)
                                    (let* ((_g2505925080_
                                            (lambda (_g2506025076_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2506025076_)))
                                           (_g2505825121_
                                            (lambda (_g2506025084_)
                                              (if (gx#stx-pair? _g2506025084_)
                                                  (let ((_e2506925087_
                                                         (gx#syntax-e
                                                          _g2506025084_)))
                                                    (let ((_hd2507025091_
                                                           (##car _e2506925087_))
                                                          (_tl2507125094_
                                                           (##cdr _e2506925087_)))
                                                      (if (gx#stx-datum?
                                                           _hd2507025091_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2507025091_)
                              'list:)
                      (if (gx#stx-pair? _tl2507125094_)
                          (let ((_e2507225097_ (gx#syntax-e _tl2507125094_)))
                            (let ((_hd2507325101_ (##car _e2507225097_))
                                  (_tl2507425104_ (##cdr _e2507225097_)))
                              (if (gx#stx-null? _tl2507425104_)
                                  ((lambda (_L25107_)
                                     (_generate-list-vector22801_
                                      _tgt24327_
                                      _L25107_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K24330_
                                      _E24331_))
                                   _hd2507325101_)
                                  (_g2505925080_ _g2506025084_))))
                          (_g2505925080_ _g2506025084_))
                      (_g2505925080_ _g2506025084_))
                  (_g2505925080_ _g2506025084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505925080_
                                                   _g2506025084_))))
                                           (_g2505725192_
                                            (lambda (_g2506025125_)
                                              (if (gx#stx-pair? _g2506025125_)
                                                  (let ((_e2506225128_
                                                         (gx#syntax-e
                                                          _g2506025125_)))
                                                    (let ((_hd2506325132_
                                                           (##car _e2506225128_))
                                                          (_tl2506425135_
                                                           (##cdr _e2506225128_)))
                                                      (if (gx#stx-datum?
                                                           _hd2506325132_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2506325132_)
                              'simple:)
                      (if (gx#stx-pair? _tl2506425135_)
                          (let ((_e2506525138_ (gx#syntax-e _tl2506425135_)))
                            (let ((_hd2506625142_ (##car _e2506525138_))
                                  (_tl2506725145_ (##cdr _e2506525138_)))
                              (if (gx#stx-null? _tl2506725145_)
                                  ((lambda (_L25148_)
                                     (let* ((_g2516125169_
                                             (lambda (_g2516225165_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2516225165_)))
                                            (_g2516025188_
                                             (lambda (_g2516225173_)
                                               ((lambda (_L25176_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L24348_ '()))
                                    (cons _L25176_ '())))
                        (cons (_generate-simple-vector22800_
                               _tgt24327_
                               _L25148_
                               '0
                               _K24330_
                               _E24331_)
                              (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2516225173_))))
                                       (_g2516025188_
                                        (gx#stx-length _L25148_))))
                                   _hd2506625142_)
                                  (_g2505825121_ _g2506025125_))))
                          (_g2505825121_ _g2506025125_))
                      (_g2505825121_ _g2506025125_))
                  (_g2505825121_ _g2506025125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505825121_
                                                   _g2506025125_)))))
                                      (_g2505725192_ _L25045_)))
                                  _hd2443725039_)
                                 (_g2436825018_ _g2437625022_))))
                         (_g2436825018_ _g2437625022_))
                     (_g2436825018_ _g2437625022_))
                 (_g2436825018_ _g2437625022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436825018_
                                                  _g2437625022_))))
                                          (_g2436625267_
                                           (lambda (_g2437625200_)
                                             (if (gx#stx-pair? _g2437625200_)
                                                 (let ((_e2442625203_
                                                        (gx#syntax-e
                                                         _g2437625200_)))
                                                   (let ((_hd2442725207_
                                                          (##car _e2442625203_))
                                                         (_tl2442825210_
                                                          (##cdr _e2442625203_)))
                                                     (if (gx#stx-datum?
                                                          _hd2442725207_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2442725207_)
                             'box:)
                     (if (gx#stx-pair? _tl2442825210_)
                         (let ((_e2442925213_ (gx#syntax-e _tl2442825210_)))
                           (let ((_hd2443025217_ (##car _e2442925213_))
                                 (_tl2443125220_ (##cdr _e2442925213_)))
                             (if (gx#stx-null? _tl2443125220_)
                                 ((lambda (_L25223_)
                                    (let* ((_g2523625244_
                                            (lambda (_g2523725240_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2523725240_)))
                                           (_g2523525263_
                                            (lambda (_g2523725248_)
                                              ((lambda (_L25251_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L24348_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L25251_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L24348_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122797_
                                                _L25251_
                                                _L25223_
                                                _K24330_
                                                _E24331_)
                                               '())))
                             (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2523725248_))))
                                      (_g2523525263_ (gx#genident 'e))))
                                  _hd2443025217_)
                                 (_g2436725196_ _g2437625200_))))
                         (_g2436725196_ _g2437625200_))
                     (_g2436725196_ _g2437625200_))
                 (_g2436725196_ _g2437625200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436725196_
                                                  _g2437625200_))))
                                          (_g2436525321_
                                           (lambda (_g2437625271_)
                                             (if (gx#stx-pair? _g2437625271_)
                                                 (let ((_e2441625274_
                                                        (gx#syntax-e
                                                         _g2437625271_)))
                                                   (let ((_hd2441725278_
                                                          (##car _e2441625274_))
                                                         (_tl2441825281_
                                                          (##cdr _e2441625274_)))
                                                     (if (gx#stx-datum?
                                                          _hd2441725278_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2441725278_)
                             'splice:)
                     (if (gx#stx-pair? _tl2441825281_)
                         (let ((_e2441925284_ (gx#syntax-e _tl2441825281_)))
                           (let ((_hd2442025288_ (##car _e2441925284_))
                                 (_tl2442125291_ (##cdr _e2441925284_)))
                             (if (gx#stx-pair? _tl2442125291_)
                                 (let ((_e2442225294_
                                        (gx#syntax-e _tl2442125291_)))
                                   (let ((_hd2442325298_ (##car _e2442225294_))
                                         (_tl2442425301_
                                          (##cdr _e2442225294_)))
                                     (if (gx#stx-null? _tl2442425301_)
                                         ((lambda (_L25304_ _L25306_)
                                            (_generate-splice22799_
                                             _tgt24327_
                                             _L25306_
                                             _L25304_
                                             _K24330_
                                             _E24331_))
                                          _hd2442325298_
                                          _hd2442025288_)
                                         (_g2436625267_ _g2437625271_))))
                                 (_g2436625267_ _g2437625271_))))
                         (_g2436625267_ _g2437625271_))
                     (_g2436625267_ _g2437625271_))
                 (_g2436625267_ _g2437625271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436625267_
                                                  _g2437625271_))))
                                          (_g2436425342_
                                           (lambda (_g2437625325_)
                                             (if (gx#stx-pair? _g2437625325_)
                                                 (let ((_e2441125328_
                                                        (gx#syntax-e
                                                         _g2437625325_)))
                                                   (let ((_hd2441225332_
                                                          (##car _e2441125328_))
                                                         (_tl2441325335_
                                                          (##cdr _e2441125328_)))
                                                     (if (gx#stx-datum?
                                                          _hd2441225332_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2441225332_)
                             'null:)
                     (if (gx#stx-null? _tl2441325335_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L24348_ '()))
                                        (cons _K24330_ (cons _E24331_ '()))))))
                         (_g2436525321_ _g2437625325_))
                     (_g2436525321_ _g2437625325_))
                 (_g2436525321_ _g2437625325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436525321_
                                                  _g2437625325_))))
                                          (_g2436325461_
                                           (lambda (_g2437625346_)
                                             (if (gx#stx-pair? _g2437625346_)
                                                 (let ((_e2440225349_
                                                        (gx#syntax-e
                                                         _g2437625346_)))
                                                   (let ((_hd2440325353_
                                                          (##car _e2440225349_))
                                                         (_tl2440425356_
                                                          (##cdr _e2440225349_)))
                                                     (if (gx#stx-datum?
                                                          _hd2440325353_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2440325353_)
                             'cons:)
                     (if (gx#stx-pair? _tl2440425356_)
                         (let ((_e2440525359_ (gx#syntax-e _tl2440425356_)))
                           (let ((_hd2440625363_ (##car _e2440525359_))
                                 (_tl2440725366_ (##cdr _e2440525359_)))
                             (if (gx#stx-pair? _tl2440725366_)
                                 (let ((_e2440825369_
                                        (gx#syntax-e _tl2440725366_)))
                                   (let ((_hd2440925373_ (##car _e2440825369_))
                                         (_tl2441025376_
                                          (##cdr _e2440825369_)))
                                     (if (gx#stx-null? _tl2441025376_)
                                         ((lambda (_L25379_ _L25381_)
                                            (let* ((_g2539725412_
                                                    (lambda (_g2539825408_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2539825408_)))
                                                   (_g2539625457_
                                                    (lambda (_g2539825416_)
                                                      (if (gx#stx-pair?
                                                           _g2539825416_)
                                                          (let ((_e2540125419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2539825416_)))
                    (let ((_hd2540225423_ (##car _e2540125419_))
                          (_tl2540325426_ (##cdr _e2540125419_)))
                      (if (gx#stx-pair? _tl2540325426_)
                          (let ((_e2540425429_ (gx#syntax-e _tl2540325426_)))
                            (let ((_hd2540525433_ (##car _e2540425429_))
                                  (_tl2540625436_ (##cdr _e2540425429_)))
                              (if (gx#stx-null? _tl2540625436_)
                                  ((lambda (_L25439_ _L25441_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L24348_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L25441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L24348_ '()))
                                               '()))
                                   (cons (cons _L25439_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24348_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate122797_
                                    _L25441_
                                    _L25381_
                                    (_generate122797_
                                     _L25439_
                                     _L25379_
                                     _K24330_
                                     _E24331_)
                                    _E24331_)
                                   '())))
                 (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2540525433_
                                   _hd2540225423_)
                                  (_g2539725412_ _g2539825416_))))
                          (_g2539725412_ _g2539825416_))))
                  (_g2539725412_ _g2539825416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2539625457_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2440925373_
                                          _hd2440625363_)
                                         (_g2436425342_ _g2437625346_))))
                                 (_g2436425342_ _g2437625346_))))
                         (_g2436425342_ _g2437625346_))
                     (_g2436425342_ _g2437625346_))
                 (_g2436425342_ _g2437625346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436425342_
                                                  _g2437625346_))))
                                          (_g2436225501_
                                           (lambda (_g2437625465_)
                                             (if (gx#stx-pair? _g2437625465_)
                                                 (let ((_e2439425468_
                                                        (gx#syntax-e
                                                         _g2437625465_)))
                                                   (let ((_hd2439525472_
                                                          (##car _e2439425468_))
                                                         (_tl2439625475_
                                                          (##cdr _e2439425468_)))
                                                     (if (gx#stx-datum?
                                                          _hd2439525472_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2439525472_)
                             'not:)
                     (if (gx#stx-pair? _tl2439625475_)
                         (let ((_e2439725478_ (gx#syntax-e _tl2439625475_)))
                           (let ((_hd2439825482_ (##car _e2439725478_))
                                 (_tl2439925485_ (##cdr _e2439725478_)))
                             (if (gx#stx-null? _tl2439925485_)
                                 ((lambda (_L25488_)
                                    (_generate122797_
                                     _tgt24327_
                                     _L25488_
                                     _E24331_
                                     _K24330_))
                                  _hd2439825482_)
                                 (_g2436325461_ _g2437625465_))))
                         (_g2436325461_ _g2437625465_))
                     (_g2436325461_ _g2437625465_))
                 (_g2436325461_ _g2437625465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436325461_
                                                  _g2437625465_))))
                                          (_g2436125589_
                                           (lambda (_g2437625505_)
                                             (if (gx#stx-pair? _g2437625505_)
                                                 (let ((_e2439025508_
                                                        (gx#syntax-e
                                                         _g2437625505_)))
                                                   (let ((_hd2439125512_
                                                          (##car _e2439025508_))
                                                         (_tl2439225515_
                                                          (##cdr _e2439025508_)))
                                                     (if (gx#stx-datum?
                                                          _hd2439125512_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2439125512_)
                             'or:)
                     ((lambda (_L25518_)
                        (let* ((_g2553025542_
                                (lambda (_g2553125538_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2553125538_)))
                               (_g2552925553_
                                (lambda (_g2553125546_)
                                  ((lambda () _E24331_))))
                               (_g2552825585_
                                (lambda (_g2553125557_)
                                  (if (gx#stx-pair? _g2553125557_)
                                      (let ((_e2553425560_
                                             (gx#syntax-e _g2553125557_)))
                                        (let ((_hd2553525564_
                                               (##car _e2553425560_))
                                              (_tl2553625567_
                                               (##cdr _e2553425560_)))
                                          ((lambda (_L25570_ _L25572_)
                                             (_generate122797_
                                              _tgt24327_
                                              _L25572_
                                              _K24330_
                                              (_generate122797_
                                               _tgt24327_
                                               (cons 'or: _L25570_)
                                               _K24330_
                                               _E24331_)))
                                           _tl2553625567_
                                           _hd2553525564_)))
                                      (_g2552925553_ _g2553125557_)))))
                          (_g2552825585_ _L25518_)))
                      _tl2439225515_)
                     (_g2436225501_ _g2437625505_))
                 (_g2436225501_ _g2437625505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436225501_
                                                  _g2437625505_))))
                                          (_g2436025677_
                                           (lambda (_g2437625593_)
                                             (if (gx#stx-pair? _g2437625593_)
                                                 (let ((_e2438625596_
                                                        (gx#syntax-e
                                                         _g2437625593_)))
                                                   (let ((_hd2438725600_
                                                          (##car _e2438625596_))
                                                         (_tl2438825603_
                                                          (##cdr _e2438625596_)))
                                                     (if (gx#stx-datum?
                                                          _hd2438725600_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2438725600_)
                             'and:)
                     ((lambda (_L25606_)
                        (let* ((_g2561825630_
                                (lambda (_g2561925626_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2561925626_)))
                               (_g2561725641_
                                (lambda (_g2561925634_)
                                  ((lambda () _K24330_))))
                               (_g2561625673_
                                (lambda (_g2561925645_)
                                  (if (gx#stx-pair? _g2561925645_)
                                      (let ((_e2562225648_
                                             (gx#syntax-e _g2561925645_)))
                                        (let ((_hd2562325652_
                                               (##car _e2562225648_))
                                              (_tl2562425655_
                                               (##cdr _e2562225648_)))
                                          ((lambda (_L25658_ _L25660_)
                                             (_generate122797_
                                              _tgt24327_
                                              _L25660_
                                              (_generate122797_
                                               _tgt24327_
                                               (cons 'and: _L25658_)
                                               _K24330_
                                               _E24331_)
                                              _E24331_))
                                           _tl2562425655_
                                           _hd2562325652_)))
                                      (_g2561725641_ _g2561925645_)))))
                          (_g2561625673_ _L25606_)))
                      _tl2438825603_)
                     (_g2436125589_ _g2437625593_))
                 (_g2436125589_ _g2437625593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436125589_
                                                  _g2437625593_))))
                                          (_g2435925966_
                                           (lambda (_g2437625681_)
                                             (if (gx#stx-pair? _g2437625681_)
                                                 (let ((_e2437925684_
                                                        (gx#syntax-e
                                                         _g2437625681_)))
                                                   (let ((_hd2438025688_
                                                          (##car _e2437925684_))
                                                         (_tl2438125691_
                                                          (##cdr _e2437925684_)))
                                                     (if (gx#stx-datum?
                                                          _hd2438025688_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2438025688_)
                             '?:)
                     (if (gx#stx-pair? _tl2438125691_)
                         (let ((_e2438225694_ (gx#syntax-e _tl2438125691_)))
                           (let ((_hd2438325698_ (##car _e2438225694_))
                                 (_tl2438425701_ (##cdr _e2438225694_)))
                             ((lambda (_L25704_ _L25706_)
                                (let* ((_g2572225754_
                                        (lambda (_g2572325750_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2572325750_)))
                                       (_g2572125852_
                                        (lambda (_g2572325758_)
                                          (if (gx#stx-pair? _g2572325758_)
                                              (let ((_e2573725761_
                                                     (gx#syntax-e
                                                      _g2572325758_)))
                                                (let ((_hd2573825765_
                                                       (##car _e2573725761_))
                                                      (_tl2573925768_
                                                       (##cdr _e2573725761_)))
                                                  (if (gx#stx-datum?
                                                       _hd2573825765_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2573825765_)
                          '::)
                  (if (gx#stx-pair? _tl2573925768_)
                      (let ((_e2574025771_ (gx#syntax-e _tl2573925768_)))
                        (let ((_hd2574125775_ (##car _e2574025771_))
                              (_tl2574225778_ (##cdr _e2574025771_)))
                          (if (gx#stx-pair? _tl2574225778_)
                              (let ((_e2574325781_
                                     (gx#syntax-e _tl2574225778_)))
                                (let ((_hd2574425785_ (##car _e2574325781_))
                                      (_tl2574525788_ (##cdr _e2574325781_)))
                                  (if (gx#stx-datum? _hd2574425785_)
                                      (if (equal? (gx#stx-e _hd2574425785_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2574525788_)
                                              (let ((_e2574625791_
                                                     (gx#syntax-e
                                                      _tl2574525788_)))
                                                (let ((_hd2574725795_
                                                       (##car _e2574625791_))
                                                      (_tl2574825798_
                                                       (##cdr _e2574625791_)))
                                                  (if (gx#stx-null?
                                                       _tl2574825798_)
                                                      ((lambda (_L25801_
                                                                _L25803_)
                                                         (let* ((_g2582125829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2582225825_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2582225825_)))
                        (_g2582025848_
                         (lambda (_g2582225833_)
                           ((lambda (_L25836_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25706_
                                                        (cons _L24348_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L25836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25803_ (cons _L24348_ '()))
                                        '()))
                            '())
                      (cons (_generate122797_
                             _L25836_
                             _L25801_
                             _K24330_
                             _E24331_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24331_ '()))))))
                            _g2582225833_))))
                   (_g2582025848_ (gx#genident 'e))))
               _hd2574725795_
               _hd2574125775_)
              (_g2572225754_ _g2572325758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2572225754_ _g2572325758_))
                                          (_g2572225754_ _g2572325758_))
                                      (_g2572225754_ _g2572325758_))))
                              (_g2572225754_ _g2572325758_))))
                      (_g2572225754_ _g2572325758_))
                  (_g2572225754_ _g2572325758_))
              (_g2572225754_ _g2572325758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2572225754_ _g2572325758_))))
                                       (_g2572025923_
                                        (lambda (_g2572325856_)
                                          (if (gx#stx-pair? _g2572325856_)
                                              (let ((_e2572925859_
                                                     (gx#syntax-e
                                                      _g2572325856_)))
                                                (let ((_hd2573025863_
                                                       (##car _e2572925859_))
                                                      (_tl2573125866_
                                                       (##cdr _e2572925859_)))
                                                  (if (gx#stx-datum?
                                                       _hd2573025863_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2573025863_)
                          '=>:)
                  (if (gx#stx-pair? _tl2573125866_)
                      (let ((_e2573225869_ (gx#syntax-e _tl2573125866_)))
                        (let ((_hd2573325873_ (##car _e2573225869_))
                              (_tl2573425876_ (##cdr _e2573225869_)))
                          (if (gx#stx-null? _tl2573425876_)
                              ((lambda (_L25879_)
                                 (let* ((_g2589225900_
                                         (lambda (_g2589325896_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2589325896_)))
                                        (_g2589125919_
                                         (lambda (_g2589325904_)
                                           ((lambda (_L25907_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L25907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25706_ (cons _L24348_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L25907_
                                      (cons (_generate122797_
                                             _L25907_
                                             _L25879_
                                             _K24330_
                                             _E24331_)
                                            (cons _E24331_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2589325904_))))
                                   (_g2589125919_ (gx#genident 'e))))
                               _hd2573325873_)
                              (_g2572125852_ _g2572325856_))))
                      (_g2572125852_ _g2572325856_))
                  (_g2572125852_ _g2572325856_))
              (_g2572125852_ _g2572325856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2572125852_ _g2572325856_))))
                                       (_g2571925951_
                                        (lambda (_g2572325927_)
                                          (if (gx#stx-pair? _g2572325927_)
                                              (let ((_e2572525930_
                                                     (gx#syntax-e
                                                      _g2572325927_)))
                                                (let ((_hd2572625934_
                                                       (##car _e2572525930_))
                                                      (_tl2572725937_
                                                       (##cdr _e2572525930_)))
                                                  (if (gx#stx-null?
                                                       _tl2572725937_)
                                                      ((lambda (_L25940_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25706_ (cons _L24348_ '())))
                             (cons (_generate122797_
                                    _tgt24327_
                                    _L25940_
                                    _K24330_
                                    _E24331_)
                                   (cons _E24331_ '())))))
               _hd2572625934_)
              (_g2572025923_ _g2572325927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2572025923_ _g2572325927_))))
                                       (_g2571825962_
                                        (lambda (_g2572325955_)
                                          (if (gx#stx-null? _g2572325955_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25706_ (cons _L24348_ '())))
                     (cons _K24330_ (cons _E24331_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2571925951_ _g2572325955_)))))
                                  (_g2571825962_ _L25704_)))
                              _tl2438425701_
                              _hd2438325698_)))
                         (_g2436025677_ _g2437625681_))
                     (_g2436025677_ _g2437625681_))
                 (_g2436025677_ _g2437625681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2436025677_
                                                  _g2437625681_)))))
                                     (_g2435925966_ _ptree24329_))))
                               _g2433424345_))))
                      (_g2433225970_ _tgt24327_))))
                 (_generate-splice22799_
                  (lambda (_tgt23699_ _hd23701_ _rest23702_ _K23703_ _E23704_)
                    (let* ((_g2370623723_
                            (lambda (_g2370723719_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2370723719_)))
                           (_g2370524323_
                            (lambda (_g2370723727_)
                              (if (gx#stx-pair/null? _g2370723727_)
                                  (if (fx>= (gx#stx-length _g2370723727_) '0)
                                      (let ((_g35306_
                                             (gx#syntax-split-splice
                                              _g2370723727_
                                              '0)))
                                        (begin
                                          (let ((_g35307_
                                                 (values-count _g35306_)))
                                            (if (not (fx= _g35307_ 2))
                                                (error "Context expects 2 values"
                                                       _g35307_)))
                                          (let ((_target2370923730_
                                                 (values-ref _g35306_ 0))
                                                (_tl2371123733_
                                                 (values-ref _g35306_ 1)))
                                            (if (gx#stx-null? _tl2371123733_)
                                                (letrec ((_loop2371223736_
                                                          (lambda (_hd2371023740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2371623743_)
                    (if (gx#stx-pair? _hd2371023740_)
                        (let ((_e2371323746_ (gx#syntax-e _hd2371023740_)))
                          (let ((_lp-hd2371423750_ (##car _e2371323746_))
                                (_lp-tl2371523753_ (##cdr _e2371323746_)))
                            (_loop2371223736_
                             _lp-tl2371523753_
                             (cons _lp-hd2371423750_ _var2371623743_))))
                        (let ((_var2371723756_ (reverse _var2371623743_)))
                          ((lambda (_L23760_)
                             (let ()
                               (let* ((_g2377623793_
                                       (lambda (_g2377723789_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2377723789_)))
                                      (_g2377524311_
                                       (lambda (_g2377723797_)
                                         (if (gx#stx-pair/null? _g2377723797_)
                                             (if (fx>= (gx#stx-length
                                                        _g2377723797_)
                                                       '0)
                                                 (let ((_g35308_
                                                        (gx#syntax-split-splice
                                                         _g2377723797_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35309_
                                                            (values-count
                                                             _g35308_)))
                                                       (if (not (fx= _g35309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g35309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2377923800_
                                                            (values-ref
                                                             _g35308_
                                                             0))
                                                           (_tl2378123803_
                                                            (values-ref
                                                             _g35308_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2378123803_)
                                                           (letrec ((_loop2378223806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2378023810_ _var-r2378623813_)
                               (if (gx#stx-pair? _hd2378023810_)
                                   (let ((_e2378323816_
                                          (gx#syntax-e _hd2378023810_)))
                                     (let ((_lp-hd2378423820_
                                            (##car _e2378323816_))
                                           (_lp-tl2378523823_
                                            (##cdr _e2378323816_)))
                                       (_loop2378223806_
                                        _lp-tl2378523823_
                                        (cons _lp-hd2378423820_
                                              _var-r2378623813_))))
                                   (let ((_var-r2378723826_
                                          (reverse _var-r2378623813_)))
                                     ((lambda (_L23830_)
                                        (let ()
                                          (let* ((_g2384723864_
                                                  (lambda (_g2384823860_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2384823860_)))
                                                 (_g2384624299_
                                                  (lambda (_g2384823868_)
                                                    (if (gx#stx-pair/null?
                                                         _g2384823868_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2384823868_)
                          '0)
                    (let ((_g35310_ (gx#syntax-split-splice _g2384823868_ '0)))
                      (begin
                        (let ((_g35311_ (values-count _g35310_)))
                          (if (not (fx= _g35311_ 2))
                              (error "Context expects 2 values" _g35311_)))
                        (let ((_target2385023871_ (values-ref _g35310_ 0))
                              (_tl2385223874_ (values-ref _g35310_ 1)))
                          (if (gx#stx-null? _tl2385223874_)
                              (letrec ((_loop2385323877_
                                        (lambda (_hd2385123881_
                                                 _init2385723884_)
                                          (if (gx#stx-pair? _hd2385123881_)
                                              (let ((_e2385423887_
                                                     (gx#syntax-e
                                                      _hd2385123881_)))
                                                (let ((_lp-hd2385523891_
                                                       (##car _e2385423887_))
                                                      (_lp-tl2385623894_
                                                       (##cdr _e2385423887_)))
                                                  (_loop2385323877_
                                                   _lp-tl2385623894_
                                                   (cons _lp-hd2385523891_
                                                         _init2385723884_))))
                                              (let ((_init2385823897_
                                                     (reverse _init2385723884_)))
                                                ((lambda (_L23901_)
                                                   (let ()
                                                     (let* ((_g2391823926_
                                                             (lambda (_g2391923922_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2391923922_)))
                                                            (_g2391724295_
                                                             (lambda (_g2391923930_)
                                                               ((lambda (_L23933_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2394623954_
                                    (lambda (_g2394723950_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2394723950_)))
                                   (_g2394524291_
                                    (lambda (_g2394723958_)
                                      ((lambda (_L23961_)
                                         (let ()
                                           (let* ((_g2397423982_
                                                   (lambda (_g2397523978_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2397523978_)))
                                                  (_g2397324287_
                                                   (lambda (_g2397523986_)
                                                     ((lambda (_L23989_)
                                                        (let ()
                                                          (let* ((_g2400224010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2400324006_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2400324006_)))
                         (_g2400124283_
                          (lambda (_g2400324014_)
                            ((lambda (_L24017_)
                               (let ()
                                 (let* ((_g2403024038_
                                         (lambda (_g2403124034_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2403124034_)))
                                        (_g2402924279_
                                         (lambda (_g2403124042_)
                                           ((lambda (_L24045_)
                                              (let ()
                                                (let* ((_g2405824066_
                                                        (lambda (_g2405924062_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2405924062_)))
                                                       (_g2405724275_
                                                        (lambda (_g2405924070_)
                                                          ((lambda (_L24073_)
                                                             (let ()
                                                               (let* ((_g2408624094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2408724090_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2408724090_)))
                              (_g2408524271_
                               (lambda (_g2408724098_)
                                 ((lambda (_L24101_)
                                    (let ()
                                      (let* ((_g2411424122_
                                              (lambda (_g2411524118_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2411524118_)))
                                             (_g2411324256_
                                              (lambda (_g2411524126_)
                                                ((lambda (_L24129_)
                                                   (let ()
                                                     (let* ((_g2414224150_
                                                             (lambda (_g2414324146_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2414324146_)))
                                                            (_g2414124244_
                                                             (lambda (_g2414324154_)
                                                               ((lambda (_L24157_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2417024178_
                                    (lambda (_g2417124174_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2417124174_)))
                                   (_g2416924240_
                                    (lambda (_g2417124182_)
                                      ((lambda (_L24185_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L23961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24073_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2419924210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2420024213_)
                        (cons _g2419924210_ _g2420024213_))
                      '()
                      _L23760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L24101_ '())))
                                   '()))
                       (cons (cons _L24017_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L24045_
                                                           (cons _L24073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2420124216_ _g2420224219_)
                                    (cons _g2420124216_ _g2420224219_))
                                  '()
                                  _L23830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L24185_ '())))
                                         '()))
                             (cons (cons _L23989_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L24073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2420324222_ _g2420424225_)
                                    (cons _g2420324222_ _g2420424225_))
                                  '()
                                  _L23830_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L24073_ '()))
                                     (cons (cons _L24017_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L24073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L24073_
                     (begin
                       '#!void
                       (foldr (lambda (_g2420524228_ _g2420624231_)
                                (cons _g2420524228_ _g2420624231_))
                              '()
                              _L23830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L24157_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L23989_
                             (cons _L23933_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2420724234_
                                                     _g2420824237_)
                                              (cons _g2420724234_
                                                    _g2420824237_))
                                            '()
                                            _L23901_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2417124182_))))
                              (_g2416924240_
                               (_generate122797_
                                _L24045_
                                _hd23701_
                                _L24129_
                                _L24157_)))))
                        _g2414324154_))))
               (_g2414124244_
                (cons _L23961_
                      (cons _L24073_
                            (begin
                              '#!void
                              (foldr (lambda (_g2424724250_ _g2424824253_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2424724250_ '()))
                                             _g2424824253_))
                                     '()
                                     _L23830_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2411524126_))))
                                        (_g2411324256_
                                         (cons _L23989_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24073_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23830_
                                                        _L23760_)
                                                       (foldr (lambda (_g2425924263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2426024266_
                               _g2426124268_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2426024266_
                                          (cons _g2425924263_ '())))
                              _g2426124268_))
                      '()
                      _L23830_
                      _L23760_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2408724098_))))
                         (_g2408524271_
                          (_generate122797_
                           _L24073_
                           _rest23702_
                           _K23703_
                           _E23704_)))))
                   _g2405924070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2405724275_
                                                   (gx#genident 'rest)))))
                                            _g2403124042_))))
                                   (_g2402924279_ (gx#genident 'hd)))))
                             _g2400324014_))))
                    (_g2400124283_ (gx#genident 'splice-try)))))
              _g2397523986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2397324287_
                                              (gx#genident 'splice-loop)))))
                                       _g2394723958_))))
                              (_g2394524291_ (gx#genident 'splice-rest)))))
                        _g2391923930_))))
               (_g2391724295_ _tgt23699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2385823897_))))))
                                (_loop2385323877_ _target2385023871_ '()))
                              (_g2384723864_ _g2384823868_)))))
                    (_g2384723864_ _g2384823868_))
                (_g2384723864_ _g2384823868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2384624299_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2430224305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2430324308_)
                  (cons _g2430224305_ _g2430324308_))
                '()
                _L23760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2378723826_))))))
                     (_loop2378223806_ _target2377923800_ '()))
                   (_g2377623793_ _g2377723797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2377623793_ _g2377723797_))
                                             (_g2377623793_ _g2377723797_)))))
                                 (_g2377524311_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2431424317_
                                                     _g2431524320_)
                                              (cons _g2431424317_
                                                    _g2431524320_))
                                            '()
                                            _L23760_)))))))
                           _var2371723756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2371223736_
                                                   _target2370923730_
                                                   '()))
                                                (_g2370623723_
                                                 _g2370723727_)))))
                                      (_g2370623723_ _g2370723727_))
                                  (_g2370623723_ _g2370723727_)))))
                      (_g2370524323_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23701_)))))
                 (_generate-simple-vector22800_
                  (lambda (_tgt23541_
                           _body23543_
                           _start23544_
                           _K23545_
                           _E23546_)
                    (let _recur23548_ ((_rest23551_ _body23543_)
                                       (_off23553_ _start23544_))
                      (let* ((_g2355623568_
                              (lambda (_g2355723564_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2355723564_)))
                             (_g2355523579_
                              (lambda (_g2355723572_) ((lambda () _K23545_))))
                             (_g2355423695_
                              (lambda (_g2355723583_)
                                (if (gx#stx-pair? _g2355723583_)
                                    (let ((_e2356023586_
                                           (gx#syntax-e _g2355723583_)))
                                      (let ((_hd2356123590_
                                             (##car _e2356023586_))
                                            (_tl2356223593_
                                             (##cdr _e2356023586_)))
                                        ((lambda (_L23596_ _L23598_)
                                           (let* ((_g2361323632_
                                                   (lambda (_g2361423628_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2361423628_)))
                                                  (_g2361223691_
                                                   (lambda (_g2361423636_)
                                                     (if (gx#stx-pair?
                                                          _g2361423636_)
                                                         (let ((_e2361823639_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2361423636_)))
                   (let ((_hd2361923643_ (##car _e2361823639_))
                         (_tl2362023646_ (##cdr _e2361823639_)))
                     (if (gx#stx-pair? _tl2362023646_)
                         (let ((_e2362123649_ (gx#syntax-e _tl2362023646_)))
                           (let ((_hd2362223653_ (##car _e2362123649_))
                                 (_tl2362323656_ (##cdr _e2362123649_)))
                             (if (gx#stx-pair? _tl2362323656_)
                                 (let ((_e2362423659_
                                        (gx#syntax-e _tl2362323656_)))
                                   (let ((_hd2362523663_ (##car _e2362423659_))
                                         (_tl2362623666_
                                          (##cdr _e2362423659_)))
                                     (if (gx#stx-null? _tl2362623666_)
                                         ((lambda (_L23669_ _L23671_ _L23672_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L23672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23671_ (cons _L23669_ '())))
                                    '()))
                        '())
                  (cons (_generate122797_
                         _L23672_
                         _L23598_
                         (_recur23548_ _L23596_ (fx1+ _off23553_))
                         _E23546_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2362523663_
                                          _hd2362223653_
                                          _hd2361923643_)
                                         (_g2361323632_ _g2361423636_))))
                                 (_g2361323632_ _g2361423636_))))
                         (_g2361323632_ _g2361423636_))))
                 (_g2361323632_ _g2361423636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2361223691_
                                              (list (gx#genident 'e)
                                                    _tgt23541_
                                                    _off23553_))))
                                         _tl2356223593_
                                         _hd2356123590_)))
                                    (_g2355523579_ _g2355723583_)))))
                        (_g2355423695_ _rest23551_)))))
                 (_generate-list-vector22801_
                  (lambda (_tgt23451_
                           _body23453_
                           _tgt->list23454_
                           _start23455_
                           _K23456_
                           _E23457_)
                    (let* ((_g2345923478_
                            (lambda (_g2346023474_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2346023474_)))
                           (_g2345823537_
                            (lambda (_g2346023482_)
                              (if (gx#stx-pair? _g2346023482_)
                                  (let ((_e2346423485_
                                         (gx#syntax-e _g2346023482_)))
                                    (let ((_hd2346523489_
                                           (##car _e2346423485_))
                                          (_tl2346623492_
                                           (##cdr _e2346423485_)))
                                      (if (gx#stx-pair? _tl2346623492_)
                                          (let ((_e2346723495_
                                                 (gx#syntax-e _tl2346623492_)))
                                            (let ((_hd2346823499_
                                                   (##car _e2346723495_))
                                                  (_tl2346923502_
                                                   (##cdr _e2346723495_)))
                                              (if (gx#stx-pair? _tl2346923502_)
                                                  (let ((_e2347023505_
                                                         (gx#syntax-e
                                                          _tl2346923502_)))
                                                    (let ((_hd2347123509_
                                                           (##car _e2347023505_))
                                                          (_tl2347223512_
                                                           (##cdr _e2347023505_)))
                                                      (if (gx#stx-null?
                                                           _tl2347223512_)
                                                          ((lambda (_L23515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23517_
                            _L23518_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L23518_
                                               (cons (cons _L23515_
                                                           (cons _L23517_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122797_
                                          _L23518_
                                          _body23453_
                                          _K23456_
                                          _E23457_)
                                         '())))))
                   _hd2347123509_
                   _hd2346823499_
                   _hd2346523489_)
                  (_g2345923478_ _g2346023482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2345923478_
                                                   _g2346023482_))))
                                          (_g2345923478_ _g2346023482_))))
                                  (_g2345923478_ _g2346023482_)))))
                      (_g2345823537_
                       (list (gx#genident 'e) _tgt23451_ _tgt->list23454_)))))
                 (_generate-struct22802_
                  (lambda (_info23184_
                           _tgt23186_
                           _body23187_
                           _K23188_
                           _E23189_)
                    (let* ((_rtd23191_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23184_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23184_)
                                '#f))
                           (_fields23201_
                            (let _lp23194_ ((_rtd23197_ _rtd23191_)
                                            (_k23199_ '0))
                              (if _rtd23197_
                                  (_lp23194_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd23197_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd23197_))
                                        _k23199_))
                                  _k23199_)))
                           (_final?23204_
                            (if _rtd23191_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd23191_))
                                '#f))
                           (_g2320723215_
                            (lambda (_g2320823211_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2320823211_)))
                           (_g2320623447_
                            (lambda (_g2320823219_)
                              ((lambda (_L23222_)
                                 (let ()
                                   (let* ((_g2323723245_
                                           (lambda (_g2323823241_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2323823241_)))
                                          (_g2323623443_
                                           (lambda (_g2323823249_)
                                             ((lambda (_L23252_)
                                                (let ()
                                                  (let* ((_g2326523273_
                                                          (lambda (_g2326623269_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2326623269_)))
                                                         (_g2326423439_
                                                          (lambda (_g2326623277_)
                                                            ((lambda (_L23280_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2329623317_
                                   (lambda (_g2329723313_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2329723313_)))
                                  (_g2329523360_
                                   (lambda (_g2329723321_)
                                     (if (gx#stx-pair? _g2329723321_)
                                         (let ((_e2330623324_
                                                (gx#syntax-e _g2329723321_)))
                                           (let ((_hd2330723328_
                                                  (##car _e2330623324_))
                                                 (_tl2330823331_
                                                  (##cdr _e2330623324_)))
                                             (if (gx#stx-datum? _hd2330723328_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2330723328_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl2330823331_)
                                                         (let ((_e2330923334_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2330823331_)))
                   (let ((_hd2331023338_ (##car _e2330923334_))
                         (_tl2331123341_ (##cdr _e2330923334_)))
                     (if (gx#stx-null? _tl2331123341_)
                         ((lambda (_L23344_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L23280_
                                              (cons _L23252_
                                                    (cons _L23222_ '())))
                                        (cons (_generate-list-vector22801_
                                               _tgt23186_
                                               _L23344_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K23188_
                                               _E23189_)
                                              (cons _E23189_ '())))))
                          _hd2331023338_)
                         (_g2329623317_ _g2329723321_))))
                 (_g2329623317_ _g2329723321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2329623317_
                                                      _g2329723321_))
                                                 (_g2329623317_
                                                  _g2329723321_))))
                                         (_g2329623317_ _g2329723321_))))
                                  (_g2329423435_
                                   (lambda (_g2329723364_)
                                     (if (gx#stx-pair? _g2329723364_)
                                         (let ((_e2329923367_
                                                (gx#syntax-e _g2329723364_)))
                                           (let ((_hd2330023371_
                                                  (##car _e2329923367_))
                                                 (_tl2330123374_
                                                  (##cdr _e2329923367_)))
                                             (if (gx#stx-datum? _hd2330023371_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2330023371_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl2330123374_)
                                                         (let ((_e2330223377_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2330123374_)))
                   (let ((_hd2330323381_ (##car _e2330223377_))
                         (_tl2330423384_ (##cdr _e2330223377_)))
                     (if (gx#stx-null? _tl2330423384_)
                         ((lambda (_L23387_)
                            (let ((_K23400_
                                   (_generate-simple-vector22800_
                                    _tgt23186_
                                    _L23387_
                                    '1
                                    _K23188_
                                    _E23189_)))
                              (if (if _rtd23191_
                                      (fx<= (gx#stx-length _L23387_)
                                            _fields23201_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L23280_
                                                    (cons _L23252_
                                                          (cons _L23222_ '())))
                                              (cons _K23400_
                                                    (cons _E23189_ '()))))
                                  (let* ((_g2340323411_
                                          (lambda (_g2340423407_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2340423407_)))
                                         (_g2340223431_
                                          (lambda (_g2340423415_)
                                            ((lambda (_L23418_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L23280_
                                       (cons _L23252_ (cons _L23222_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L23418_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L23222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K23400_ (cons _E23189_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2340423415_))))
                                    (_g2340223431_
                                     (gx#stx-length _L23387_))))))
                          _hd2330323381_)
                         (_g2329523360_ _g2329723364_))))
                 (_g2329523360_ _g2329723364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2329523360_
                                                      _g2329723364_))
                                                 (_g2329523360_
                                                  _g2329723364_))))
                                         (_g2329523360_ _g2329723364_)))))
                             (_g2329423435_ _body23187_)))))
                     _g2326623277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2326423439_
                                                     (if _final?23204_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g2323823249_))))
                                     (_g2323623443_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info23184_)))))
                               _g2320823219_))))
                      (_g2320623447_ _tgt23186_))))
                 (_generate-class22803_
                  (lambda (_info22805_
                           _tgt22807_
                           _body22808_
                           _K22809_
                           _E22810_)
                    (letrec* ((_rtd22812_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22805_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22805_)
                                   '#f))
                              (_known-slot?22814_
                               (if _rtd22812_
                                   (lambda (_key23178_)
                                     (let ((_slot23181_
                                            (keyword->symbol
                                             (gx#stx-e _key23178_))))
                                       (_rtd-known-slot?22816_
                                        _rtd22812_
                                        _slot23181_)))
                                   false))
                              (_final?22815_
                               (if _rtd22812_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22812_))
                                   '#f))
                              (_rtd-known-slot?22816_
                               (lambda (_rtd23165_ _slot23167_)
                                 (if _rtd23165_
                                     (let ((_$e23169_
                                            (memq _slot23167_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd23165_))))
                                       (if _$e23169_
                                           _$e23169_
                                           (ormap (lambda (_g2317223174_)
                                                    (_rtd-known-slot?22816_
                                                     _g2317223174_
                                                     _slot23167_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd23165_)))))
                                     '#f)))
                              (_recur22817_
                               (lambda (_klass22951_ _rest22953_)
                                 (let* ((_g2295622972_
                                         (lambda (_g2295722968_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2295722968_)))
                                        (_g2295522983_
                                         (lambda (_g2295722976_)
                                           ((lambda () _K22809_))))
                                        (_g2295423161_
                                         (lambda (_g2295722987_)
                                           (if (gx#stx-pair? _g2295722987_)
                                               (let ((_e2296122990_
                                                      (gx#syntax-e
                                                       _g2295722987_)))
                                                 (let ((_hd2296222994_
                                                        (##car _e2296122990_))
                                                       (_tl2296322997_
                                                        (##cdr _e2296122990_)))
                                                   (if (gx#stx-pair?
                                                        _tl2296322997_)
                                                       (let ((_e2296423000_
                                                              (gx#syntax-e
                                                               _tl2296322997_)))
                                                         (let ((_hd2296523004_
                                                                (##car _e2296423000_))
                                                               (_tl2296623007_
                                                                (##cdr _e2296423000_)))
                                                           ((lambda (_L23010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23012_
                             _L23013_)
                      (let* ((_g2302923037_
                              (lambda (_g2303023033_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2303023033_)))
                             (_g2302823157_
                              (lambda (_g2303023041_)
                                ((lambda (_L23044_)
                                   (let ()
                                     (let* ((_g2305623064_
                                             (lambda (_g2305723060_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2305723060_)))
                                            (_g2305523153_
                                             (lambda (_g2305723068_)
                                               ((lambda (_L23071_)
                                                  (let ()
                                                    (let* ((_g2308423092_
                                                            (lambda (_g2308523088_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2308523088_)))
                                                           (_g2308323149_
                                                            (lambda (_g2308523096_)
                                                              ((lambda (_L23099_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2311223120_
                                   (lambda (_g2311323116_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2311323116_)))
                                  (_g2311123145_
                                   (lambda (_g2311323124_)
                                     ((lambda (_L23127_)
                                        (let ()
                                          (let ((_K23140_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L23127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L23044_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L23099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122797_
                            _L23127_
                            _L23012_
                            (_recur22817_ _klass22951_ _L23010_)
                            _E22810_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22814_ _L23013_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L23099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23071_
                                                  (cons _L23013_ '())))
                                      '()))
                          '())
                    (cons _K23140_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L23099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23071_
                                                  (cons _L23013_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L23099_
                                      (cons _K23140_ (cons _E22810_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2311323124_))))
                             (_g2311123145_ (gx#genident 'e)))))
                       _g2308523096_))))
              (_g2308323149_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2305723068_))))
                                       (_g2305523153_ _klass22951_))))
                                 _g2303023041_))))
                        (_g2302823157_ _tgt22807_)))
                    _tl2296623007_
                    _hd2296523004_
                    _hd2296222994_)))
               (_g2295522983_ _g2295722987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2295522983_
                                                _g2295722987_)))))
                                   (_g2295423161_ _rest22953_)))))
                      (let* ((_g2281922827_
                              (lambda (_g2282022823_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2282022823_)))
                             (_g2281822947_
                              (lambda (_g2282022831_)
                                ((lambda (_L22834_)
                                   (let ()
                                     (let* ((_g2284922857_
                                             (lambda (_g2285022853_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2285022853_)))
                                            (_g2284822943_
                                             (lambda (_g2285022861_)
                                               ((lambda (_L22864_)
                                                  (let ()
                                                    (let* ((_g2287722885_
                                                            (lambda (_g2287822881_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2287822881_)))
                                                           (_g2287622939_
                                                            (lambda (_g2287822889_)
                                                              ((lambda (_L22892_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2290522913_
                                   (lambda (_g2290622909_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2290622909_)))
                                  (_g2290422935_
                                   (lambda (_g2290622917_)
                                     ((lambda (_L22920_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L22920_
                                                              (cons _L22892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22864_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L22834_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22864_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22817_ _L22834_ _body22808_)
                                        '())))
                      (cons _E22810_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2290622917_))))
                             (_g2290422935_
                              (if _final?22815_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2287822889_))))
              (_g2287622939_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2285022861_))))
                                       (_g2284822943_ _tgt22807_))))
                                 _g2282022831_))))
                        (_g2281822947_ (gx#genident 'class)))))))
          (_generate122797_ _tgt22792_ _ptree22793_ _K22794_ _E22795_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21789_ _tgt-lst21791_ _clauses21792_)
        (letrec ((_parse-body21794_
                  (lambda (_hd-len22612_)
                    (let _lp22615_ ((_rest22618_ _clauses21792_)
                                    (_r22620_ '()))
                      (let* ((_g2262322635_
                              (lambda (_g2262422631_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2262422631_)))
                             (_g2262222646_
                              (lambda (_g2262422639_) ((lambda () _r22620_))))
                             (_g2262122786_
                              (lambda (_g2262422650_)
                                (if (gx#stx-pair? _g2262422650_)
                                    (let ((_e2262722653_
                                           (gx#syntax-e _g2262422650_)))
                                      (let ((_hd2262822657_
                                             (##car _e2262722653_))
                                            (_tl2262922660_
                                             (##cdr _e2262722653_)))
                                        ((lambda (_L22663_ _L22665_)
                                           (let* ((_g2268222698_
                                                   (lambda (_g2268322694_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2268322694_)))
                                                  (_g2268122709_
                                                   (lambda (_g2268322702_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21789_
                                                         _L22665_)))))
                                                  (_g2268022750_
                                                   (lambda (_g2268322713_)
                                                     (if (gx#stx-pair?
                                                          _g2268322713_)
                                                         (let ((_e2269022716_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2268322713_)))
                   (let ((_hd2269122720_ (##car _e2269022716_))
                         (_tl2269222723_ (##cdr _e2269022716_)))
                     ((lambda (_L22726_ _L22728_)
                        (if (if (gx#stx-list? _L22728_)
                                (if (fx= (gx#stx-length _L22728_)
                                         _hd-len22612_)
                                    (if (gx#stx-list? _L22726_)
                                        (not (gx#stx-null? _L22726_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22615_
                             _L22663_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2274022742_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2274022742_
                                                   _stx21789_))
                                                _L22728_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22726_)
                                                      (let ((_$e22746_
                                                             (gx#stx-source
                                                              _L22665_)))
                                                        (if _$e22746_
                                                            _$e22746_
                                                            (gx#stx-source
                                                             _stx21789_))))
                                                     '())))
                                   _r22620_))
                            (_g2268122709_ _g2268322713_)))
                      _tl2269222723_
                      _hd2269122720_)))
                 (_g2268122709_ _g2268322713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2267922782_
                                                   (lambda (_g2268322754_)
                                                     (if (gx#stx-pair?
                                                          _g2268322754_)
                                                         (let ((_e2268522757_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2268322754_)))
                   (let ((_hd2268622761_ (##car _e2268522757_))
                         (_tl2268722764_ (##cdr _e2268522757_)))
                     (if (gx#identifier? _hd2268622761_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g35312_|
                              _hd2268622761_)
                             ((lambda (_L22767_)
                                (if (if (gx#stx-list? _L22767_)
                                        (not (gx#stx-null? _L22767_))
                                        '#f)
                                    (if (gx#stx-null? _L22663_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22767_)
                         (let ((_$e22778_ (gx#stx-source _L22665_)))
                           (if _$e22778_
                               _$e22778_
                               (gx#stx-source _stx21789_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22620_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21789_
                                         _L22665_))
                                    (_g2268022750_ _g2268322754_)))
                              _tl2268722764_)
                             (_g2268022750_ _g2268322754_))
                         (_g2268022750_ _g2268322754_))))
                 (_g2268022750_ _g2268322754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2267922782_ _L22665_)))
                                         _tl2262922660_
                                         _hd2262822657_)))
                                    (_g2262222646_ _g2262422650_)))))
                        (_g2262122786_ _rest22618_)))))
                 (_generate-body21796_
                  (lambda (_body22429_)
                    (let* ((_g2243222440_
                            (lambda (_g2243322436_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2243322436_)))
                           (_g2243122608_
                            (lambda (_g2243322444_)
                              ((lambda (_L22447_)
                                 (let ()
                                   (let* ((_g2245922476_
                                           (lambda (_g2246022472_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2246022472_)))
                                          (_g2245822604_
                                           (lambda (_g2246022480_)
                                             (if (gx#stx-pair/null?
                                                  _g2246022480_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2246022480_)
                                                           '0)
                                                     (let ((_g35313_
                                                            (gx#syntax-split-splice
                                                             _g2246022480_
                                                             '0)))
                                                       (begin
                                                         (let ((_g35314_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35313_)))
                   (if (not (fx= _g35314_ 2))
                       (error "Context expects 2 values" _g35314_)))
                 (let ((_target2246222483_ (values-ref _g35313_ 0))
                       (_tl2246422486_ (values-ref _g35313_ 1)))
                   (if (gx#stx-null? _tl2246422486_)
                       (letrec ((_loop2246522489_
                                 (lambda (_hd2246322493_ _target2246922496_)
                                   (if (gx#stx-pair? _hd2246322493_)
                                       (let ((_e2246622499_
                                              (gx#syntax-e _hd2246322493_)))
                                         (let ((_lp-hd2246722503_
                                                (##car _e2246622499_))
                                               (_lp-tl2246822506_
                                                (##cdr _e2246622499_)))
                                           (_loop2246522489_
                                            _lp-tl2246822506_
                                            (cons _lp-hd2246722503_
                                                  _target2246922496_))))
                                       (let ((_target2247022509_
                                              (reverse _target2246922496_)))
                                         ((lambda (_L22513_)
                                            (let ()
                                              (let* ((_g2253022538_
                                                      (lambda (_g2253122534_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2253122534_)))
                                                     (_g2252922592_
                                                      (lambda (_g2253122542_)
                                                        ((lambda (_L22545_)
                                                           (let ()
                                                             (let* ((_g2255822566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2255922562_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2255922562_)))
                            (_g2255722588_
                             (lambda (_g2255922570_)
                               ((lambda (_L22573_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L22447_
                                                              (cons _L22545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L22573_ '()))))))
                                _g2255922570_))))
                       (_g2255722588_
                        (_generate-clauses21797_
                         _body22429_
                         (cons _L22447_ '()))))))
                 _g2253122542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2252922592_
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
                                          (foldr (lambda (_g2259522598_
                                                          _g2259622601_)
                                                   (cons _g2259522598_
                                                         _g2259622601_))
                                                 '()
                                                 _L22513_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21789_))))))
                                          _target2247022509_))))))
                         (_loop2246522489_ _target2246222483_ '()))
                       (_g2245922476_ _g2246022480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2245922476_
                                                      _g2246022480_))
                                                 (_g2245922476_
                                                  _g2246022480_)))))
                                     (_g2245822604_ _tgt-lst21791_))))
                               _g2243322444_))))
                      (_g2243122608_ (gx#genident 'E)))))
                 (_generate-clauses21797_
                  (lambda (_rest22111_ _E22113_)
                    (let* ((_g2211722133_
                            (lambda (_g2211822129_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2211822129_)))
                           (_g2211622144_
                            (lambda (_g2211822137_) ((lambda () _E22113_))))
                           (_g2211522320_
                            (lambda (_g2211822148_)
                              (if (gx#stx-pair? _g2211822148_)
                                  (let ((_e2212522151_
                                         (gx#syntax-e _g2211822148_)))
                                    (let ((_hd2212622155_
                                           (##car _e2212522151_))
                                          (_tl2212722158_
                                           (##cdr _e2212522151_)))
                                      ((lambda (_L22161_ _L22163_)
                                         (let* ((_g2217622195_
                                                 (lambda (_g2217722191_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2217722191_)))
                                                (_g2217522316_
                                                 (lambda (_g2217722199_)
                                                   (if (gx#stx-pair?
                                                        _g2217722199_)
                                                       (let ((_e2218122202_
                                                              (gx#syntax-e
                                                               _g2217722199_)))
                                                         (let ((_hd2218222206_
                                                                (##car _e2218122202_))
                                                               (_tl2218322209_
                                                                (##cdr _e2218122202_)))
                                                           (if (gx#stx-pair?
                                                                _tl2218322209_)
                                                               (let ((_e2218422212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2218322209_)))
                         (let ((_hd2218522216_ (##car _e2218422212_))
                               (_tl2218622219_ (##cdr _e2218422212_)))
                           (if (gx#stx-pair? _tl2218622219_)
                               (let ((_e2218722222_
                                      (gx#syntax-e _tl2218622219_)))
                                 (let ((_hd2218822226_ (##car _e2218722222_))
                                       (_tl2218922229_ (##cdr _e2218722222_)))
                                   (if (gx#stx-null? _tl2218922229_)
                                       ((lambda (_L22232_ _L22234_ _L22235_)
                                          (let* ((_g2225222267_
                                                  (lambda (_g2225322263_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2225322263_)))
                                                 (_g2225122312_
                                                  (lambda (_g2225322271_)
                                                    (if (gx#stx-pair?
                                                         _g2225322271_)
                                                        (let ((_e2225622274_
                                                               (gx#syntax-e
                                                                _g2225322271_)))
                                                          (let ((_hd2225722278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2225622274_))
                        (_tl2225822281_ (##cdr _e2225622274_)))
                    (if (gx#stx-pair? _tl2225822281_)
                        (let ((_e2225922284_ (gx#syntax-e _tl2225822281_)))
                          (let ((_hd2226022288_ (##car _e2225922284_))
                                (_tl2226122291_ (##cdr _e2225922284_)))
                            (if (gx#stx-null? _tl2226122291_)
                                ((lambda (_L22294_ _L22296_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L22235_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L22296_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L22294_ '())))))
                                 _hd2226022288_
                                 _hd2225722278_)
                                (_g2225222267_ _g2225322271_))))
                        (_g2225222267_ _g2225322271_))))
                (_g2225222267_ _g2225322271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2225122312_
                                             (list (if (gx#stx-e _L22234_)
                                                       (_generate121798_
                                                        _L22234_
                                                        _L22232_
                                                        _E22113_)
                                                       _L22232_)
                                                   (_generate-clauses21797_
                                                    _L22161_
                                                    (cons _L22235_ '()))))))
                                        _hd2218822226_
                                        _hd2218522216_
                                        _hd2218222206_)
                                       (_g2217622195_ _g2217722199_))))
                               (_g2217622195_ _g2217722199_))))
                       (_g2217622195_ _g2217722199_))))
               (_g2217622195_ _g2217722199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2217522316_ _L22163_)))
                                       _tl2212722158_
                                       _hd2212622155_)))
                                  (_g2211622144_ _g2211822148_))))
                           (_g2211422425_
                            (lambda (_g2211822324_)
                              (if (gx#stx-pair? _g2211822324_)
                                  (let ((_e2212022327_
                                         (gx#syntax-e _g2211822324_)))
                                    (let ((_hd2212122331_
                                           (##car _e2212022327_))
                                          (_tl2212222334_
                                           (##cdr _e2212022327_)))
                                      (if (gx#stx-null? _tl2212222334_)
                                          ((lambda (_L22337_)
                                             (let* ((_g2234822366_
                                                     (lambda (_g2234922362_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2234922362_)))
                                                    (_g2234722421_
                                                     (lambda (_g2234922370_)
                                                       (if (gx#stx-pair?
                                                            _g2234922370_)
                                                           (let ((_e2235222373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2234922370_)))
                     (let ((_hd2235322377_ (##car _e2235222373_))
                           (_tl2235422380_ (##cdr _e2235222373_)))
                       (if (gx#stx-pair? _tl2235422380_)
                           (let ((_e2235522383_ (gx#syntax-e _tl2235422380_)))
                             (let ((_hd2235622387_ (##car _e2235522383_))
                                   (_tl2235722390_ (##cdr _e2235522383_)))
                               (if (gx#stx-pair? _tl2235722390_)
                                   (let ((_e2235822393_
                                          (gx#syntax-e _tl2235722390_)))
                                     (let ((_hd2235922397_
                                            (##car _e2235822393_))
                                           (_tl2236022400_
                                            (##cdr _e2235822393_)))
                                       (if (gx#stx-null? _tl2236022400_)
                                           ((lambda (_L22403_ _L22405_)
                                              (if (gx#stx-e _L22405_)
                                                  (_generate121798_
                                                   _L22405_
                                                   _L22403_
                                                   _E22113_)
                                                  _L22403_))
                                            _hd2235922397_
                                            _hd2235622387_)
                                           (_g2234822366_ _g2234922370_))))
                                   (_g2234822366_ _g2234922370_))))
                           (_g2234822366_ _g2234922370_))))
                   (_g2234822366_ _g2234922370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2234722421_ _L22337_)))
                                           _hd2212122331_)
                                          (_g2211522320_ _g2211822324_))))
                                  (_g2211522320_ _g2211822324_)))))
                      (_g2211422425_ _rest22111_))))
                 (_generate121798_
                  (lambda (_clause21800_ _body21802_ _E21803_)
                    (let _recur21805_ ((_rest21808_ _clause21800_)
                                       (_rest-targets21810_ _tgt-lst21791_))
                      (let* ((_g2181321825_
                              (lambda (_g2181421821_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2181421821_)))
                             (_g2181221836_
                              (lambda (_g2181421829_)
                                ((lambda () _body21802_))))
                             (_g2181122107_
                              (lambda (_g2181421840_)
                                (if (gx#stx-pair? _g2181421840_)
                                    (let ((_e2181721843_
                                           (gx#syntax-e _g2181421840_)))
                                      (let ((_hd2181821847_
                                             (##car _e2181721843_))
                                            (_tl2181921850_
                                             (##cdr _e2181721843_)))
                                        ((lambda (_L21853_ _L21855_)
                                           (let* ((_g2187221884_
                                                   (lambda (_g2187321880_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2187321880_)))
                                                  (_g2187122103_
                                                   (lambda (_g2187321888_)
                                                     (if (gx#stx-pair?
                                                          _g2187321888_)
                                                         (let ((_e2187621891_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2187321888_)))
                   (let ((_hd2187721895_ (##car _e2187621891_))
                         (_tl2187821898_ (##cdr _e2187621891_)))
                     ((lambda (_L21901_ _L21903_)
                        (let* ((_g2191521923_
                                (lambda (_g2191621919_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2191621919_)))
                               (_g2191422099_
                                (lambda (_g2191621927_)
                                  ((lambda (_L21930_)
                                     (let ()
                                       (let* ((_g2194221959_
                                               (lambda (_g2194321955_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2194321955_)))
                                              (_g2194122095_
                                               (lambda (_g2194321963_)
                                                 (if (gx#stx-pair/null?
                                                      _g2194321963_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2194321963_)
                                                               '0)
                                                         (let ((_g35315_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2194321963_
                         '0)))
                   (begin
                     (let ((_g35316_ (values-count _g35315_)))
                       (if (not (fx= _g35316_ 2))
                           (error "Context expects 2 values" _g35316_)))
                     (let ((_target2194521966_ (values-ref _g35315_ 0))
                           (_tl2194721969_ (values-ref _g35315_ 1)))
                       (if (gx#stx-null? _tl2194721969_)
                           (letrec ((_loop2194821972_
                                     (lambda (_hd2194621976_ _var2195221979_)
                                       (if (gx#stx-pair? _hd2194621976_)
                                           (let ((_e2194921982_
                                                  (gx#syntax-e
                                                   _hd2194621976_)))
                                             (let ((_lp-hd2195021986_
                                                    (##car _e2194921982_))
                                                   (_lp-tl2195121989_
                                                    (##cdr _e2194921982_)))
                                               (_loop2194821972_
                                                _lp-tl2195121989_
                                                (cons _lp-hd2195021986_
                                                      _var2195221979_))))
                                           (let ((_var2195321992_
                                                  (reverse _var2195221979_)))
                                             ((lambda (_L21996_)
                                                (let ()
                                                  (let* ((_g2201322021_
                                                          (lambda (_g2201422017_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2201422017_)))
                                                         (_g2201222091_
                                                          (lambda (_g2201422025_)
                                                            ((lambda (_L22028_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2204122049_
                                 (lambda (_g2204222045_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2204222045_)))
                                (_g2204022079_
                                 (lambda (_g2204222053_)
                                   ((lambda (_L22056_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2207022073_
                                                              _g2207122076_)
                                                       (cons _g2207022073_
                                                             _g2207122076_))
                                                     '()
                                                     _L21996_))
                                            (cons _L22028_ '())))
                                '()))
                    '())
              (cons _L22056_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2204222053_))))
                           (_g2204022079_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21789_
                             _L21903_
                             _L21855_
                             (cons _L21930_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2208222085_
                                                     _g2208322088_)
                                              (cons _g2208222085_
                                                    _g2208322088_))
                                            '()
                                            _L21996_)))
                             _E21803_)))))
                     _g2201422025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2201222091_
                                                     (_recur21805_
                                                      _L21853_
                                                      _L21901_)))))
                                              _var2195321992_))))))
                             (_loop2194821972_ _target2194521966_ '()))
                           (_g2194221959_ _g2194321963_)))))
                 (_g2194221959_ _g2194321963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2194221959_
                                                      _g2194321963_)))))
                                         (_g2194122095_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21855_)))))
                                   _g2191621927_))))
                          (_g2191422099_ (gx#genident 'K))))
                      _tl2187821898_
                      _hd2187721895_)))
                 (_g2187221884_ _g2187321888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2187122103_
                                              _rest-targets21810_)))
                                         _tl2181921850_
                                         _hd2181821847_)))
                                    (_g2181221836_ _g2181421840_)))))
                        (_g2181122107_ _rest21808_))))))
          (_generate-body21796_
           (_parse-body21794_ (gx#stx-length _tgt-lst21791_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21691_ _tgt21693_ _clauses21694_)
        (letrec ((_reclause21696_
                  (lambda (_clause21699_)
                    (let* ((_g2170421719_
                            (lambda (_g2170521715_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2170521715_)))
                           (_g2170321730_
                            (lambda (_g2170521723_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21691_
                                  _clause21699_)))))
                           (_g2170221764_
                            (lambda (_g2170521734_)
                              (if (gx#stx-pair? _g2170521734_)
                                  (let ((_e2171121737_
                                         (gx#syntax-e _g2170521734_)))
                                    (let ((_hd2171221741_
                                           (##car _e2171121737_))
                                          (_tl2171321744_
                                           (##cdr _e2171121737_)))
                                      ((lambda (_L21747_ _L21749_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21749_ '()) _L21747_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2171321744_
                                       _hd2171221741_)))
                                  (_g2170321730_ _g2170521734_))))
                           (_g2170121785_
                            (lambda (_g2170521768_)
                              (if (gx#stx-pair? _g2170521768_)
                                  (let ((_e2170621771_
                                         (gx#syntax-e _g2170521768_)))
                                    (let ((_hd2170721775_
                                           (##car _e2170621771_))
                                          (_tl2170821778_
                                           (##cdr _e2170621771_)))
                                      (if (gx#identifier? _hd2170721775_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g35317_|
                                               _hd2170721775_)
                                              ((lambda () _clause21699_))
                                              (_g2170221764_ _g2170521768_))
                                          (_g2170221764_ _g2170521768_))))
                                  (_g2170221764_ _g2170521768_)))))
                      (_g2170121785_ _clause21699_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21691_
           (cons _tgt21693_ '())
           (gx#stx-map _reclause21696_ _clauses21694_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx28898_)
        (let* ((_g2890328932_
                (lambda (_g2890428928_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2890428928_)))
               (_g2890229040_
                (lambda (_g2890428936_)
                  (if (gx#stx-pair? _g2890428936_)
                      (let ((_e2892128939_ (gx#syntax-e _g2890428936_)))
                        (let ((_hd2892228943_ (##car _e2892128939_))
                              (_tl2892328946_ (##cdr _e2892128939_)))
                          (if (gx#stx-pair? _tl2892328946_)
                              (let ((_e2892428949_
                                     (gx#syntax-e _tl2892328946_)))
                                (let ((_hd2892528953_ (##car _e2892428949_))
                                      (_tl2892628956_ (##cdr _e2892428949_)))
                                  ((lambda (_L28959_ _L28961_)
                                     (if (gx#stx-list? _L28959_)
                                         (let* ((_g2897528983_
                                                 (lambda (_g2897628979_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2897628979_)))
                                                (_g2897429036_
                                                 (lambda (_g2897628987_)
                                                   ((lambda (_L28990_)
                                                      (let ()
                                                        (let* ((_g2900229010_
                                                                (lambda (_g2900329006_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2900329006_)))
                       (_g2900129032_
                        (lambda (_g2900329014_)
                          ((lambda (_L29017_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L28990_
                                                         (cons _L28961_ '()))
                                                   '())
                                             (cons _L29017_ '()))))))
                           _g2900329014_))))
                  (_g2900129032_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx28898_
                    _L28990_
                    _L28959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2897628987_))))
                                           (_g2897429036_
                                            (gx#genident _L28961_)))
                                         (_g2890328932_ _g2890428936_)))
                                   _tl2892628956_
                                   _hd2892528953_)))
                              (_g2890328932_ _g2890428936_))))
                      (_g2890328932_ _g2890428936_))))
               (_g2890129145_
                (lambda (_g2890429044_)
                  (if (gx#stx-pair? _g2890429044_)
                      (let ((_e2891329047_ (gx#syntax-e _g2890429044_)))
                        (let ((_hd2891429051_ (##car _e2891329047_))
                              (_tl2891529054_ (##cdr _e2891329047_)))
                          (if (gx#stx-pair? _tl2891529054_)
                              (let ((_e2891629057_
                                     (gx#syntax-e _tl2891529054_)))
                                (let ((_hd2891729061_ (##car _e2891629057_))
                                      (_tl2891829064_ (##cdr _e2891629057_)))
                                  (if (gx#identifier? _hd2891729061_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35318_|
                                           _hd2891729061_)
                                          ((lambda (_L29067_)
                                             (if (gx#stx-list? _L29067_)
                                                 (let* ((_g2908029088_
                                                         (lambda (_g2908129084_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2908129084_)))
                                                        (_g2907929141_
                                                         (lambda (_g2908129092_)
                                                           ((lambda (_L29095_)
                                                              (let ()
                                                                (let* ((_g2910729115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2910829111_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2910829111_)))
                               (_g2910629137_
                                (lambda (_g2910829119_)
                                  ((lambda (_L29122_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L29095_
                                                     (cons _L29122_ '()))))))
                                   _g2910829119_))))
                          (_g2910629137_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29095_ _L29067_))
                            (gx#stx-source _stx28898_))))))
                    _g2908129092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2907929141_
                                                    (gx#genident 'args)))
                                                 (_g2890229040_
                                                  _g2890429044_)))
                                           _tl2891829064_)
                                          (_g2890229040_ _g2890429044_))
                                      (_g2890229040_ _g2890429044_))))
                              (_g2890229040_ _g2890429044_))))
                      (_g2890229040_ _g2890429044_))))
               (_g2890029250_
                (lambda (_g2890429149_)
                  (if (gx#stx-pair? _g2890429149_)
                      (let ((_e2890629152_ (gx#syntax-e _g2890429149_)))
                        (let ((_hd2890729156_ (##car _e2890629152_))
                              (_tl2890829159_ (##cdr _e2890629152_)))
                          (if (gx#stx-pair? _tl2890829159_)
                              (let ((_e2890929162_
                                     (gx#syntax-e _tl2890829159_)))
                                (let ((_hd2891029166_ (##car _e2890929162_))
                                      (_tl2891129169_ (##cdr _e2890929162_)))
                                  (if (gx#identifier? _hd2891029166_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35319_|
                                           _hd2891029166_)
                                          ((lambda (_L29172_)
                                             (if (gx#stx-list? _L29172_)
                                                 (let* ((_g2918529193_
                                                         (lambda (_g2918629189_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2918629189_)))
                                                        (_g2918429246_
                                                         (lambda (_g2918629197_)
                                                           ((lambda (_L29200_)
                                                              (let ()
                                                                (let* ((_g2921229220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2921329216_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2921329216_)))
                               (_g2921129242_
                                (lambda (_g2921329224_)
                                  ((lambda (_L29227_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L29200_ '())
                                                     (cons _L29227_ '()))))))
                                   _g2921329224_))))
                          (_g2921129242_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29200_ _L29172_))
                            (gx#stx-source _stx28898_))))))
                    _g2918629197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2918429246_
                                                    (gx#genident 'e)))
                                                 (_g2890129145_
                                                  _g2890429149_)))
                                           _tl2891129169_)
                                          (_g2890129145_ _g2890429149_))
                                      (_g2890129145_ _g2890429149_))))
                              (_g2890129145_ _g2890429149_))))
                      (_g2890129145_ _g2890429149_)))))
          (_g2890029250_ _stx28898_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29254_)
        (let* ((_g2925729281_
                (lambda (_g2925829277_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2925829277_)))
               (_g2925629493_
                (lambda (_g2925829285_)
                  (if (gx#stx-pair? _g2925829285_)
                      (let ((_e2926129288_ (gx#syntax-e _g2925829285_)))
                        (let ((_hd2926229292_ (##car _e2926129288_))
                              (_tl2926329295_ (##cdr _e2926129288_)))
                          (if (gx#stx-pair? _tl2926329295_)
                              (let ((_e2926429298_
                                     (gx#syntax-e _tl2926329295_)))
                                (let ((_hd2926529302_ (##car _e2926429298_))
                                      (_tl2926629305_ (##cdr _e2926429298_)))
                                  (if (gx#stx-pair/null? _hd2926529302_)
                                      (if (fx>= (gx#stx-length _hd2926529302_)
                                                '0)
                                          (let ((_g35320_
                                                 (gx#syntax-split-splice
                                                  _hd2926529302_
                                                  '0)))
                                            (begin
                                              (let ((_g35321_
                                                     (values-count _g35320_)))
                                                (if (not (fx= _g35321_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35321_)))
                                              (let ((_target2926729308_
                                                     (values-ref _g35320_ 0))
                                                    (_tl2926929311_
                                                     (values-ref _g35320_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2926929311_)
                                                    (letrec ((_loop2927029314_
                                                              (lambda (_hd2926829318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2927429321_)
                        (if (gx#stx-pair? _hd2926829318_)
                            (let ((_e2927129324_ (gx#syntax-e _hd2926829318_)))
                              (let ((_lp-hd2927229328_ (##car _e2927129324_))
                                    (_lp-tl2927329331_ (##cdr _e2927129324_)))
                                (_loop2927029314_
                                 _lp-tl2927329331_
                                 (cons _lp-hd2927229328_ _e2927429321_))))
                            (let ((_e2927529334_ (reverse _e2927429321_)))
                              ((lambda (_L29338_ _L29340_)
                                 (if (gx#stx-list? _L29338_)
                                     (let* ((_g2935829375_
                                             (lambda (_g2935929371_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2935929371_)))
                                            (_g2935729481_
                                             (lambda (_g2935929379_)
                                               (if (gx#stx-pair/null?
                                                    _g2935929379_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2935929379_)
                                                             '0)
                                                       (let ((_g35322_
                                                              (gx#syntax-split-splice
                                                               _g2935929379_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g35322_)))
                     (if (not (fx= _g35323_ 2))
                         (error "Context expects 2 values" _g35323_)))
                   (let ((_target2936129382_ (values-ref _g35322_ 0))
                         (_tl2936329385_ (values-ref _g35322_ 1)))
                     (if (gx#stx-null? _tl2936329385_)
                         (letrec ((_loop2936429388_
                                   (lambda (_hd2936229392_ _$e2936829395_)
                                     (if (gx#stx-pair? _hd2936229392_)
                                         (let ((_e2936529398_
                                                (gx#syntax-e _hd2936229392_)))
                                           (let ((_lp-hd2936629402_
                                                  (##car _e2936529398_))
                                                 (_lp-tl2936729405_
                                                  (##cdr _e2936529398_)))
                                             (_loop2936429388_
                                              _lp-tl2936729405_
                                              (cons _lp-hd2936629402_
                                                    _$e2936829395_))))
                                         (let ((_$e2936929408_
                                                (reverse _$e2936829395_)))
                                           ((lambda (_L29412_)
                                              (let ()
                                                (let* ((_g2942829436_
                                                        (lambda (_g2942929432_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2942929432_)))
                                                       (_g2942729469_
                                                        (lambda (_g2942929440_)
                                                          ((lambda (_L29443_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29340_
                                        _L29412_)
                                       (foldr (lambda (_g2945729461_
                                                       _g2945829464_
                                                       _g2945929466_)
                                                (cons (cons _g2945829464_
                                                            (cons _g2945729461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2945929466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29340_
                                              _L29412_))
                                     (cons _L29443_ '()))))))
                   _g2942929440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2942729469_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx29254_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2947229475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2947329478_)
                       (cons _g2947229475_ _g2947329478_))
                     '()
                     _L29412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L29338_)))))
                                            _$e2936929408_))))))
                           (_loop2936429388_ _target2936129382_ '()))
                         (_g2935829375_ _g2935929379_)))))
               (_g2935829375_ _g2935929379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2935829375_
                                                    _g2935929379_)))))
                                       (_g2935729481_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2948429487_
                                                           _g2948529490_)
                                                    (cons _g2948429487_
                                                          _g2948529490_))
                                                  '()
                                                  _L29340_)))))
                                     (_g2925729281_ _g2925829285_)))
                               _tl2926629305_
                               _e2927529334_))))))
              (_loop2927029314_ _target2926729308_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2925729281_
                                                     _g2925829285_)))))
                                          (_g2925729281_ _g2925829285_))
                                      (_g2925729281_ _g2925829285_))))
                              (_g2925729281_ _g2925829285_))))
                      (_g2925729281_ _g2925829285_)))))
          (_g2925629493_ _stx29254_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29499_)
        (let* ((_g2950529588_
                (lambda (_g2950629584_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2950629584_)))
               (_g2950429749_
                (lambda (_g2950629592_)
                  (if (gx#stx-pair? _g2950629592_)
                      (let ((_e2955129595_ (gx#syntax-e _g2950629592_)))
                        (let ((_hd2955229599_ (##car _e2955129595_))
                              (_tl2955329602_ (##cdr _e2955129595_)))
                          (if (gx#stx-pair? _tl2955329602_)
                              (let ((_e2955429605_
                                     (gx#syntax-e _tl2955329602_)))
                                (let ((_hd2955529609_ (##car _e2955429605_))
                                      (_tl2955629612_ (##cdr _e2955429605_)))
                                  (if (gx#stx-pair/null? _hd2955529609_)
                                      (if (fx>= (gx#stx-length _hd2955529609_)
                                                '0)
                                          (let ((_g35324_
                                                 (gx#syntax-split-splice
                                                  _hd2955529609_
                                                  '0)))
                                            (begin
                                              (let ((_g35325_
                                                     (values-count _g35324_)))
                                                (if (not (fx= _g35325_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35325_)))
                                              (let ((_target2955729615_
                                                     (values-ref _g35324_ 0))
                                                    (_tl2955929618_
                                                     (values-ref _g35324_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2955929618_)
                                                    (letrec ((_loop2956029621_
                                                              (lambda (_hd2955829625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2956429628_
                               _hd2956529630_)
                        (if (gx#stx-pair? _hd2955829625_)
                            (let ((_e2956129633_ (gx#syntax-e _hd2955829625_)))
                              (let ((_lp-hd2956229637_ (##car _e2956129633_))
                                    (_lp-tl2956329640_ (##cdr _e2956129633_)))
                                (if (gx#stx-pair? _lp-hd2956229637_)
                                    (let ((_e2956829643_
                                           (gx#syntax-e _lp-hd2956229637_)))
                                      (let ((_hd2956929647_
                                             (##car _e2956829643_))
                                            (_tl2957029650_
                                             (##cdr _e2956829643_)))
                                        (if (gx#stx-pair? _tl2957029650_)
                                            (let ((_e2957129653_
                                                   (gx#syntax-e
                                                    _tl2957029650_)))
                                              (let ((_hd2957229657_
                                                     (##car _e2957129653_))
                                                    (_tl2957329660_
                                                     (##cdr _e2957129653_)))
                                                (if (gx#stx-null?
                                                     _tl2957329660_)
                                                    (_loop2956029621_
                                                     _lp-tl2956329640_
                                                     (cons _hd2957229657_
                                                           _expr2956429628_)
                                                     (cons _hd2956929647_
                                                           _hd2956529630_))
                                                    (_g2950529588_
                                                     _g2950629592_))))
                                            (_g2950529588_ _g2950629592_))))
                                    (_g2950529588_ _g2950629592_))))
                            (let ((_expr2956629663_ (reverse _expr2956429628_))
                                  (_hd2956729666_ (reverse _hd2956529630_)))
                              (if (gx#stx-pair/null? _tl2955629612_)
                                  (if (fx>= (gx#stx-length _tl2955629612_) '0)
                                      (let ((_g35326_
                                             (gx#syntax-split-splice
                                              _tl2955629612_
                                              '0)))
                                        (begin
                                          (let ((_g35327_
                                                 (values-count _g35326_)))
                                            (if (not (fx= _g35327_ 2))
                                                (error "Context expects 2 values"
                                                       _g35327_)))
                                          (let ((_target2957429669_
                                                 (values-ref _g35326_ 0))
                                                (_tl2957629672_
                                                 (values-ref _g35326_ 1)))
                                            (if (gx#stx-null? _tl2957629672_)
                                                (letrec ((_loop2957729675_
                                                          (lambda (_hd2957529679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2958129682_)
                    (if (gx#stx-pair? _hd2957529679_)
                        (let ((_e2957829685_ (gx#syntax-e _hd2957529679_)))
                          (let ((_lp-hd2957929689_ (##car _e2957829685_))
                                (_lp-tl2958029692_ (##cdr _e2957829685_)))
                            (_loop2957729675_
                             _lp-tl2958029692_
                             (cons _lp-hd2957929689_ _body2958129682_))))
                        (let ((_body2958229695_ (reverse _body2958129682_)))
                          ((lambda (_L29699_ _L29701_ _L29702_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2972429731_
                                                           _g2972529734_)
                                                    (cons _g2972429731_
                                                          _g2972529734_))
                                                  '()
                                                  _L29701_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2972629737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2972729740_)
                        (cons _g2972629737_ _g2972729740_))
                      '()
                      _L29702_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2972829743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2972929746_)
                        (cons _g2972829743_ _g2972929746_))
                      '()
                      _L29699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2958229695_
                           _expr2956629663_
                           _hd2956729666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2957729675_
                                                   _target2957429669_
                                                   '()))
                                                (_g2950529588_
                                                 _g2950629592_)))))
                                      (_g2950529588_ _g2950629592_))
                                  (_g2950529588_ _g2950629592_)))))))
              (_loop2956029621_ _target2955729615_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2950529588_
                                                     _g2950629592_)))))
                                          (_g2950529588_ _g2950629592_))
                                      (_g2950529588_ _g2950629592_))))
                              (_g2950529588_ _g2950629592_))))
                      (_g2950529588_ _g2950629592_))))
               (_g2950329861_
                (lambda (_g2950629753_)
                  (if (gx#stx-pair? _g2950629753_)
                      (let ((_e2952729756_ (gx#syntax-e _g2950629753_)))
                        (let ((_hd2952829760_ (##car _e2952729756_))
                              (_tl2952929763_ (##cdr _e2952729756_)))
                          (if (gx#stx-pair? _tl2952929763_)
                              (let ((_e2953029766_
                                     (gx#syntax-e _tl2952929763_)))
                                (let ((_hd2953129770_ (##car _e2953029766_))
                                      (_tl2953229773_ (##cdr _e2953029766_)))
                                  (if (gx#stx-pair? _hd2953129770_)
                                      (let ((_e2953329776_
                                             (gx#syntax-e _hd2953129770_)))
                                        (let ((_hd2953429780_
                                               (##car _e2953329776_))
                                              (_tl2953529783_
                                               (##cdr _e2953329776_)))
                                          (if (gx#stx-pair? _tl2953529783_)
                                              (let ((_e2953629786_
                                                     (gx#syntax-e
                                                      _tl2953529783_)))
                                                (let ((_hd2953729790_
                                                       (##car _e2953629786_))
                                                      (_tl2953829793_
                                                       (##cdr _e2953629786_)))
                                                  (if (gx#stx-null?
                                                       _tl2953829793_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2953229773_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2953229773_)
                            '0)
                      (let ((_g35328_
                             (gx#syntax-split-splice _tl2953229773_ '0)))
                        (begin
                          (let ((_g35329_ (values-count _g35328_)))
                            (if (not (fx= _g35329_ 2))
                                (error "Context expects 2 values" _g35329_)))
                          (let ((_target2953929796_ (values-ref _g35328_ 0))
                                (_tl2954129799_ (values-ref _g35328_ 1)))
                            (if (gx#stx-null? _tl2954129799_)
                                (letrec ((_loop2954229802_
                                          (lambda (_hd2954029806_
                                                   _body2954629809_)
                                            (if (gx#stx-pair? _hd2954029806_)
                                                (let ((_e2954329812_
                                                       (gx#syntax-e
                                                        _hd2954029806_)))
                                                  (let ((_lp-hd2954429816_
                                                         (##car _e2954329812_))
                                                        (_lp-tl2954529819_
                                                         (##cdr _e2954329812_)))
                                                    (_loop2954229802_
                                                     _lp-tl2954529819_
                                                     (cons _lp-hd2954429816_
                                                           _body2954629809_))))
                                                (let ((_body2954729822_
                                                       (reverse _body2954629809_)))
                                                  ((lambda (_L29826_
                                                            _L29828_
                                                            _L29829_
                                                            _L29830_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29829_)
                                                         (cons _L29830_
                                                               (cons (cons (cons _L29829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29828_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2985229855_ _g2985329858_)
                                        (cons _g2985229855_ _g2985329858_))
                                      '()
                                      _L29826_))))
                 (_g2950429749_ _g2950629753_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2954729822_
                                                   _hd2953729790_
                                                   _hd2953429780_
                                                   _hd2952829760_))))))
                                  (_loop2954229802_ _target2953929796_ '()))
                                (_g2950429749_ _g2950629753_)))))
                      (_g2950429749_ _g2950629753_))
                  (_g2950429749_ _g2950629753_))
              (_g2950429749_ _g2950629753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2950429749_ _g2950629753_))))
                                      (_g2950429749_ _g2950629753_))))
                              (_g2950429749_ _g2950629753_))))
                      (_g2950429749_ _g2950629753_))))
               (_g2950229943_
                (lambda (_g2950629865_)
                  (if (gx#stx-pair? _g2950629865_)
                      (let ((_e2950829868_ (gx#syntax-e _g2950629865_)))
                        (let ((_hd2950929872_ (##car _e2950829868_))
                              (_tl2951029875_ (##cdr _e2950829868_)))
                          (if (gx#stx-pair? _tl2951029875_)
                              (let ((_e2951129878_
                                     (gx#syntax-e _tl2951029875_)))
                                (let ((_hd2951229882_ (##car _e2951129878_))
                                      (_tl2951329885_ (##cdr _e2951129878_)))
                                  (if (gx#stx-null? _hd2951229882_)
                                      (if (gx#stx-pair/null? _tl2951329885_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2951329885_)
                                                    '0)
                                              (let ((_g35330_
                                                     (gx#syntax-split-splice
                                                      _tl2951329885_
                                                      '0)))
                                                (begin
                                                  (let ((_g35331_
                                                         (values-count
                                                          _g35330_)))
                                                    (if (not (fx= _g35331_ 2))
                                                        (error "Context expects 2 values"
                                                               _g35331_)))
                                                  (let ((_target2951429888_
                                                         (values-ref
                                                          _g35330_
                                                          0))
                                                        (_tl2951629891_
                                                         (values-ref
                                                          _g35330_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2951629891_)
                                                        (letrec ((_loop2951729894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2951529898_ _body2952129901_)
                            (if (gx#stx-pair? _hd2951529898_)
                                (let ((_e2951829904_
                                       (gx#syntax-e _hd2951529898_)))
                                  (let ((_lp-hd2951929908_
                                         (##car _e2951829904_))
                                        (_lp-tl2952029911_
                                         (##cdr _e2951829904_)))
                                    (_loop2951729894_
                                     _lp-tl2952029911_
                                     (cons _lp-hd2951929908_
                                           _body2952129901_))))
                                (let ((_body2952229914_
                                       (reverse _body2952129901_)))
                                  ((lambda (_L29918_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2993429937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2993529940_)
                    (cons _g2993429937_ _g2993529940_))
                  '()
                  _L29918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2952229914_))))))
                  (_loop2951729894_ _target2951429888_ '()))
                (_g2950329861_ _g2950629865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2950329861_ _g2950629865_))
                                          (_g2950329861_ _g2950629865_))
                                      (_g2950329861_ _g2950629865_))))
                              (_g2950329861_ _g2950629865_))))
                      (_g2950329861_ _g2950629865_)))))
          (_g2950229943_ _$stx29499_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx29951_)
        (let* ((_g2995630008_
                (lambda (_g2995730004_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2995730004_)))
               (_g2995530091_
                (lambda (_g2995730012_)
                  (if (gx#stx-pair? _g2995730012_)
                      (let ((_e2998830015_ (gx#syntax-e _g2995730012_)))
                        (let ((_hd2998930019_ (##car _e2998830015_))
                              (_tl2999030022_ (##cdr _e2998830015_)))
                          (if (gx#stx-pair? _tl2999030022_)
                              (let ((_e2999130025_
                                     (gx#syntax-e _tl2999030022_)))
                                (let ((_hd2999230029_ (##car _e2999130025_))
                                      (_tl2999330032_ (##cdr _e2999130025_)))
                                  (if (gx#stx-null? _hd2999230029_)
                                      (if (gx#stx-pair/null? _tl2999330032_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2999330032_)
                                                    '0)
                                              (let ((_g35332_
                                                     (gx#syntax-split-splice
                                                      _tl2999330032_
                                                      '0)))
                                                (begin
                                                  (let ((_g35333_
                                                         (values-count
                                                          _g35332_)))
                                                    (if (not (fx= _g35333_ 2))
                                                        (error "Context expects 2 values"
                                                               _g35333_)))
                                                  (let ((_target2999430035_
                                                         (values-ref
                                                          _g35332_
                                                          0))
                                                        (_tl2999630038_
                                                         (values-ref
                                                          _g35332_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2999630038_)
                                                        (letrec ((_loop2999730041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2999530045_ _body3000130048_)
                            (if (gx#stx-pair? _hd2999530045_)
                                (let ((_e2999830051_
                                       (gx#syntax-e _hd2999530045_)))
                                  (let ((_lp-hd2999930055_
                                         (##car _e2999830051_))
                                        (_lp-tl3000030058_
                                         (##cdr _e2999830051_)))
                                    (_loop2999730041_
                                     _lp-tl3000030058_
                                     (cons _lp-hd2999930055_
                                           _body3000130048_))))
                                (let ((_body3000230061_
                                       (reverse _body3000130048_)))
                                  ((lambda (_L30065_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3008230085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3008330088_)
                    (cons _g3008230085_ _g3008330088_))
                  '()
                  _L30065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body3000230061_))))))
                  (_loop2999730041_ _target2999430035_ '()))
                (_g2995630008_ _g2995730012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2995630008_ _g2995730012_))
                                          (_g2995630008_ _g2995730012_))
                                      (_g2995630008_ _g2995730012_))))
                              (_g2995630008_ _g2995730012_))))
                      (_g2995630008_ _g2995730012_))))
               (_g2995430217_
                (lambda (_g2995730095_)
                  (if (gx#stx-pair? _g2995730095_)
                      (let ((_e2996330098_ (gx#syntax-e _g2995730095_)))
                        (let ((_hd2996430102_ (##car _e2996330098_))
                              (_tl2996530105_ (##cdr _e2996330098_)))
                          (if (gx#stx-pair? _tl2996530105_)
                              (let ((_e2996630108_
                                     (gx#syntax-e _tl2996530105_)))
                                (let ((_hd2996730112_ (##car _e2996630108_))
                                      (_tl2996830115_ (##cdr _e2996630108_)))
                                  (if (gx#stx-pair? _hd2996730112_)
                                      (let ((_e2996930118_
                                             (gx#syntax-e _hd2996730112_)))
                                        (let ((_hd2997030122_
                                               (##car _e2996930118_))
                                              (_tl2997130125_
                                               (##cdr _e2996930118_)))
                                          (if (gx#stx-pair? _hd2997030122_)
                                              (let ((_e2997230128_
                                                     (gx#syntax-e
                                                      _hd2997030122_)))
                                                (let ((_hd2997330132_
                                                       (##car _e2997230128_))
                                                      (_tl2997430135_
                                                       (##cdr _e2997230128_)))
                                                  (if (gx#stx-pair?
                                                       _tl2997430135_)
                                                      (let ((_e2997530138_
                                                             (gx#syntax-e
                                                              _tl2997430135_)))
                                                        (let ((_hd2997630142_
                                                               (##car _e2997530138_))
                                                              (_tl2997730145_
                                                               (##cdr _e2997530138_)))
                                                          (if (gx#stx-null?
                                                               _tl2997730145_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2996830115_)
                          (if (fx>= (gx#stx-length _tl2996830115_) '0)
                              (let ((_g35334_
                                     (gx#syntax-split-splice
                                      _tl2996830115_
                                      '0)))
                                (begin
                                  (let ((_g35335_ (values-count _g35334_)))
                                    (if (not (fx= _g35335_ 2))
                                        (error "Context expects 2 values"
                                               _g35335_)))
                                  (let ((_target2997830148_
                                         (values-ref _g35334_ 0))
                                        (_tl2998030151_
                                         (values-ref _g35334_ 1)))
                                    (if (gx#stx-null? _tl2998030151_)
                                        (letrec ((_loop2998130154_
                                                  (lambda (_hd2997930158_
                                                           _body2998530161_)
                                                    (if (gx#stx-pair?
                                                         _hd2997930158_)
                                                        (let ((_e2998230164_
                                                               (gx#syntax-e
                                                                _hd2997930158_)))
                                                          (let ((_lp-hd2998330168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2998230164_))
                        (_lp-tl2998430171_ (##cdr _e2998230164_)))
                    (_loop2998130154_
                     _lp-tl2998430171_
                     (cons _lp-hd2998330168_ _body2998530161_))))
                (let ((_body2998630174_ (reverse _body2998530161_)))
                  ((lambda (_L30178_ _L30180_ _L30181_ _L30182_ _L30183_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L30182_ (cons _L30181_ '())) '())
                                 (cons (cons _L30183_
                                             (cons _L30180_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3020830211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3020930214_)
                      (cons _g3020830211_ _g3020930214_))
                    '()
                    _L30178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2998630174_
                   _tl2997130125_
                   _hd2997630142_
                   _hd2997330132_
                   _hd2996430102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2998130154_
                                           _target2997830148_
                                           '()))
                                        (_g2995530091_ _g2995730095_)))))
                              (_g2995530091_ _g2995730095_))
                          (_g2995530091_ _g2995730095_))
                      (_g2995530091_ _g2995730095_))))
              (_g2995530091_ _g2995730095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2995530091_ _g2995730095_))))
                                      (_g2995530091_ _g2995730095_))))
                              (_g2995530091_ _g2995730095_))))
                      (_g2995530091_ _g2995730095_)))))
          (_g2995430217_ _$stx29951_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx30223_)
        (let* ((_g3023430378_
                (lambda (_g3023530374_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3023530374_)))
               (_g3023330473_
                (lambda (_g3023530382_)
                  (if (gx#stx-pair? _g3023530382_)
                      (let ((_e3035530385_ (gx#syntax-e _g3023530382_)))
                        (let ((_hd3035630389_ (##car _e3035530385_))
                              (_tl3035730392_ (##cdr _e3035530385_)))
                          (if (gx#stx-pair? _tl3035730392_)
                              (let ((_e3035830395_
                                     (gx#syntax-e _tl3035730392_)))
                                (let ((_hd3035930399_ (##car _e3035830395_))
                                      (_tl3036030402_ (##cdr _e3035830395_)))
                                  (if (gx#stx-pair? _tl3036030402_)
                                      (let ((_e3036130405_
                                             (gx#syntax-e _tl3036030402_)))
                                        (let ((_hd3036230409_
                                               (##car _e3036130405_))
                                              (_tl3036330412_
                                               (##cdr _e3036130405_)))
                                          (if (gx#stx-datum? _hd3036230409_)
                                              (if (equal? (gx#stx-e
                                                           _hd3036230409_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3036330412_)
                                                      (let ((_e3036430415_
                                                             (gx#syntax-e
                                                              _tl3036330412_)))
                                                        (let ((_hd3036530419_
                                                               (##car _e3036430415_))
                                                              (_tl3036630422_
                                                               (##cdr _e3036430415_)))
                                                          (if (gx#stx-pair?
                                                               _tl3036630422_)
                                                              (let ((_e3036730425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3036630422_)))
                        (let ((_hd3036830429_ (##car _e3036730425_))
                              (_tl3036930432_ (##cdr _e3036730425_)))
                          (if (gx#identifier? _hd3036830429_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35336_|
                                   _hd3036830429_)
                                  (if (gx#stx-pair? _tl3036930432_)
                                      (let ((_e3037030435_
                                             (gx#syntax-e _tl3036930432_)))
                                        (let ((_hd3037130439_
                                               (##car _e3037030435_))
                                              (_tl3037230442_
                                               (##cdr _e3037030435_)))
                                          (if (gx#stx-null? _tl3037230442_)
                                              ((lambda (_L30445_
                                                        _L30447_
                                                        _L30448_
                                                        _L30449_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30449_
                                             (cons _L30448_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30445_
                                                   (cons (cons _L30447_
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
                                               _hd3037130439_
                                               _hd3036530419_
                                               _hd3035930399_
                                               _hd3035630389_)
                                              (_g3023430378_ _g3023530382_))))
                                      (_g3023430378_ _g3023530382_))
                                  (_g3023430378_ _g3023530382_))
                              (_g3023430378_ _g3023530382_))))
                      (_g3023430378_ _g3023530382_))))
              (_g3023430378_ _g3023530382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3023430378_
                                                   _g3023530382_))
                                              (_g3023430378_ _g3023530382_))))
                                      (_g3023430378_ _g3023530382_))))
                              (_g3023430378_ _g3023530382_))))
                      (_g3023430378_ _g3023530382_))))
               (_g3023230541_
                (lambda (_g3023530477_)
                  (if (gx#stx-pair? _g3023530477_)
                      (let ((_e3033930480_ (gx#syntax-e _g3023530477_)))
                        (let ((_hd3034030484_ (##car _e3033930480_))
                              (_tl3034130487_ (##cdr _e3033930480_)))
                          (if (gx#stx-pair? _tl3034130487_)
                              (let ((_e3034230490_
                                     (gx#syntax-e _tl3034130487_)))
                                (let ((_hd3034330494_ (##car _e3034230490_))
                                      (_tl3034430497_ (##cdr _e3034230490_)))
                                  (if (gx#stx-pair? _tl3034430497_)
                                      (let ((_e3034530500_
                                             (gx#syntax-e _tl3034430497_)))
                                        (let ((_hd3034630504_
                                               (##car _e3034530500_))
                                              (_tl3034730507_
                                               (##cdr _e3034530500_)))
                                          (if (gx#stx-datum? _hd3034630504_)
                                              (if (equal? (gx#stx-e
                                                           _hd3034630504_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3034730507_)
                                                      (let ((_e3034830510_
                                                             (gx#syntax-e
                                                              _tl3034730507_)))
                                                        (let ((_hd3034930514_
                                                               (##car _e3034830510_))
                                                              (_tl3035030517_
                                                               (##cdr _e3034830510_)))
                                                          (if (gx#stx-null?
                                                               _tl3035030517_)
                                                              ((lambda (_L30520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30522_
                                _L30523_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30522_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30520_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3034930514_
                       _hd3034330494_
                       _hd3034030484_)
                      (_g3023330473_ _g3023530477_))))
              (_g3023330473_ _g3023530477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3023330473_
                                                   _g3023530477_))
                                              (_g3023330473_ _g3023530477_))))
                                      (_g3023330473_ _g3023530477_))))
                              (_g3023330473_ _g3023530477_))))
                      (_g3023330473_ _g3023530477_))))
               (_g3023130609_
                (lambda (_g3023530545_)
                  (if (gx#stx-pair? _g3023530545_)
                      (let ((_e3032430548_ (gx#syntax-e _g3023530545_)))
                        (let ((_hd3032530552_ (##car _e3032430548_))
                              (_tl3032630555_ (##cdr _e3032430548_)))
                          (if (gx#stx-pair? _tl3032630555_)
                              (let ((_e3032730558_
                                     (gx#syntax-e _tl3032630555_)))
                                (let ((_hd3032830562_ (##car _e3032730558_))
                                      (_tl3032930565_ (##cdr _e3032730558_)))
                                  (if (gx#stx-pair? _tl3032930565_)
                                      (let ((_e3033030568_
                                             (gx#syntax-e _tl3032930565_)))
                                        (let ((_hd3033130572_
                                               (##car _e3033030568_))
                                              (_tl3033230575_
                                               (##cdr _e3033030568_)))
                                          (if (gx#identifier? _hd3033130572_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35337_|
                                                   _hd3033130572_)
                                                  (if (gx#stx-pair?
                                                       _tl3033230575_)
                                                      (let ((_e3033330578_
                                                             (gx#syntax-e
                                                              _tl3033230575_)))
                                                        (let ((_hd3033430582_
                                                               (##car _e3033330578_))
                                                              (_tl3033530585_
                                                               (##cdr _e3033330578_)))
                                                          (if (gx#stx-null?
                                                               _tl3033530585_)
                                                              ((lambda (_L30588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30590_
                                _L30591_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30591_
                                                             (cons _L30590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30588_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3033430582_
                       _hd3032830562_
                       _hd3032530552_)
                      (_g3023230541_ _g3023530545_))))
              (_g3023230541_ _g3023530545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3023230541_
                                                   _g3023530545_))
                                              (_g3023230541_ _g3023530545_))))
                                      (_g3023230541_ _g3023530545_))))
                              (_g3023230541_ _g3023530545_))))
                      (_g3023230541_ _g3023530545_))))
               (_g3023030651_
                (lambda (_g3023530613_)
                  (if (gx#stx-pair? _g3023530613_)
                      (let ((_e3031530616_ (gx#syntax-e _g3023530613_)))
                        (let ((_hd3031630620_ (##car _e3031530616_))
                              (_tl3031730623_ (##cdr _e3031530616_)))
                          (if (gx#stx-pair? _tl3031730623_)
                              (let ((_e3031830626_
                                     (gx#syntax-e _tl3031730623_)))
                                (let ((_hd3031930630_ (##car _e3031830626_))
                                      (_tl3032030633_ (##cdr _e3031830626_)))
                                  (if (gx#stx-null? _tl3032030633_)
                                      ((lambda (_L30636_ _L30638_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30636_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd3031930630_
                                       _hd3031630620_)
                                      (_g3023130609_ _g3023530613_))))
                              (_g3023130609_ _g3023530613_))))
                      (_g3023130609_ _g3023530613_))))
               (_g3022930705_
                (lambda (_g3023530655_)
                  (if (gx#stx-pair? _g3023530655_)
                      (let ((_e3030430658_ (gx#syntax-e _g3023530655_)))
                        (let ((_hd3030530662_ (##car _e3030430658_))
                              (_tl3030630665_ (##cdr _e3030430658_)))
                          (if (gx#stx-pair? _tl3030630665_)
                              (let ((_e3030730668_
                                     (gx#syntax-e _tl3030630665_)))
                                (let ((_hd3030830672_ (##car _e3030730668_))
                                      (_tl3030930675_ (##cdr _e3030730668_)))
                                  (if (gx#stx-pair? _tl3030930675_)
                                      (let ((_e3031030678_
                                             (gx#syntax-e _tl3030930675_)))
                                        (let ((_hd3031130682_
                                               (##car _e3031030678_))
                                              (_tl3031230685_
                                               (##cdr _e3031030678_)))
                                          (if (gx#stx-null? _tl3031230685_)
                                              ((lambda (_L30688_ _L30690_)
                                                 (cons _L30690_
                                                       (cons _L30688_ '())))
                                               _hd3031130682_
                                               _hd3030830672_)
                                              (_g3023030651_ _g3023530655_))))
                                      (_g3023030651_ _g3023530655_))))
                              (_g3023030651_ _g3023530655_))))
                      (_g3023030651_ _g3023530655_))))
               (_g3022830785_
                (lambda (_g3023530709_)
                  (if (gx#stx-pair? _g3023530709_)
                      (let ((_e3028730712_ (gx#syntax-e _g3023530709_)))
                        (let ((_hd3028830716_ (##car _e3028730712_))
                              (_tl3028930719_ (##cdr _e3028730712_)))
                          (if (gx#stx-pair? _tl3028930719_)
                              (let ((_e3029030722_
                                     (gx#syntax-e _tl3028930719_)))
                                (let ((_hd3029130726_ (##car _e3029030722_))
                                      (_tl3029230729_ (##cdr _e3029030722_)))
                                  (if (gx#stx-pair? _hd3029130726_)
                                      (let ((_e3029330732_
                                             (gx#syntax-e _hd3029130726_)))
                                        (let ((_hd3029430736_
                                               (##car _e3029330732_))
                                              (_tl3029530739_
                                               (##cdr _e3029330732_)))
                                          (if (gx#identifier? _hd3029430736_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35338_|
                                                   _hd3029430736_)
                                                  (if (gx#stx-pair?
                                                       _tl3029530739_)
                                                      (let ((_e3029630742_
                                                             (gx#syntax-e
                                                              _tl3029530739_)))
                                                        (let ((_hd3029730746_
                                                               (##car _e3029630742_))
                                                              (_tl3029830749_
                                                               (##cdr _e3029630742_)))
                                                          (if (gx#stx-null?
                                                               _tl3029830749_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3029230729_)
                          (let ((_e3029930752_ (gx#syntax-e _tl3029230729_)))
                            (let ((_hd3030030756_ (##car _e3029930752_))
                                  (_tl3030130759_ (##cdr _e3029930752_)))
                              (if (gx#stx-null? _tl3030130759_)
                                  ((lambda (_L30762_ _L30764_ _L30765_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30765_
                                                       (cons _L30764_
                                                             (cons _L30762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd3030030756_
                                   _hd3029730746_
                                   _hd3028830716_)
                                  (_g3022930705_ _g3023530709_))))
                          (_g3022930705_ _g3023530709_))
                      (_g3022930705_ _g3023530709_))))
              (_g3022930705_ _g3023530709_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3022930705_
                                                   _g3023530709_))
                                              (_g3022930705_ _g3023530709_))))
                                      (_g3022930705_ _g3023530709_))))
                              (_g3022930705_ _g3023530709_))))
                      (_g3022930705_ _g3023530709_))))
               (_g3022730895_
                (lambda (_g3023530789_)
                  (if (gx#stx-pair? _g3023530789_)
                      (let ((_e3026330792_ (gx#syntax-e _g3023530789_)))
                        (let ((_hd3026430796_ (##car _e3026330792_))
                              (_tl3026530799_ (##cdr _e3026330792_)))
                          (if (gx#stx-pair? _tl3026530799_)
                              (let ((_e3026630802_
                                     (gx#syntax-e _tl3026530799_)))
                                (let ((_hd3026730806_ (##car _e3026630802_))
                                      (_tl3026830809_ (##cdr _e3026630802_)))
                                  (if (gx#stx-pair? _hd3026730806_)
                                      (let ((_e3026930812_
                                             (gx#syntax-e _hd3026730806_)))
                                        (let ((_hd3027030816_
                                               (##car _e3026930812_))
                                              (_tl3027130819_
                                               (##cdr _e3026930812_)))
                                          (if (gx#identifier? _hd3027030816_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35339_|
                                                   _hd3027030816_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3027130819_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3027130819_)
                        '0)
                  (let ((_g35340_ (gx#syntax-split-splice _tl3027130819_ '0)))
                    (begin
                      (let ((_g35341_ (values-count _g35340_)))
                        (if (not (fx= _g35341_ 2))
                            (error "Context expects 2 values" _g35341_)))
                      (let ((_target3027230822_ (values-ref _g35340_ 0))
                            (_tl3027430825_ (values-ref _g35340_ 1)))
                        (if (gx#stx-null? _tl3027430825_)
                            (letrec ((_loop3027530828_
                                      (lambda (_hd3027330832_ _pred3027930835_)
                                        (if (gx#stx-pair? _hd3027330832_)
                                            (let ((_e3027630838_
                                                   (gx#syntax-e
                                                    _hd3027330832_)))
                                              (let ((_lp-hd3027730842_
                                                     (##car _e3027630838_))
                                                    (_lp-tl3027830845_
                                                     (##cdr _e3027630838_)))
                                                (_loop3027530828_
                                                 _lp-tl3027830845_
                                                 (cons _lp-hd3027730842_
                                                       _pred3027930835_))))
                                            (let ((_pred3028030848_
                                                   (reverse _pred3027930835_)))
                                              (if (gx#stx-pair? _tl3026830809_)
                                                  (let ((_e3028130852_
                                                         (gx#syntax-e
                                                          _tl3026830809_)))
                                                    (let ((_hd3028230856_
                                                           (##car _e3028130852_))
                                                          (_tl3028330859_
                                                           (##cdr _e3028130852_)))
                                                      (if (gx#stx-null?
                                                           _tl3028330859_)
                                                          ((lambda (_L30862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30864_
                            _L30865_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3088630889_ _g3088730892_)
                                      (cons (cons _L30865_
                                                  (cons _g3088630889_
                                                        (cons _L30862_ '())))
                                            _g3088730892_))
                                    '()
                                    _L30864_))))
                   _hd3028230856_
                   _pred3028030848_
                   _hd3026430796_)
                  (_g3022830785_ _g3023530789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3022830785_
                                                   _g3023530789_)))))))
                              (_loop3027530828_ _target3027230822_ '()))
                            (_g3022830785_ _g3023530789_)))))
                  (_g3022830785_ _g3023530789_))
              (_g3022830785_ _g3023530789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3022830785_
                                                   _g3023530789_))
                                              (_g3022830785_ _g3023530789_))))
                                      (_g3022830785_ _g3023530789_))))
                              (_g3022830785_ _g3023530789_))))
                      (_g3022830785_ _g3023530789_))))
               (_g3022631005_
                (lambda (_g3023530899_)
                  (if (gx#stx-pair? _g3023530899_)
                      (let ((_e3023930902_ (gx#syntax-e _g3023530899_)))
                        (let ((_hd3024030906_ (##car _e3023930902_))
                              (_tl3024130909_ (##cdr _e3023930902_)))
                          (if (gx#stx-pair? _tl3024130909_)
                              (let ((_e3024230912_
                                     (gx#syntax-e _tl3024130909_)))
                                (let ((_hd3024330916_ (##car _e3024230912_))
                                      (_tl3024430919_ (##cdr _e3024230912_)))
                                  (if (gx#stx-pair? _hd3024330916_)
                                      (let ((_e3024530922_
                                             (gx#syntax-e _hd3024330916_)))
                                        (let ((_hd3024630926_
                                               (##car _e3024530922_))
                                              (_tl3024730929_
                                               (##cdr _e3024530922_)))
                                          (if (gx#identifier? _hd3024630926_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35342_|
                                                   _hd3024630926_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3024730929_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3024730929_)
                        '0)
                  (let ((_g35343_ (gx#syntax-split-splice _tl3024730929_ '0)))
                    (begin
                      (let ((_g35344_ (values-count _g35343_)))
                        (if (not (fx= _g35344_ 2))
                            (error "Context expects 2 values" _g35344_)))
                      (let ((_target3024830932_ (values-ref _g35343_ 0))
                            (_tl3025030935_ (values-ref _g35343_ 1)))
                        (if (gx#stx-null? _tl3025030935_)
                            (letrec ((_loop3025130938_
                                      (lambda (_hd3024930942_ _pred3025530945_)
                                        (if (gx#stx-pair? _hd3024930942_)
                                            (let ((_e3025230948_
                                                   (gx#syntax-e
                                                    _hd3024930942_)))
                                              (let ((_lp-hd3025330952_
                                                     (##car _e3025230948_))
                                                    (_lp-tl3025430955_
                                                     (##cdr _e3025230948_)))
                                                (_loop3025130938_
                                                 _lp-tl3025430955_
                                                 (cons _lp-hd3025330952_
                                                       _pred3025530945_))))
                                            (let ((_pred3025630958_
                                                   (reverse _pred3025530945_)))
                                              (if (gx#stx-pair? _tl3024430919_)
                                                  (let ((_e3025730962_
                                                         (gx#syntax-e
                                                          _tl3024430919_)))
                                                    (let ((_hd3025830966_
                                                           (##car _e3025730962_))
                                                          (_tl3025930969_
                                                           (##cdr _e3025730962_)))
                                                      (if (gx#stx-null?
                                                           _tl3025930969_)
                                                          ((lambda (_L30972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30974_
                            _L30975_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3099630999_ _g3099731002_)
                                      (cons (cons _L30975_
                                                  (cons _g3099630999_
                                                        (cons _L30972_ '())))
                                            _g3099731002_))
                                    '()
                                    _L30974_))))
                   _hd3025830966_
                   _pred3025630958_
                   _hd3024030906_)
                  (_g3022730895_ _g3023530899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3022730895_
                                                   _g3023530899_)))))))
                              (_loop3025130938_ _target3024830932_ '()))
                            (_g3022730895_ _g3023530899_)))))
                  (_g3022730895_ _g3023530899_))
              (_g3022730895_ _g3023530899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3022730895_
                                                   _g3023530899_))
                                              (_g3022730895_ _g3023530899_))))
                                      (_g3022730895_ _g3023530899_))))
                              (_g3022730895_ _g3023530899_))))
                      (_g3022730895_ _g3023530899_)))))
          (_g3022631005_ _$stx30223_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx31011_)
        (let* ((_g3101631050_
                (lambda (_g3101731046_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3101731046_)))
               (_g3101531107_
                (lambda (_g3101731054_)
                  (if (gx#stx-pair? _g3101731054_)
                      (let ((_e3103631057_ (gx#syntax-e _g3101731054_)))
                        (let ((_hd3103731061_ (##car _e3103631057_))
                              (_tl3103831064_ (##cdr _e3103631057_)))
                          (if (gx#stx-pair? _tl3103831064_)
                              (let ((_e3103931067_
                                     (gx#syntax-e _tl3103831064_)))
                                (let ((_hd3104031071_ (##car _e3103931067_))
                                      (_tl3104131074_ (##cdr _e3103931067_)))
                                  (if (gx#stx-pair? _tl3104131074_)
                                      (let ((_e3104231077_
                                             (gx#syntax-e _tl3104131074_)))
                                        (let ((_hd3104331081_
                                               (##car _e3104231077_))
                                              (_tl3104431084_
                                               (##cdr _e3104231077_)))
                                          (if (gx#stx-null? _tl3104431084_)
                                              ((lambda (_L31087_
                                                        _L31089_
                                                        _L31090_)
                                                 (cons _L31090_
                                                       (cons _L31089_
                                                             (cons _L31087_
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
                                               _hd3104331081_
                                               _hd3104031071_
                                               _hd3103731061_)
                                              (_g3101631050_ _g3101731054_))))
                                      (_g3101631050_ _g3101731054_))))
                              (_g3101631050_ _g3101731054_))))
                      (_g3101631050_ _g3101731054_))))
               (_g3101431175_
                (lambda (_g3101731111_)
                  (if (gx#stx-pair? _g3101731111_)
                      (let ((_e3102131114_ (gx#syntax-e _g3101731111_)))
                        (let ((_hd3102231118_ (##car _e3102131114_))
                              (_tl3102331121_ (##cdr _e3102131114_)))
                          (if (gx#stx-pair? _tl3102331121_)
                              (let ((_e3102431124_
                                     (gx#syntax-e _tl3102331121_)))
                                (let ((_hd3102531128_ (##car _e3102431124_))
                                      (_tl3102631131_ (##cdr _e3102431124_)))
                                  (if (gx#stx-pair? _tl3102631131_)
                                      (let ((_e3102731134_
                                             (gx#syntax-e _tl3102631131_)))
                                        (let ((_hd3102831138_
                                               (##car _e3102731134_))
                                              (_tl3102931141_
                                               (##cdr _e3102731134_)))
                                          (if (gx#stx-pair? _tl3102931141_)
                                              (let ((_e3103031144_
                                                     (gx#syntax-e
                                                      _tl3102931141_)))
                                                (let ((_hd3103131148_
                                                       (##car _e3103031144_))
                                                      (_tl3103231151_
                                                       (##cdr _e3103031144_)))
                                                  (if (gx#stx-null?
                                                       _tl3103231151_)
                                                      ((lambda (_L31154_
                                                                _L31156_
                                                                _L31157_)
                                                         (if (gx#identifier?
                                                              _L31157_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L31157_
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
                                         (cons _L31156_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L31154_ '()))
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
                     (_g3101531107_ _g3101731111_)))
               _hd3103131148_
               _hd3102831138_
               _hd3102531128_)
              (_g3101531107_ _g3101731111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3101531107_ _g3101731111_))))
                                      (_g3101531107_ _g3101731111_))))
                              (_g3101531107_ _g3101731111_))))
                      (_g3101531107_ _g3101731111_)))))
          (_g3101431175_ _$stx31011_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx31179_)
        (let* ((_g3118331198_
                (lambda (_g3118431194_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3118431194_)))
               (_g3118231241_
                (lambda (_g3118431202_)
                  (if (gx#stx-pair? _g3118431202_)
                      (let ((_e3118731205_ (gx#syntax-e _g3118431202_)))
                        (let ((_hd3118831209_ (##car _e3118731205_))
                              (_tl3118931212_ (##cdr _e3118731205_)))
                          (if (gx#stx-pair? _tl3118931212_)
                              (let ((_e3119031215_
                                     (gx#syntax-e _tl3118931212_)))
                                (let ((_hd3119131219_ (##car _e3119031215_))
                                      (_tl3119231222_ (##cdr _e3119031215_)))
                                  ((lambda (_L31225_ _L31227_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L31227_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L31225_)
                                                       '()))))
                                   _tl3119231222_
                                   _hd3119131219_)))
                              (_g3118331198_ _g3118431202_))))
                      (_g3118331198_ _g3118431202_)))))
          (_g3118231241_ _$stx31179_))))))
