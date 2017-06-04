(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29511_|
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
      (lambda _$args15296_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15296_)))
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
      (lambda _$args15292_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15292_)))
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
      (lambda _$args15288_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15288_)))
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
      (lambda _$args15284_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15284_)))
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
      (lambda _$args15280_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15280_)))
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
      (lambda _$args15276_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15276_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1524815262_
             (lambda (_stx15250_ _is?15252_)
               (if (gx#identifier? _stx15250_)
                   (let ((_e1525315255_
                          (gx#syntax-local-value _stx15250_ false)))
                     (if _e1525315255_
                         (let ((_e15259_ _e1525315255_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15259_)
                               (_is?15252_ _e15259_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29499_
          (let ((_g29498_ (length _g29499_)))
            (cond ((fx= _g29498_ 1)
                   (apply (lambda (_stx15266_)
                            (let ((_is?15269_ true))
                              (_opt-lambda1524815262_ _stx15266_ _is?15269_)))
                          _g29499_))
                  ((fx= _g29498_ 2) (apply _opt-lambda1524815262_ _g29499_))
                  (else (error "No clause matching arguments" _g29499_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15246_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15246_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15243_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15243_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15237_)
        (if _id15237_
            (let ((_info15240_ (gx#syntax-local-value _id15237_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15240_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15240_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15228_)
        (let ((_body-opt?15231_
               (lambda (_key15234_)
                 (memq (gx#stx-e _key15234_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx15228_ _body-opt?15231_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14101_
               _id14103_
               _super-ref14104_
               _els14105_
               _body14106_
               _struct?14107_)
        (let ((_wrap14109_
               (lambda (_e-stx15225_)
                 (gx#stx-wrap-source
                  _e-stx15225_
                  (gx#stx-source _stx14101_)))))
          (let ((_make-id14111_
                 (if (uninterned-symbol? (gx#stx-e _id14103_))
                     (lambda _g29510_ (gx#genident _id14103_))
                     (lambda _args15222_
                       (apply gx#stx-identifier _id14103_ _args15222_)))))
            (begin
              (gx#check-duplicate-identifiers _els14105_ _stx14101_)
              (let ((_name14113_ (symbol->string (gx#stx-e _id14103_))))
                (let ((_super14116_
                       (if _struct?14107_
                           (if _super-ref14104_
                               (gx#syntax-local-value _super-ref14104_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14104_))))
                  (let ((_g1411914127_
                         (lambda (_g1412014123_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1412014123_))))
                    (let ((_g1411815216_
                           (lambda (_g1412014131_)
                             ((lambda (_L14134_)
                                (let ()
                                  (let ((_g1415014158_
                                         (lambda (_g1415114154_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1415114154_))))
                                    (let ((_g1414915212_
                                           (lambda (_g1415114162_)
                                             ((lambda (_L14165_)
                                                (let ()
                                                  (let ((_g1417814186_
                                                         (lambda (_g1417914182_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1417914182_))))
                                                    (let ((_g1417715208_
                                                           (lambda (_g1417914190_)
                                                             ((lambda (_L14193_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1420614214_
                                 (lambda (_g1420714210_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1420714210_))))
                            (let ((_g1420515204_
                                   (lambda (_g1420714218_)
                                     ((lambda (_L14221_)
                                        (let ()
                                          (let ((_g1423414242_
                                                 (lambda (_g1423514238_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1423514238_))))
                                            (let ((_g1423315200_
                                                   (lambda (_g1423514246_)
                                                     ((lambda (_L14249_)
                                                        (let ()
                                                          (let ((_g1426214270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1426314266_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1426314266_))))
                    (let ((_g1426115196_
                           (lambda (_g1426314274_)
                             ((lambda (_L14277_)
                                (let ()
                                  (let ((_g1429014307_
                                         (lambda (_g1429114303_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1429114303_))))
                                    (let ((_g1428915192_
                                           (lambda (_g1429114311_)
                                             (if (gx#stx-pair/null?
                                                  _g1429114311_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1429114311_)
                                                           '0)
                                                     (let ((_g29500_
                                                            (gx#syntax-split-splice
                                                             _g1429114311_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29501_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29500_)))
                   (if (not (fx= _g29501_ 2))
                       (error "Context expects 2 values" _g29501_)))
                 (let ((_target1429314314_ (values-ref _g29500_ 0))
                       (_tl1429514317_ (values-ref _g29500_ 1)))
                   (if (gx#stx-null? _tl1429514317_)
                       (letrec ((_loop1429614320_
                                 (lambda (_hd1429414324_ _attr1430014327_)
                                   (if (gx#stx-pair? _hd1429414324_)
                                       (let ((_e1429714330_
                                              (gx#syntax-e _hd1429414324_)))
                                         (let ((_lp-hd1429814334_
                                                (##car _e1429714330_))
                                               (_lp-tl1429914337_
                                                (##cdr _e1429714330_)))
                                           (_loop1429614320_
                                            _lp-tl1429914337_
                                            (cons _lp-hd1429814334_
                                                  _attr1430014327_))))
                                       (let ((_attr1430114340_
                                              (reverse _attr1430014327_)))
                                         ((lambda (_L14344_)
                                            (let ()
                                              (let ((_g1436114378_
                                                     (lambda (_g1436214374_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1436214374_))))
                                                (let ((_g1436015183_
                                                       (lambda (_g1436214382_)
                                                         (if (gx#stx-pair/null?
                                                              _g1436214382_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1436214382_)
                               '0)
                         (let ((_g29502_
                                (gx#syntax-split-splice _g1436214382_ '0)))
                           (begin
                             (let ((_g29503_ (values-count _g29502_)))
                               (if (not (fx= _g29503_ 2))
                                   (error "Context expects 2 values"
                                          _g29503_)))
                             (let ((_target1436414385_ (values-ref _g29502_ 0))
                                   (_tl1436614388_ (values-ref _g29502_ 1)))
                               (if (gx#stx-null? _tl1436614388_)
                                   (letrec ((_loop1436714391_
                                             (lambda (_hd1436514395_
                                                      _getf1437114398_)
                                               (if (gx#stx-pair?
                                                    _hd1436514395_)
                                                   (let ((_e1436814401_
                                                          (gx#syntax-e
                                                           _hd1436514395_)))
                                                     (let ((_lp-hd1436914405_
                                                            (##car _e1436814401_))
                                                           (_lp-tl1437014408_
                                                            (##cdr _e1436814401_)))
                                                       (_loop1436714391_
                                                        _lp-tl1437014408_
                                                        (cons _lp-hd1436914405_
                                                              _getf1437114398_))))
                                                   (let ((_getf1437214411_
                                                          (reverse _getf1437114398_)))
                                                     ((lambda (_L14415_)
                                                        (let ()
                                                          (let ((_g1443214449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1443314445_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1443314445_))))
                    (let ((_g1443115174_
                           (lambda (_g1443314453_)
                             (if (gx#stx-pair/null? _g1443314453_)
                                 (if (fx>= (gx#stx-length _g1443314453_) '0)
                                     (let ((_g29504_
                                            (gx#syntax-split-splice
                                             _g1443314453_
                                             '0)))
                                       (begin
                                         (let ((_g29505_
                                                (values-count _g29504_)))
                                           (if (not (fx= _g29505_ 2))
                                               (error "Context expects 2 values"
                                                      _g29505_)))
                                         (let ((_target1443514456_
                                                (values-ref _g29504_ 0))
                                               (_tl1443714459_
                                                (values-ref _g29504_ 1)))
                                           (if (gx#stx-null? _tl1443714459_)
                                               (letrec ((_loop1443814462_
                                                         (lambda (_hd1443614466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1444214469_)
                   (if (gx#stx-pair? _hd1443614466_)
                       (let ((_e1443914472_ (gx#syntax-e _hd1443614466_)))
                         (let ((_lp-hd1444014476_ (##car _e1443914472_))
                               (_lp-tl1444114479_ (##cdr _e1443914472_)))
                           (_loop1443814462_
                            _lp-tl1444114479_
                            (cons _lp-hd1444014476_ _setf1444214469_))))
                       (let ((_setf1444314482_ (reverse _setf1444214469_)))
                         ((lambda (_L14486_)
                            (let ()
                              (let ((_type-attr14528_
                                     (if (gx#stx-null? _els14105_)
                                         '()
                                         (if _struct?14107_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14486_
                                                            _L14415_)
                                                           (foldr (lambda (_g1450214506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1450314509_
                                   _g1450414511_)
                            (cons (cons _g1450314509_ (cons _g1450214506_ '()))
                                  _g1450414511_))
                          '()
                          _L14486_
                          _L14415_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14486_
                                                            _L14415_
                                                            _L14344_)
                                                           (foldr (lambda (_g1451314518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1451414521_
                                   _g1451514523_
                                   _g1451614525_)
                            (cons (cons _g1451514523_
                                        (cons _g1451414521_
                                              (cons _g1451314518_ '())))
                                  _g1451614525_))
                          '()
                          _L14486_
                          _L14415_
                          _L14344_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14535_
                                       (cons 'name:
                                             (cons (let ((_$e14531_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14106_)))
                                                     (if _$e14531_
                                                         _$e14531_
                                                         _id14103_))
                                                   '()))))
                                  (let ((_type-id14550_
                                         (let ((_$e14546_
                                                (let ((_e1453714539_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14106_)))
                                                  (if _e1453714539_
                                                      (let ((_e14543_
                                                             _e1453714539_))
                                                        (cons 'id:
                                                              (cons _e14543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14546_ _$e14546_ '()))))
                                    (let ((_type-ctor14565_
                                           (let ((_$e14561_
                                                  (let ((_e1455214554_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14106_)))
                                                    (if _e1455214554_
                                                        (let ((_e14558_
                                                               _e1455214554_))
                                                          (cons 'constructor:
                                                                (cons _e14558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14561_ _$e14561_ '()))))
                                      (let ((_plist14583_
                                             (let ((_plist14572_
                                                    (let ((_$e14568_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14106_)))
                                                      (if _$e14568_
                                                          _$e14568_
                                                          '()))))
                                               (let ((_plist14575_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14106_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14572_)
                  _plist14572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14578_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14106_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14575_)
                    _plist14575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14578_))))))
                                        (let ((_type-plist14623_
                                               (if (null? _plist14583_)
                                                   _plist14583_
                                                   (let ((_g1458614594_
                                                          (lambda (_g1458714590_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1458714590_))))
                                                     (let ((_g1458514619_
                                                            (lambda (_g1458714598_)
                                                              ((lambda (_L14601_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14601_ '()))
                                       '()))))
                       _g1458714598_))))
               (_g1458514619_ _plist14583_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1462614643_
                                                 (lambda (_g1462714639_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1462714639_))))
                                            (let ((_g1462515170_
                                                   (lambda (_g1462714647_)
                                                     (if (gx#stx-pair/null?
                                                          _g1462714647_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1462714647_)
                           '0)
                     (let ((_g29506_
                            (gx#syntax-split-splice _g1462714647_ '0)))
                       (begin
                         (let ((_g29507_ (values-count _g29506_)))
                           (if (not (fx= _g29507_ 2))
                               (error "Context expects 2 values" _g29507_)))
                         (let ((_target1462914650_ (values-ref _g29506_ 0))
                               (_tl1463114653_ (values-ref _g29506_ 1)))
                           (if (gx#stx-null? _tl1463114653_)
                               (letrec ((_loop1463214656_
                                         (lambda (_hd1463014660_
                                                  _type-body1463614663_)
                                           (if (gx#stx-pair? _hd1463014660_)
                                               (let ((_e1463314666_
                                                      (gx#syntax-e
                                                       _hd1463014660_)))
                                                 (let ((_lp-hd1463414670_
                                                        (##car _e1463314666_))
                                                       (_lp-tl1463514673_
                                                        (##cdr _e1463314666_)))
                                                   (_loop1463214656_
                                                    _lp-tl1463514673_
                                                    (cons _lp-hd1463414670_
                                                          _type-body1463614663_))))
                                               (let ((_type-body1463714676_
                                                      (reverse _type-body1463614663_)))
                                                 ((lambda (_L14680_)
                                                    (let ()
                                                      (let ((_g1469614704_
                                                             (lambda (_g1469714700_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1469714700_))))
                                                        (let ((_g1469515158_
                                                               (lambda (_g1469714708_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14711_)
                            (let ()
                              (let ((_g1472414732_
                                     (lambda (_g1472514728_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1472514728_))))
                                (let ((_g1472315154_
                                       (lambda (_g1472514736_)
                                         ((lambda (_L14739_)
                                            (let ()
                                              (let ((_g1475214760_
                                                     (lambda (_g1475314756_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1475314756_))))
                                                (let ((_g1475115068_
                                                       (lambda (_g1475314764_)
                                                         ((lambda (_L14767_)
                                                            (let ()
                                                              (let ((_g1478014788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1478114784_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1478114784_))))
                        (let ((_g1477915064_
                               (lambda (_g1478114792_)
                                 ((lambda (_L14795_)
                                    (let ()
                                      (let ((_g1480814816_
                                             (lambda (_g1480914812_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1480914812_))))
                                        (let ((_g1480715060_
                                               (lambda (_g1480914820_)
                                                 ((lambda (_L14823_)
                                                    (let ()
                                                      (let ((_g1483614844_
                                                             (lambda (_g1483714840_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1483714840_))))
                                                        (let ((_g1483515018_
                                                               (lambda (_g1483714848_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14851_)
                            (let ()
                              (let ((_g1486414872_
                                     (lambda (_g1486514868_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1486514868_))))
                                (let ((_g1486315014_
                                       (lambda (_g1486514876_)
                                         ((lambda (_L14879_)
                                            (let ()
                                              (let ((_g1489214900_
                                                     (lambda (_g1489314896_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1489314896_))))
                                                (let ((_g1489115010_
                                                       (lambda (_g1489314904_)
                                                         ((lambda (_L14907_)
                                                            (let ()
                                                              (let ((_g1492014928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1492114924_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1492114924_))))
                        (let ((_g1491915006_
                               (lambda (_g1492114932_)
                                 ((lambda (_L14935_)
                                    (let ()
                                      (let ((_g1494814956_
                                             (lambda (_g1494914952_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1494914952_))))
                                        (let ((_g1494714978_
                                               (lambda (_g1494914960_)
                                                 ((lambda (_L14963_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap14109_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14963_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1494914960_))))
                                          (_g1494714978_
                                           (_wrap14109_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L14165_
                                                        (cons (cons _L14739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L14193_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14767_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L14193_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L14221_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14249_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1498114988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1498214991_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1498114988_ '()))
                               _g1498214991_))
                       '()
                       _L14415_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1498314994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1498414997_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1498314994_ '()))
                                     _g1498414997_))
                             '()
                             _L14486_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14823_ '()))
                                    (cons _L14851_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14879_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14935_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1498515000_
                                                        _g1498615003_)
                                                 (cons _g1498515000_
                                                       _g1498615003_))
                                               '()
                                               _L14344_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1492114932_))))
                          (_g1491915006_ _plist14583_)))))
                  _g1489314904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1489115010_
                                                   (if (not (null? _type-ctor14565_))
                                                       (cadr _type-ctor14565_)
                                                       '#f))))))
                                          _g1486514876_))))
                                  (_g1486315014_ (cadr _type-name14535_))))))
                          _g1483714848_))))
                  (_g1483515018_
                   (let ((_quote-e15057_
                          (lambda (_x-ref15022_)
                            (if _x-ref15022_
                                (let ((_g1502515033_
                                       (lambda (_g1502615029_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1502615029_))))
                                  (let ((_g1502415053_
                                         (lambda (_g1502615037_)
                                           ((lambda (_L15040_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L15040_ '()))))
                                            _g1502615037_))))
                                    (_g1502415053_ _x-ref15022_)))
                                '#f))))
                     (if _struct?14107_
                         (_quote-e15057_ _super-ref14104_)
                         (cons 'list
                               (map _quote-e15057_ _super-ref14104_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1480914820_))))
                                          (_g1480715060_
                                           (if (not (null? _type-id14550_))
                                               (cadr _type-id14550_)
                                               '#f))))))
                                  _g1478114792_))))
                          (_g1477915064_
                           (if _struct?14107_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1475314764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1475115068_
                                                   (if _struct?14107_
                                                       (if _super14116_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14277_ '()))
                   '#f)
               (let ((_g1507215089_
                      (lambda (_g1507315085_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1507315085_))))
                 (let ((_g1507115150_
                        (lambda (_g1507315093_)
                          (if (gx#stx-pair/null? _g1507315093_)
                              (if (fx>= (gx#stx-length _g1507315093_) '0)
                                  (let ((_g29508_
                                         (gx#syntax-split-splice
                                          _g1507315093_
                                          '0)))
                                    (begin
                                      (let ((_g29509_ (values-count _g29508_)))
                                        (if (not (fx= _g29509_ 2))
                                            (error "Context expects 2 values"
                                                   _g29509_)))
                                      (let ((_target1507515096_
                                             (values-ref _g29508_ 0))
                                            (_tl1507715099_
                                             (values-ref _g29508_ 1)))
                                        (if (gx#stx-null? _tl1507715099_)
                                            (letrec ((_loop1507815102_
                                                      (lambda (_hd1507615106_
                                                               _super-id1508215109_)
                                                        (if (gx#stx-pair?
                                                             _hd1507615106_)
                                                            (let ((_e1507915112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1507615106_)))
                      (let ((_lp-hd1508015116_ (##car _e1507915112_))
                            (_lp-tl1508115119_ (##cdr _e1507915112_)))
                        (_loop1507815102_
                         _lp-tl1508115119_
                         (cons _lp-hd1508015116_ _super-id1508215109_))))
                    (let ((_super-id1508315122_
                           (reverse _super-id1508215109_)))
                      ((lambda (_L15126_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1514115144_ _g1514215147_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1514115144_
                                                              '()))
                                                  _g1514215147_))
                                          '()
                                          _L15126_)))))
                       _super-id1508315122_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1507815102_
                                               _target1507515096_
                                               '()))
                                            (_g1507215089_ _g1507315093_)))))
                                  (_g1507215089_ _g1507315093_))
                              (_g1507215089_ _g1507315093_)))))
                   (_g1507115150_ _L14277_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1472514736_))))
                                  (_g1472315154_
                                   (if _struct?14107_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1469714708_))))
                  (_g1469515158_
                   (_wrap14109_
                    (cons _L14134_
                          (cons _L14193_
                                (cons _L14277_
                                      (cons _L14221_
                                            (cons _L14249_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1516115164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1516215167_)
                     (cons _g1516115164_ _g1516215167_))
                   '()
                   _L14680_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1463714676_))))))
                                 (_loop1463214656_ _target1462914650_ '()))
                               (_g1462614643_ _g1462714647_)))))
                     (_g1462614643_ _g1462714647_))
                 (_g1462614643_ _g1462714647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1462515170_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14623_ _type-ctor14565_)
                            _type-name14535_)
                     _type-id14550_)
              _type-attr14528_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1444314482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1443814462_
                                                  _target1443514456_
                                                  '()))
                                               (_g1443214449_
                                                _g1443314453_)))))
                                     (_g1443214449_ _g1443314453_))
                                 (_g1443214449_ _g1443314453_)))))
                      (_g1443115174_
                       (gx#stx-map
                        (lambda (_g1517715179_)
                          (_make-id14111_
                           _name14113_
                           '"-"
                           _g1517715179_
                           '"-set!"))
                        _els14105_))))))
              _getf1437214411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1436714391_ _target1436414385_ '()))
                                   (_g1436114378_ _g1436214382_)))))
                         (_g1436114378_ _g1436214382_))
                     (_g1436114378_ _g1436214382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1436015183_
                                                   (gx#stx-map
                                                    (lambda (_g1518615188_)
                                                      (_make-id14111_
                                                       _name14113_
                                                       '"-"
                                                       _g1518615188_))
                                                    _els14105_))))))
                                          _attr1430114340_))))))
                         (_loop1429614320_ _target1429314314_ '()))
                       (_g1429014307_ _g1429114311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1429014307_
                                                      _g1429114311_))
                                                 (_g1429014307_
                                                  _g1429114311_)))))
                                      (_g1428915192_ _els14105_)))))
                              _g1426314274_))))
                      (_g1426115196_
                       (if _struct?14107_
                           (if _super14116_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14116_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14116_)))))))
              _g1423514246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1423315200_
                                               (_make-id14111_
                                                _name14113_
                                                '"?"))))))
                                      _g1420714218_))))
                              (_g1420515204_
                               (_make-id14111_ '"make-" _name14113_))))))
                      _g1417914190_))))
              (_g1417715208_ (_make-id14111_ _name14113_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1415114162_))))
                                      (_g1414915212_ _id14103_)))))
                              _g1412014131_))))
                      (_g1411815216_
                       (if _struct?14107_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15308_)
        (let ((_generate15311_
               (lambda (_hd15395_ _fields15397_ _body15398_)
                 (let ((_g1540115416_
                        (lambda (_g1540215412_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1540215412_))))
                   (let ((_g1540015427_
                          (lambda (_g1540215420_)
                            ((lambda ()
                               (if (gx#identifier? _hd15395_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15308_
                                    _hd15395_
                                    '#f
                                    _fields15397_
                                    _body15398_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15308_
                                    _hd15395_)))))))
                     (let ((_g1539915471_
                            (lambda (_g1540215431_)
                              (if (gx#stx-pair? _g1540215431_)
                                  (let ((_e1540515434_
                                         (gx#syntax-e _g1540215431_)))
                                    (let ((_hd1540615438_
                                           (##car _e1540515434_))
                                          (_tl1540715441_
                                           (##cdr _e1540515434_)))
                                      (if (gx#stx-pair? _tl1540715441_)
                                          (let ((_e1540815444_
                                                 (gx#syntax-e _tl1540715441_)))
                                            (let ((_hd1540915448_
                                                   (##car _e1540815444_))
                                                  (_tl1541015451_
                                                   (##cdr _e1540815444_)))
                                              (if (gx#stx-null? _tl1541015451_)
                                                  ((lambda (_L15454_ _L15456_)
                                                     (if (if (gx#identifier?
                                                              _L15456_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15454_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15308_
                                                          _L15456_
                                                          _L15454_
                                                          _fields15397_
                                                          _body15398_
                                                          '#t)
                                                         (_g1540015427_
                                                          _g1540215431_)))
                                                   _hd1540915448_
                                                   _hd1540615438_)
                                                  (_g1540015427_
                                                   _g1540215431_))))
                                          (_g1540015427_ _g1540215431_))))
                                  (_g1540015427_ _g1540215431_)))))
                       (_g1539915471_ _hd15395_)))))))
          (let ((_g1531415333_
                 (lambda (_g1531515329_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1531515329_))))
            (let ((_g1531315391_
                   (lambda (_g1531515337_)
                     (if (gx#stx-pair? _g1531515337_)
                         (let ((_e1531915340_ (gx#syntax-e _g1531515337_)))
                           (let ((_hd1532015344_ (##car _e1531915340_))
                                 (_tl1532115347_ (##cdr _e1531915340_)))
                             (if (gx#stx-pair? _tl1532115347_)
                                 (let ((_e1532215350_
                                        (gx#syntax-e _tl1532115347_)))
                                   (let ((_hd1532315354_ (##car _e1532215350_))
                                         (_tl1532415357_
                                          (##cdr _e1532215350_)))
                                     (if (gx#stx-pair? _tl1532415357_)
                                         (let ((_e1532515360_
                                                (gx#syntax-e _tl1532415357_)))
                                           (let ((_hd1532615364_
                                                  (##car _e1532515360_))
                                                 (_tl1532715367_
                                                  (##cdr _e1532515360_)))
                                             ((lambda (_L15370_
                                                       _L15372_
                                                       _L15373_)
                                                (if (if (gx#identifier-list?
                                                         _L15372_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15370_)
                                                        '#f)
                                                    (_generate15311_
                                                     _L15373_
                                                     _L15372_
                                                     _L15370_)
                                                    (_g1531415333_
                                                     _g1531515337_)))
                                              _tl1532715367_
                                              _hd1532615364_
                                              _hd1532315354_)))
                                         (_g1531415333_ _g1531515337_))))
                                 (_g1531415333_ _g1531515337_))))
                         (_g1531415333_ _g1531515337_)))))
              (_g1531315391_ _stx15308_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15475_)
        (let ((_generate15478_
               (lambda (_hd15562_ _slots15564_ _body15565_)
                 (let ((_g1556815580_
                        (lambda (_g1556915576_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1556915576_))))
                   (let ((_g1556715591_
                          (lambda (_g1556915584_)
                            ((lambda ()
                               (if (gx#identifier? _hd15562_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15475_
                                    _hd15562_
                                    '()
                                    _slots15564_
                                    _body15565_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15475_
                                    _hd15562_)))))))
                     (let ((_g1556615623_
                            (lambda (_g1556915595_)
                              (if (gx#stx-pair? _g1556915595_)
                                  (let ((_e1557215598_
                                         (gx#syntax-e _g1556915595_)))
                                    (let ((_hd1557315602_
                                           (##car _e1557215598_))
                                          (_tl1557415605_
                                           (##cdr _e1557215598_)))
                                      ((lambda (_L15608_ _L15610_)
                                         (if (if (gx#stx-list? _L15608_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15608_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15475_
                                              _L15610_
                                              (gx#syntax->list _L15608_)
                                              _slots15564_
                                              _body15565_
                                              '#f)
                                             (_g1556715591_ _g1556915595_)))
                                       _tl1557415605_
                                       _hd1557315602_)))
                                  (_g1556715591_ _g1556915595_)))))
                       (_g1556615623_ _hd15562_)))))))
          (let ((_g1548115500_
                 (lambda (_g1548215496_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1548215496_))))
            (let ((_g1548015558_
                   (lambda (_g1548215504_)
                     (if (gx#stx-pair? _g1548215504_)
                         (let ((_e1548615507_ (gx#syntax-e _g1548215504_)))
                           (let ((_hd1548715511_ (##car _e1548615507_))
                                 (_tl1548815514_ (##cdr _e1548615507_)))
                             (if (gx#stx-pair? _tl1548815514_)
                                 (let ((_e1548915517_
                                        (gx#syntax-e _tl1548815514_)))
                                   (let ((_hd1549015521_ (##car _e1548915517_))
                                         (_tl1549115524_
                                          (##cdr _e1548915517_)))
                                     (if (gx#stx-pair? _tl1549115524_)
                                         (let ((_e1549215527_
                                                (gx#syntax-e _tl1549115524_)))
                                           (let ((_hd1549315531_
                                                  (##car _e1549215527_))
                                                 (_tl1549415534_
                                                  (##cdr _e1549215527_)))
                                             ((lambda (_L15537_
                                                       _L15539_
                                                       _L15540_)
                                                (if (if (gx#identifier-list?
                                                         _L15539_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15537_)
                                                        '#f)
                                                    (_generate15478_
                                                     _L15540_
                                                     _L15539_
                                                     _L15537_)
                                                    (_g1548115500_
                                                     _g1548215504_)))
                                              _tl1549415534_
                                              _hd1549315531_
                                              _hd1549015521_)))
                                         (_g1548115500_ _g1548215504_))))
                                 (_g1548115500_ _g1548215504_))))
                         (_g1548115500_ _g1548215504_)))))
              (_g1548015558_ _stx15475_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15627_)
        (let ((_wrap15630_
               (lambda (_e-stx15935_)
                 (gx#stx-wrap-source
                  _e-stx15935_
                  (gx#stx-source _stx15627_)))))
          (let ((_method-opt?15632_
                 (lambda (_x15932_) (memq (gx#stx-e _x15932_) '(rebind:)))))
            (let ((_g1563415663_
                   (lambda (_g1563515659_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1563515659_))))
              (let ((_g1563315928_
                     (lambda (_g1563515667_)
                       (if (gx#stx-pair? _g1563515667_)
                           (let ((_e1564015670_ (gx#syntax-e _g1563515667_)))
                             (let ((_hd1564115674_ (##car _e1564015670_))
                                   (_tl1564215677_ (##cdr _e1564015670_)))
                               (if (gx#stx-pair? _tl1564215677_)
                                   (let ((_e1564315680_
                                          (gx#syntax-e _tl1564215677_)))
                                     (let ((_hd1564415684_
                                            (##car _e1564315680_))
                                           (_tl1564515687_
                                            (##cdr _e1564315680_)))
                                       (if (gx#stx-pair? _hd1564415684_)
                                           (let ((_e1564615690_
                                                  (gx#syntax-e
                                                   _hd1564415684_)))
                                             (let ((_hd1564715694_
                                                    (##car _e1564615690_))
                                                   (_tl1564815697_
                                                    (##cdr _e1564615690_)))
                                               (if (gx#identifier?
                                                    _hd1564715694_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29511_|
                                                        _hd1564715694_)
                                                       (if (gx#stx-pair?
                                                            _tl1564815697_)
                                                           (let ((_e1564915700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1564815697_)))
                     (let ((_hd1565015704_ (##car _e1564915700_))
                           (_tl1565115707_ (##cdr _e1564915700_)))
                       (if (gx#stx-pair? _tl1565115707_)
                           (let ((_e1565215710_ (gx#syntax-e _tl1565115707_)))
                             (let ((_hd1565315714_ (##car _e1565215710_))
                                   (_tl1565415717_ (##cdr _e1565215710_)))
                               (if (gx#stx-null? _tl1565415717_)
                                   (if (gx#stx-pair? _tl1564515687_)
                                       (let ((_e1565515720_
                                              (gx#syntax-e _tl1564515687_)))
                                         (let ((_hd1565615724_
                                                (##car _e1565515720_))
                                               (_tl1565715727_
                                                (##cdr _e1565515720_)))
                                           ((lambda (_L15730_
                                                     _L15732_
                                                     _L15733_
                                                     _L15734_)
                                              (if (if (gx#identifier? _L15734_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15733_)
                                                          (gx#stx-plist?
                                                           _L15730_
                                                           _method-opt?15632_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15759_
                                                         (gx#syntax-local-value
                                                          _L15733_)))
                                                    (let ((_rebind?15762_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15730_))
                       '#t
                       '#f)))
              (let ((_g1576515773_
                     (lambda (_g1576615769_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1576615769_))))
                (let ((_g1576415924_
                       (lambda (_g1576615777_)
                         ((lambda (_L15780_)
                            (let ()
                              (let ((_g1579415802_
                                     (lambda (_g1579515798_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1579515798_))))
                                (let ((_g1579315920_
                                       (lambda (_g1579515806_)
                                         ((lambda (_L15809_)
                                            (let ()
                                              (let ((_g1582215830_
                                                     (lambda (_g1582315826_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1582315826_))))
                                                (let ((_g1582115916_
                                                       (lambda (_g1582315834_)
                                                         ((lambda (_L15837_)
                                                            (let ()
                                                              (let ((_g1585015858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1585115854_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1585115854_))))
                        (let ((_g1584915912_
                               (lambda (_g1585115862_)
                                 ((lambda (_L15865_)
                                    (let ()
                                      (let ((_g1587815886_
                                             (lambda (_g1587915882_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1587915882_))))
                                        (let ((_g1587715908_
                                               (lambda (_g1587915890_)
                                                 ((lambda (_L15893_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15630_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15893_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1587915890_))))
                                          (_g1587715908_
                                           (_wrap15630_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15780_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15734_ '()))
                      (cons _L15809_ (cons _L15865_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1585115862_))))
                          (_g1584915912_ _rebind?15762_)))))
                  _g1582315834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1582115916_
                                                   (_wrap15630_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15809_
                                                                (cons _L15732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1579515806_))))
                                  (_g1579315920_
                                   (gx#stx-identifier
                                    _L15734_
                                    _L15733_
                                    '"::"
                                    _L15734_))))))
                          _g1576615777_))))
                  (_g1576415924_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1563415663_
                                                   _g1563515667_)))
                                            _tl1565715727_
                                            _hd1565615724_
                                            _hd1565315714_
                                            _hd1565015704_)))
                                       (_g1563415663_ _g1563515667_))
                                   (_g1563415663_ _g1563515667_))))
                           (_g1563415663_ _g1563515667_))))
                   (_g1563415663_ _g1563515667_))
               (_g1563415663_ _g1563515667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1563415663_
                                                    _g1563515667_))))
                                           (_g1563415663_ _g1563515667_))))
                                   (_g1563415663_ _g1563515667_))))
                           (_g1563415663_ _g1563515667_)))))
                (_g1563315928_ _stx15627_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15938_)
        (let ((_g1594315992_
               (lambda (_g1594415988_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1594415988_))))
          (let ((_g1594216091_
                 (lambda (_g1594415996_)
                   (if (gx#stx-pair? _g1594415996_)
                       (let ((_e1596915999_ (gx#syntax-e _g1594415996_)))
                         (let ((_hd1597016003_ (##car _e1596915999_))
                               (_tl1597116006_ (##cdr _e1596915999_)))
                           (if (gx#stx-pair? _tl1597116006_)
                               (let ((_e1597216009_
                                      (gx#syntax-e _tl1597116006_)))
                                 (let ((_hd1597316013_ (##car _e1597216009_))
                                       (_tl1597416016_ (##cdr _e1597216009_)))
                                   (if (gx#stx-pair? _tl1597416016_)
                                       (let ((_e1597516019_
                                              (gx#syntax-e _tl1597416016_)))
                                         (let ((_hd1597616023_
                                                (##car _e1597516019_))
                                               (_tl1597716026_
                                                (##cdr _e1597516019_)))
                                           (if (gx#stx-pair/null?
                                                _tl1597716026_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1597716026_)
                                                         '0)
                                                   (let ((_g29512_
                                                          (gx#syntax-split-splice
                                                           _tl1597716026_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29513_
                                                              (values-count
                                                               _g29512_)))
                                                         (if (not (fx= _g29513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29513_)))
               (let ((_target1597816029_ (values-ref _g29512_ 0))
                     (_tl1598016032_ (values-ref _g29512_ 1)))
                 (if (gx#stx-null? _tl1598016032_)
                     (letrec ((_loop1598116035_
                               (lambda (_hd1597916039_ _arg1598516042_)
                                 (if (gx#stx-pair? _hd1597916039_)
                                     (let ((_e1598216045_
                                            (gx#syntax-e _hd1597916039_)))
                                       (let ((_lp-hd1598316049_
                                              (##car _e1598216045_))
                                             (_lp-tl1598416052_
                                              (##cdr _e1598216045_)))
                                         (_loop1598116035_
                                          _lp-tl1598416052_
                                          (cons _lp-hd1598316049_
                                                _arg1598516042_))))
                                     (let ((_arg1598616055_
                                            (reverse _arg1598516042_)))
                                       ((lambda (_L16059_ _L16061_ _L16062_)
                                          (if (gx#identifier? _L16062_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16061_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16062_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1608216085_ _g1608316088_)
                                   (cons _g1608216085_ _g1608316088_))
                                 '()
                                 _L16059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1594315992_ _g1594415996_)))
                                        _arg1598616055_
                                        _hd1597616023_
                                        _hd1597316013_))))))
                       (_loop1598116035_ _target1597816029_ '()))
                     (_g1594315992_ _g1594415996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1594315992_
                                                    _g1594415996_))
                                               (_g1594315992_ _g1594415996_))))
                                       (_g1594315992_ _g1594415996_))))
                               (_g1594315992_ _g1594415996_))))
                       (_g1594315992_ _g1594415996_)))))
            (let ((_g1594116197_
                   (lambda (_g1594416095_)
                     (if (gx#stx-pair? _g1594416095_)
                         (let ((_e1594816098_ (gx#syntax-e _g1594416095_)))
                           (let ((_hd1594916102_ (##car _e1594816098_))
                                 (_tl1595016105_ (##cdr _e1594816098_)))
                             (if (gx#stx-pair? _tl1595016105_)
                                 (let ((_e1595116108_
                                        (gx#syntax-e _tl1595016105_)))
                                   (let ((_hd1595216112_ (##car _e1595116108_))
                                         (_tl1595316115_
                                          (##cdr _e1595116108_)))
                                     (if (gx#stx-pair? _tl1595316115_)
                                         (let ((_e1595416118_
                                                (gx#syntax-e _tl1595316115_)))
                                           (let ((_hd1595516122_
                                                  (##car _e1595416118_))
                                                 (_tl1595616125_
                                                  (##cdr _e1595416118_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1595616125_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1595616125_)
                                                           '0)
                                                     (let ((_g29514_
                                                            (gx#syntax-split-splice
                                                             _tl1595616125_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29515_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29514_)))
                   (if (not (fx= _g29515_ 2))
                       (error "Context expects 2 values" _g29515_)))
                 (let ((_target1595716128_ (values-ref _g29514_ 0))
                       (_tl1595916131_ (values-ref _g29514_ 1)))
                   (if (gx#stx-null? _tl1595916131_)
                       (letrec ((_loop1596016134_
                                 (lambda (_hd1595816138_ _arg1596416141_)
                                   (if (gx#stx-pair? _hd1595816138_)
                                       (let ((_e1596116144_
                                              (gx#syntax-e _hd1595816138_)))
                                         (let ((_lp-hd1596216148_
                                                (##car _e1596116144_))
                                               (_lp-tl1596316151_
                                                (##cdr _e1596116144_)))
                                           (_loop1596016134_
                                            _lp-tl1596316151_
                                            (cons _lp-hd1596216148_
                                                  _arg1596416141_))))
                                       (let ((_arg1596516154_
                                              (reverse _arg1596416141_)))
                                         ((lambda (_L16158_ _L16160_ _L16161_)
                                            (if (if (gx#identifier? _L16161_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1618016183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1618116186_)
                        (cons _g1618016183_ _g1618116186_))
                      '()
                      _L16158_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16161_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1618816191_
                                                              _g1618916194_)
                                                       (cons _g1618816191_
                                                             _g1618916194_))
                                                     '()
                                                     _L16158_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1594216091_ _g1594416095_)))
                                          _arg1596516154_
                                          _hd1595516122_
                                          _hd1595216112_))))))
                         (_loop1596016134_ _target1595716128_ '()))
                       (_g1594216091_ _g1594416095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594216091_
                                                      _g1594416095_))
                                                 (_g1594216091_
                                                  _g1594416095_))))
                                         (_g1594216091_ _g1594416095_))))
                                 (_g1594216091_ _g1594416095_))))
                         (_g1594216091_ _g1594416095_)))))
              (_g1594116197_ _$stx15938_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16203_)
        (let ((_g1620816248_
               (lambda (_g1620916244_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1620916244_))))
          (let ((_g1620716349_
                 (lambda (_g1620916252_)
                   (if (gx#stx-pair? _g1620916252_)
                       (let ((_e1622516255_ (gx#syntax-e _g1620916252_)))
                         (let ((_hd1622616259_ (##car _e1622516255_))
                               (_tl1622716262_ (##cdr _e1622516255_)))
                           (if (gx#stx-pair? _tl1622716262_)
                               (let ((_e1622816265_
                                      (gx#syntax-e _tl1622716262_)))
                                 (let ((_hd1622916269_ (##car _e1622816265_))
                                       (_tl1623016272_ (##cdr _e1622816265_)))
                                   (if (gx#stx-pair? _tl1623016272_)
                                       (let ((_e1623116275_
                                              (gx#syntax-e _tl1623016272_)))
                                         (let ((_hd1623216279_
                                                (##car _e1623116275_))
                                               (_tl1623316282_
                                                (##cdr _e1623116275_)))
                                           (if (gx#stx-pair/null?
                                                _tl1623316282_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1623316282_)
                                                         '0)
                                                   (let ((_g29516_
                                                          (gx#syntax-split-splice
                                                           _tl1623316282_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29517_
                                                              (values-count
                                                               _g29516_)))
                                                         (if (not (fx= _g29517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29517_)))
               (let ((_target1623416285_ (values-ref _g29516_ 0))
                     (_tl1623616288_ (values-ref _g29516_ 1)))
                 (if (gx#stx-null? _tl1623616288_)
                     (letrec ((_loop1623716291_
                               (lambda (_hd1623516295_ _rest1624116298_)
                                 (if (gx#stx-pair? _hd1623516295_)
                                     (let ((_e1623816301_
                                            (gx#syntax-e _hd1623516295_)))
                                       (let ((_lp-hd1623916305_
                                              (##car _e1623816301_))
                                             (_lp-tl1624016308_
                                              (##cdr _e1623816301_)))
                                         (_loop1623716291_
                                          _lp-tl1624016308_
                                          (cons _lp-hd1623916305_
                                                _rest1624116298_))))
                                     (let ((_rest1624216311_
                                            (reverse _rest1624116298_)))
                                       ((lambda (_L16315_
                                                 _L16317_
                                                 _L16318_
                                                 _L16319_)
                                          (cons _L16319_
                                                (cons (cons _L16319_
                                                            (cons _L16318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16317_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1634016343_ _g1634116346_)
                         (cons _g1634016343_ _g1634116346_))
                       '()
                       _L16315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1624216311_
                                        _hd1623216279_
                                        _hd1622916269_
                                        _hd1622616259_))))))
                       (_loop1623716291_ _target1623416285_ '()))
                     (_g1620816248_ _g1620916252_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1620816248_
                                                    _g1620916252_))
                                               (_g1620816248_ _g1620916252_))))
                                       (_g1620816248_ _g1620916252_))))
                               (_g1620816248_ _g1620916252_))))
                       (_g1620816248_ _g1620916252_)))))
            (let ((_g1620616403_
                   (lambda (_g1620916353_)
                     (if (gx#stx-pair? _g1620916353_)
                         (let ((_e1621216356_ (gx#syntax-e _g1620916353_)))
                           (let ((_hd1621316360_ (##car _e1621216356_))
                                 (_tl1621416363_ (##cdr _e1621216356_)))
                             (if (gx#stx-pair? _tl1621416363_)
                                 (let ((_e1621516366_
                                        (gx#syntax-e _tl1621416363_)))
                                   (let ((_hd1621616370_ (##car _e1621516366_))
                                         (_tl1621716373_
                                          (##cdr _e1621516366_)))
                                     (if (gx#stx-pair? _tl1621716373_)
                                         (let ((_e1621816376_
                                                (gx#syntax-e _tl1621716373_)))
                                           (let ((_hd1621916380_
                                                  (##car _e1621816376_))
                                                 (_tl1622016383_
                                                  (##cdr _e1621816376_)))
                                             (if (gx#stx-null? _tl1622016383_)
                                                 ((lambda (_L16386_ _L16388_)
                                                    (if (gx#identifier?
                                                         _L16386_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16386_ '()))
                                  '())))
                (_g1620716349_ _g1620916353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1621916380_
                                                  _hd1621616370_)
                                                 (_g1620716349_
                                                  _g1620916353_))))
                                         (_g1620716349_ _g1620916353_))))
                                 (_g1620716349_ _g1620916353_))))
                         (_g1620716349_ _g1620916353_)))))
              (_g1620616403_ _$stx16203_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16408_)
        (let ((_g1641316465_
               (lambda (_g1641416461_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641416461_))))
          (let ((_g1641216594_
                 (lambda (_g1641416469_)
                   (if (gx#stx-pair? _g1641416469_)
                       (let ((_e1643616472_ (gx#syntax-e _g1641416469_)))
                         (let ((_hd1643716476_ (##car _e1643616472_))
                               (_tl1643816479_ (##cdr _e1643616472_)))
                           (if (gx#stx-pair? _tl1643816479_)
                               (let ((_e1643916482_
                                      (gx#syntax-e _tl1643816479_)))
                                 (let ((_hd1644016486_ (##car _e1643916482_))
                                       (_tl1644116489_ (##cdr _e1643916482_)))
                                   (if (gx#stx-pair? _tl1644116489_)
                                       (let ((_e1644216492_
                                              (gx#syntax-e _tl1644116489_)))
                                         (let ((_hd1644316496_
                                                (##car _e1644216492_))
                                               (_tl1644416499_
                                                (##cdr _e1644216492_)))
                                           (if (gx#stx-pair/null?
                                                _tl1644416499_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1644416499_)
                                                         '2)
                                                   (let ((_g29518_
                                                          (gx#syntax-split-splice
                                                           _tl1644416499_
                                                           '2)))
                                                     (begin
                                                       (let ((_g29519_
                                                              (values-count
                                                               _g29518_)))
                                                         (if (not (fx= _g29519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29519_)))
               (let ((_target1644516502_ (values-ref _g29518_ 0))
                     (_tl1644716505_ (values-ref _g29518_ 1)))
                 (if (gx#stx-pair? _tl1644716505_)
                     (let ((_e1645416508_ (gx#syntax-e _tl1644716505_)))
                       (let ((_hd1645516512_ (##car _e1645416508_))
                             (_tl1645616515_ (##cdr _e1645416508_)))
                         (if (gx#stx-pair? _tl1645616515_)
                             (let ((_e1645716518_
                                    (gx#syntax-e _tl1645616515_)))
                               (let ((_hd1645816522_ (##car _e1645716518_))
                                     (_tl1645916525_ (##cdr _e1645716518_)))
                                 (if (gx#stx-null? _tl1645916525_)
                                     (letrec ((_loop1644816528_
                                               (lambda (_hd1644616532_
                                                        _path1645216535_)
                                                 (if (gx#stx-pair?
                                                      _hd1644616532_)
                                                     (let ((_e1644916538_
                                                            (gx#syntax-e
                                                             _hd1644616532_)))
                                                       (let ((_lp-hd1645016542_
                                                              (##car _e1644916538_))
                                                             (_lp-tl1645116545_
                                                              (##cdr _e1644916538_)))
                                                         (_loop1644816528_
                                                          _lp-tl1645116545_
                                                          (cons _lp-hd1645016542_
                                                                _path1645216535_))))
                                                     (let ((_path1645316548_
                                                            (reverse _path1645216535_)))
                                                       ((lambda (_L16552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L16554_
                         _L16555_
                         _L16556_
                         _L16557_
                         _L16558_)
                  (cons _L16558_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L16557_
                                          (cons _L16556_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1658516588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1658616591_)
                   (cons _g1658516588_ _g1658616591_))
                 '()
                 _L16555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L16554_ (cons _L16552_ '())))))
                _hd1645816522_
                _hd1645516512_
                _path1645316548_
                _hd1644316496_
                _hd1644016486_
                _hd1643716476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1644816528_
                                        _target1644516502_
                                        '()))
                                     (_g1641316465_ _g1641416469_))))
                             (_g1641316465_ _g1641416469_))))
                     (_g1641316465_ _g1641416469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1641316465_
                                                    _g1641416469_))
                                               (_g1641316465_ _g1641416469_))))
                                       (_g1641316465_ _g1641416469_))))
                               (_g1641316465_ _g1641416469_))))
                       (_g1641316465_ _g1641416469_)))))
            (let ((_g1641116662_
                   (lambda (_g1641416598_)
                     (if (gx#stx-pair? _g1641416598_)
                         (let ((_e1641816601_ (gx#syntax-e _g1641416598_)))
                           (let ((_hd1641916605_ (##car _e1641816601_))
                                 (_tl1642016608_ (##cdr _e1641816601_)))
                             (if (gx#stx-pair? _tl1642016608_)
                                 (let ((_e1642116611_
                                        (gx#syntax-e _tl1642016608_)))
                                   (let ((_hd1642216615_ (##car _e1642116611_))
                                         (_tl1642316618_
                                          (##cdr _e1642116611_)))
                                     (if (gx#stx-pair? _tl1642316618_)
                                         (let ((_e1642416621_
                                                (gx#syntax-e _tl1642316618_)))
                                           (let ((_hd1642516625_
                                                  (##car _e1642416621_))
                                                 (_tl1642616628_
                                                  (##cdr _e1642416621_)))
                                             (if (gx#stx-pair? _tl1642616628_)
                                                 (let ((_e1642716631_
                                                        (gx#syntax-e
                                                         _tl1642616628_)))
                                                   (let ((_hd1642816635_
                                                          (##car _e1642716631_))
                                                         (_tl1642916638_
                                                          (##cdr _e1642716631_)))
                                                     (if (gx#stx-null?
                                                          _tl1642916638_)
                                                         ((lambda (_L16641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16643_
                           _L16644_)
                    (if (gx#identifier? _L16643_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16644_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16643_ '()))
                                          (cons _L16641_ '()))))
                        (_g1641216594_ _g1641416598_)))
                  _hd1642816635_
                  _hd1642516625_
                  _hd1642216615_)
                 (_g1641216594_ _g1641416598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1641216594_
                                                  _g1641416598_))))
                                         (_g1641216594_ _g1641416598_))))
                                 (_g1641216594_ _g1641416598_))))
                         (_g1641216594_ _g1641416598_)))))
              (_g1641116662_ _$stx16408_))))))))
