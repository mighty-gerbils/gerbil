(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g28394_|
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
      (lambda _$args15059_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15059_)))
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
      (lambda _$args15055_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15055_)))
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
      (lambda _$args15051_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15051_)))
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
      (lambda _$args15047_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15047_)))
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
      (lambda _$args15043_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15043_)))
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
      (lambda _$args15039_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15039_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1501115025_
             (lambda (_stx15013_ _is?15015_)
               (if (gx#identifier? _stx15013_)
                   (let ((_e1501615018_
                          (gx#syntax-local-value _stx15013_ false)))
                     (if _e1501615018_
                         (let ((_e15022_ _e1501615018_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15022_)
                               (_is?15015_ _e15022_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g28382_
          (let ((_g28381_ (length _g28382_)))
            (cond ((fx= _g28381_ 1)
                   (apply (lambda (_stx15029_)
                            (let ((_is?15032_ true))
                              (_opt-lambda1501115025_ _stx15029_ _is?15032_)))
                          _g28382_))
                  ((fx= _g28381_ 2)
                   (apply (lambda (_stx15035_ _is?15037_)
                            (_opt-lambda1501115025_ _stx15035_ _is?15037_))
                          _g28382_))
                  (else (error "No clause matching arguments" _g28382_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15009_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15009_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15006_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15006_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15000_)
        (if _id15000_
            (let ((_info15003_ (gx#syntax-local-value _id15000_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15003_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15003_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx14991_)
        (let ((_body-opt?14994_
               (lambda (_key14997_)
                 (memq (gx#stx-e _key14997_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx14991_ _body-opt?14994_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx13864_
               _id13866_
               _super-ref13867_
               _els13868_
               _body13869_
               _struct?13870_)
        (let ((_wrap13872_
               (lambda (_e-stx14988_)
                 (gx#stx-wrap-source
                  _e-stx14988_
                  (gx#stx-source _stx13864_)))))
          (let ((_make-id13874_
                 (if (uninterned-symbol? (gx#stx-e _id13866_))
                     (lambda _g28393_ (gx#genident _id13866_))
                     (lambda _args14985_
                       (apply gx#stx-identifier _id13866_ _args14985_)))))
            (begin
              (gx#check-duplicate-identifiers _els13868_ _stx13864_)
              (let ((_name13876_ (symbol->string (gx#stx-e _id13866_))))
                (let ((_super13879_
                       (if _struct?13870_
                           (if _super-ref13867_
                               (gx#syntax-local-value _super-ref13867_)
                               '#f)
                           (map gx#syntax-local-value _super-ref13867_))))
                  (let ((_g1388213890_
                         (lambda (_g1388313886_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1388313886_))))
                    (let ((_g1388114979_
                           (lambda (_g1388313894_)
                             ((lambda (_L13897_)
                                (let ()
                                  (let ((_g1391313921_
                                         (lambda (_g1391413917_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1391413917_))))
                                    (let ((_g1391214975_
                                           (lambda (_g1391413925_)
                                             ((lambda (_L13928_)
                                                (let ()
                                                  (let ((_g1394113949_
                                                         (lambda (_g1394213945_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1394213945_))))
                                                    (let ((_g1394014971_
                                                           (lambda (_g1394213953_)
                                                             ((lambda (_L13956_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1396913977_
                                 (lambda (_g1397013973_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1397013973_))))
                            (let ((_g1396814967_
                                   (lambda (_g1397013981_)
                                     ((lambda (_L13984_)
                                        (let ()
                                          (let ((_g1399714005_
                                                 (lambda (_g1399814001_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1399814001_))))
                                            (let ((_g1399614963_
                                                   (lambda (_g1399814009_)
                                                     ((lambda (_L14012_)
                                                        (let ()
                                                          (let ((_g1402514033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1402614029_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1402614029_))))
                    (let ((_g1402414959_
                           (lambda (_g1402614037_)
                             ((lambda (_L14040_)
                                (let ()
                                  (let ((_g1405314070_
                                         (lambda (_g1405414066_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1405414066_))))
                                    (let ((_g1405214955_
                                           (lambda (_g1405414074_)
                                             (if (gx#stx-pair/null?
                                                  _g1405414074_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1405414074_)
                                                           '0)
                                                     (let ((_g28383_
                                                            (gx#syntax-split-splice
                                                             _g1405414074_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28384_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28383_)))
                   (if (not (fx= _g28384_ 2))
                       (error "Context expects 2 values" _g28384_)))
                 (let ((_target1405614077_ (values-ref _g28383_ 0))
                       (_tl1405814080_ (values-ref _g28383_ 1)))
                   (if (gx#stx-null? _tl1405814080_)
                       (letrec ((_loop1405914083_
                                 (lambda (_hd1405714087_ _attr1406314090_)
                                   (if (gx#stx-pair? _hd1405714087_)
                                       (let ((_e1406014093_
                                              (gx#syntax-e _hd1405714087_)))
                                         (let ((_lp-hd1406114097_
                                                (##car _e1406014093_))
                                               (_lp-tl1406214100_
                                                (##cdr _e1406014093_)))
                                           (_loop1405914083_
                                            _lp-tl1406214100_
                                            (cons _lp-hd1406114097_
                                                  _attr1406314090_))))
                                       (let ((_attr1406414103_
                                              (reverse _attr1406314090_)))
                                         ((lambda (_L14107_)
                                            (let ()
                                              (let ((_g1412414141_
                                                     (lambda (_g1412514137_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1412514137_))))
                                                (let ((_g1412314946_
                                                       (lambda (_g1412514145_)
                                                         (if (gx#stx-pair/null?
                                                              _g1412514145_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1412514145_)
                               '0)
                         (let ((_g28385_
                                (gx#syntax-split-splice _g1412514145_ '0)))
                           (begin
                             (let ((_g28386_ (values-count _g28385_)))
                               (if (not (fx= _g28386_ 2))
                                   (error "Context expects 2 values"
                                          _g28386_)))
                             (let ((_target1412714148_ (values-ref _g28385_ 0))
                                   (_tl1412914151_ (values-ref _g28385_ 1)))
                               (if (gx#stx-null? _tl1412914151_)
                                   (letrec ((_loop1413014154_
                                             (lambda (_hd1412814158_
                                                      _getf1413414161_)
                                               (if (gx#stx-pair?
                                                    _hd1412814158_)
                                                   (let ((_e1413114164_
                                                          (gx#syntax-e
                                                           _hd1412814158_)))
                                                     (let ((_lp-hd1413214168_
                                                            (##car _e1413114164_))
                                                           (_lp-tl1413314171_
                                                            (##cdr _e1413114164_)))
                                                       (_loop1413014154_
                                                        _lp-tl1413314171_
                                                        (cons _lp-hd1413214168_
                                                              _getf1413414161_))))
                                                   (let ((_getf1413514174_
                                                          (reverse _getf1413414161_)))
                                                     ((lambda (_L14178_)
                                                        (let ()
                                                          (let ((_g1419514212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1419614208_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1419614208_))))
                    (let ((_g1419414937_
                           (lambda (_g1419614216_)
                             (if (gx#stx-pair/null? _g1419614216_)
                                 (if (fx>= (gx#stx-length _g1419614216_) '0)
                                     (let ((_g28387_
                                            (gx#syntax-split-splice
                                             _g1419614216_
                                             '0)))
                                       (begin
                                         (let ((_g28388_
                                                (values-count _g28387_)))
                                           (if (not (fx= _g28388_ 2))
                                               (error "Context expects 2 values"
                                                      _g28388_)))
                                         (let ((_target1419814219_
                                                (values-ref _g28387_ 0))
                                               (_tl1420014222_
                                                (values-ref _g28387_ 1)))
                                           (if (gx#stx-null? _tl1420014222_)
                                               (letrec ((_loop1420114225_
                                                         (lambda (_hd1419914229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1420514232_)
                   (if (gx#stx-pair? _hd1419914229_)
                       (let ((_e1420214235_ (gx#syntax-e _hd1419914229_)))
                         (let ((_lp-hd1420314239_ (##car _e1420214235_))
                               (_lp-tl1420414242_ (##cdr _e1420214235_)))
                           (_loop1420114225_
                            _lp-tl1420414242_
                            (cons _lp-hd1420314239_ _setf1420514232_))))
                       (let ((_setf1420614245_ (reverse _setf1420514232_)))
                         ((lambda (_L14249_)
                            (let ()
                              (let ((_type-attr14291_
                                     (if (gx#stx-null? _els13868_)
                                         '()
                                         (if _struct?13870_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14249_
                                                            _L14178_)
                                                           (foldr (lambda (_g1426514269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1426614272_
                                   _g1426714274_)
                            (cons (cons _g1426614272_ (cons _g1426514269_ '()))
                                  _g1426714274_))
                          '()
                          _L14249_
                          _L14178_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14249_
                                                            _L14178_
                                                            _L14107_)
                                                           (foldr (lambda (_g1427614281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1427714284_
                                   _g1427814286_
                                   _g1427914288_)
                            (cons (cons _g1427814286_
                                        (cons _g1427714284_
                                              (cons _g1427614281_ '())))
                                  _g1427914288_))
                          '()
                          _L14249_
                          _L14178_
                          _L14107_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14298_
                                       (cons 'name:
                                             (cons (let ((_$e14294_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body13869_)))
                                                     (if _$e14294_
                                                         _$e14294_
                                                         _id13866_))
                                                   '()))))
                                  (let ((_type-id14313_
                                         (let ((_$e14309_
                                                (let ((_e1430014302_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body13869_)))
                                                  (if _e1430014302_
                                                      (let ((_e14306_
                                                             _e1430014302_))
                                                        (cons 'id:
                                                              (cons _e14306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14309_ _$e14309_ '()))))
                                    (let ((_type-ctor14328_
                                           (let ((_$e14324_
                                                  (let ((_e1431514317_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body13869_)))
                                                    (if _e1431514317_
                                                        (let ((_e14321_
                                                               _e1431514317_))
                                                          (cons 'constructor:
                                                                (cons _e14321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14324_ _$e14324_ '()))))
                                      (let ((_plist14346_
                                             (let ((_plist14335_
                                                    (let ((_$e14331_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body13869_)))
                                                      (if _$e14331_
                                                          _$e14331_
                                                          '()))))
                                               (let ((_plist14338_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body13869_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14335_)
                  _plist14335_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14341_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body13869_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14338_)
                    _plist14338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14341_))))))
                                        (let ((_type-plist14386_
                                               (if (null? _plist14346_)
                                                   _plist14346_
                                                   (let ((_g1434914357_
                                                          (lambda (_g1435014353_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1435014353_))))
                                                     (let ((_g1434814382_
                                                            (lambda (_g1435014361_)
                                                              ((lambda (_L14364_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14364_ '()))
                                       '()))))
                       _g1435014361_))))
               (_g1434814382_ _plist14346_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1438914406_
                                                 (lambda (_g1439014402_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1439014402_))))
                                            (let ((_g1438814933_
                                                   (lambda (_g1439014410_)
                                                     (if (gx#stx-pair/null?
                                                          _g1439014410_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439014410_)
                           '0)
                     (let ((_g28389_
                            (gx#syntax-split-splice _g1439014410_ '0)))
                       (begin
                         (let ((_g28390_ (values-count _g28389_)))
                           (if (not (fx= _g28390_ 2))
                               (error "Context expects 2 values" _g28390_)))
                         (let ((_target1439214413_ (values-ref _g28389_ 0))
                               (_tl1439414416_ (values-ref _g28389_ 1)))
                           (if (gx#stx-null? _tl1439414416_)
                               (letrec ((_loop1439514419_
                                         (lambda (_hd1439314423_
                                                  _type-body1439914426_)
                                           (if (gx#stx-pair? _hd1439314423_)
                                               (let ((_e1439614429_
                                                      (gx#syntax-e
                                                       _hd1439314423_)))
                                                 (let ((_lp-hd1439714433_
                                                        (##car _e1439614429_))
                                                       (_lp-tl1439814436_
                                                        (##cdr _e1439614429_)))
                                                   (_loop1439514419_
                                                    _lp-tl1439814436_
                                                    (cons _lp-hd1439714433_
                                                          _type-body1439914426_))))
                                               (let ((_type-body1440014439_
                                                      (reverse _type-body1439914426_)))
                                                 ((lambda (_L14443_)
                                                    (let ()
                                                      (let ((_g1445914467_
                                                             (lambda (_g1446014463_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1446014463_))))
                                                        (let ((_g1445814921_
                                                               (lambda (_g1446014471_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14474_)
                            (let ()
                              (let ((_g1448714495_
                                     (lambda (_g1448814491_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1448814491_))))
                                (let ((_g1448614917_
                                       (lambda (_g1448814499_)
                                         ((lambda (_L14502_)
                                            (let ()
                                              (let ((_g1451514523_
                                                     (lambda (_g1451614519_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1451614519_))))
                                                (let ((_g1451414831_
                                                       (lambda (_g1451614527_)
                                                         ((lambda (_L14530_)
                                                            (let ()
                                                              (let ((_g1454314551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1454414547_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1454414547_))))
                        (let ((_g1454214827_
                               (lambda (_g1454414555_)
                                 ((lambda (_L14558_)
                                    (let ()
                                      (let ((_g1457114579_
                                             (lambda (_g1457214575_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1457214575_))))
                                        (let ((_g1457014823_
                                               (lambda (_g1457214583_)
                                                 ((lambda (_L14586_)
                                                    (let ()
                                                      (let ((_g1459914607_
                                                             (lambda (_g1460014603_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1460014603_))))
                                                        (let ((_g1459814781_
                                                               (lambda (_g1460014611_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14614_)
                            (let ()
                              (let ((_g1462714635_
                                     (lambda (_g1462814631_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1462814631_))))
                                (let ((_g1462614777_
                                       (lambda (_g1462814639_)
                                         ((lambda (_L14642_)
                                            (let ()
                                              (let ((_g1465514663_
                                                     (lambda (_g1465614659_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1465614659_))))
                                                (let ((_g1465414773_
                                                       (lambda (_g1465614667_)
                                                         ((lambda (_L14670_)
                                                            (let ()
                                                              (let ((_g1468314691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1468414687_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1468414687_))))
                        (let ((_g1468214769_
                               (lambda (_g1468414695_)
                                 ((lambda (_L14698_)
                                    (let ()
                                      (let ((_g1471114719_
                                             (lambda (_g1471214715_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1471214715_))))
                                        (let ((_g1471014741_
                                               (lambda (_g1471214723_)
                                                 ((lambda (_L14726_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap13872_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14726_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1471214723_))))
                                          (_g1471014741_
                                           (_wrap13872_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L13928_
                                                        (cons (cons _L14502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L13956_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14530_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L13956_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L13984_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14012_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1474414751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1474514754_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1474414751_ '()))
                               _g1474514754_))
                       '()
                       _L14178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1474614757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1474714760_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1474614757_ '()))
                                     _g1474714760_))
                             '()
                             _L14249_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14586_ '()))
                                    (cons _L14614_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14642_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14698_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1474814763_
                                                        _g1474914766_)
                                                 (cons _g1474814763_
                                                       _g1474914766_))
                                               '()
                                               _L14107_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1468414695_))))
                          (_g1468214769_ _plist14346_)))))
                  _g1465614667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1465414773_
                                                   (if (not (null? _type-ctor14328_))
                                                       (cadr _type-ctor14328_)
                                                       '#f))))))
                                          _g1462814639_))))
                                  (_g1462614777_ (cadr _type-name14298_))))))
                          _g1460014611_))))
                  (_g1459814781_
                   (let ((_quote-e14820_
                          (lambda (_x-ref14785_)
                            (if _x-ref14785_
                                (let ((_g1478814796_
                                       (lambda (_g1478914792_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1478914792_))))
                                  (let ((_g1478714816_
                                         (lambda (_g1478914800_)
                                           ((lambda (_L14803_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L14803_ '()))))
                                            _g1478914800_))))
                                    (_g1478714816_ _x-ref14785_)))
                                '#f))))
                     (if _struct?13870_
                         (_quote-e14820_ _super-ref13867_)
                         (cons 'list
                               (map _quote-e14820_ _super-ref13867_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1457214583_))))
                                          (_g1457014823_
                                           (if (not (null? _type-id14313_))
                                               (cadr _type-id14313_)
                                               '#f))))))
                                  _g1454414555_))))
                          (_g1454214827_
                           (if _struct?13870_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1451614527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1451414831_
                                                   (if _struct?13870_
                                                       (if _super13879_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14040_ '()))
                   '#f)
               (let ((_g1483514852_
                      (lambda (_g1483614848_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1483614848_))))
                 (let ((_g1483414913_
                        (lambda (_g1483614856_)
                          (if (gx#stx-pair/null? _g1483614856_)
                              (if (fx>= (gx#stx-length _g1483614856_) '0)
                                  (let ((_g28391_
                                         (gx#syntax-split-splice
                                          _g1483614856_
                                          '0)))
                                    (begin
                                      (let ((_g28392_ (values-count _g28391_)))
                                        (if (not (fx= _g28392_ 2))
                                            (error "Context expects 2 values"
                                                   _g28392_)))
                                      (let ((_target1483814859_
                                             (values-ref _g28391_ 0))
                                            (_tl1484014862_
                                             (values-ref _g28391_ 1)))
                                        (if (gx#stx-null? _tl1484014862_)
                                            (letrec ((_loop1484114865_
                                                      (lambda (_hd1483914869_
                                                               _super-id1484514872_)
                                                        (if (gx#stx-pair?
                                                             _hd1483914869_)
                                                            (let ((_e1484214875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1483914869_)))
                      (let ((_lp-hd1484314879_ (##car _e1484214875_))
                            (_lp-tl1484414882_ (##cdr _e1484214875_)))
                        (_loop1484114865_
                         _lp-tl1484414882_
                         (cons _lp-hd1484314879_ _super-id1484514872_))))
                    (let ((_super-id1484614885_
                           (reverse _super-id1484514872_)))
                      ((lambda (_L14889_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1490414907_ _g1490514910_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1490414907_
                                                              '()))
                                                  _g1490514910_))
                                          '()
                                          _L14889_)))))
                       _super-id1484614885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1484114865_
                                               _target1483814859_
                                               '()))
                                            (_g1483514852_ _g1483614856_)))))
                                  (_g1483514852_ _g1483614856_))
                              (_g1483514852_ _g1483614856_)))))
                   (_g1483414913_ _L14040_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1448814499_))))
                                  (_g1448614917_
                                   (if _struct?13870_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1446014471_))))
                  (_g1445814921_
                   (_wrap13872_
                    (cons _L13897_
                          (cons _L13956_
                                (cons _L14040_
                                      (cons _L13984_
                                            (cons _L14012_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1492414927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1492514930_)
                     (cons _g1492414927_ _g1492514930_))
                   '()
                   _L14443_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1440014439_))))))
                                 (_loop1439514419_ _target1439214413_ '()))
                               (_g1438914406_ _g1439014410_)))))
                     (_g1438914406_ _g1439014410_))
                 (_g1438914406_ _g1439014410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1438814933_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14386_ _type-ctor14328_)
                            _type-name14298_)
                     _type-id14313_)
              _type-attr14291_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1420614245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1420114225_
                                                  _target1419814219_
                                                  '()))
                                               (_g1419514212_
                                                _g1419614216_)))))
                                     (_g1419514212_ _g1419614216_))
                                 (_g1419514212_ _g1419614216_)))))
                      (_g1419414937_
                       (gx#stx-map
                        (lambda (_g1494014942_)
                          (_make-id13874_
                           _name13876_
                           '"-"
                           _g1494014942_
                           '"-set!"))
                        _els13868_))))))
              _getf1413514174_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1413014154_ _target1412714148_ '()))
                                   (_g1412414141_ _g1412514145_)))))
                         (_g1412414141_ _g1412514145_))
                     (_g1412414141_ _g1412514145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1412314946_
                                                   (gx#stx-map
                                                    (lambda (_g1494914951_)
                                                      (_make-id13874_
                                                       _name13876_
                                                       '"-"
                                                       _g1494914951_))
                                                    _els13868_))))))
                                          _attr1406414103_))))))
                         (_loop1405914083_ _target1405614077_ '()))
                       (_g1405314070_ _g1405414074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1405314070_
                                                      _g1405414074_))
                                                 (_g1405314070_
                                                  _g1405414074_)))))
                                      (_g1405214955_ _els13868_)))))
                              _g1402614037_))))
                      (_g1402414959_
                       (if _struct?13870_
                           (if _super13879_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13879_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13879_)))))))
              _g1399814009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1399614963_
                                               (_make-id13874_
                                                _name13876_
                                                '"?"))))))
                                      _g1397013981_))))
                              (_g1396814967_
                               (_make-id13874_ '"make-" _name13876_))))))
                      _g1394213953_))))
              (_g1394014971_ (_make-id13874_ _name13876_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1391413925_))))
                                      (_g1391214975_ _id13866_)))))
                              _g1388313894_))))
                      (_g1388114979_
                       (if _struct?13870_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15071_)
        (let ((_generate15074_
               (lambda (_hd15158_ _fields15160_ _body15161_)
                 (let ((_g1516415179_
                        (lambda (_g1516515175_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1516515175_))))
                   (let ((_g1516315190_
                          (lambda (_g1516515183_)
                            ((lambda ()
                               (if (gx#identifier? _hd15158_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15071_
                                    _hd15158_
                                    '#f
                                    _fields15160_
                                    _body15161_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15071_
                                    _hd15158_)))))))
                     (let ((_g1516215234_
                            (lambda (_g1516515194_)
                              (if (gx#stx-pair? _g1516515194_)
                                  (let ((_e1516815197_
                                         (gx#syntax-e _g1516515194_)))
                                    (let ((_hd1516915201_
                                           (##car _e1516815197_))
                                          (_tl1517015204_
                                           (##cdr _e1516815197_)))
                                      (if (gx#stx-pair? _tl1517015204_)
                                          (let ((_e1517115207_
                                                 (gx#syntax-e _tl1517015204_)))
                                            (let ((_hd1517215211_
                                                   (##car _e1517115207_))
                                                  (_tl1517315214_
                                                   (##cdr _e1517115207_)))
                                              (if (gx#stx-null? _tl1517315214_)
                                                  ((lambda (_L15217_ _L15219_)
                                                     (if (if (gx#identifier?
                                                              _L15219_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15217_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15071_
                                                          _L15219_
                                                          _L15217_
                                                          _fields15160_
                                                          _body15161_
                                                          '#t)
                                                         (_g1516315190_
                                                          _g1516515194_)))
                                                   _hd1517215211_
                                                   _hd1516915201_)
                                                  (_g1516315190_
                                                   _g1516515194_))))
                                          (_g1516315190_ _g1516515194_))))
                                  (_g1516315190_ _g1516515194_)))))
                       (_g1516215234_ _hd15158_)))))))
          (let ((_g1507715096_
                 (lambda (_g1507815092_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1507815092_))))
            (let ((_g1507615154_
                   (lambda (_g1507815100_)
                     (if (gx#stx-pair? _g1507815100_)
                         (let ((_e1508215103_ (gx#syntax-e _g1507815100_)))
                           (let ((_hd1508315107_ (##car _e1508215103_))
                                 (_tl1508415110_ (##cdr _e1508215103_)))
                             (if (gx#stx-pair? _tl1508415110_)
                                 (let ((_e1508515113_
                                        (gx#syntax-e _tl1508415110_)))
                                   (let ((_hd1508615117_ (##car _e1508515113_))
                                         (_tl1508715120_
                                          (##cdr _e1508515113_)))
                                     (if (gx#stx-pair? _tl1508715120_)
                                         (let ((_e1508815123_
                                                (gx#syntax-e _tl1508715120_)))
                                           (let ((_hd1508915127_
                                                  (##car _e1508815123_))
                                                 (_tl1509015130_
                                                  (##cdr _e1508815123_)))
                                             ((lambda (_L15133_
                                                       _L15135_
                                                       _L15136_)
                                                (if (if (gx#identifier-list?
                                                         _L15135_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15133_)
                                                        '#f)
                                                    (_generate15074_
                                                     _L15136_
                                                     _L15135_
                                                     _L15133_)
                                                    (_g1507715096_
                                                     _g1507815100_)))
                                              _tl1509015130_
                                              _hd1508915127_
                                              _hd1508615117_)))
                                         (_g1507715096_ _g1507815100_))))
                                 (_g1507715096_ _g1507815100_))))
                         (_g1507715096_ _g1507815100_)))))
              (_g1507615154_ _stx15071_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15238_)
        (let ((_generate15241_
               (lambda (_hd15325_ _slots15327_ _body15328_)
                 (let ((_g1533115343_
                        (lambda (_g1533215339_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1533215339_))))
                   (let ((_g1533015354_
                          (lambda (_g1533215347_)
                            ((lambda ()
                               (if (gx#identifier? _hd15325_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15238_
                                    _hd15325_
                                    '()
                                    _slots15327_
                                    _body15328_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15238_
                                    _hd15325_)))))))
                     (let ((_g1532915386_
                            (lambda (_g1533215358_)
                              (if (gx#stx-pair? _g1533215358_)
                                  (let ((_e1533515361_
                                         (gx#syntax-e _g1533215358_)))
                                    (let ((_hd1533615365_
                                           (##car _e1533515361_))
                                          (_tl1533715368_
                                           (##cdr _e1533515361_)))
                                      ((lambda (_L15371_ _L15373_)
                                         (if (if (gx#stx-list? _L15371_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15371_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15238_
                                              _L15373_
                                              (gx#syntax->list _L15371_)
                                              _slots15327_
                                              _body15328_
                                              '#f)
                                             (_g1533015354_ _g1533215358_)))
                                       _tl1533715368_
                                       _hd1533615365_)))
                                  (_g1533015354_ _g1533215358_)))))
                       (_g1532915386_ _hd15325_)))))))
          (let ((_g1524415263_
                 (lambda (_g1524515259_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1524515259_))))
            (let ((_g1524315321_
                   (lambda (_g1524515267_)
                     (if (gx#stx-pair? _g1524515267_)
                         (let ((_e1524915270_ (gx#syntax-e _g1524515267_)))
                           (let ((_hd1525015274_ (##car _e1524915270_))
                                 (_tl1525115277_ (##cdr _e1524915270_)))
                             (if (gx#stx-pair? _tl1525115277_)
                                 (let ((_e1525215280_
                                        (gx#syntax-e _tl1525115277_)))
                                   (let ((_hd1525315284_ (##car _e1525215280_))
                                         (_tl1525415287_
                                          (##cdr _e1525215280_)))
                                     (if (gx#stx-pair? _tl1525415287_)
                                         (let ((_e1525515290_
                                                (gx#syntax-e _tl1525415287_)))
                                           (let ((_hd1525615294_
                                                  (##car _e1525515290_))
                                                 (_tl1525715297_
                                                  (##cdr _e1525515290_)))
                                             ((lambda (_L15300_
                                                       _L15302_
                                                       _L15303_)
                                                (if (if (gx#identifier-list?
                                                         _L15302_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15300_)
                                                        '#f)
                                                    (_generate15241_
                                                     _L15303_
                                                     _L15302_
                                                     _L15300_)
                                                    (_g1524415263_
                                                     _g1524515267_)))
                                              _tl1525715297_
                                              _hd1525615294_
                                              _hd1525315284_)))
                                         (_g1524415263_ _g1524515267_))))
                                 (_g1524415263_ _g1524515267_))))
                         (_g1524415263_ _g1524515267_)))))
              (_g1524315321_ _stx15238_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15390_)
        (let ((_wrap15393_
               (lambda (_e-stx15698_)
                 (gx#stx-wrap-source
                  _e-stx15698_
                  (gx#stx-source _stx15390_)))))
          (let ((_method-opt?15395_
                 (lambda (_x15695_) (memq (gx#stx-e _x15695_) '(rebind:)))))
            (let ((_g1539715426_
                   (lambda (_g1539815422_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1539815422_))))
              (let ((_g1539615691_
                     (lambda (_g1539815430_)
                       (if (gx#stx-pair? _g1539815430_)
                           (let ((_e1540315433_ (gx#syntax-e _g1539815430_)))
                             (let ((_hd1540415437_ (##car _e1540315433_))
                                   (_tl1540515440_ (##cdr _e1540315433_)))
                               (if (gx#stx-pair? _tl1540515440_)
                                   (let ((_e1540615443_
                                          (gx#syntax-e _tl1540515440_)))
                                     (let ((_hd1540715447_
                                            (##car _e1540615443_))
                                           (_tl1540815450_
                                            (##cdr _e1540615443_)))
                                       (if (gx#stx-pair? _hd1540715447_)
                                           (let ((_e1540915453_
                                                  (gx#syntax-e
                                                   _hd1540715447_)))
                                             (let ((_hd1541015457_
                                                    (##car _e1540915453_))
                                                   (_tl1541115460_
                                                    (##cdr _e1540915453_)))
                                               (if (gx#identifier?
                                                    _hd1541015457_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g28394_|
                                                        _hd1541015457_)
                                                       (if (gx#stx-pair?
                                                            _tl1541115460_)
                                                           (let ((_e1541215463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1541115460_)))
                     (let ((_hd1541315467_ (##car _e1541215463_))
                           (_tl1541415470_ (##cdr _e1541215463_)))
                       (if (gx#stx-pair? _tl1541415470_)
                           (let ((_e1541515473_ (gx#syntax-e _tl1541415470_)))
                             (let ((_hd1541615477_ (##car _e1541515473_))
                                   (_tl1541715480_ (##cdr _e1541515473_)))
                               (if (gx#stx-null? _tl1541715480_)
                                   (if (gx#stx-pair? _tl1540815450_)
                                       (let ((_e1541815483_
                                              (gx#syntax-e _tl1540815450_)))
                                         (let ((_hd1541915487_
                                                (##car _e1541815483_))
                                               (_tl1542015490_
                                                (##cdr _e1541815483_)))
                                           ((lambda (_L15493_
                                                     _L15495_
                                                     _L15496_
                                                     _L15497_)
                                              (if (if (gx#identifier? _L15497_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15496_)
                                                          (gx#stx-plist?
                                                           _L15493_
                                                           _method-opt?15395_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15522_
                                                         (gx#syntax-local-value
                                                          _L15496_)))
                                                    (let ((_rebind?15525_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15493_))
                       '#t
                       '#f)))
              (let ((_g1552815536_
                     (lambda (_g1552915532_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1552915532_))))
                (let ((_g1552715687_
                       (lambda (_g1552915540_)
                         ((lambda (_L15543_)
                            (let ()
                              (let ((_g1555715565_
                                     (lambda (_g1555815561_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1555815561_))))
                                (let ((_g1555615683_
                                       (lambda (_g1555815569_)
                                         ((lambda (_L15572_)
                                            (let ()
                                              (let ((_g1558515593_
                                                     (lambda (_g1558615589_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1558615589_))))
                                                (let ((_g1558415679_
                                                       (lambda (_g1558615597_)
                                                         ((lambda (_L15600_)
                                                            (let ()
                                                              (let ((_g1561315621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1561415617_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1561415617_))))
                        (let ((_g1561215675_
                               (lambda (_g1561415625_)
                                 ((lambda (_L15628_)
                                    (let ()
                                      (let ((_g1564115649_
                                             (lambda (_g1564215645_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1564215645_))))
                                        (let ((_g1564015671_
                                               (lambda (_g1564215653_)
                                                 ((lambda (_L15656_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15393_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15656_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1564215653_))))
                                          (_g1564015671_
                                           (_wrap15393_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15543_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15497_ '()))
                      (cons _L15572_ (cons _L15628_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1561415625_))))
                          (_g1561215675_ _rebind?15525_)))))
                  _g1558615597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1558415679_
                                                   (_wrap15393_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15572_
                                                                (cons _L15495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1555815569_))))
                                  (_g1555615683_
                                   (gx#stx-identifier
                                    _L15497_
                                    _L15496_
                                    '"::"
                                    _L15497_))))))
                          _g1552915540_))))
                  (_g1552715687_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1539715426_
                                                   _g1539815430_)))
                                            _tl1542015490_
                                            _hd1541915487_
                                            _hd1541615477_
                                            _hd1541315467_)))
                                       (_g1539715426_ _g1539815430_))
                                   (_g1539715426_ _g1539815430_))))
                           (_g1539715426_ _g1539815430_))))
                   (_g1539715426_ _g1539815430_))
               (_g1539715426_ _g1539815430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1539715426_
                                                    _g1539815430_))))
                                           (_g1539715426_ _g1539815430_))))
                                   (_g1539715426_ _g1539815430_))))
                           (_g1539715426_ _g1539815430_)))))
                (_g1539615691_ _stx15390_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15701_)
        (let ((_g1570615755_
               (lambda (_g1570715751_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1570715751_))))
          (let ((_g1570515854_
                 (lambda (_g1570715759_)
                   (if (gx#stx-pair? _g1570715759_)
                       (let ((_e1573215762_ (gx#syntax-e _g1570715759_)))
                         (let ((_hd1573315766_ (##car _e1573215762_))
                               (_tl1573415769_ (##cdr _e1573215762_)))
                           (if (gx#stx-pair? _tl1573415769_)
                               (let ((_e1573515772_
                                      (gx#syntax-e _tl1573415769_)))
                                 (let ((_hd1573615776_ (##car _e1573515772_))
                                       (_tl1573715779_ (##cdr _e1573515772_)))
                                   (if (gx#stx-pair? _tl1573715779_)
                                       (let ((_e1573815782_
                                              (gx#syntax-e _tl1573715779_)))
                                         (let ((_hd1573915786_
                                                (##car _e1573815782_))
                                               (_tl1574015789_
                                                (##cdr _e1573815782_)))
                                           (if (gx#stx-pair/null?
                                                _tl1574015789_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1574015789_)
                                                         '0)
                                                   (let ((_g28395_
                                                          (gx#syntax-split-splice
                                                           _tl1574015789_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28396_
                                                              (values-count
                                                               _g28395_)))
                                                         (if (not (fx= _g28396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28396_)))
               (let ((_target1574115792_ (values-ref _g28395_ 0))
                     (_tl1574315795_ (values-ref _g28395_ 1)))
                 (if (gx#stx-null? _tl1574315795_)
                     (letrec ((_loop1574415798_
                               (lambda (_hd1574215802_ _arg1574815805_)
                                 (if (gx#stx-pair? _hd1574215802_)
                                     (let ((_e1574515808_
                                            (gx#syntax-e _hd1574215802_)))
                                       (let ((_lp-hd1574615812_
                                              (##car _e1574515808_))
                                             (_lp-tl1574715815_
                                              (##cdr _e1574515808_)))
                                         (_loop1574415798_
                                          _lp-tl1574715815_
                                          (cons _lp-hd1574615812_
                                                _arg1574815805_))))
                                     (let ((_arg1574915818_
                                            (reverse _arg1574815805_)))
                                       ((lambda (_L15822_ _L15824_ _L15825_)
                                          (if (gx#identifier? _L15825_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L15824_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L15825_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1584515848_ _g1584615851_)
                                   (cons _g1584515848_ _g1584615851_))
                                 '()
                                 _L15822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1570615755_ _g1570715759_)))
                                        _arg1574915818_
                                        _hd1573915786_
                                        _hd1573615776_))))))
                       (_loop1574415798_ _target1574115792_ '()))
                     (_g1570615755_ _g1570715759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1570615755_
                                                    _g1570715759_))
                                               (_g1570615755_ _g1570715759_))))
                                       (_g1570615755_ _g1570715759_))))
                               (_g1570615755_ _g1570715759_))))
                       (_g1570615755_ _g1570715759_)))))
            (let ((_g1570415960_
                   (lambda (_g1570715858_)
                     (if (gx#stx-pair? _g1570715858_)
                         (let ((_e1571115861_ (gx#syntax-e _g1570715858_)))
                           (let ((_hd1571215865_ (##car _e1571115861_))
                                 (_tl1571315868_ (##cdr _e1571115861_)))
                             (if (gx#stx-pair? _tl1571315868_)
                                 (let ((_e1571415871_
                                        (gx#syntax-e _tl1571315868_)))
                                   (let ((_hd1571515875_ (##car _e1571415871_))
                                         (_tl1571615878_
                                          (##cdr _e1571415871_)))
                                     (if (gx#stx-pair? _tl1571615878_)
                                         (let ((_e1571715881_
                                                (gx#syntax-e _tl1571615878_)))
                                           (let ((_hd1571815885_
                                                  (##car _e1571715881_))
                                                 (_tl1571915888_
                                                  (##cdr _e1571715881_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1571915888_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1571915888_)
                                                           '0)
                                                     (let ((_g28397_
                                                            (gx#syntax-split-splice
                                                             _tl1571915888_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28398_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28397_)))
                   (if (not (fx= _g28398_ 2))
                       (error "Context expects 2 values" _g28398_)))
                 (let ((_target1572015891_ (values-ref _g28397_ 0))
                       (_tl1572215894_ (values-ref _g28397_ 1)))
                   (if (gx#stx-null? _tl1572215894_)
                       (letrec ((_loop1572315897_
                                 (lambda (_hd1572115901_ _arg1572715904_)
                                   (if (gx#stx-pair? _hd1572115901_)
                                       (let ((_e1572415907_
                                              (gx#syntax-e _hd1572115901_)))
                                         (let ((_lp-hd1572515911_
                                                (##car _e1572415907_))
                                               (_lp-tl1572615914_
                                                (##cdr _e1572415907_)))
                                           (_loop1572315897_
                                            _lp-tl1572615914_
                                            (cons _lp-hd1572515911_
                                                  _arg1572715904_))))
                                       (let ((_arg1572815917_
                                              (reverse _arg1572715904_)))
                                         ((lambda (_L15921_ _L15923_ _L15924_)
                                            (if (if (gx#identifier? _L15924_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1594315946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1594415949_)
                        (cons _g1594315946_ _g1594415949_))
                      '()
                      _L15921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L15923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L15924_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1595115954_
                                                              _g1595215957_)
                                                       (cons _g1595115954_
                                                             _g1595215957_))
                                                     '()
                                                     _L15921_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1570515854_ _g1570715858_)))
                                          _arg1572815917_
                                          _hd1571815885_
                                          _hd1571515875_))))))
                         (_loop1572315897_ _target1572015891_ '()))
                       (_g1570515854_ _g1570715858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1570515854_
                                                      _g1570715858_))
                                                 (_g1570515854_
                                                  _g1570715858_))))
                                         (_g1570515854_ _g1570715858_))))
                                 (_g1570515854_ _g1570715858_))))
                         (_g1570515854_ _g1570715858_)))))
              (_g1570415960_ _$stx15701_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx15966_)
        (let ((_g1597116011_
               (lambda (_g1597216007_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1597216007_))))
          (let ((_g1597016112_
                 (lambda (_g1597216015_)
                   (if (gx#stx-pair? _g1597216015_)
                       (let ((_e1598816018_ (gx#syntax-e _g1597216015_)))
                         (let ((_hd1598916022_ (##car _e1598816018_))
                               (_tl1599016025_ (##cdr _e1598816018_)))
                           (if (gx#stx-pair? _tl1599016025_)
                               (let ((_e1599116028_
                                      (gx#syntax-e _tl1599016025_)))
                                 (let ((_hd1599216032_ (##car _e1599116028_))
                                       (_tl1599316035_ (##cdr _e1599116028_)))
                                   (if (gx#stx-pair? _tl1599316035_)
                                       (let ((_e1599416038_
                                              (gx#syntax-e _tl1599316035_)))
                                         (let ((_hd1599516042_
                                                (##car _e1599416038_))
                                               (_tl1599616045_
                                                (##cdr _e1599416038_)))
                                           (if (gx#stx-pair/null?
                                                _tl1599616045_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1599616045_)
                                                         '0)
                                                   (let ((_g28399_
                                                          (gx#syntax-split-splice
                                                           _tl1599616045_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28400_
                                                              (values-count
                                                               _g28399_)))
                                                         (if (not (fx= _g28400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28400_)))
               (let ((_target1599716048_ (values-ref _g28399_ 0))
                     (_tl1599916051_ (values-ref _g28399_ 1)))
                 (if (gx#stx-null? _tl1599916051_)
                     (letrec ((_loop1600016054_
                               (lambda (_hd1599816058_ _rest1600416061_)
                                 (if (gx#stx-pair? _hd1599816058_)
                                     (let ((_e1600116064_
                                            (gx#syntax-e _hd1599816058_)))
                                       (let ((_lp-hd1600216068_
                                              (##car _e1600116064_))
                                             (_lp-tl1600316071_
                                              (##cdr _e1600116064_)))
                                         (_loop1600016054_
                                          _lp-tl1600316071_
                                          (cons _lp-hd1600216068_
                                                _rest1600416061_))))
                                     (let ((_rest1600516074_
                                            (reverse _rest1600416061_)))
                                       ((lambda (_L16078_
                                                 _L16080_
                                                 _L16081_
                                                 _L16082_)
                                          (cons _L16082_
                                                (cons (cons _L16082_
                                                            (cons _L16081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16080_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1610316106_ _g1610416109_)
                         (cons _g1610316106_ _g1610416109_))
                       '()
                       _L16078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1600516074_
                                        _hd1599516042_
                                        _hd1599216032_
                                        _hd1598916022_))))))
                       (_loop1600016054_ _target1599716048_ '()))
                     (_g1597116011_ _g1597216015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1597116011_
                                                    _g1597216015_))
                                               (_g1597116011_ _g1597216015_))))
                                       (_g1597116011_ _g1597216015_))))
                               (_g1597116011_ _g1597216015_))))
                       (_g1597116011_ _g1597216015_)))))
            (let ((_g1596916166_
                   (lambda (_g1597216116_)
                     (if (gx#stx-pair? _g1597216116_)
                         (let ((_e1597516119_ (gx#syntax-e _g1597216116_)))
                           (let ((_hd1597616123_ (##car _e1597516119_))
                                 (_tl1597716126_ (##cdr _e1597516119_)))
                             (if (gx#stx-pair? _tl1597716126_)
                                 (let ((_e1597816129_
                                        (gx#syntax-e _tl1597716126_)))
                                   (let ((_hd1597916133_ (##car _e1597816129_))
                                         (_tl1598016136_
                                          (##cdr _e1597816129_)))
                                     (if (gx#stx-pair? _tl1598016136_)
                                         (let ((_e1598116139_
                                                (gx#syntax-e _tl1598016136_)))
                                           (let ((_hd1598216143_
                                                  (##car _e1598116139_))
                                                 (_tl1598316146_
                                                  (##cdr _e1598116139_)))
                                             (if (gx#stx-null? _tl1598316146_)
                                                 ((lambda (_L16149_ _L16151_)
                                                    (if (gx#identifier?
                                                         _L16149_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16149_ '()))
                                  '())))
                (_g1597016112_ _g1597216116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1598216143_
                                                  _hd1597916133_)
                                                 (_g1597016112_
                                                  _g1597216116_))))
                                         (_g1597016112_ _g1597216116_))))
                                 (_g1597016112_ _g1597216116_))))
                         (_g1597016112_ _g1597216116_)))))
              (_g1596916166_ _$stx15966_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16171_)
        (let ((_g1617616223_
               (lambda (_g1617716219_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1617716219_))))
          (let ((_g1617516336_
                 (lambda (_g1617716227_)
                   (if (gx#stx-pair? _g1617716227_)
                       (let ((_e1619716230_ (gx#syntax-e _g1617716227_)))
                         (let ((_hd1619816234_ (##car _e1619716230_))
                               (_tl1619916237_ (##cdr _e1619716230_)))
                           (if (gx#stx-pair? _tl1619916237_)
                               (let ((_e1620016240_
                                      (gx#syntax-e _tl1619916237_)))
                                 (let ((_hd1620116244_ (##car _e1620016240_))
                                       (_tl1620216247_ (##cdr _e1620016240_)))
                                   (if (gx#stx-pair? _tl1620216247_)
                                       (let ((_e1620316250_
                                              (gx#syntax-e _tl1620216247_)))
                                         (let ((_hd1620416254_
                                                (##car _e1620316250_))
                                               (_tl1620516257_
                                                (##cdr _e1620316250_)))
                                           (if (gx#stx-pair/null?
                                                _tl1620516257_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1620516257_)
                                                         '1)
                                                   (let ((_g28401_
                                                          (gx#syntax-split-splice
                                                           _tl1620516257_
                                                           '1)))
                                                     (begin
                                                       (let ((_g28402_
                                                              (values-count
                                                               _g28401_)))
                                                         (if (not (fx= _g28402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28402_)))
               (let ((_target1620616260_ (values-ref _g28401_ 0))
                     (_tl1620816263_ (values-ref _g28401_ 1)))
                 (if (gx#stx-pair? _tl1620816263_)
                     (let ((_e1621516266_ (gx#syntax-e _tl1620816263_)))
                       (let ((_hd1621616270_ (##car _e1621516266_))
                             (_tl1621716273_ (##cdr _e1621516266_)))
                         (if (gx#stx-null? _tl1621716273_)
                             (letrec ((_loop1620916276_
                                       (lambda (_hd1620716280_
                                                _path1621316283_)
                                         (if (gx#stx-pair? _hd1620716280_)
                                             (let ((_e1621016286_
                                                    (gx#syntax-e
                                                     _hd1620716280_)))
                                               (let ((_lp-hd1621116290_
                                                      (##car _e1621016286_))
                                                     (_lp-tl1621216293_
                                                      (##cdr _e1621016286_)))
                                                 (_loop1620916276_
                                                  _lp-tl1621216293_
                                                  (cons _lp-hd1621116290_
                                                        _path1621316283_))))
                                             (let ((_path1621416296_
                                                    (reverse _path1621316283_)))
                                               ((lambda (_L16300_
                                                         _L16302_
                                                         _L16303_
                                                         _L16304_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'slot-set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@)
                            (cons _L16304_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1632716330_
                                                    _g1632816333_)
                                             (cons _g1632716330_
                                                   _g1632816333_))
                                           '()
                                           _L16302_))))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16303_ '()))
                            (cons _L16300_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1621616270_
                                                _path1621416296_
                                                _hd1620416254_
                                                _hd1620116244_))))))
                               (_loop1620916276_ _target1620616260_ '()))
                             (_g1617616223_ _g1617716227_))))
                     (_g1617616223_ _g1617716227_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1617616223_
                                                    _g1617716227_))
                                               (_g1617616223_ _g1617716227_))))
                                       (_g1617616223_ _g1617716227_))))
                               (_g1617616223_ _g1617716227_))))
                       (_g1617616223_ _g1617716227_)))))
            (let ((_g1617416404_
                   (lambda (_g1617716340_)
                     (if (gx#stx-pair? _g1617716340_)
                         (let ((_e1618116343_ (gx#syntax-e _g1617716340_)))
                           (let ((_hd1618216347_ (##car _e1618116343_))
                                 (_tl1618316350_ (##cdr _e1618116343_)))
                             (if (gx#stx-pair? _tl1618316350_)
                                 (let ((_e1618416353_
                                        (gx#syntax-e _tl1618316350_)))
                                   (let ((_hd1618516357_ (##car _e1618416353_))
                                         (_tl1618616360_
                                          (##cdr _e1618416353_)))
                                     (if (gx#stx-pair? _tl1618616360_)
                                         (let ((_e1618716363_
                                                (gx#syntax-e _tl1618616360_)))
                                           (let ((_hd1618816367_
                                                  (##car _e1618716363_))
                                                 (_tl1618916370_
                                                  (##cdr _e1618716363_)))
                                             (if (gx#stx-pair? _tl1618916370_)
                                                 (let ((_e1619016373_
                                                        (gx#syntax-e
                                                         _tl1618916370_)))
                                                   (let ((_hd1619116377_
                                                          (##car _e1619016373_))
                                                         (_tl1619216380_
                                                          (##cdr _e1619016373_)))
                                                     (if (gx#stx-null?
                                                          _tl1619216380_)
                                                         ((lambda (_L16383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16385_
                           _L16386_)
                    (if (gx#identifier? _L16385_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16386_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16385_ '()))
                                          (cons _L16383_ '()))))
                        (_g1617516336_ _g1617716340_)))
                  _hd1619116377_
                  _hd1618816367_
                  _hd1618516357_)
                 (_g1617516336_ _g1617716340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1617516336_
                                                  _g1617716340_))))
                                         (_g1617516336_ _g1617716340_))))
                                 (_g1617516336_ _g1617716340_))))
                         (_g1617516336_ _g1617716340_)))))
              (_g1617416404_ _$stx16171_))))))))
