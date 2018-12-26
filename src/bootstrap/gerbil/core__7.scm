(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41886_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args20850_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20850_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args20846_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20846_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args20842_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20842_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args20838_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20838_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args20834_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20834_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args20830_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20830_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20804_ _is?20806_)
        (if (gx#identifier? _stx20804_)
            (let ((_e2080720809_ (gx#syntax-local-value _stx20804_ false)))
              (if _e2080720809_
                  (let ((_e20813_ _e2080720809_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20813_)
                        (_is?20806_ _e20813_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20820_)
        (let ((_is?20823_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20820_
           _is?20823_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41872_
        (let ((_g41871_ (length _g41872_)))
          (cond ((##fx= _g41871_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41872_))
                ((##fx= _g41871_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41872_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20800_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20800_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20797_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20797_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20791_)
        (if _id20791_
            (let ((_info20794_ (gx#syntax-local-value _id20791_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20794_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20794_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20556_ _stx20558_)
        (let* ((_g2056020580_
                (lambda (_g2056120576_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2056120576_)))
               (_g2055920787_
                (lambda (_g2056120584_)
                  (if (gx#stx-pair? _g2056120584_)
                      (let ((_e2056320587_ (gx#syntax-e _g2056120584_)))
                        (let ((_hd2056420591_ (##car _e2056320587_))
                              (_tl2056520594_ (##cdr _e2056320587_)))
                          (if (gx#stx-pair/null? _tl2056520594_)
                              (let ((_g41873_
                                     (gx#syntax-split-splice
                                      _tl2056520594_
                                      '0)))
                                (begin
                                  (let ((_g41874_
                                         (if (##values? _g41873_)
                                             (##vector-length _g41873_)
                                             1)))
                                    (if (not (##fx= _g41874_ 2))
                                        (error "Context expects 2 values"
                                               _g41874_)))
                                  (let ((_target2056620597_
                                         (##vector-ref _g41873_ 0))
                                        (_tl2056820600_
                                         (##vector-ref _g41873_ 1)))
                                    (if (gx#stx-null? _tl2056820600_)
                                        (letrec ((_loop2056920603_
                                                  (lambda (_hd2056720607_
                                                           _arg2057320610_)
                                                    (if (gx#stx-pair?
                                                         _hd2056720607_)
                                                        (let ((_e2057020613_
                                                               (gx#syntax-e
                                                                _hd2056720607_)))
                                                          (let ((_lp-hd2057120617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2057020613_))
                        (_lp-tl2057220620_ (##cdr _e2057020613_)))
                    (_loop2056920603_
                     _lp-tl2057220620_
                     (cons _lp-hd2057120617_ _arg2057320610_))))
                (let ((_arg2057420623_ (reverse _arg2057320610_)))
                  ((lambda (_L20627_)
                     (let* ((_g2064320674_
                             (lambda (_g2064420670_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2064420670_)))
                            (_g2064220783_
                             (lambda (_g2064420678_)
                               (if (gx#stx-pair? _g2064420678_)
                                   (let ((_e2065120681_
                                          (gx#syntax-e _g2064420678_)))
                                     (let ((_hd2065220685_
                                            (##car _e2065120681_))
                                           (_tl2065320688_
                                            (##cdr _e2065120681_)))
                                       (if (gx#stx-pair? _tl2065320688_)
                                           (let ((_e2065420691_
                                                  (gx#syntax-e
                                                   _tl2065320688_)))
                                             (let ((_hd2065520695_
                                                    (##car _e2065420691_))
                                                   (_tl2065620698_
                                                    (##cdr _e2065420691_)))
                                               (if (gx#stx-pair?
                                                    _tl2065620698_)
                                                   (let ((_e2065720701_
                                                          (gx#syntax-e
                                                           _tl2065620698_)))
                                                     (let ((_hd2065820705_
                                                            (##car _e2065720701_))
                                                           (_tl2065920708_
                                                            (##cdr _e2065720701_)))
                                                       (if (gx#stx-pair?
                                                            _tl2065920708_)
                                                           (let ((_e2066020711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2065920708_)))
                     (let ((_hd2066120715_ (##car _e2066020711_))
                           (_tl2066220718_ (##cdr _e2066020711_)))
                       (if (gx#stx-pair? _tl2066220718_)
                           (let ((_e2066320721_ (gx#syntax-e _tl2066220718_)))
                             (let ((_hd2066420725_ (##car _e2066320721_))
                                   (_tl2066520728_ (##cdr _e2066320721_)))
                               (if (gx#stx-pair? _tl2066520728_)
                                   (let ((_e2066620731_
                                          (gx#syntax-e _tl2066520728_)))
                                     (let ((_hd2066720735_
                                            (##car _e2066620731_))
                                           (_tl2066820738_
                                            (##cdr _e2066620731_)))
                                       (if (gx#stx-null? _tl2066820738_)
                                           ((lambda (_L20741_
                                                     _L20743_
                                                     _L20744_
                                                     _L20745_
                                                     _L20746_
                                                     _L20747_)
                                              (let ()
                                                (cons _L20745_
                                                      (foldr (lambda (_g2077420777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2077520780_)
                       (cons _g2077420777_ _g2077520780_))
                     '()
                     _L20627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2066720735_
                                            _hd2066420725_
                                            _hd2066120715_
                                            _hd2065820705_
                                            _hd2065520695_
                                            _hd2065220685_)
                                           (_g2064320674_ _g2064420678_))))
                                   (_g2064320674_ _g2064420678_))))
                           (_g2064320674_ _g2064420678_))))
                   (_g2064320674_ _g2064420678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2064320674_
                                                    _g2064420678_))))
                                           (_g2064320674_ _g2064420678_))))
                                   (_g2064320674_ _g2064420678_)))))
                       (_g2064220783_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20556_))))
                   _arg2057420623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2056920603_
                                           _target2056620597_
                                           '()))
                                        (_g2056020580_ _g2056120584_)))))
                              (_g2056020580_ _g2056120584_))))
                      (_g2056020580_ _g2056120584_)))))
          (_g2055920787_ _stx20558_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20547_)
        (letrec ((_body-opt?20550_
                  (lambda (_key20553_)
                    (memq (gx#stx-e _key20553_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20547_ _body-opt?20550_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19375_
               _id19377_
               _super-ref19378_
               _els19379_
               _body19380_
               _struct?19381_)
        (letrec* ((_wrap19383_
                   (lambda (_e-stx20544_)
                     (gx#stx-wrap-source
                      _e-stx20544_
                      (gx#stx-source _stx19375_))))
                  (_make-id19385_
                   (if (uninterned-symbol? (gx#stx-e _id19377_))
                       (lambda _g41875_ (gx#genident _id19377_))
                       (lambda _args20541_
                         (apply gx#stx-identifier _id19377_ _args20541_)))))
          (gx#check-duplicate-identifiers _els19379_ _stx19375_)
          (let* ((_name19387_ (symbol->string (gx#stx-e _id19377_)))
                 (_super19390_
                  (if _struct?19381_
                      (if _super-ref19378_
                          (gx#syntax-local-value _super-ref19378_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19378_)))
                 (_g1939319401_
                  (lambda (_g1939419397_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1939419397_)))
                 (_g1939220535_
                  (lambda (_g1939419405_)
                    ((lambda (_L19408_)
                       (let ()
                         (let* ((_g1942419432_
                                 (lambda (_g1942519428_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1942519428_)))
                                (_g1942320531_
                                 (lambda (_g1942519436_)
                                   ((lambda (_L19439_)
                                      (let ()
                                        (let* ((_g1945219460_
                                                (lambda (_g1945319456_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1945319456_)))
                                               (_g1945120527_
                                                (lambda (_g1945319464_)
                                                  ((lambda (_L19467_)
                                                     (let ()
                                                       (let* ((_g1948019488_
                                                               (lambda (_g1948119484_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1948119484_)))
                      (_g1947920523_
                       (lambda (_g1948119492_)
                         ((lambda (_L19495_)
                            (let ()
                              (let* ((_g1950819516_
                                      (lambda (_g1950919512_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1950919512_)))
                                     (_g1950720519_
                                      (lambda (_g1950919520_)
                                        ((lambda (_L19523_)
                                           (let ()
                                             (let* ((_g1953619544_
                                                     (lambda (_g1953719540_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1953719540_)))
                                                    (_g1953520515_
                                                     (lambda (_g1953719548_)
                                                       ((lambda (_L19551_)
                                                          (let ()
                                                            (let* ((_g1956419581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1956519577_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1956519577_)))
                           (_g1956320511_
                            (lambda (_g1956519585_)
                              (if (gx#stx-pair/null? _g1956519585_)
                                  (let ((_g41876_
                                         (gx#syntax-split-splice
                                          _g1956519585_
                                          '0)))
                                    (begin
                                      (let ((_g41877_
                                             (if (##values? _g41876_)
                                                 (##vector-length _g41876_)
                                                 1)))
                                        (if (not (##fx= _g41877_ 2))
                                            (error "Context expects 2 values"
                                                   _g41877_)))
                                      (let ((_target1956719588_
                                             (##vector-ref _g41876_ 0))
                                            (_tl1956919591_
                                             (##vector-ref _g41876_ 1)))
                                        (if (gx#stx-null? _tl1956919591_)
                                            (letrec ((_loop1957019594_
                                                      (lambda (_hd1956819598_
                                                               _attr1957419601_)
                                                        (if (gx#stx-pair?
                                                             _hd1956819598_)
                                                            (let ((_e1957119604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1956819598_)))
                      (let ((_lp-hd1957219608_ (##car _e1957119604_))
                            (_lp-tl1957319611_ (##cdr _e1957119604_)))
                        (_loop1957019594_
                         _lp-tl1957319611_
                         (cons _lp-hd1957219608_ _attr1957419601_))))
                    (let ((_attr1957519614_ (reverse _attr1957419601_)))
                      ((lambda (_L19618_)
                         (let ()
                           (let* ((_g1963519652_
                                   (lambda (_g1963619648_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1963619648_)))
                                  (_g1963420502_
                                   (lambda (_g1963619656_)
                                     (if (gx#stx-pair/null? _g1963619656_)
                                         (let ((_g41878_
                                                (gx#syntax-split-splice
                                                 _g1963619656_
                                                 '0)))
                                           (begin
                                             (let ((_g41879_
                                                    (if (##values? _g41878_)
                                                        (##vector-length
                                                         _g41878_)
                                                        1)))
                                               (if (not (##fx= _g41879_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41879_)))
                                             (let ((_target1963819659_
                                                    (##vector-ref _g41878_ 0))
                                                   (_tl1964019662_
                                                    (##vector-ref _g41878_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1964019662_)
                                                   (letrec ((_loop1964119665_
                                                             (lambda (_hd1963919669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1964519672_)
                       (if (gx#stx-pair? _hd1963919669_)
                           (let ((_e1964219675_ (gx#syntax-e _hd1963919669_)))
                             (let ((_lp-hd1964319679_ (##car _e1964219675_))
                                   (_lp-tl1964419682_ (##cdr _e1964219675_)))
                               (_loop1964119665_
                                _lp-tl1964419682_
                                (cons _lp-hd1964319679_ _getf1964519672_))))
                           (let ((_getf1964619685_ (reverse _getf1964519672_)))
                             ((lambda (_L19689_)
                                (let ()
                                  (let* ((_g1970619723_
                                          (lambda (_g1970719719_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1970719719_)))
                                         (_g1970520493_
                                          (lambda (_g1970719727_)
                                            (if (gx#stx-pair/null?
                                                 _g1970719727_)
                                                (let ((_g41880_
                                                       (gx#syntax-split-splice
                                                        _g1970719727_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41881_
                                                           (if (##values?
                                                                _g41880_)
                                                               (##vector-length
                                                                _g41880_)
                                                               1)))
                                                      (if (not (##fx= _g41881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1970919730_
                                                           (##vector-ref
                                                            _g41880_
                                                            0))
                                                          (_tl1971119733_
                                                           (##vector-ref
                                                            _g41880_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1971119733_)
                                                          (letrec ((_loop1971219736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1971019740_ _setf1971619743_)
                              (if (gx#stx-pair? _hd1971019740_)
                                  (let ((_e1971319746_
                                         (gx#syntax-e _hd1971019740_)))
                                    (let ((_lp-hd1971419750_
                                           (##car _e1971319746_))
                                          (_lp-tl1971519753_
                                           (##cdr _e1971319746_)))
                                      (_loop1971219736_
                                       _lp-tl1971519753_
                                       (cons _lp-hd1971419750_
                                             _setf1971619743_))))
                                  (let ((_setf1971719756_
                                         (reverse _setf1971619743_)))
                                    ((lambda (_L19760_)
                                       (let ()
                                         (let* ((_type-attr19805_
                                                 (if (gx#stx-null? _els19379_)
                                                     '()
                                                     (if _struct?19381_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19760_
                                _L19689_
                                _L19618_)
                               (foldr (lambda (_g1977619781_
                                               _g1977719784_
                                               _g1977819786_
                                               _g1977919788_)
                                        (cons (cons _g1977819786_
                                                    (cons _g1977719784_
                                                          (cons _g1977619781_
                                                                '())))
                                              _g1977919788_))
                                      '()
                                      _L19760_
                                      _L19689_
                                      _L19618_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19760_
                                _L19689_
                                _L19618_)
                               (foldr (lambda (_g1979019795_
                                               _g1979119798_
                                               _g1979219800_
                                               _g1979319802_)
                                        (cons (cons _g1979219800_
                                                    (cons _g1979119798_
                                                          (cons _g1979019795_
                                                                '())))
                                              _g1979319802_))
                                      '()
                                      _L19760_
                                      _L19689_
                                      _L19618_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19812_
                                                 (cons 'name:
                                                       (cons (let ((_$e19808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19380_)))
                       (if _$e19808_ _$e19808_ _id19377_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19827_
                                                 (let ((_$e19823_
                                                        (let ((_e1981419816_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19380_)))
                                                          (if _e1981419816_
                                                              (let ((_e19820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1981419816_))
                        (cons 'id: (cons _e19820_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19823_
                                                       _$e19823_
                                                       '())))
                                                (_type-ctor19842_
                                                 (let ((_$e19838_
                                                        (let ((_e1982919831_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19380_)))
                                                          (if _e1982919831_
                                                              (let ((_e19835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1982919831_))
                        (cons 'constructor: (cons _e19835_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19838_
                                                       _$e19838_
                                                       '())))
                                                (_plist19886_
                                                 (let* ((_plist19849_
                                                         (let ((_$e19845_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19380_)))
                   (if _$e19845_ _$e19845_ '())))
                (_plist19852_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19380_))
                     (cons (cons 'transparent: '#t) _plist19849_)
                     _plist19849_))
                (_plist19855_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19380_))
                     (cons (cons 'final: '#t) _plist19852_)
                     _plist19852_))
                (_plist19868_
                 (let ((_$e19858_
                        (gx#stx-e (gx#stx-getq 'print: _body19380_))))
                   (if _$e19858_
                       ((lambda (_print19862_)
                          (let ((_print19865_
                                 (if (eq? _print19862_ '#t)
                                     _els19379_
                                     _print19862_)))
                            (cons (cons 'print: _print19865_) _plist19855_)))
                        _$e19858_)
                       _plist19855_)))
                (_plist19881_
                 (let ((_$e19871_
                        (gx#stx-e (gx#stx-getq 'equal: _body19380_))))
                   (if _$e19871_
                       ((lambda (_equal19875_)
                          (let ((_equal19878_
                                 (if (eq? _equal19875_ '#t)
                                     _els19379_
                                     _equal19875_)))
                            (cons (cons 'equal: _equal19878_) _plist19868_)))
                        _$e19871_)
                       _plist19868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19881_))
                                                (_type-plist19926_
                                                 (if (null? _plist19886_)
                                                     _plist19886_
                                                     (let* ((_g1988919897_
                                                             (lambda (_g1989019893_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1989019893_)))
                                                            (_g1988819922_
                                                             (lambda (_g1989019901_)
                                                               ((lambda (_L19904_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19904_ '()))
                                        '()))))
                        _g1989019901_))))
               (_g1988819922_ _plist19886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19941_
                                                 (let ((_$e19937_
                                                        (let ((_e1992819930_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19380_)))
                                                          (if _e1992819930_
                                                              (let ((_e19934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1992819930_))
                        (cons 'unchecked: (cons _e19934_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19937_
                                                       _$e19937_
                                                       '())))
                                                (_g1994419961_
                                                 (lambda (_g1994519957_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1994519957_)))
                                                (_g1994320489_
                                                 (lambda (_g1994519965_)
                                                   (if (gx#stx-pair/null?
                                                        _g1994519965_)
                                                       (let ((_g41882_
                                                              (gx#syntax-split-splice
                                                               _g1994519965_
                                                               '0)))
                                                         (begin
                                                           (let ((_g41883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g41882_)
                              (##vector-length _g41882_)
                              1)))
                     (if (not (##fx= _g41883_ 2))
                         (error "Context expects 2 values" _g41883_)))
                   (let ((_target1994719968_ (##vector-ref _g41882_ 0))
                         (_tl1994919971_ (##vector-ref _g41882_ 1)))
                     (if (gx#stx-null? _tl1994919971_)
                         (letrec ((_loop1995019974_
                                   (lambda (_hd1994819978_
                                            _type-body1995419981_)
                                     (if (gx#stx-pair? _hd1994819978_)
                                         (let ((_e1995119984_
                                                (gx#syntax-e _hd1994819978_)))
                                           (let ((_lp-hd1995219988_
                                                  (##car _e1995119984_))
                                                 (_lp-tl1995319991_
                                                  (##cdr _e1995119984_)))
                                             (_loop1995019974_
                                              _lp-tl1995319991_
                                              (cons _lp-hd1995219988_
                                                    _type-body1995419981_))))
                                         (let ((_type-body1995519994_
                                                (reverse _type-body1995419981_)))
                                           ((lambda (_L19998_)
                                              (let ()
                                                (let* ((_g2001520023_
                                                        (lambda (_g2001620019_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2001620019_)))
                                                       (_g2001420477_
                                                        (lambda (_g2001620027_)
                                                          ((lambda (_L20030_)
                                                             (let ()
                                                               (let* ((_g2004320051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2004420047_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2004420047_)))
                              (_g2004220473_
                               (lambda (_g2004420055_)
                                 ((lambda (_L20058_)
                                    (let ()
                                      (let* ((_g2007120079_
                                              (lambda (_g2007220075_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2007220075_)))
                                             (_g2007020387_
                                              (lambda (_g2007220083_)
                                                ((lambda (_L20086_)
                                                   (let ()
                                                     (let* ((_g2009920107_
                                                             (lambda (_g2010020103_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2010020103_)))
                                                            (_g2009820383_
                                                             (lambda (_g2010020111_)
                                                               ((lambda (_L20114_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2012720135_
                                    (lambda (_g2012820131_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2012820131_)))
                                   (_g2012620379_
                                    (lambda (_g2012820139_)
                                      ((lambda (_L20142_)
                                         (let ()
                                           (let* ((_g2015520163_
                                                   (lambda (_g2015620159_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2015620159_)))
                                                  (_g2015420337_
                                                   (lambda (_g2015620167_)
                                                     ((lambda (_L20170_)
                                                        (let ()
                                                          (let* ((_g2018320191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2018420187_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2018420187_)))
                         (_g2018220333_
                          (lambda (_g2018420195_)
                            ((lambda (_L20198_)
                               (let ()
                                 (let* ((_g2021120219_
                                         (lambda (_g2021220215_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2021220215_)))
                                        (_g2021020329_
                                         (lambda (_g2021220223_)
                                           ((lambda (_L20226_)
                                              (let ()
                                                (let* ((_g2023920247_
                                                        (lambda (_g2024020243_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2024020243_)))
                                                       (_g2023820325_
                                                        (lambda (_g2024020251_)
                                                          ((lambda (_L20254_)
                                                             (let ()
                                                               (let* ((_g2026720275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2026820271_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2026820271_)))
                              (_g2026620297_
                               (lambda (_g2026820279_)
                                 ((lambda (_L20282_)
                                    (let ()
                                      (let ()
                                        (_wrap19383_
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons _L20030_
                                                     (cons _L20282_ '())))))))
                                  _g2026820279_))))
                         (_g2026620297_
                          (_wrap19383_
                           (cons (gx#datum->syntax '#f 'defsyntax)
                                 (cons _L19439_
                                       (cons (cons _L20058_
                                                   (cons 'runtime-identifier:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _L19467_ '()))
                       (cons 'expander-identifiers:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L20086_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _L19467_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L19495_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L19523_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_g2030020307_
                                                     _g2030120310_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g2030020307_
                                                                '()))
                                                    _g2030120310_))
                                            '()
                                            _L19689_))
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (foldr (lambda (_g2030220313_
                                                           _g2030320316_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _g2030220313_ '()))
                  _g2030320316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19760_))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons 'type-exhibitor:
                                         (cons (cons _L20114_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L20142_ '()))
                   (cons _L20170_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20198_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L20226_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L20254_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons (foldr (lambda (_g2030420319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2030520322_)
                              (cons _g2030420319_ _g2030520322_))
                            '()
                            _L19618_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))))
                   _g2024020251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2023820325_
                                                   _plist19886_))))
                                            _g2021220223_))))
                                   (_g2021020329_
                                    (if (not (null? _type-ctor19842_))
                                        (cadr _type-ctor19842_)
                                        '#f)))))
                             _g2018420195_))))
                    (_g2018220333_ (cadr _type-name19812_)))))
              _g2015620167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2015420337_
                                              (let ((_quote-e20376_
                                                     (lambda (_x-ref20341_)
                                                       (if _x-ref20341_
                                                           (let* ((_g2034420352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2034520348_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2034520348_)))
                          (_g2034320372_
                           (lambda (_g2034520356_)
                             ((lambda (_L20359_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L20359_ '()))))
                              _g2034520356_))))
                     (_g2034320372_ _x-ref20341_))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _struct?19381_
                                                    (_quote-e20376_
                                                     _super-ref19378_)
                                                    (cons 'list
                                                          (map _quote-e20376_
                                                               _super-ref19378_))))))))
                                       _g2012820139_))))
                              (_g2012620379_
                               (if (not (null? _type-id19827_))
                                   (cadr _type-id19827_)
                                   '#f)))))
                        _g2010020111_))))
               (_g2009820383_
                (if _struct?19381_
                    (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                    (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2007220083_))))
                                        (_g2007020387_
                                         (if _struct?19381_
                                             (if _super19390_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _L19551_ '()))
                                                 '#f)
                                             (let* ((_g2039120408_
                                                     (lambda (_g2039220404_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2039220404_)))
                                                    (_g2039020469_
                                                     (lambda (_g2039220412_)
                                                       (if (gx#stx-pair/null?
                                                            _g2039220412_)
                                                           (let ((_g41884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2039220412_ '0)))
                     (begin
                       (let ((_g41885_
                              (if (##values? _g41884_)
                                  (##vector-length _g41884_)
                                  1)))
                         (if (not (##fx= _g41885_ 2))
                             (error "Context expects 2 values" _g41885_)))
                       (let ((_target2039420415_ (##vector-ref _g41884_ 0))
                             (_tl2039620418_ (##vector-ref _g41884_ 1)))
                         (if (gx#stx-null? _tl2039620418_)
                             (letrec ((_loop2039720421_
                                       (lambda (_hd2039520425_
                                                _super-id2040120428_)
                                         (if (gx#stx-pair? _hd2039520425_)
                                             (let ((_e2039820431_
                                                    (gx#syntax-e
                                                     _hd2039520425_)))
                                               (let ((_lp-hd2039920435_
                                                      (##car _e2039820431_))
                                                     (_lp-tl2040020438_
                                                      (##cdr _e2039820431_)))
                                                 (_loop2039720421_
                                                  _lp-tl2040020438_
                                                  (cons _lp-hd2039920435_
                                                        _super-id2040120428_))))
                                             (let ((_super-id2040220441_
                                                    (reverse _super-id2040120428_)))
                                               ((lambda (_L20445_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (foldr (lambda (_g2046020463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2046120466_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g2046020463_ '()))
                                 _g2046120466_))
                         '()
                         _L20445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _super-id2040220441_))))))
                               (_loop2039720421_ _target2039420415_ '()))
                             (_g2039120408_ _g2039220412_)))))
                   (_g2039120408_ _g2039220412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2039020469_ _L19551_)))))))
                                  _g2004420055_))))
                         (_g2004220473_
                          (if _struct?19381_
                              (gx#datum->syntax '#f 'make-extended-struct-info)
                              (gx#datum->syntax
                               '#f
                               'make-extended-class-info))))))
                   _g2001620027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2001420477_
                                                   (_wrap19383_
                                                    (cons _L19408_
                                                          (cons _L19467_
                                                                (cons _L19551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L19495_
                                    (cons _L19523_
                                          (foldr (lambda (_g2048020483_
                                                          _g2048120486_)
                                                   (cons _g2048020483_
                                                         _g2048120486_))
                                                 '()
                                                 _L19998_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _type-body1995519994_))))))
                           (_loop1995019974_ _target1994719968_ '()))
                         (_g1994419961_ _g1994519965_)))))
               (_g1994419961_ _g1994519965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1994320489_
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _type-unchecked19941_
                                       _type-plist19926_)
                                _type-ctor19842_)
                         _type-name19812_)
                  _type-id19827_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _type-attr19805_)))))
                                     _setf1971719756_))))))
                    (_loop1971219736_ _target1970919730_ '()))
                  (_g1970619723_ _g1970719727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1970619723_
                                                 _g1970719727_)))))
                                    (_g1970520493_
                                     (gx#stx-map
                                      (lambda (_g2049620498_)
                                        (_make-id19385_
                                         _name19387_
                                         '"-"
                                         _g2049620498_
                                         '"-set!"))
                                      _els19379_)))))
                              _getf1964619685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1964119665_
                                                      _target1963819659_
                                                      '()))
                                                   (_g1963519652_
                                                    _g1963619656_)))))
                                         (_g1963519652_ _g1963619656_)))))
                             (_g1963420502_
                              (gx#stx-map
                               (lambda (_g2050520507_)
                                 (_make-id19385_
                                  _name19387_
                                  '"-"
                                  _g2050520507_))
                               _els19379_)))))
                       _attr1957519614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1957019594_
                                               _target1956719588_
                                               '()))
                                            (_g1956419581_ _g1956519585_)))))
                                  (_g1956419581_ _g1956519585_)))))
                      (_g1956320511_ _els19379_))))
                _g1953719548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1953520515_
                                                (if _struct?19381_
                                                    (if _super19390_
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19390_)
                                                        '#f)
                                                    (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19390_))))))
                                         _g1950919520_))))
                                (_g1950720519_
                                 (_make-id19385_ _name19387_ '"?")))))
                          _g1948119492_))))
                 (_g1947920523_ (_make-id19385_ '"make-" _name19387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1945319464_))))
                                          (_g1945120527_
                                           (_make-id19385_
                                            _name19387_
                                            '"::t")))))
                                    _g1942519436_))))
                           (_g1942320531_ _id19377_))))
                     _g1939419405_))))
            (_g1939220535_
             (if _struct?19381_
                 (gx#datum->syntax '#f 'defstruct-type)
                 (gx#datum->syntax '#f 'defclass-type)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20863_)
        (letrec ((_generate20866_
                  (lambda (_hd20950_ _fields20952_ _body20953_)
                    (let* ((___stx3881338814_ _hd20950_)
                           (_g2095620971_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3881338814_))))
                      (let ((___kont3881638817_
                             (lambda (_L21009_ _L21011_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20863_
                                _L21011_
                                _L21009_
                                _fields20952_
                                _body20953_
                                '#t)))
                            (___kont3881838819_
                             (lambda ()
                               (if (gx#identifier? _hd20950_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20863_
                                    _hd20950_
                                    '#f
                                    _fields20952_
                                    _body20953_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20863_
                                    _hd20950_)))))
                        (let ((___match3883438835_
                               (lambda (_e2096020989_
                                        _hd2096120993_
                                        _tl2096220996_
                                        _e2096320999_
                                        _hd2096421003_
                                        _tl2096521006_)
                                 (let ((_L21009_ _hd2096421003_)
                                       (_L21011_ _hd2096120993_))
                                   (if (and (gx#identifier? _L21011_)
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                             _L21009_))
                                       (___kont3881638817_ _L21009_ _L21011_)
                                       (___kont3881838819_))))))
                          (if (gx#stx-pair? ___stx3881338814_)
                              (let ((_e2096020989_
                                     (gx#syntax-e ___stx3881338814_)))
                                (let ((_tl2096220996_ (##cdr _e2096020989_))
                                      (_hd2096120993_ (##car _e2096020989_)))
                                  (if (gx#stx-pair? _tl2096220996_)
                                      (let ((_e2096320999_
                                             (gx#syntax-e _tl2096220996_)))
                                        (let ((_tl2096521006_
                                               (##cdr _e2096320999_))
                                              (_hd2096421003_
                                               (##car _e2096320999_)))
                                          (if (gx#stx-null? _tl2096521006_)
                                              (___match3883438835_
                                               _e2096020989_
                                               _hd2096120993_
                                               _tl2096220996_
                                               _e2096320999_
                                               _hd2096421003_
                                               _tl2096521006_)
                                              (___kont3881838819_))))
                                      (___kont3881838819_))))
                              (___kont3881838819_))))))))
          (let* ((_g2086920888_
                  (lambda (_g2087020884_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2087020884_)))
                 (_g2086820946_
                  (lambda (_g2087020892_)
                    (if (gx#stx-pair? _g2087020892_)
                        (let ((_e2087420895_ (gx#syntax-e _g2087020892_)))
                          (let ((_hd2087520899_ (##car _e2087420895_))
                                (_tl2087620902_ (##cdr _e2087420895_)))
                            (if (gx#stx-pair? _tl2087620902_)
                                (let ((_e2087720905_
                                       (gx#syntax-e _tl2087620902_)))
                                  (let ((_hd2087820909_ (##car _e2087720905_))
                                        (_tl2087920912_ (##cdr _e2087720905_)))
                                    (if (gx#stx-pair? _tl2087920912_)
                                        (let ((_e2088020915_
                                               (gx#syntax-e _tl2087920912_)))
                                          (let ((_hd2088120919_
                                                 (##car _e2088020915_))
                                                (_tl2088220922_
                                                 (##cdr _e2088020915_)))
                                            ((lambda (_L20925_
                                                      _L20927_
                                                      _L20928_)
                                               (if (and (gx#identifier-list?
                                                         _L20927_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20925_))
                                                   (_generate20866_
                                                    _L20928_
                                                    _L20927_
                                                    _L20925_)
                                                   (_g2086920888_
                                                    _g2087020892_)))
                                             _tl2088220922_
                                             _hd2088120919_
                                             _hd2087820909_)))
                                        (_g2086920888_ _g2087020892_))))
                                (_g2086920888_ _g2087020892_))))
                        (_g2086920888_ _g2087020892_)))))
            (_g2086820946_ _stx20863_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx21030_)
        (letrec ((_generate21033_
                  (lambda (_hd21117_ _slots21119_ _body21120_)
                    (let* ((___stx3883738838_ _hd21117_)
                           (_g2112321135_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3883738838_))))
                      (let ((___kont3884038841_
                             (lambda (_L21163_ _L21165_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx21030_
                                _L21165_
                                (gx#syntax->list _L21163_)
                                _slots21119_
                                _body21120_
                                '#f)))
                            (___kont3884238843_
                             (lambda ()
                               (if (gx#identifier? _hd21117_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx21030_
                                    _hd21117_
                                    '()
                                    _slots21119_
                                    _body21120_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx21030_
                                    _hd21117_)))))
                        (let ((___match3885038851_
                               (lambda (_e2112721153_
                                        _hd2112821157_
                                        _tl2112921160_)
                                 (let ((_L21163_ _tl2112921160_)
                                       (_L21165_ _hd2112821157_))
                                   (if (and (gx#stx-list? _L21163_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21163_))
                                       (___kont3884038841_ _L21163_ _L21165_)
                                       (___kont3884238843_))))))
                          (if (gx#stx-pair? ___stx3883738838_)
                              (let ((_e2112721153_
                                     (gx#syntax-e ___stx3883738838_)))
                                (let ((_tl2112921160_ (##cdr _e2112721153_))
                                      (_hd2112821157_ (##car _e2112721153_)))
                                  (___match3885038851_
                                   _e2112721153_
                                   _hd2112821157_
                                   _tl2112921160_)))
                              (___kont3884238843_))))))))
          (let* ((_g2103621055_
                  (lambda (_g2103721051_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2103721051_)))
                 (_g2103521113_
                  (lambda (_g2103721059_)
                    (if (gx#stx-pair? _g2103721059_)
                        (let ((_e2104121062_ (gx#syntax-e _g2103721059_)))
                          (let ((_hd2104221066_ (##car _e2104121062_))
                                (_tl2104321069_ (##cdr _e2104121062_)))
                            (if (gx#stx-pair? _tl2104321069_)
                                (let ((_e2104421072_
                                       (gx#syntax-e _tl2104321069_)))
                                  (let ((_hd2104521076_ (##car _e2104421072_))
                                        (_tl2104621079_ (##cdr _e2104421072_)))
                                    (if (gx#stx-pair? _tl2104621079_)
                                        (let ((_e2104721082_
                                               (gx#syntax-e _tl2104621079_)))
                                          (let ((_hd2104821086_
                                                 (##car _e2104721082_))
                                                (_tl2104921089_
                                                 (##cdr _e2104721082_)))
                                            ((lambda (_L21092_
                                                      _L21094_
                                                      _L21095_)
                                               (if (and (gx#identifier-list?
                                                         _L21094_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L21092_))
                                                   (_generate21033_
                                                    _L21095_
                                                    _L21094_
                                                    _L21092_)
                                                   (_g2103621055_
                                                    _g2103721059_)))
                                             _tl2104921089_
                                             _hd2104821086_
                                             _hd2104521076_)))
                                        (_g2103621055_ _g2103721059_))))
                                (_g2103621055_ _g2103721059_))))
                        (_g2103621055_ _g2103721059_)))))
            (_g2103521113_ _stx21030_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21182_)
        (letrec ((_wrap21185_
                  (lambda (_e-stx21522_)
                    (gx#stx-wrap-source
                     _e-stx21522_
                     (gx#stx-source _stx21182_))))
                 (_method-opt?21187_
                  (lambda (_x21519_) (memq (gx#stx-e _x21519_) '(rebind:)))))
          (let* ((_g2118921218_
                  (lambda (_g2119021214_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2119021214_)))
                 (_g2118821515_
                  (lambda (_g2119021222_)
                    (if (gx#stx-pair? _g2119021222_)
                        (let ((_e2119521225_ (gx#syntax-e _g2119021222_)))
                          (let ((_hd2119621229_ (##car _e2119521225_))
                                (_tl2119721232_ (##cdr _e2119521225_)))
                            (if (gx#stx-pair? _tl2119721232_)
                                (let ((_e2119821235_
                                       (gx#syntax-e _tl2119721232_)))
                                  (let ((_hd2119921239_ (##car _e2119821235_))
                                        (_tl2120021242_ (##cdr _e2119821235_)))
                                    (if (gx#stx-pair? _hd2119921239_)
                                        (let ((_e2120121245_
                                               (gx#syntax-e _hd2119921239_)))
                                          (let ((_hd2120221249_
                                                 (##car _e2120121245_))
                                                (_tl2120321252_
                                                 (##cdr _e2120121245_)))
                                            (if (gx#identifier? _hd2120221249_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41886_|
                                                     _hd2120221249_)
                                                    (if (gx#stx-pair?
                                                         _tl2120321252_)
                                                        (let ((_e2120421255_
                                                               (gx#syntax-e
                                                                _tl2120321252_)))
                                                          (let ((_hd2120521259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2120421255_))
                        (_tl2120621262_ (##cdr _e2120421255_)))
                    (if (gx#stx-pair? _tl2120621262_)
                        (let ((_e2120721265_ (gx#syntax-e _tl2120621262_)))
                          (let ((_hd2120821269_ (##car _e2120721265_))
                                (_tl2120921272_ (##cdr _e2120721265_)))
                            (if (gx#stx-null? _tl2120921272_)
                                (if (gx#stx-pair? _tl2120021242_)
                                    (let ((_e2121021275_
                                           (gx#syntax-e _tl2120021242_)))
                                      (let ((_hd2121121279_
                                             (##car _e2121021275_))
                                            (_tl2121221282_
                                             (##cdr _e2121021275_)))
                                        ((lambda (_L21285_
                                                  _L21287_
                                                  _L21288_
                                                  _L21289_)
                                           (if (and (gx#identifier? _L21289_)
                                                    (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                     _L21288_)
                                                    (gx#stx-plist?
                                                     _L21285_
                                                     _method-opt?21187_))
                                               (let* ((_klass21314_
                                                       (gx#syntax-local-value
                                                        _L21288_))
                                                      (_rebind?21317_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21285_))
                                                           '#t
                                                           '#f))
                                                      (_g2132021328_
                                                       (lambda (_g2132121324_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2132121324_)))
                                                      (_g2131921511_
                                                       (lambda (_g2132121332_)
                                                         ((lambda (_L21335_)
                                                            (let ()
                                                              (let* ((_g2134921357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2135021353_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2135021353_)))
                             (_g2134821507_
                              (lambda (_g2135021361_)
                                ((lambda (_L21364_)
                                   (let ()
                                     (let* ((_g2137721385_
                                             (lambda (_g2137821381_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2137821381_)))
                                            (_g2137621503_
                                             (lambda (_g2137821389_)
                                               ((lambda (_L21392_)
                                                  (let ()
                                                    (let* ((_g2140521413_
                                                            (lambda (_g2140621409_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2140621409_)))
                                                           (_g2140421499_
                                                            (lambda (_g2140621417_)
                                                              ((lambda (_L21420_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2143321441_
                                   (lambda (_g2143421437_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2143421437_)))
                                  (_g2143221495_
                                   (lambda (_g2143421445_)
                                     ((lambda (_L21448_)
                                        (let ()
                                          (let* ((_g2146121469_
                                                  (lambda (_g2146221465_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2146221465_)))
                                                 (_g2146021491_
                                                  (lambda (_g2146221473_)
                                                    ((lambda (_L21476_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21185_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21420_ (cons _L21476_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2146221473_))))
                                            (_g2146021491_
                                             (_wrap21185_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21335_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21289_ '()))
                        (cons _L21364_ (cons _L21448_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2143421445_))))
                             (_g2143221495_ _rebind?21317_))))
                       _g2140621417_))))
              (_g2140421499_
               (_wrap21185_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21364_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21392_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L21335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21289_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21287_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2137821389_))))
                                       (_g2137621503_
                                        (gx#stx-identifier
                                         _L21289_
                                         '@next-method)))))
                                 _g2135021361_))))
                        (_g2134821507_
                         (gx#stx-identifier
                          _L21289_
                          _L21288_
                          '"::"
                          _L21289_)))))
                  _g2132121332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2131921511_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass21314_)))
                                               (if (not (gx#identifier?
                                                         _L21289_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21182_
                                                    _L21289_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L21288_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21182_
                                                        _L21288_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21182_)))))
                                         _tl2121221282_
                                         _hd2121121279_
                                         _hd2120821269_
                                         _hd2120521259_)))
                                    (_g2118921218_ _g2119021222_))
                                (_g2118921218_ _g2119021222_))))
                        (_g2118921218_ _g2119021222_))))
                (_g2118921218_ _g2119021222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2118921218_
                                                     _g2119021222_))
                                                (_g2118921218_
                                                 _g2119021222_))))
                                        (_g2118921218_ _g2119021222_))))
                                (_g2118921218_ _g2119021222_))))
                        (_g2118921218_ _g2119021222_)))))
            (_g2118821515_ _stx21182_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21525_)
        (let* ((___stx3885338854_ _$stx21525_)
               (_g2153021579_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3885338854_))))
          (let ((___kont3885638857_
                 (lambda (_L21745_ _L21747_ _L21748_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21747_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21748_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2177521778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2177621781_)
                        (cons _g2177521778_ _g2177621781_))
                      '()
                      _L21745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3886038861_
                 (lambda (_L21646_ _L21648_ _L21649_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21648_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21649_ '()))
                                     (foldr (lambda (_g2166921672_
                                                     _g2167021675_)
                                              (cons _g2166921672_
                                                    _g2167021675_))
                                            '()
                                            _L21646_)))))))
            (let* ((___match3891638917_
                    (lambda (_e2155621586_
                             _hd2155721590_
                             _tl2155821593_
                             _e2155921596_
                             _hd2156021600_
                             _tl2156121603_
                             _e2156221606_
                             _hd2156321610_
                             _tl2156421613_
                             ___splice3886238863_
                             _target2156521616_
                             _tl2156721619_)
                      (letrec ((_loop2156821622_
                                (lambda (_hd2156621626_ _arg2157221629_)
                                  (if (gx#stx-pair? _hd2156621626_)
                                      (let ((_e2156921632_
                                             (gx#syntax-e _hd2156621626_)))
                                        (let ((_lp-tl2157121639_
                                               (##cdr _e2156921632_))
                                              (_lp-hd2157021636_
                                               (##car _e2156921632_)))
                                          (_loop2156821622_
                                           _lp-tl2157121639_
                                           (cons _lp-hd2157021636_
                                                 _arg2157221629_))))
                                      (let ((_arg2157321642_
                                             (reverse _arg2157221629_)))
                                        (let ((_L21646_ _arg2157321642_)
                                              (_L21648_ _hd2156321610_)
                                              (_L21649_ _hd2156021600_))
                                          (if (gx#identifier? _L21649_)
                                              (___kont3886038861_
                                               _L21646_
                                               _L21648_
                                               _L21649_)
                                              (_g2153021579_))))))))
                        (_loop2156821622_ _target2156521616_ '()))))
                   (___match3889038891_
                    (lambda (_e2153521685_
                             _hd2153621689_
                             _tl2153721692_
                             _e2153821695_
                             _hd2153921699_
                             _tl2154021702_
                             _e2154121705_
                             _hd2154221709_
                             _tl2154321712_
                             ___splice3885838859_
                             _target2154421715_
                             _tl2154621718_)
                      (letrec ((_loop2154721721_
                                (lambda (_hd2154521725_ _arg2155121728_)
                                  (if (gx#stx-pair? _hd2154521725_)
                                      (let ((_e2154821731_
                                             (gx#syntax-e _hd2154521725_)))
                                        (let ((_lp-tl2155021738_
                                               (##cdr _e2154821731_))
                                              (_lp-hd2154921735_
                                               (##car _e2154821731_)))
                                          (_loop2154721721_
                                           _lp-tl2155021738_
                                           (cons _lp-hd2154921735_
                                                 _arg2155121728_))))
                                      (let ((_arg2155221741_
                                             (reverse _arg2155121728_)))
                                        (let ((_L21745_ _arg2155221741_)
                                              (_L21747_ _hd2154221709_)
                                              (_L21748_ _hd2153921699_))
                                          (if (and (gx#identifier? _L21748_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2176721770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2176821773_)
                     (cons _g2176721770_ _g2176821773_))
                   '()
                   _L21745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3885638857_
                                               _L21745_
                                               _L21747_
                                               _L21748_)
                                              (___match3891638917_
                                               _e2153521685_
                                               _hd2153621689_
                                               _tl2153721692_
                                               _e2153821695_
                                               _hd2153921699_
                                               _tl2154021702_
                                               _e2154121705_
                                               _hd2154221709_
                                               _tl2154321712_
                                               ___splice3885838859_
                                               _target2154421715_
                                               _tl2154621718_))))))))
                        (_loop2154721721_ _target2154421715_ '())))))
              (if (gx#stx-pair? ___stx3885338854_)
                  (let ((_e2153521685_ (gx#syntax-e ___stx3885338854_)))
                    (let ((_tl2153721692_ (##cdr _e2153521685_))
                          (_hd2153621689_ (##car _e2153521685_)))
                      (if (gx#stx-pair? _tl2153721692_)
                          (let ((_e2153821695_ (gx#syntax-e _tl2153721692_)))
                            (let ((_tl2154021702_ (##cdr _e2153821695_))
                                  (_hd2153921699_ (##car _e2153821695_)))
                              (if (gx#stx-pair? _tl2154021702_)
                                  (let ((_e2154121705_
                                         (gx#syntax-e _tl2154021702_)))
                                    (let ((_tl2154321712_
                                           (##cdr _e2154121705_))
                                          (_hd2154221709_
                                           (##car _e2154121705_)))
                                      (if (gx#stx-pair/null? _tl2154321712_)
                                          (let ((___splice3885838859_
                                                 (gx#syntax-split-splice
                                                  _tl2154321712_
                                                  '0)))
                                            (let ((_tl2154621718_
                                                   (##vector-ref
                                                    ___splice3885838859_
                                                    '1))
                                                  (_target2154421715_
                                                   (##vector-ref
                                                    ___splice3885838859_
                                                    '0)))
                                              (if (gx#stx-null? _tl2154621718_)
                                                  (___match3889038891_
                                                   _e2153521685_
                                                   _hd2153621689_
                                                   _tl2153721692_
                                                   _e2153821695_
                                                   _hd2153921699_
                                                   _tl2154021702_
                                                   _e2154121705_
                                                   _hd2154221709_
                                                   _tl2154321712_
                                                   ___splice3885838859_
                                                   _target2154421715_
                                                   _tl2154621718_)
                                                  (_g2153021579_))))
                                          (_g2153021579_))))
                                  (_g2153021579_))))
                          (_g2153021579_))))
                  (_g2153021579_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21790_)
        (let* ((___stx3891938920_ _$stx21790_)
               (_g2179521835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3891938920_))))
          (let ((___kont3892238923_
                 (lambda (_L21973_ _L21975_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21975_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21973_ '()))
                                     '())))))
                (___kont3892438925_
                 (lambda (_L21902_ _L21904_ _L21905_ _L21906_)
                   (cons _L21906_
                         (cons (cons _L21906_
                                     (cons _L21905_ (cons _L21904_ '())))
                               (foldr (lambda (_g2192721930_ _g2192821933_)
                                        (cons _g2192721930_ _g2192821933_))
                                      '()
                                      _L21902_))))))
            (let* ((___match3897438975_
                    (lambda (_e2181221842_
                             _hd2181321846_
                             _tl2181421849_
                             _e2181521852_
                             _hd2181621856_
                             _tl2181721859_
                             _e2181821862_
                             _hd2181921866_
                             _tl2182021869_
                             ___splice3892638927_
                             _target2182121872_
                             _tl2182321875_)
                      (letrec ((_loop2182421878_
                                (lambda (_hd2182221882_ _rest2182821885_)
                                  (if (gx#stx-pair? _hd2182221882_)
                                      (let ((_e2182521888_
                                             (gx#syntax-e _hd2182221882_)))
                                        (let ((_lp-tl2182721895_
                                               (##cdr _e2182521888_))
                                              (_lp-hd2182621892_
                                               (##car _e2182521888_)))
                                          (_loop2182421878_
                                           _lp-tl2182721895_
                                           (cons _lp-hd2182621892_
                                                 _rest2182821885_))))
                                      (let ((_rest2182921898_
                                             (reverse _rest2182821885_)))
                                        (___kont3892438925_
                                         _rest2182921898_
                                         _hd2181921866_
                                         _hd2181621856_
                                         _hd2181321846_))))))
                        (_loop2182421878_ _target2182121872_ '()))))
                   (___match3894838949_
                    (lambda (_e2179921943_
                             _hd2180021947_
                             _tl2180121950_
                             _e2180221953_
                             _hd2180321957_
                             _tl2180421960_
                             _e2180521963_
                             _hd2180621967_
                             _tl2180721970_)
                      (let ((_L21973_ _hd2180621967_)
                            (_L21975_ _hd2180321957_))
                        (if (gx#identifier? _L21973_)
                            (___kont3892238923_ _L21973_ _L21975_)
                            (if (gx#stx-pair/null? _tl2180721970_)
                                (let ((___splice3892638927_
                                       (gx#syntax-split-splice
                                        _tl2180721970_
                                        '0)))
                                  (let ((_tl2182321875_
                                         (##vector-ref
                                          ___splice3892638927_
                                          '1))
                                        (_target2182121872_
                                         (##vector-ref
                                          ___splice3892638927_
                                          '0)))
                                    (if (gx#stx-null? _tl2182321875_)
                                        (___match3897438975_
                                         _e2179921943_
                                         _hd2180021947_
                                         _tl2180121950_
                                         _e2180221953_
                                         _hd2180321957_
                                         _tl2180421960_
                                         _e2180521963_
                                         _hd2180621967_
                                         _tl2180721970_
                                         ___splice3892638927_
                                         _target2182121872_
                                         _tl2182321875_)
                                        (_g2179521835_))))
                                (_g2179521835_)))))))
              (if (gx#stx-pair? ___stx3891938920_)
                  (let ((_e2179921943_ (gx#syntax-e ___stx3891938920_)))
                    (let ((_tl2180121950_ (##cdr _e2179921943_))
                          (_hd2180021947_ (##car _e2179921943_)))
                      (if (gx#stx-pair? _tl2180121950_)
                          (let ((_e2180221953_ (gx#syntax-e _tl2180121950_)))
                            (let ((_tl2180421960_ (##cdr _e2180221953_))
                                  (_hd2180321957_ (##car _e2180221953_)))
                              (if (gx#stx-pair? _tl2180421960_)
                                  (let ((_e2180521963_
                                         (gx#syntax-e _tl2180421960_)))
                                    (let ((_tl2180721970_
                                           (##cdr _e2180521963_))
                                          (_hd2180621967_
                                           (##car _e2180521963_)))
                                      (if (gx#stx-null? _tl2180721970_)
                                          (___match3894838949_
                                           _e2179921943_
                                           _hd2180021947_
                                           _tl2180121950_
                                           _e2180221953_
                                           _hd2180321957_
                                           _tl2180421960_
                                           _e2180521963_
                                           _hd2180621967_
                                           _tl2180721970_)
                                          (if (gx#stx-pair/null?
                                               _tl2180721970_)
                                              (let ((___splice3892638927_
                                                     (gx#syntax-split-splice
                                                      _tl2180721970_
                                                      '0)))
                                                (let ((_tl2182321875_
                                                       (##vector-ref
                                                        ___splice3892638927_
                                                        '1))
                                                      (_target2182121872_
                                                       (##vector-ref
                                                        ___splice3892638927_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2182321875_)
                                                      (___match3897438975_
                                                       _e2179921943_
                                                       _hd2180021947_
                                                       _tl2180121950_
                                                       _e2180221953_
                                                       _hd2180321957_
                                                       _tl2180421960_
                                                       _e2180521963_
                                                       _hd2180621967_
                                                       _tl2180721970_
                                                       ___splice3892638927_
                                                       _target2182121872_
                                                       _tl2182321875_)
                                                      (_g2179521835_))))
                                              (_g2179521835_)))))
                                  (_g2179521835_))))
                          (_g2179521835_))))
                  (_g2179521835_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21995_)
        (let* ((___stx3897738978_ _$stx21995_)
               (_g2200022052_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3897738978_))))
          (let ((___kont3898038981_
                 (lambda (_L22228_ _L22230_ _L22231_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22231_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22230_ '()))
                                     (cons _L22228_ '()))))))
                (___kont3898238983_
                 (lambda (_L22139_
                          _L22141_
                          _L22142_
                          _L22143_
                          _L22144_
                          _L22145_)
                   (cons _L22145_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22144_
                                           (cons _L22143_
                                                 (foldr (lambda (_g2217222175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2217322178_)
                  (cons _g2217222175_ _g2217322178_))
                '()
                _L22142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22141_ (cons _L22139_ '())))))))
            (let* ((___match3905239053_
                    (lambda (_e2202322059_
                             _hd2202422063_
                             _tl2202522066_
                             _e2202622069_
                             _hd2202722073_
                             _tl2202822076_
                             _e2202922079_
                             _hd2203022083_
                             _tl2203122086_
                             ___splice3898438985_
                             _target2203222089_
                             _tl2203422092_
                             _e2204122095_
                             _hd2204222099_
                             _tl2204322102_
                             _e2204422105_
                             _hd2204522109_
                             _tl2204622112_)
                      (letrec ((_loop2203522115_
                                (lambda (_hd2203322119_ _path2203922122_)
                                  (if (gx#stx-pair? _hd2203322119_)
                                      (let ((_e2203622125_
                                             (gx#syntax-e _hd2203322119_)))
                                        (let ((_lp-tl2203822132_
                                               (##cdr _e2203622125_))
                                              (_lp-hd2203722129_
                                               (##car _e2203622125_)))
                                          (_loop2203522115_
                                           _lp-tl2203822132_
                                           (cons _lp-hd2203722129_
                                                 _path2203922122_))))
                                      (let ((_path2204022135_
                                             (reverse _path2203922122_)))
                                        (___kont3898238983_
                                         _hd2204522109_
                                         _hd2204222099_
                                         _path2204022135_
                                         _hd2203022083_
                                         _hd2202722073_
                                         _hd2202422063_))))))
                        (_loop2203522115_ _target2203222089_ '()))))
                   (___match3901239013_
                    (lambda (_e2200522188_
                             _hd2200622192_
                             _tl2200722195_
                             _e2200822198_
                             _hd2200922202_
                             _tl2201022205_
                             _e2201122208_
                             _hd2201222212_
                             _tl2201322215_
                             _e2201422218_
                             _hd2201522222_
                             _tl2201622225_)
                      (let ((_L22228_ _hd2201522222_)
                            (_L22230_ _hd2201222212_)
                            (_L22231_ _hd2200922202_))
                        (if (gx#identifier? _L22230_)
                            (___kont3898038981_ _L22228_ _L22230_ _L22231_)
                            (if (gx#stx-pair/null? _tl2201322215_)
                                (if (fx>= (gx#stx-length _tl2201322215_) '2)
                                    (let ((___splice3898438985_
                                           (gx#syntax-split-splice
                                            _tl2201322215_
                                            '2)))
                                      (let ((_tl2203422092_
                                             (##vector-ref
                                              ___splice3898438985_
                                              '1))
                                            (_target2203222089_
                                             (##vector-ref
                                              ___splice3898438985_
                                              '0)))
                                        (if (gx#stx-pair? _tl2203422092_)
                                            (let ((_e2204122095_
                                                   (gx#syntax-e
                                                    _tl2203422092_)))
                                              (let ((_tl2204322102_
                                                     (##cdr _e2204122095_))
                                                    (_hd2204222099_
                                                     (##car _e2204122095_)))
                                                (if (gx#stx-pair?
                                                     _tl2204322102_)
                                                    (let ((_e2204422105_
                                                           (gx#syntax-e
                                                            _tl2204322102_)))
                                                      (let ((_tl2204622112_
                                                             (##cdr _e2204422105_))
                                                            (_hd2204522109_
                                                             (##car _e2204422105_)))
                                                        (if (gx#stx-null?
                                                             _tl2204622112_)
                                                            (___match3905239053_
                                                             _e2200522188_
                                                             _hd2200622192_
                                                             _tl2200722195_
                                                             _e2200822198_
                                                             _hd2200922202_
                                                             _tl2201022205_
                                                             _e2201122208_
                                                             _hd2201222212_
                                                             _tl2201322215_
                                                             ___splice3898438985_
                                                             _target2203222089_
                                                             _tl2203422092_
                                                             _e2204122095_
                                                             _hd2204222099_
                                                             _tl2204322102_
                                                             _e2204422105_
                                                             _hd2204522109_
                                                             _tl2204622112_)
                                                            (_g2200022052_))))
                                                    (_g2200022052_))))
                                            (_g2200022052_))))
                                    (_g2200022052_))
                                (_g2200022052_)))))))
              (if (gx#stx-pair? ___stx3897738978_)
                  (let ((_e2200522188_ (gx#syntax-e ___stx3897738978_)))
                    (let ((_tl2200722195_ (##cdr _e2200522188_))
                          (_hd2200622192_ (##car _e2200522188_)))
                      (if (gx#stx-pair? _tl2200722195_)
                          (let ((_e2200822198_ (gx#syntax-e _tl2200722195_)))
                            (let ((_tl2201022205_ (##cdr _e2200822198_))
                                  (_hd2200922202_ (##car _e2200822198_)))
                              (if (gx#stx-pair? _tl2201022205_)
                                  (let ((_e2201122208_
                                         (gx#syntax-e _tl2201022205_)))
                                    (let ((_tl2201322215_
                                           (##cdr _e2201122208_))
                                          (_hd2201222212_
                                           (##car _e2201122208_)))
                                      (if (gx#stx-pair? _tl2201322215_)
                                          (let ((_e2201422218_
                                                 (gx#syntax-e _tl2201322215_)))
                                            (let ((_tl2201622225_
                                                   (##cdr _e2201422218_))
                                                  (_hd2201522222_
                                                   (##car _e2201422218_)))
                                              (if (gx#stx-null? _tl2201622225_)
                                                  (___match3901239013_
                                                   _e2200522188_
                                                   _hd2200622192_
                                                   _tl2200722195_
                                                   _e2200822198_
                                                   _hd2200922202_
                                                   _tl2201022205_
                                                   _e2201122208_
                                                   _hd2201222212_
                                                   _tl2201322215_
                                                   _e2201422218_
                                                   _hd2201522222_
                                                   _tl2201622225_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2201322215_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2201322215_)
                        '2)
                  (let ((___splice3898438985_
                         (gx#syntax-split-splice _tl2201322215_ '2)))
                    (let ((_tl2203422092_
                           (##vector-ref ___splice3898438985_ '1))
                          (_target2203222089_
                           (##vector-ref ___splice3898438985_ '0)))
                      (if (gx#stx-pair? _tl2203422092_)
                          (let ((_e2204122095_ (gx#syntax-e _tl2203422092_)))
                            (let ((_tl2204322102_ (##cdr _e2204122095_))
                                  (_hd2204222099_ (##car _e2204122095_)))
                              (if (gx#stx-pair? _tl2204322102_)
                                  (let ((_e2204422105_
                                         (gx#syntax-e _tl2204322102_)))
                                    (let ((_tl2204622112_
                                           (##cdr _e2204422105_))
                                          (_hd2204522109_
                                           (##car _e2204422105_)))
                                      (if (gx#stx-null? _tl2204622112_)
                                          (___match3905239053_
                                           _e2200522188_
                                           _hd2200622192_
                                           _tl2200722195_
                                           _e2200822198_
                                           _hd2200922202_
                                           _tl2201022205_
                                           _e2201122208_
                                           _hd2201222212_
                                           _tl2201322215_
                                           ___splice3898438985_
                                           _target2203222089_
                                           _tl2203422092_
                                           _e2204122095_
                                           _hd2204222099_
                                           _tl2204322102_
                                           _e2204422105_
                                           _hd2204522109_
                                           _tl2204622112_)
                                          (_g2200022052_))))
                                  (_g2200022052_))))
                          (_g2200022052_))))
                  (_g2200022052_))
              (_g2200022052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2201322215_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2201322215_)
                                                        '2)
                                                  (let ((___splice3898438985_
                                                         (gx#syntax-split-splice
                                                          _tl2201322215_
                                                          '2)))
                                                    (let ((_tl2203422092_
                                                           (##vector-ref
                                                            ___splice3898438985_
                                                            '1))
                                                          (_target2203222089_
                                                           (##vector-ref
                                                            ___splice3898438985_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2203422092_)
                                                          (let ((_e2204122095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2203422092_)))
                    (let ((_tl2204322102_ (##cdr _e2204122095_))
                          (_hd2204222099_ (##car _e2204122095_)))
                      (if (gx#stx-pair? _tl2204322102_)
                          (let ((_e2204422105_ (gx#syntax-e _tl2204322102_)))
                            (let ((_tl2204622112_ (##cdr _e2204422105_))
                                  (_hd2204522109_ (##car _e2204422105_)))
                              (if (gx#stx-null? _tl2204622112_)
                                  (___match3905239053_
                                   _e2200522188_
                                   _hd2200622192_
                                   _tl2200722195_
                                   _e2200822198_
                                   _hd2200922202_
                                   _tl2201022205_
                                   _e2201122208_
                                   _hd2201222212_
                                   _tl2201322215_
                                   ___splice3898438985_
                                   _target2203222089_
                                   _tl2203422092_
                                   _e2204122095_
                                   _hd2204222099_
                                   _tl2204322102_
                                   _e2204422105_
                                   _hd2204522109_
                                   _tl2204622112_)
                                  (_g2200022052_))))
                          (_g2200022052_))))
                  (_g2200022052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2200022052_))
                                              (_g2200022052_)))))
                                  (_g2200022052_))))
                          (_g2200022052_))))
                  (_g2200022052_)))))))))
