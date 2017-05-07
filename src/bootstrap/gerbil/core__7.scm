(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g28397_|
    (gx#core-quote-syntax '@method))
  (begin
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args15062_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15062_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args15058_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15058_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args15054_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15054_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
      (lambda _$args15050_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15050_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args15046_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15046_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args15042_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15042_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1501415028_
             (lambda (_stx15016_ _is?15018_)
               (if (gx#identifier? _stx15016_)
                   (let ((_e1501915021_
                          (gx#syntax-local-value _stx15016_ false)))
                     (if _e1501915021_
                         (let ((_e15025_ _e1501915021_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15025_)
                               (_is?15018_ _e15025_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g28385_
          (let ((_g28384_ (length _g28385_)))
            (cond ((fx= _g28384_ 1)
                   (apply (lambda (_stx15032_)
                            (let ((_is?15035_ true))
                              (_opt-lambda1501415028_ _stx15032_ _is?15035_)))
                          _g28385_))
                  ((fx= _g28384_ 2)
                   (apply (lambda (_stx15038_ _is?15040_)
                            (_opt-lambda1501415028_ _stx15038_ _is?15040_))
                          _g28385_))
                  (else (error "No clause matching arguments" _g28385_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15012_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15012_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15009_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15009_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15003_)
        (if _id15003_
            (let ((_info15006_ (gx#syntax-local-value _id15003_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15006_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15006_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx14994_)
        (let ((_body-opt?14997_
               (lambda (_key15000_)
                 (memq (gx#stx-e _key15000_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx14994_ _body-opt?14997_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx13867_
               _id13869_
               _super-ref13870_
               _els13871_
               _body13872_
               _struct?13873_)
        (let ((_wrap13875_
               (lambda (_e-stx14991_)
                 (gx#stx-wrap-source
                  _e-stx14991_
                  (gx#stx-source _stx13867_)))))
          (let ((_make-id13877_
                 (if (uninterned-symbol? (gx#stx-e _id13869_))
                     (lambda _g28396_ (gx#genident _id13869_))
                     (lambda _args14988_
                       (apply gx#stx-identifier _id13869_ _args14988_)))))
            (begin
              (gx#check-duplicate-identifiers _els13871_ _stx13867_)
              (let ((_name13879_ (symbol->string (gx#stx-e _id13869_))))
                (let ((_super13882_
                       (if _struct?13873_
                           (if _super-ref13870_
                               (gx#syntax-local-value _super-ref13870_)
                               '#f)
                           (map gx#syntax-local-value _super-ref13870_))))
                  (let ((_g1388513893_
                         (lambda (_g1388613889_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1388613889_))))
                    (let ((_g1388414982_
                           (lambda (_g1388613897_)
                             ((lambda (_L13900_)
                                (let ()
                                  (let ((_g1391613924_
                                         (lambda (_g1391713920_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1391713920_))))
                                    (let ((_g1391514978_
                                           (lambda (_g1391713928_)
                                             ((lambda (_L13931_)
                                                (let ()
                                                  (let ((_g1394413952_
                                                         (lambda (_g1394513948_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1394513948_))))
                                                    (let ((_g1394314974_
                                                           (lambda (_g1394513956_)
                                                             ((lambda (_L13959_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1397213980_
                                 (lambda (_g1397313976_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1397313976_))))
                            (let ((_g1397114970_
                                   (lambda (_g1397313984_)
                                     ((lambda (_L13987_)
                                        (let ()
                                          (let ((_g1400014008_
                                                 (lambda (_g1400114004_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1400114004_))))
                                            (let ((_g1399914966_
                                                   (lambda (_g1400114012_)
                                                     ((lambda (_L14015_)
                                                        (let ()
                                                          (let ((_g1402814036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1402914032_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1402914032_))))
                    (let ((_g1402714962_
                           (lambda (_g1402914040_)
                             ((lambda (_L14043_)
                                (let ()
                                  (let ((_g1405614073_
                                         (lambda (_g1405714069_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1405714069_))))
                                    (let ((_g1405514958_
                                           (lambda (_g1405714077_)
                                             (if (gx#stx-pair/null?
                                                  _g1405714077_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1405714077_)
                                                           '0)
                                                     (let ((_g28386_
                                                            (gx#syntax-split-splice
                                                             _g1405714077_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28387_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28386_)))
                   (if (not (fx= _g28387_ 2))
                       (error "Context expects 2 values" _g28387_)))
                 (let ((_target1405914080_ (values-ref _g28386_ 0))
                       (_tl1406114083_ (values-ref _g28386_ 1)))
                   (if (gx#stx-null? _tl1406114083_)
                       (letrec ((_loop1406214086_
                                 (lambda (_hd1406014090_ _attr1406614093_)
                                   (if (gx#stx-pair? _hd1406014090_)
                                       (let ((_e1406314096_
                                              (gx#syntax-e _hd1406014090_)))
                                         (let ((_lp-hd1406414100_
                                                (##car _e1406314096_))
                                               (_lp-tl1406514103_
                                                (##cdr _e1406314096_)))
                                           (_loop1406214086_
                                            _lp-tl1406514103_
                                            (cons _lp-hd1406414100_
                                                  _attr1406614093_))))
                                       (let ((_attr1406714106_
                                              (reverse _attr1406614093_)))
                                         ((lambda (_L14110_)
                                            (let ()
                                              (let ((_g1412714144_
                                                     (lambda (_g1412814140_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1412814140_))))
                                                (let ((_g1412614949_
                                                       (lambda (_g1412814148_)
                                                         (if (gx#stx-pair/null?
                                                              _g1412814148_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1412814148_)
                               '0)
                         (let ((_g28388_
                                (gx#syntax-split-splice _g1412814148_ '0)))
                           (begin
                             (let ((_g28389_ (values-count _g28388_)))
                               (if (not (fx= _g28389_ 2))
                                   (error "Context expects 2 values"
                                          _g28389_)))
                             (let ((_target1413014151_ (values-ref _g28388_ 0))
                                   (_tl1413214154_ (values-ref _g28388_ 1)))
                               (if (gx#stx-null? _tl1413214154_)
                                   (letrec ((_loop1413314157_
                                             (lambda (_hd1413114161_
                                                      _getf1413714164_)
                                               (if (gx#stx-pair?
                                                    _hd1413114161_)
                                                   (let ((_e1413414167_
                                                          (gx#syntax-e
                                                           _hd1413114161_)))
                                                     (let ((_lp-hd1413514171_
                                                            (##car _e1413414167_))
                                                           (_lp-tl1413614174_
                                                            (##cdr _e1413414167_)))
                                                       (_loop1413314157_
                                                        _lp-tl1413614174_
                                                        (cons _lp-hd1413514171_
                                                              _getf1413714164_))))
                                                   (let ((_getf1413814177_
                                                          (reverse _getf1413714164_)))
                                                     ((lambda (_L14181_)
                                                        (let ()
                                                          (let ((_g1419814215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1419914211_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1419914211_))))
                    (let ((_g1419714940_
                           (lambda (_g1419914219_)
                             (if (gx#stx-pair/null? _g1419914219_)
                                 (if (fx>= (gx#stx-length _g1419914219_) '0)
                                     (let ((_g28390_
                                            (gx#syntax-split-splice
                                             _g1419914219_
                                             '0)))
                                       (begin
                                         (let ((_g28391_
                                                (values-count _g28390_)))
                                           (if (not (fx= _g28391_ 2))
                                               (error "Context expects 2 values"
                                                      _g28391_)))
                                         (let ((_target1420114222_
                                                (values-ref _g28390_ 0))
                                               (_tl1420314225_
                                                (values-ref _g28390_ 1)))
                                           (if (gx#stx-null? _tl1420314225_)
                                               (letrec ((_loop1420414228_
                                                         (lambda (_hd1420214232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1420814235_)
                   (if (gx#stx-pair? _hd1420214232_)
                       (let ((_e1420514238_ (gx#syntax-e _hd1420214232_)))
                         (let ((_lp-hd1420614242_ (##car _e1420514238_))
                               (_lp-tl1420714245_ (##cdr _e1420514238_)))
                           (_loop1420414228_
                            _lp-tl1420714245_
                            (cons _lp-hd1420614242_ _setf1420814235_))))
                       (let ((_setf1420914248_ (reverse _setf1420814235_)))
                         ((lambda (_L14252_)
                            (let ()
                              (let ((_type-attr14294_
                                     (if (gx#stx-null? _els13871_)
                                         '()
                                         (if _struct?13873_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14252_
                                                            _L14181_)
                                                           (foldr (lambda (_g1426814272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1426914275_
                                   _g1427014277_)
                            (cons (cons _g1426914275_ (cons _g1426814272_ '()))
                                  _g1427014277_))
                          '()
                          _L14252_
                          _L14181_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14252_
                                                            _L14181_
                                                            _L14110_)
                                                           (foldr (lambda (_g1427914284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1428014287_
                                   _g1428114289_
                                   _g1428214291_)
                            (cons (cons _g1428114289_
                                        (cons _g1428014287_
                                              (cons _g1427914284_ '())))
                                  _g1428214291_))
                          '()
                          _L14252_
                          _L14181_
                          _L14110_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14301_
                                       (cons 'name:
                                             (cons (let ((_$e14297_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body13872_)))
                                                     (if _$e14297_
                                                         _$e14297_
                                                         _id13869_))
                                                   '()))))
                                  (let ((_type-id14316_
                                         (let ((_$e14312_
                                                (let ((_e1430314305_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body13872_)))
                                                  (if _e1430314305_
                                                      (let ((_e14309_
                                                             _e1430314305_))
                                                        (cons 'id:
                                                              (cons _e14309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14312_ _$e14312_ '()))))
                                    (let ((_type-ctor14331_
                                           (let ((_$e14327_
                                                  (let ((_e1431814320_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body13872_)))
                                                    (if _e1431814320_
                                                        (let ((_e14324_
                                                               _e1431814320_))
                                                          (cons 'constructor:
                                                                (cons _e14324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14327_ _$e14327_ '()))))
                                      (let ((_plist14349_
                                             (let ((_plist14338_
                                                    (let ((_$e14334_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body13872_)))
                                                      (if _$e14334_
                                                          _$e14334_
                                                          '()))))
                                               (let ((_plist14341_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body13872_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14338_)
                  _plist14338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14344_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body13872_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14341_)
                    _plist14341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14344_))))))
                                        (let ((_type-plist14389_
                                               (if (null? _plist14349_)
                                                   _plist14349_
                                                   (let ((_g1435214360_
                                                          (lambda (_g1435314356_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1435314356_))))
                                                     (let ((_g1435114385_
                                                            (lambda (_g1435314364_)
                                                              ((lambda (_L14367_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14367_ '()))
                                       '()))))
                       _g1435314364_))))
               (_g1435114385_ _plist14349_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1439214409_
                                                 (lambda (_g1439314405_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1439314405_))))
                                            (let ((_g1439114936_
                                                   (lambda (_g1439314413_)
                                                     (if (gx#stx-pair/null?
                                                          _g1439314413_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439314413_)
                           '0)
                     (let ((_g28392_
                            (gx#syntax-split-splice _g1439314413_ '0)))
                       (begin
                         (let ((_g28393_ (values-count _g28392_)))
                           (if (not (fx= _g28393_ 2))
                               (error "Context expects 2 values" _g28393_)))
                         (let ((_target1439514416_ (values-ref _g28392_ 0))
                               (_tl1439714419_ (values-ref _g28392_ 1)))
                           (if (gx#stx-null? _tl1439714419_)
                               (letrec ((_loop1439814422_
                                         (lambda (_hd1439614426_
                                                  _type-body1440214429_)
                                           (if (gx#stx-pair? _hd1439614426_)
                                               (let ((_e1439914432_
                                                      (gx#syntax-e
                                                       _hd1439614426_)))
                                                 (let ((_lp-hd1440014436_
                                                        (##car _e1439914432_))
                                                       (_lp-tl1440114439_
                                                        (##cdr _e1439914432_)))
                                                   (_loop1439814422_
                                                    _lp-tl1440114439_
                                                    (cons _lp-hd1440014436_
                                                          _type-body1440214429_))))
                                               (let ((_type-body1440314442_
                                                      (reverse _type-body1440214429_)))
                                                 ((lambda (_L14446_)
                                                    (let ()
                                                      (let ((_g1446214470_
                                                             (lambda (_g1446314466_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1446314466_))))
                                                        (let ((_g1446114924_
                                                               (lambda (_g1446314474_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14477_)
                            (let ()
                              (let ((_g1449014498_
                                     (lambda (_g1449114494_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1449114494_))))
                                (let ((_g1448914920_
                                       (lambda (_g1449114502_)
                                         ((lambda (_L14505_)
                                            (let ()
                                              (let ((_g1451814526_
                                                     (lambda (_g1451914522_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1451914522_))))
                                                (let ((_g1451714834_
                                                       (lambda (_g1451914530_)
                                                         ((lambda (_L14533_)
                                                            (let ()
                                                              (let ((_g1454614554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1454714550_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1454714550_))))
                        (let ((_g1454514830_
                               (lambda (_g1454714558_)
                                 ((lambda (_L14561_)
                                    (let ()
                                      (let ((_g1457414582_
                                             (lambda (_g1457514578_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1457514578_))))
                                        (let ((_g1457314826_
                                               (lambda (_g1457514586_)
                                                 ((lambda (_L14589_)
                                                    (let ()
                                                      (let ((_g1460214610_
                                                             (lambda (_g1460314606_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1460314606_))))
                                                        (let ((_g1460114784_
                                                               (lambda (_g1460314614_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14617_)
                            (let ()
                              (let ((_g1463014638_
                                     (lambda (_g1463114634_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1463114634_))))
                                (let ((_g1462914780_
                                       (lambda (_g1463114642_)
                                         ((lambda (_L14645_)
                                            (let ()
                                              (let ((_g1465814666_
                                                     (lambda (_g1465914662_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1465914662_))))
                                                (let ((_g1465714776_
                                                       (lambda (_g1465914670_)
                                                         ((lambda (_L14673_)
                                                            (let ()
                                                              (let ((_g1468614694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1468714690_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1468714690_))))
                        (let ((_g1468514772_
                               (lambda (_g1468714698_)
                                 ((lambda (_L14701_)
                                    (let ()
                                      (let ((_g1471414722_
                                             (lambda (_g1471514718_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1471514718_))))
                                        (let ((_g1471314744_
                                               (lambda (_g1471514726_)
                                                 ((lambda (_L14729_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap13875_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14729_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1471514726_))))
                                          (_g1471314744_
                                           (_wrap13875_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L13931_
                                                        (cons (cons _L14505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L13959_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14533_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L13959_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L13987_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14015_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1474714754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1474814757_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1474714754_ '()))
                               _g1474814757_))
                       '()
                       _L14181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1474914760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1475014763_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1474914760_ '()))
                                     _g1475014763_))
                             '()
                             _L14252_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14589_ '()))
                                    (cons _L14617_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14645_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14701_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1475114766_
                                                        _g1475214769_)
                                                 (cons _g1475114766_
                                                       _g1475214769_))
                                               '()
                                               _L14110_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1468714698_))))
                          (_g1468514772_ _plist14349_)))))
                  _g1465914670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1465714776_
                                                   (if (not (null? _type-ctor14331_))
                                                       (cadr _type-ctor14331_)
                                                       '#f))))))
                                          _g1463114642_))))
                                  (_g1462914780_ (cadr _type-name14301_))))))
                          _g1460314614_))))
                  (_g1460114784_
                   (let ((_quote-e14823_
                          (lambda (_x-ref14788_)
                            (if _x-ref14788_
                                (let ((_g1479114799_
                                       (lambda (_g1479214795_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1479214795_))))
                                  (let ((_g1479014819_
                                         (lambda (_g1479214803_)
                                           ((lambda (_L14806_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L14806_ '()))))
                                            _g1479214803_))))
                                    (_g1479014819_ _x-ref14788_)))
                                '#f))))
                     (if _struct?13873_
                         (_quote-e14823_ _super-ref13870_)
                         (cons 'list
                               (map _quote-e14823_ _super-ref13870_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1457514586_))))
                                          (_g1457314826_
                                           (if (not (null? _type-id14316_))
                                               (cadr _type-id14316_)
                                               '#f))))))
                                  _g1454714558_))))
                          (_g1454514830_
                           (if _struct?13873_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1451914530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1451714834_
                                                   (if _struct?13873_
                                                       (if _super13882_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14043_ '()))
                   '#f)
               (let ((_g1483814855_
                      (lambda (_g1483914851_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1483914851_))))
                 (let ((_g1483714916_
                        (lambda (_g1483914859_)
                          (if (gx#stx-pair/null? _g1483914859_)
                              (if (fx>= (gx#stx-length _g1483914859_) '0)
                                  (let ((_g28394_
                                         (gx#syntax-split-splice
                                          _g1483914859_
                                          '0)))
                                    (begin
                                      (let ((_g28395_ (values-count _g28394_)))
                                        (if (not (fx= _g28395_ 2))
                                            (error "Context expects 2 values"
                                                   _g28395_)))
                                      (let ((_target1484114862_
                                             (values-ref _g28394_ 0))
                                            (_tl1484314865_
                                             (values-ref _g28394_ 1)))
                                        (if (gx#stx-null? _tl1484314865_)
                                            (letrec ((_loop1484414868_
                                                      (lambda (_hd1484214872_
                                                               _super-id1484814875_)
                                                        (if (gx#stx-pair?
                                                             _hd1484214872_)
                                                            (let ((_e1484514878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1484214872_)))
                      (let ((_lp-hd1484614882_ (##car _e1484514878_))
                            (_lp-tl1484714885_ (##cdr _e1484514878_)))
                        (_loop1484414868_
                         _lp-tl1484714885_
                         (cons _lp-hd1484614882_ _super-id1484814875_))))
                    (let ((_super-id1484914888_
                           (reverse _super-id1484814875_)))
                      ((lambda (_L14892_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1490714910_ _g1490814913_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1490714910_
                                                              '()))
                                                  _g1490814913_))
                                          '()
                                          _L14892_)))))
                       _super-id1484914888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1484414868_
                                               _target1484114862_
                                               '()))
                                            (_g1483814855_ _g1483914859_)))))
                                  (_g1483814855_ _g1483914859_))
                              (_g1483814855_ _g1483914859_)))))
                   (_g1483714916_ _L14043_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1449114502_))))
                                  (_g1448914920_
                                   (if _struct?13873_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1446314474_))))
                  (_g1446114924_
                   (_wrap13875_
                    (cons _L13900_
                          (cons _L13959_
                                (cons _L14043_
                                      (cons _L13987_
                                            (cons _L14015_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1492714930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1492814933_)
                     (cons _g1492714930_ _g1492814933_))
                   '()
                   _L14446_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1440314442_))))))
                                 (_loop1439814422_ _target1439514416_ '()))
                               (_g1439214409_ _g1439314413_)))))
                     (_g1439214409_ _g1439314413_))
                 (_g1439214409_ _g1439314413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1439114936_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14389_ _type-ctor14331_)
                            _type-name14301_)
                     _type-id14316_)
              _type-attr14294_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1420914248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1420414228_
                                                  _target1420114222_
                                                  '()))
                                               (_g1419814215_
                                                _g1419914219_)))))
                                     (_g1419814215_ _g1419914219_))
                                 (_g1419814215_ _g1419914219_)))))
                      (_g1419714940_
                       (gx#stx-map
                        (lambda (_g1494314945_)
                          (_make-id13877_
                           _name13879_
                           '"-"
                           _g1494314945_
                           '"-set!"))
                        _els13871_))))))
              _getf1413814177_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1413314157_ _target1413014151_ '()))
                                   (_g1412714144_ _g1412814148_)))))
                         (_g1412714144_ _g1412814148_))
                     (_g1412714144_ _g1412814148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1412614949_
                                                   (gx#stx-map
                                                    (lambda (_g1495214954_)
                                                      (_make-id13877_
                                                       _name13879_
                                                       '"-"
                                                       _g1495214954_))
                                                    _els13871_))))))
                                          _attr1406714106_))))))
                         (_loop1406214086_ _target1405914080_ '()))
                       (_g1405614073_ _g1405714077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1405614073_
                                                      _g1405714077_))
                                                 (_g1405614073_
                                                  _g1405714077_)))))
                                      (_g1405514958_ _els13871_)))))
                              _g1402914040_))))
                      (_g1402714962_
                       (if _struct?13873_
                           (if _super13882_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13882_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13882_)))))))
              _g1400114012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1399914966_
                                               (_make-id13877_
                                                _name13879_
                                                '"?"))))))
                                      _g1397313984_))))
                              (_g1397114970_
                               (_make-id13877_ '"make-" _name13879_))))))
                      _g1394513956_))))
              (_g1394314974_ (_make-id13877_ _name13879_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1391713928_))))
                                      (_g1391514978_ _id13869_)))))
                              _g1388613897_))))
                      (_g1388414982_
                       (if _struct?13873_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15074_)
        (let ((_generate15077_
               (lambda (_hd15161_ _fields15163_ _body15164_)
                 (let ((_g1516715182_
                        (lambda (_g1516815178_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1516815178_))))
                   (let ((_g1516615193_
                          (lambda (_g1516815186_)
                            ((lambda ()
                               (if (gx#identifier? _hd15161_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15074_
                                    _hd15161_
                                    '#f
                                    _fields15163_
                                    _body15164_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15074_
                                    _hd15161_)))))))
                     (let ((_g1516515237_
                            (lambda (_g1516815197_)
                              (if (gx#stx-pair? _g1516815197_)
                                  (let ((_e1517115200_
                                         (gx#syntax-e _g1516815197_)))
                                    (let ((_hd1517215204_
                                           (##car _e1517115200_))
                                          (_tl1517315207_
                                           (##cdr _e1517115200_)))
                                      (if (gx#stx-pair? _tl1517315207_)
                                          (let ((_e1517415210_
                                                 (gx#syntax-e _tl1517315207_)))
                                            (let ((_hd1517515214_
                                                   (##car _e1517415210_))
                                                  (_tl1517615217_
                                                   (##cdr _e1517415210_)))
                                              (if (gx#stx-null? _tl1517615217_)
                                                  ((lambda (_L15220_ _L15222_)
                                                     (if (if (gx#identifier?
                                                              _L15222_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15220_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15074_
                                                          _L15222_
                                                          _L15220_
                                                          _fields15163_
                                                          _body15164_
                                                          '#t)
                                                         (_g1516615193_
                                                          _g1516815197_)))
                                                   _hd1517515214_
                                                   _hd1517215204_)
                                                  (_g1516615193_
                                                   _g1516815197_))))
                                          (_g1516615193_ _g1516815197_))))
                                  (_g1516615193_ _g1516815197_)))))
                       (_g1516515237_ _hd15161_)))))))
          (let ((_g1508015099_
                 (lambda (_g1508115095_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1508115095_))))
            (let ((_g1507915157_
                   (lambda (_g1508115103_)
                     (if (gx#stx-pair? _g1508115103_)
                         (let ((_e1508515106_ (gx#syntax-e _g1508115103_)))
                           (let ((_hd1508615110_ (##car _e1508515106_))
                                 (_tl1508715113_ (##cdr _e1508515106_)))
                             (if (gx#stx-pair? _tl1508715113_)
                                 (let ((_e1508815116_
                                        (gx#syntax-e _tl1508715113_)))
                                   (let ((_hd1508915120_ (##car _e1508815116_))
                                         (_tl1509015123_
                                          (##cdr _e1508815116_)))
                                     (if (gx#stx-pair? _tl1509015123_)
                                         (let ((_e1509115126_
                                                (gx#syntax-e _tl1509015123_)))
                                           (let ((_hd1509215130_
                                                  (##car _e1509115126_))
                                                 (_tl1509315133_
                                                  (##cdr _e1509115126_)))
                                             ((lambda (_L15136_
                                                       _L15138_
                                                       _L15139_)
                                                (if (if (gx#identifier-list?
                                                         _L15138_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15136_)
                                                        '#f)
                                                    (_generate15077_
                                                     _L15139_
                                                     _L15138_
                                                     _L15136_)
                                                    (_g1508015099_
                                                     _g1508115103_)))
                                              _tl1509315133_
                                              _hd1509215130_
                                              _hd1508915120_)))
                                         (_g1508015099_ _g1508115103_))))
                                 (_g1508015099_ _g1508115103_))))
                         (_g1508015099_ _g1508115103_)))))
              (_g1507915157_ _stx15074_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15241_)
        (let ((_generate15244_
               (lambda (_hd15328_ _slots15330_ _body15331_)
                 (let ((_g1533415346_
                        (lambda (_g1533515342_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1533515342_))))
                   (let ((_g1533315357_
                          (lambda (_g1533515350_)
                            ((lambda ()
                               (if (gx#identifier? _hd15328_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15241_
                                    _hd15328_
                                    '()
                                    _slots15330_
                                    _body15331_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15241_
                                    _hd15328_)))))))
                     (let ((_g1533215389_
                            (lambda (_g1533515361_)
                              (if (gx#stx-pair? _g1533515361_)
                                  (let ((_e1533815364_
                                         (gx#syntax-e _g1533515361_)))
                                    (let ((_hd1533915368_
                                           (##car _e1533815364_))
                                          (_tl1534015371_
                                           (##cdr _e1533815364_)))
                                      ((lambda (_L15374_ _L15376_)
                                         (if (if (gx#stx-list? _L15374_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15374_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15241_
                                              _L15376_
                                              (gx#syntax->list _L15374_)
                                              _slots15330_
                                              _body15331_
                                              '#f)
                                             (_g1533315357_ _g1533515361_)))
                                       _tl1534015371_
                                       _hd1533915368_)))
                                  (_g1533315357_ _g1533515361_)))))
                       (_g1533215389_ _hd15328_)))))))
          (let ((_g1524715266_
                 (lambda (_g1524815262_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1524815262_))))
            (let ((_g1524615324_
                   (lambda (_g1524815270_)
                     (if (gx#stx-pair? _g1524815270_)
                         (let ((_e1525215273_ (gx#syntax-e _g1524815270_)))
                           (let ((_hd1525315277_ (##car _e1525215273_))
                                 (_tl1525415280_ (##cdr _e1525215273_)))
                             (if (gx#stx-pair? _tl1525415280_)
                                 (let ((_e1525515283_
                                        (gx#syntax-e _tl1525415280_)))
                                   (let ((_hd1525615287_ (##car _e1525515283_))
                                         (_tl1525715290_
                                          (##cdr _e1525515283_)))
                                     (if (gx#stx-pair? _tl1525715290_)
                                         (let ((_e1525815293_
                                                (gx#syntax-e _tl1525715290_)))
                                           (let ((_hd1525915297_
                                                  (##car _e1525815293_))
                                                 (_tl1526015300_
                                                  (##cdr _e1525815293_)))
                                             ((lambda (_L15303_
                                                       _L15305_
                                                       _L15306_)
                                                (if (if (gx#identifier-list?
                                                         _L15305_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15303_)
                                                        '#f)
                                                    (_generate15244_
                                                     _L15306_
                                                     _L15305_
                                                     _L15303_)
                                                    (_g1524715266_
                                                     _g1524815270_)))
                                              _tl1526015300_
                                              _hd1525915297_
                                              _hd1525615287_)))
                                         (_g1524715266_ _g1524815270_))))
                                 (_g1524715266_ _g1524815270_))))
                         (_g1524715266_ _g1524815270_)))))
              (_g1524615324_ _stx15241_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15393_)
        (let ((_wrap15396_
               (lambda (_e-stx15701_)
                 (gx#stx-wrap-source
                  _e-stx15701_
                  (gx#stx-source _stx15393_)))))
          (let ((_method-opt?15398_
                 (lambda (_x15698_) (memq (gx#stx-e _x15698_) '(rebind:)))))
            (let ((_g1540015429_
                   (lambda (_g1540115425_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1540115425_))))
              (let ((_g1539915694_
                     (lambda (_g1540115433_)
                       (if (gx#stx-pair? _g1540115433_)
                           (let ((_e1540615436_ (gx#syntax-e _g1540115433_)))
                             (let ((_hd1540715440_ (##car _e1540615436_))
                                   (_tl1540815443_ (##cdr _e1540615436_)))
                               (if (gx#stx-pair? _tl1540815443_)
                                   (let ((_e1540915446_
                                          (gx#syntax-e _tl1540815443_)))
                                     (let ((_hd1541015450_
                                            (##car _e1540915446_))
                                           (_tl1541115453_
                                            (##cdr _e1540915446_)))
                                       (if (gx#stx-pair? _hd1541015450_)
                                           (let ((_e1541215456_
                                                  (gx#syntax-e
                                                   _hd1541015450_)))
                                             (let ((_hd1541315460_
                                                    (##car _e1541215456_))
                                                   (_tl1541415463_
                                                    (##cdr _e1541215456_)))
                                               (if (gx#identifier?
                                                    _hd1541315460_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g28397_|
                                                        _hd1541315460_)
                                                       (if (gx#stx-pair?
                                                            _tl1541415463_)
                                                           (let ((_e1541515466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1541415463_)))
                     (let ((_hd1541615470_ (##car _e1541515466_))
                           (_tl1541715473_ (##cdr _e1541515466_)))
                       (if (gx#stx-pair? _tl1541715473_)
                           (let ((_e1541815476_ (gx#syntax-e _tl1541715473_)))
                             (let ((_hd1541915480_ (##car _e1541815476_))
                                   (_tl1542015483_ (##cdr _e1541815476_)))
                               (if (gx#stx-null? _tl1542015483_)
                                   (if (gx#stx-pair? _tl1541115453_)
                                       (let ((_e1542115486_
                                              (gx#syntax-e _tl1541115453_)))
                                         (let ((_hd1542215490_
                                                (##car _e1542115486_))
                                               (_tl1542315493_
                                                (##cdr _e1542115486_)))
                                           ((lambda (_L15496_
                                                     _L15498_
                                                     _L15499_
                                                     _L15500_)
                                              (if (if (gx#identifier? _L15500_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15499_)
                                                          (gx#stx-plist?
                                                           _L15496_
                                                           _method-opt?15398_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15525_
                                                         (gx#syntax-local-value
                                                          _L15499_)))
                                                    (let ((_rebind?15528_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15496_))
                       '#t
                       '#f)))
              (let ((_g1553115539_
                     (lambda (_g1553215535_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1553215535_))))
                (let ((_g1553015690_
                       (lambda (_g1553215543_)
                         ((lambda (_L15546_)
                            (let ()
                              (let ((_g1556015568_
                                     (lambda (_g1556115564_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1556115564_))))
                                (let ((_g1555915686_
                                       (lambda (_g1556115572_)
                                         ((lambda (_L15575_)
                                            (let ()
                                              (let ((_g1558815596_
                                                     (lambda (_g1558915592_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1558915592_))))
                                                (let ((_g1558715682_
                                                       (lambda (_g1558915600_)
                                                         ((lambda (_L15603_)
                                                            (let ()
                                                              (let ((_g1561615624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1561715620_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1561715620_))))
                        (let ((_g1561515678_
                               (lambda (_g1561715628_)
                                 ((lambda (_L15631_)
                                    (let ()
                                      (let ((_g1564415652_
                                             (lambda (_g1564515648_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1564515648_))))
                                        (let ((_g1564315674_
                                               (lambda (_g1564515656_)
                                                 ((lambda (_L15659_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15396_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15659_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1564515656_))))
                                          (_g1564315674_
                                           (_wrap15396_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15546_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15500_ '()))
                      (cons _L15575_ (cons _L15631_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1561715628_))))
                          (_g1561515678_ _rebind?15528_)))))
                  _g1558915600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1558715682_
                                                   (_wrap15396_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15575_
                                                                (cons _L15498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1556115572_))))
                                  (_g1555915686_
                                   (gx#stx-identifier
                                    _L15500_
                                    _L15499_
                                    '"::"
                                    _L15500_))))))
                          _g1553215543_))))
                  (_g1553015690_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1540015429_
                                                   _g1540115433_)))
                                            _tl1542315493_
                                            _hd1542215490_
                                            _hd1541915480_
                                            _hd1541615470_)))
                                       (_g1540015429_ _g1540115433_))
                                   (_g1540015429_ _g1540115433_))))
                           (_g1540015429_ _g1540115433_))))
                   (_g1540015429_ _g1540115433_))
               (_g1540015429_ _g1540115433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1540015429_
                                                    _g1540115433_))))
                                           (_g1540015429_ _g1540115433_))))
                                   (_g1540015429_ _g1540115433_))))
                           (_g1540015429_ _g1540115433_)))))
                (_g1539915694_ _stx15393_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15704_)
        (let ((_g1570915758_
               (lambda (_g1571015754_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1571015754_))))
          (let ((_g1570815857_
                 (lambda (_g1571015762_)
                   (if (gx#stx-pair? _g1571015762_)
                       (let ((_e1573515765_ (gx#syntax-e _g1571015762_)))
                         (let ((_hd1573615769_ (##car _e1573515765_))
                               (_tl1573715772_ (##cdr _e1573515765_)))
                           (if (gx#stx-pair? _tl1573715772_)
                               (let ((_e1573815775_
                                      (gx#syntax-e _tl1573715772_)))
                                 (let ((_hd1573915779_ (##car _e1573815775_))
                                       (_tl1574015782_ (##cdr _e1573815775_)))
                                   (if (gx#stx-pair? _tl1574015782_)
                                       (let ((_e1574115785_
                                              (gx#syntax-e _tl1574015782_)))
                                         (let ((_hd1574215789_
                                                (##car _e1574115785_))
                                               (_tl1574315792_
                                                (##cdr _e1574115785_)))
                                           (if (gx#stx-pair/null?
                                                _tl1574315792_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1574315792_)
                                                         '0)
                                                   (let ((_g28398_
                                                          (gx#syntax-split-splice
                                                           _tl1574315792_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28399_
                                                              (values-count
                                                               _g28398_)))
                                                         (if (not (fx= _g28399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28399_)))
               (let ((_target1574415795_ (values-ref _g28398_ 0))
                     (_tl1574615798_ (values-ref _g28398_ 1)))
                 (if (gx#stx-null? _tl1574615798_)
                     (letrec ((_loop1574715801_
                               (lambda (_hd1574515805_ _arg1575115808_)
                                 (if (gx#stx-pair? _hd1574515805_)
                                     (let ((_e1574815811_
                                            (gx#syntax-e _hd1574515805_)))
                                       (let ((_lp-hd1574915815_
                                              (##car _e1574815811_))
                                             (_lp-tl1575015818_
                                              (##cdr _e1574815811_)))
                                         (_loop1574715801_
                                          _lp-tl1575015818_
                                          (cons _lp-hd1574915815_
                                                _arg1575115808_))))
                                     (let ((_arg1575215821_
                                            (reverse _arg1575115808_)))
                                       ((lambda (_L15825_ _L15827_ _L15828_)
                                          (if (gx#identifier? _L15828_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L15827_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L15828_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1584815851_ _g1584915854_)
                                   (cons _g1584815851_ _g1584915854_))
                                 '()
                                 _L15825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1570915758_ _g1571015762_)))
                                        _arg1575215821_
                                        _hd1574215789_
                                        _hd1573915779_))))))
                       (_loop1574715801_ _target1574415795_ '()))
                     (_g1570915758_ _g1571015762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1570915758_
                                                    _g1571015762_))
                                               (_g1570915758_ _g1571015762_))))
                                       (_g1570915758_ _g1571015762_))))
                               (_g1570915758_ _g1571015762_))))
                       (_g1570915758_ _g1571015762_)))))
            (let ((_g1570715963_
                   (lambda (_g1571015861_)
                     (if (gx#stx-pair? _g1571015861_)
                         (let ((_e1571415864_ (gx#syntax-e _g1571015861_)))
                           (let ((_hd1571515868_ (##car _e1571415864_))
                                 (_tl1571615871_ (##cdr _e1571415864_)))
                             (if (gx#stx-pair? _tl1571615871_)
                                 (let ((_e1571715874_
                                        (gx#syntax-e _tl1571615871_)))
                                   (let ((_hd1571815878_ (##car _e1571715874_))
                                         (_tl1571915881_
                                          (##cdr _e1571715874_)))
                                     (if (gx#stx-pair? _tl1571915881_)
                                         (let ((_e1572015884_
                                                (gx#syntax-e _tl1571915881_)))
                                           (let ((_hd1572115888_
                                                  (##car _e1572015884_))
                                                 (_tl1572215891_
                                                  (##cdr _e1572015884_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1572215891_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1572215891_)
                                                           '0)
                                                     (let ((_g28400_
                                                            (gx#syntax-split-splice
                                                             _tl1572215891_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28401_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28400_)))
                   (if (not (fx= _g28401_ 2))
                       (error "Context expects 2 values" _g28401_)))
                 (let ((_target1572315894_ (values-ref _g28400_ 0))
                       (_tl1572515897_ (values-ref _g28400_ 1)))
                   (if (gx#stx-null? _tl1572515897_)
                       (letrec ((_loop1572615900_
                                 (lambda (_hd1572415904_ _arg1573015907_)
                                   (if (gx#stx-pair? _hd1572415904_)
                                       (let ((_e1572715910_
                                              (gx#syntax-e _hd1572415904_)))
                                         (let ((_lp-hd1572815914_
                                                (##car _e1572715910_))
                                               (_lp-tl1572915917_
                                                (##cdr _e1572715910_)))
                                           (_loop1572615900_
                                            _lp-tl1572915917_
                                            (cons _lp-hd1572815914_
                                                  _arg1573015907_))))
                                       (let ((_arg1573115920_
                                              (reverse _arg1573015907_)))
                                         ((lambda (_L15924_ _L15926_ _L15927_)
                                            (if (if (gx#identifier? _L15927_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1594615949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1594715952_)
                        (cons _g1594615949_ _g1594715952_))
                      '()
                      _L15924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L15926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L15927_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1595415957_
                                                              _g1595515960_)
                                                       (cons _g1595415957_
                                                             _g1595515960_))
                                                     '()
                                                     _L15924_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1570815857_ _g1571015861_)))
                                          _arg1573115920_
                                          _hd1572115888_
                                          _hd1571815878_))))))
                         (_loop1572615900_ _target1572315894_ '()))
                       (_g1570815857_ _g1571015861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1570815857_
                                                      _g1571015861_))
                                                 (_g1570815857_
                                                  _g1571015861_))))
                                         (_g1570815857_ _g1571015861_))))
                                 (_g1570815857_ _g1571015861_))))
                         (_g1570815857_ _g1571015861_)))))
              (_g1570715963_ _$stx15704_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx15969_)
        (let ((_g1597416014_
               (lambda (_g1597516010_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1597516010_))))
          (let ((_g1597316115_
                 (lambda (_g1597516018_)
                   (if (gx#stx-pair? _g1597516018_)
                       (let ((_e1599116021_ (gx#syntax-e _g1597516018_)))
                         (let ((_hd1599216025_ (##car _e1599116021_))
                               (_tl1599316028_ (##cdr _e1599116021_)))
                           (if (gx#stx-pair? _tl1599316028_)
                               (let ((_e1599416031_
                                      (gx#syntax-e _tl1599316028_)))
                                 (let ((_hd1599516035_ (##car _e1599416031_))
                                       (_tl1599616038_ (##cdr _e1599416031_)))
                                   (if (gx#stx-pair? _tl1599616038_)
                                       (let ((_e1599716041_
                                              (gx#syntax-e _tl1599616038_)))
                                         (let ((_hd1599816045_
                                                (##car _e1599716041_))
                                               (_tl1599916048_
                                                (##cdr _e1599716041_)))
                                           (if (gx#stx-pair/null?
                                                _tl1599916048_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1599916048_)
                                                         '0)
                                                   (let ((_g28402_
                                                          (gx#syntax-split-splice
                                                           _tl1599916048_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28403_
                                                              (values-count
                                                               _g28402_)))
                                                         (if (not (fx= _g28403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28403_)))
               (let ((_target1600016051_ (values-ref _g28402_ 0))
                     (_tl1600216054_ (values-ref _g28402_ 1)))
                 (if (gx#stx-null? _tl1600216054_)
                     (letrec ((_loop1600316057_
                               (lambda (_hd1600116061_ _rest1600716064_)
                                 (if (gx#stx-pair? _hd1600116061_)
                                     (let ((_e1600416067_
                                            (gx#syntax-e _hd1600116061_)))
                                       (let ((_lp-hd1600516071_
                                              (##car _e1600416067_))
                                             (_lp-tl1600616074_
                                              (##cdr _e1600416067_)))
                                         (_loop1600316057_
                                          _lp-tl1600616074_
                                          (cons _lp-hd1600516071_
                                                _rest1600716064_))))
                                     (let ((_rest1600816077_
                                            (reverse _rest1600716064_)))
                                       ((lambda (_L16081_
                                                 _L16083_
                                                 _L16084_
                                                 _L16085_)
                                          (cons _L16085_
                                                (cons (cons _L16085_
                                                            (cons _L16084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16083_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1610616109_ _g1610716112_)
                         (cons _g1610616109_ _g1610716112_))
                       '()
                       _L16081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1600816077_
                                        _hd1599816045_
                                        _hd1599516035_
                                        _hd1599216025_))))))
                       (_loop1600316057_ _target1600016051_ '()))
                     (_g1597416014_ _g1597516018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1597416014_
                                                    _g1597516018_))
                                               (_g1597416014_ _g1597516018_))))
                                       (_g1597416014_ _g1597516018_))))
                               (_g1597416014_ _g1597516018_))))
                       (_g1597416014_ _g1597516018_)))))
            (let ((_g1597216169_
                   (lambda (_g1597516119_)
                     (if (gx#stx-pair? _g1597516119_)
                         (let ((_e1597816122_ (gx#syntax-e _g1597516119_)))
                           (let ((_hd1597916126_ (##car _e1597816122_))
                                 (_tl1598016129_ (##cdr _e1597816122_)))
                             (if (gx#stx-pair? _tl1598016129_)
                                 (let ((_e1598116132_
                                        (gx#syntax-e _tl1598016129_)))
                                   (let ((_hd1598216136_ (##car _e1598116132_))
                                         (_tl1598316139_
                                          (##cdr _e1598116132_)))
                                     (if (gx#stx-pair? _tl1598316139_)
                                         (let ((_e1598416142_
                                                (gx#syntax-e _tl1598316139_)))
                                           (let ((_hd1598516146_
                                                  (##car _e1598416142_))
                                                 (_tl1598616149_
                                                  (##cdr _e1598416142_)))
                                             (if (gx#stx-null? _tl1598616149_)
                                                 ((lambda (_L16152_ _L16154_)
                                                    (if (gx#identifier?
                                                         _L16152_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16152_ '()))
                                  '())))
                (_g1597316115_ _g1597516119_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1598516146_
                                                  _hd1598216136_)
                                                 (_g1597316115_
                                                  _g1597516119_))))
                                         (_g1597316115_ _g1597516119_))))
                                 (_g1597316115_ _g1597516119_))))
                         (_g1597316115_ _g1597516119_)))))
              (_g1597216169_ _$stx15969_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16174_)
        (let ((_g1617916226_
               (lambda (_g1618016222_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1618016222_))))
          (let ((_g1617816339_
                 (lambda (_g1618016230_)
                   (if (gx#stx-pair? _g1618016230_)
                       (let ((_e1620016233_ (gx#syntax-e _g1618016230_)))
                         (let ((_hd1620116237_ (##car _e1620016233_))
                               (_tl1620216240_ (##cdr _e1620016233_)))
                           (if (gx#stx-pair? _tl1620216240_)
                               (let ((_e1620316243_
                                      (gx#syntax-e _tl1620216240_)))
                                 (let ((_hd1620416247_ (##car _e1620316243_))
                                       (_tl1620516250_ (##cdr _e1620316243_)))
                                   (if (gx#stx-pair? _tl1620516250_)
                                       (let ((_e1620616253_
                                              (gx#syntax-e _tl1620516250_)))
                                         (let ((_hd1620716257_
                                                (##car _e1620616253_))
                                               (_tl1620816260_
                                                (##cdr _e1620616253_)))
                                           (if (gx#stx-pair/null?
                                                _tl1620816260_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1620816260_)
                                                         '1)
                                                   (let ((_g28404_
                                                          (gx#syntax-split-splice
                                                           _tl1620816260_
                                                           '1)))
                                                     (begin
                                                       (let ((_g28405_
                                                              (values-count
                                                               _g28404_)))
                                                         (if (not (fx= _g28405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28405_)))
               (let ((_target1620916263_ (values-ref _g28404_ 0))
                     (_tl1621116266_ (values-ref _g28404_ 1)))
                 (if (gx#stx-pair? _tl1621116266_)
                     (let ((_e1621816269_ (gx#syntax-e _tl1621116266_)))
                       (let ((_hd1621916273_ (##car _e1621816269_))
                             (_tl1622016276_ (##cdr _e1621816269_)))
                         (if (gx#stx-null? _tl1622016276_)
                             (letrec ((_loop1621216279_
                                       (lambda (_hd1621016283_
                                                _path1621616286_)
                                         (if (gx#stx-pair? _hd1621016283_)
                                             (let ((_e1621316289_
                                                    (gx#syntax-e
                                                     _hd1621016283_)))
                                               (let ((_lp-hd1621416293_
                                                      (##car _e1621316289_))
                                                     (_lp-tl1621516296_
                                                      (##cdr _e1621316289_)))
                                                 (_loop1621216279_
                                                  _lp-tl1621516296_
                                                  (cons _lp-hd1621416293_
                                                        _path1621616286_))))
                                             (let ((_path1621716299_
                                                    (reverse _path1621616286_)))
                                               ((lambda (_L16303_
                                                         _L16305_
                                                         _L16306_
                                                         _L16307_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'slot-set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@)
                            (cons _L16307_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1633016333_
                                                    _g1633116336_)
                                             (cons _g1633016333_
                                                   _g1633116336_))
                                           '()
                                           _L16305_))))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16306_ '()))
                            (cons _L16303_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1621916273_
                                                _path1621716299_
                                                _hd1620716257_
                                                _hd1620416247_))))))
                               (_loop1621216279_ _target1620916263_ '()))
                             (_g1617916226_ _g1618016230_))))
                     (_g1617916226_ _g1618016230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1617916226_
                                                    _g1618016230_))
                                               (_g1617916226_ _g1618016230_))))
                                       (_g1617916226_ _g1618016230_))))
                               (_g1617916226_ _g1618016230_))))
                       (_g1617916226_ _g1618016230_)))))
            (let ((_g1617716407_
                   (lambda (_g1618016343_)
                     (if (gx#stx-pair? _g1618016343_)
                         (let ((_e1618416346_ (gx#syntax-e _g1618016343_)))
                           (let ((_hd1618516350_ (##car _e1618416346_))
                                 (_tl1618616353_ (##cdr _e1618416346_)))
                             (if (gx#stx-pair? _tl1618616353_)
                                 (let ((_e1618716356_
                                        (gx#syntax-e _tl1618616353_)))
                                   (let ((_hd1618816360_ (##car _e1618716356_))
                                         (_tl1618916363_
                                          (##cdr _e1618716356_)))
                                     (if (gx#stx-pair? _tl1618916363_)
                                         (let ((_e1619016366_
                                                (gx#syntax-e _tl1618916363_)))
                                           (let ((_hd1619116370_
                                                  (##car _e1619016366_))
                                                 (_tl1619216373_
                                                  (##cdr _e1619016366_)))
                                             (if (gx#stx-pair? _tl1619216373_)
                                                 (let ((_e1619316376_
                                                        (gx#syntax-e
                                                         _tl1619216373_)))
                                                   (let ((_hd1619416380_
                                                          (##car _e1619316376_))
                                                         (_tl1619516383_
                                                          (##cdr _e1619316376_)))
                                                     (if (gx#stx-null?
                                                          _tl1619516383_)
                                                         ((lambda (_L16386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16388_
                           _L16389_)
                    (if (gx#identifier? _L16388_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16389_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16388_ '()))
                                          (cons _L16386_ '()))))
                        (_g1617816339_ _g1618016343_)))
                  _hd1619416380_
                  _hd1619116370_
                  _hd1618816360_)
                 (_g1617816339_ _g1618016343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1617816339_
                                                  _g1618016343_))))
                                         (_g1617816339_ _g1618016343_))))
                                 (_g1617816339_ _g1618016343_))))
                         (_g1617816339_ _g1618016343_)))))
              (_g1617716407_ _$stx16174_))))))))
