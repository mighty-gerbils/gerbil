(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29512_|
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
      (lambda _$args15297_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15297_)))
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
      (lambda _$args15293_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15293_)))
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
      (lambda _$args15289_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15289_)))
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
      (lambda _$args15285_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15285_)))
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
      (lambda _$args15281_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15281_)))
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
      (lambda _$args15277_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15277_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1524915263_
             (lambda (_stx15251_ _is?15253_)
               (if (gx#identifier? _stx15251_)
                   (let ((_e1525415256_
                          (gx#syntax-local-value _stx15251_ false)))
                     (if _e1525415256_
                         (let ((_e15260_ _e1525415256_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15260_)
                               (_is?15253_ _e15260_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29500_
          (let ((_g29499_ (length _g29500_)))
            (cond ((fx= _g29499_ 1)
                   (apply (lambda (_stx15267_)
                            (let ((_is?15270_ true))
                              (_opt-lambda1524915263_ _stx15267_ _is?15270_)))
                          _g29500_))
                  ((fx= _g29499_ 2) (apply _opt-lambda1524915263_ _g29500_))
                  (else (error "No clause matching arguments" _g29500_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15247_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15247_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15244_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15244_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15238_)
        (if _id15238_
            (let ((_info15241_ (gx#syntax-local-value _id15238_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15241_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15241_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15229_)
        (let ((_body-opt?15232_
               (lambda (_key15235_)
                 (memq (gx#stx-e _key15235_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx15229_ _body-opt?15232_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14102_
               _id14104_
               _super-ref14105_
               _els14106_
               _body14107_
               _struct?14108_)
        (let ((_wrap14110_
               (lambda (_e-stx15226_)
                 (gx#stx-wrap-source
                  _e-stx15226_
                  (gx#stx-source _stx14102_)))))
          (let ((_make-id14112_
                 (if (uninterned-symbol? (gx#stx-e _id14104_))
                     (lambda _g29511_ (gx#genident _id14104_))
                     (lambda _args15223_
                       (apply gx#stx-identifier _id14104_ _args15223_)))))
            (begin
              (gx#check-duplicate-identifiers _els14106_ _stx14102_)
              (let ((_name14114_ (symbol->string (gx#stx-e _id14104_))))
                (let ((_super14117_
                       (if _struct?14108_
                           (if _super-ref14105_
                               (gx#syntax-local-value _super-ref14105_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14105_))))
                  (let ((_g1412014128_
                         (lambda (_g1412114124_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1412114124_))))
                    (let ((_g1411915217_
                           (lambda (_g1412114132_)
                             ((lambda (_L14135_)
                                (let ()
                                  (let ((_g1415114159_
                                         (lambda (_g1415214155_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1415214155_))))
                                    (let ((_g1415015213_
                                           (lambda (_g1415214163_)
                                             ((lambda (_L14166_)
                                                (let ()
                                                  (let ((_g1417914187_
                                                         (lambda (_g1418014183_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1418014183_))))
                                                    (let ((_g1417815209_
                                                           (lambda (_g1418014191_)
                                                             ((lambda (_L14194_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1420714215_
                                 (lambda (_g1420814211_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1420814211_))))
                            (let ((_g1420615205_
                                   (lambda (_g1420814219_)
                                     ((lambda (_L14222_)
                                        (let ()
                                          (let ((_g1423514243_
                                                 (lambda (_g1423614239_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1423614239_))))
                                            (let ((_g1423415201_
                                                   (lambda (_g1423614247_)
                                                     ((lambda (_L14250_)
                                                        (let ()
                                                          (let ((_g1426314271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1426414267_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1426414267_))))
                    (let ((_g1426215197_
                           (lambda (_g1426414275_)
                             ((lambda (_L14278_)
                                (let ()
                                  (let ((_g1429114308_
                                         (lambda (_g1429214304_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1429214304_))))
                                    (let ((_g1429015193_
                                           (lambda (_g1429214312_)
                                             (if (gx#stx-pair/null?
                                                  _g1429214312_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1429214312_)
                                                           '0)
                                                     (let ((_g29501_
                                                            (gx#syntax-split-splice
                                                             _g1429214312_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29502_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29501_)))
                   (if (not (fx= _g29502_ 2))
                       (error "Context expects 2 values" _g29502_)))
                 (let ((_target1429414315_ (values-ref _g29501_ 0))
                       (_tl1429614318_ (values-ref _g29501_ 1)))
                   (if (gx#stx-null? _tl1429614318_)
                       (letrec ((_loop1429714321_
                                 (lambda (_hd1429514325_ _attr1430114328_)
                                   (if (gx#stx-pair? _hd1429514325_)
                                       (let ((_e1429814331_
                                              (gx#syntax-e _hd1429514325_)))
                                         (let ((_lp-hd1429914335_
                                                (##car _e1429814331_))
                                               (_lp-tl1430014338_
                                                (##cdr _e1429814331_)))
                                           (_loop1429714321_
                                            _lp-tl1430014338_
                                            (cons _lp-hd1429914335_
                                                  _attr1430114328_))))
                                       (let ((_attr1430214341_
                                              (reverse _attr1430114328_)))
                                         ((lambda (_L14345_)
                                            (let ()
                                              (let ((_g1436214379_
                                                     (lambda (_g1436314375_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1436314375_))))
                                                (let ((_g1436115184_
                                                       (lambda (_g1436314383_)
                                                         (if (gx#stx-pair/null?
                                                              _g1436314383_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1436314383_)
                               '0)
                         (let ((_g29503_
                                (gx#syntax-split-splice _g1436314383_ '0)))
                           (begin
                             (let ((_g29504_ (values-count _g29503_)))
                               (if (not (fx= _g29504_ 2))
                                   (error "Context expects 2 values"
                                          _g29504_)))
                             (let ((_target1436514386_ (values-ref _g29503_ 0))
                                   (_tl1436714389_ (values-ref _g29503_ 1)))
                               (if (gx#stx-null? _tl1436714389_)
                                   (letrec ((_loop1436814392_
                                             (lambda (_hd1436614396_
                                                      _getf1437214399_)
                                               (if (gx#stx-pair?
                                                    _hd1436614396_)
                                                   (let ((_e1436914402_
                                                          (gx#syntax-e
                                                           _hd1436614396_)))
                                                     (let ((_lp-hd1437014406_
                                                            (##car _e1436914402_))
                                                           (_lp-tl1437114409_
                                                            (##cdr _e1436914402_)))
                                                       (_loop1436814392_
                                                        _lp-tl1437114409_
                                                        (cons _lp-hd1437014406_
                                                              _getf1437214399_))))
                                                   (let ((_getf1437314412_
                                                          (reverse _getf1437214399_)))
                                                     ((lambda (_L14416_)
                                                        (let ()
                                                          (let ((_g1443314450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1443414446_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1443414446_))))
                    (let ((_g1443215175_
                           (lambda (_g1443414454_)
                             (if (gx#stx-pair/null? _g1443414454_)
                                 (if (fx>= (gx#stx-length _g1443414454_) '0)
                                     (let ((_g29505_
                                            (gx#syntax-split-splice
                                             _g1443414454_
                                             '0)))
                                       (begin
                                         (let ((_g29506_
                                                (values-count _g29505_)))
                                           (if (not (fx= _g29506_ 2))
                                               (error "Context expects 2 values"
                                                      _g29506_)))
                                         (let ((_target1443614457_
                                                (values-ref _g29505_ 0))
                                               (_tl1443814460_
                                                (values-ref _g29505_ 1)))
                                           (if (gx#stx-null? _tl1443814460_)
                                               (letrec ((_loop1443914463_
                                                         (lambda (_hd1443714467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1444314470_)
                   (if (gx#stx-pair? _hd1443714467_)
                       (let ((_e1444014473_ (gx#syntax-e _hd1443714467_)))
                         (let ((_lp-hd1444114477_ (##car _e1444014473_))
                               (_lp-tl1444214480_ (##cdr _e1444014473_)))
                           (_loop1443914463_
                            _lp-tl1444214480_
                            (cons _lp-hd1444114477_ _setf1444314470_))))
                       (let ((_setf1444414483_ (reverse _setf1444314470_)))
                         ((lambda (_L14487_)
                            (let ()
                              (let ((_type-attr14529_
                                     (if (gx#stx-null? _els14106_)
                                         '()
                                         (if _struct?14108_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14487_
                                                            _L14416_)
                                                           (foldr (lambda (_g1450314507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1450414510_
                                   _g1450514512_)
                            (cons (cons _g1450414510_ (cons _g1450314507_ '()))
                                  _g1450514512_))
                          '()
                          _L14487_
                          _L14416_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14487_
                                                            _L14416_
                                                            _L14345_)
                                                           (foldr (lambda (_g1451414519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1451514522_
                                   _g1451614524_
                                   _g1451714526_)
                            (cons (cons _g1451614524_
                                        (cons _g1451514522_
                                              (cons _g1451414519_ '())))
                                  _g1451714526_))
                          '()
                          _L14487_
                          _L14416_
                          _L14345_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14536_
                                       (cons 'name:
                                             (cons (let ((_$e14532_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14107_)))
                                                     (if _$e14532_
                                                         _$e14532_
                                                         _id14104_))
                                                   '()))))
                                  (let ((_type-id14551_
                                         (let ((_$e14547_
                                                (let ((_e1453814540_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14107_)))
                                                  (if _e1453814540_
                                                      (let ((_e14544_
                                                             _e1453814540_))
                                                        (cons 'id:
                                                              (cons _e14544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14547_ _$e14547_ '()))))
                                    (let ((_type-ctor14566_
                                           (let ((_$e14562_
                                                  (let ((_e1455314555_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14107_)))
                                                    (if _e1455314555_
                                                        (let ((_e14559_
                                                               _e1455314555_))
                                                          (cons 'constructor:
                                                                (cons _e14559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14562_ _$e14562_ '()))))
                                      (let ((_plist14584_
                                             (let ((_plist14573_
                                                    (let ((_$e14569_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14107_)))
                                                      (if _$e14569_
                                                          _$e14569_
                                                          '()))))
                                               (let ((_plist14576_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14107_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14573_)
                  _plist14573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14579_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14107_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14576_)
                    _plist14576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14579_))))))
                                        (let ((_type-plist14624_
                                               (if (null? _plist14584_)
                                                   _plist14584_
                                                   (let ((_g1458714595_
                                                          (lambda (_g1458814591_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1458814591_))))
                                                     (let ((_g1458614620_
                                                            (lambda (_g1458814599_)
                                                              ((lambda (_L14602_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14602_ '()))
                                       '()))))
                       _g1458814599_))))
               (_g1458614620_ _plist14584_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1462714644_
                                                 (lambda (_g1462814640_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1462814640_))))
                                            (let ((_g1462615171_
                                                   (lambda (_g1462814648_)
                                                     (if (gx#stx-pair/null?
                                                          _g1462814648_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1462814648_)
                           '0)
                     (let ((_g29507_
                            (gx#syntax-split-splice _g1462814648_ '0)))
                       (begin
                         (let ((_g29508_ (values-count _g29507_)))
                           (if (not (fx= _g29508_ 2))
                               (error "Context expects 2 values" _g29508_)))
                         (let ((_target1463014651_ (values-ref _g29507_ 0))
                               (_tl1463214654_ (values-ref _g29507_ 1)))
                           (if (gx#stx-null? _tl1463214654_)
                               (letrec ((_loop1463314657_
                                         (lambda (_hd1463114661_
                                                  _type-body1463714664_)
                                           (if (gx#stx-pair? _hd1463114661_)
                                               (let ((_e1463414667_
                                                      (gx#syntax-e
                                                       _hd1463114661_)))
                                                 (let ((_lp-hd1463514671_
                                                        (##car _e1463414667_))
                                                       (_lp-tl1463614674_
                                                        (##cdr _e1463414667_)))
                                                   (_loop1463314657_
                                                    _lp-tl1463614674_
                                                    (cons _lp-hd1463514671_
                                                          _type-body1463714664_))))
                                               (let ((_type-body1463814677_
                                                      (reverse _type-body1463714664_)))
                                                 ((lambda (_L14681_)
                                                    (let ()
                                                      (let ((_g1469714705_
                                                             (lambda (_g1469814701_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1469814701_))))
                                                        (let ((_g1469615159_
                                                               (lambda (_g1469814709_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14712_)
                            (let ()
                              (let ((_g1472514733_
                                     (lambda (_g1472614729_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1472614729_))))
                                (let ((_g1472415155_
                                       (lambda (_g1472614737_)
                                         ((lambda (_L14740_)
                                            (let ()
                                              (let ((_g1475314761_
                                                     (lambda (_g1475414757_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1475414757_))))
                                                (let ((_g1475215069_
                                                       (lambda (_g1475414765_)
                                                         ((lambda (_L14768_)
                                                            (let ()
                                                              (let ((_g1478114789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1478214785_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1478214785_))))
                        (let ((_g1478015065_
                               (lambda (_g1478214793_)
                                 ((lambda (_L14796_)
                                    (let ()
                                      (let ((_g1480914817_
                                             (lambda (_g1481014813_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1481014813_))))
                                        (let ((_g1480815061_
                                               (lambda (_g1481014821_)
                                                 ((lambda (_L14824_)
                                                    (let ()
                                                      (let ((_g1483714845_
                                                             (lambda (_g1483814841_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1483814841_))))
                                                        (let ((_g1483615019_
                                                               (lambda (_g1483814849_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14852_)
                            (let ()
                              (let ((_g1486514873_
                                     (lambda (_g1486614869_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1486614869_))))
                                (let ((_g1486415015_
                                       (lambda (_g1486614877_)
                                         ((lambda (_L14880_)
                                            (let ()
                                              (let ((_g1489314901_
                                                     (lambda (_g1489414897_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1489414897_))))
                                                (let ((_g1489215011_
                                                       (lambda (_g1489414905_)
                                                         ((lambda (_L14908_)
                                                            (let ()
                                                              (let ((_g1492114929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1492214925_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1492214925_))))
                        (let ((_g1492015007_
                               (lambda (_g1492214933_)
                                 ((lambda (_L14936_)
                                    (let ()
                                      (let ((_g1494914957_
                                             (lambda (_g1495014953_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1495014953_))))
                                        (let ((_g1494814979_
                                               (lambda (_g1495014961_)
                                                 ((lambda (_L14964_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap14110_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14964_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1495014961_))))
                                          (_g1494814979_
                                           (_wrap14110_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L14166_
                                                        (cons (cons _L14740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L14194_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14768_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L14194_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L14222_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14250_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1498214989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1498314992_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1498214989_ '()))
                               _g1498314992_))
                       '()
                       _L14416_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1498414995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1498514998_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1498414995_ '()))
                                     _g1498514998_))
                             '()
                             _L14487_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14824_ '()))
                                    (cons _L14852_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14880_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14936_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1498615001_
                                                        _g1498715004_)
                                                 (cons _g1498615001_
                                                       _g1498715004_))
                                               '()
                                               _L14345_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1492214933_))))
                          (_g1492015007_ _plist14584_)))))
                  _g1489414905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1489215011_
                                                   (if (not (null? _type-ctor14566_))
                                                       (cadr _type-ctor14566_)
                                                       '#f))))))
                                          _g1486614877_))))
                                  (_g1486415015_ (cadr _type-name14536_))))))
                          _g1483814849_))))
                  (_g1483615019_
                   (let ((_quote-e15058_
                          (lambda (_x-ref15023_)
                            (if _x-ref15023_
                                (let ((_g1502615034_
                                       (lambda (_g1502715030_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1502715030_))))
                                  (let ((_g1502515054_
                                         (lambda (_g1502715038_)
                                           ((lambda (_L15041_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L15041_ '()))))
                                            _g1502715038_))))
                                    (_g1502515054_ _x-ref15023_)))
                                '#f))))
                     (if _struct?14108_
                         (_quote-e15058_ _super-ref14105_)
                         (cons 'list
                               (map _quote-e15058_ _super-ref14105_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1481014821_))))
                                          (_g1480815061_
                                           (if (not (null? _type-id14551_))
                                               (cadr _type-id14551_)
                                               '#f))))))
                                  _g1478214793_))))
                          (_g1478015065_
                           (if _struct?14108_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1475414765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1475215069_
                                                   (if _struct?14108_
                                                       (if _super14117_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14278_ '()))
                   '#f)
               (let ((_g1507315090_
                      (lambda (_g1507415086_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1507415086_))))
                 (let ((_g1507215151_
                        (lambda (_g1507415094_)
                          (if (gx#stx-pair/null? _g1507415094_)
                              (if (fx>= (gx#stx-length _g1507415094_) '0)
                                  (let ((_g29509_
                                         (gx#syntax-split-splice
                                          _g1507415094_
                                          '0)))
                                    (begin
                                      (let ((_g29510_ (values-count _g29509_)))
                                        (if (not (fx= _g29510_ 2))
                                            (error "Context expects 2 values"
                                                   _g29510_)))
                                      (let ((_target1507615097_
                                             (values-ref _g29509_ 0))
                                            (_tl1507815100_
                                             (values-ref _g29509_ 1)))
                                        (if (gx#stx-null? _tl1507815100_)
                                            (letrec ((_loop1507915103_
                                                      (lambda (_hd1507715107_
                                                               _super-id1508315110_)
                                                        (if (gx#stx-pair?
                                                             _hd1507715107_)
                                                            (let ((_e1508015113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1507715107_)))
                      (let ((_lp-hd1508115117_ (##car _e1508015113_))
                            (_lp-tl1508215120_ (##cdr _e1508015113_)))
                        (_loop1507915103_
                         _lp-tl1508215120_
                         (cons _lp-hd1508115117_ _super-id1508315110_))))
                    (let ((_super-id1508415123_
                           (reverse _super-id1508315110_)))
                      ((lambda (_L15127_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1514215145_ _g1514315148_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1514215145_
                                                              '()))
                                                  _g1514315148_))
                                          '()
                                          _L15127_)))))
                       _super-id1508415123_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1507915103_
                                               _target1507615097_
                                               '()))
                                            (_g1507315090_ _g1507415094_)))))
                                  (_g1507315090_ _g1507415094_))
                              (_g1507315090_ _g1507415094_)))))
                   (_g1507215151_ _L14278_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1472614737_))))
                                  (_g1472415155_
                                   (if _struct?14108_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1469814709_))))
                  (_g1469615159_
                   (_wrap14110_
                    (cons _L14135_
                          (cons _L14194_
                                (cons _L14278_
                                      (cons _L14222_
                                            (cons _L14250_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1516215165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1516315168_)
                     (cons _g1516215165_ _g1516315168_))
                   '()
                   _L14681_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1463814677_))))))
                                 (_loop1463314657_ _target1463014651_ '()))
                               (_g1462714644_ _g1462814648_)))))
                     (_g1462714644_ _g1462814648_))
                 (_g1462714644_ _g1462814648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1462615171_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14624_ _type-ctor14566_)
                            _type-name14536_)
                     _type-id14551_)
              _type-attr14529_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1444414483_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1443914463_
                                                  _target1443614457_
                                                  '()))
                                               (_g1443314450_
                                                _g1443414454_)))))
                                     (_g1443314450_ _g1443414454_))
                                 (_g1443314450_ _g1443414454_)))))
                      (_g1443215175_
                       (gx#stx-map
                        (lambda (_g1517815180_)
                          (_make-id14112_
                           _name14114_
                           '"-"
                           _g1517815180_
                           '"-set!"))
                        _els14106_))))))
              _getf1437314412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1436814392_ _target1436514386_ '()))
                                   (_g1436214379_ _g1436314383_)))))
                         (_g1436214379_ _g1436314383_))
                     (_g1436214379_ _g1436314383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1436115184_
                                                   (gx#stx-map
                                                    (lambda (_g1518715189_)
                                                      (_make-id14112_
                                                       _name14114_
                                                       '"-"
                                                       _g1518715189_))
                                                    _els14106_))))))
                                          _attr1430214341_))))))
                         (_loop1429714321_ _target1429414315_ '()))
                       (_g1429114308_ _g1429214312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1429114308_
                                                      _g1429214312_))
                                                 (_g1429114308_
                                                  _g1429214312_)))))
                                      (_g1429015193_ _els14106_)))))
                              _g1426414275_))))
                      (_g1426215197_
                       (if _struct?14108_
                           (if _super14117_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14117_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14117_)))))))
              _g1423614247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1423415201_
                                               (_make-id14112_
                                                _name14114_
                                                '"?"))))))
                                      _g1420814219_))))
                              (_g1420615205_
                               (_make-id14112_ '"make-" _name14114_))))))
                      _g1418014191_))))
              (_g1417815209_ (_make-id14112_ _name14114_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1415214163_))))
                                      (_g1415015213_ _id14104_)))))
                              _g1412114132_))))
                      (_g1411915217_
                       (if _struct?14108_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15309_)
        (let ((_generate15312_
               (lambda (_hd15396_ _fields15398_ _body15399_)
                 (let ((_g1540215417_
                        (lambda (_g1540315413_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1540315413_))))
                   (let ((_g1540115428_
                          (lambda (_g1540315421_)
                            ((lambda ()
                               (if (gx#identifier? _hd15396_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15309_
                                    _hd15396_
                                    '#f
                                    _fields15398_
                                    _body15399_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15309_
                                    _hd15396_)))))))
                     (let ((_g1540015472_
                            (lambda (_g1540315432_)
                              (if (gx#stx-pair? _g1540315432_)
                                  (let ((_e1540615435_
                                         (gx#syntax-e _g1540315432_)))
                                    (let ((_hd1540715439_
                                           (##car _e1540615435_))
                                          (_tl1540815442_
                                           (##cdr _e1540615435_)))
                                      (if (gx#stx-pair? _tl1540815442_)
                                          (let ((_e1540915445_
                                                 (gx#syntax-e _tl1540815442_)))
                                            (let ((_hd1541015449_
                                                   (##car _e1540915445_))
                                                  (_tl1541115452_
                                                   (##cdr _e1540915445_)))
                                              (if (gx#stx-null? _tl1541115452_)
                                                  ((lambda (_L15455_ _L15457_)
                                                     (if (if (gx#identifier?
                                                              _L15457_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15455_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15309_
                                                          _L15457_
                                                          _L15455_
                                                          _fields15398_
                                                          _body15399_
                                                          '#t)
                                                         (_g1540115428_
                                                          _g1540315432_)))
                                                   _hd1541015449_
                                                   _hd1540715439_)
                                                  (_g1540115428_
                                                   _g1540315432_))))
                                          (_g1540115428_ _g1540315432_))))
                                  (_g1540115428_ _g1540315432_)))))
                       (_g1540015472_ _hd15396_)))))))
          (let ((_g1531515334_
                 (lambda (_g1531615330_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1531615330_))))
            (let ((_g1531415392_
                   (lambda (_g1531615338_)
                     (if (gx#stx-pair? _g1531615338_)
                         (let ((_e1532015341_ (gx#syntax-e _g1531615338_)))
                           (let ((_hd1532115345_ (##car _e1532015341_))
                                 (_tl1532215348_ (##cdr _e1532015341_)))
                             (if (gx#stx-pair? _tl1532215348_)
                                 (let ((_e1532315351_
                                        (gx#syntax-e _tl1532215348_)))
                                   (let ((_hd1532415355_ (##car _e1532315351_))
                                         (_tl1532515358_
                                          (##cdr _e1532315351_)))
                                     (if (gx#stx-pair? _tl1532515358_)
                                         (let ((_e1532615361_
                                                (gx#syntax-e _tl1532515358_)))
                                           (let ((_hd1532715365_
                                                  (##car _e1532615361_))
                                                 (_tl1532815368_
                                                  (##cdr _e1532615361_)))
                                             ((lambda (_L15371_
                                                       _L15373_
                                                       _L15374_)
                                                (if (if (gx#identifier-list?
                                                         _L15373_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15371_)
                                                        '#f)
                                                    (_generate15312_
                                                     _L15374_
                                                     _L15373_
                                                     _L15371_)
                                                    (_g1531515334_
                                                     _g1531615338_)))
                                              _tl1532815368_
                                              _hd1532715365_
                                              _hd1532415355_)))
                                         (_g1531515334_ _g1531615338_))))
                                 (_g1531515334_ _g1531615338_))))
                         (_g1531515334_ _g1531615338_)))))
              (_g1531415392_ _stx15309_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15476_)
        (let ((_generate15479_
               (lambda (_hd15563_ _slots15565_ _body15566_)
                 (let ((_g1556915581_
                        (lambda (_g1557015577_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1557015577_))))
                   (let ((_g1556815592_
                          (lambda (_g1557015585_)
                            ((lambda ()
                               (if (gx#identifier? _hd15563_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15476_
                                    _hd15563_
                                    '()
                                    _slots15565_
                                    _body15566_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15476_
                                    _hd15563_)))))))
                     (let ((_g1556715624_
                            (lambda (_g1557015596_)
                              (if (gx#stx-pair? _g1557015596_)
                                  (let ((_e1557315599_
                                         (gx#syntax-e _g1557015596_)))
                                    (let ((_hd1557415603_
                                           (##car _e1557315599_))
                                          (_tl1557515606_
                                           (##cdr _e1557315599_)))
                                      ((lambda (_L15609_ _L15611_)
                                         (if (if (gx#stx-list? _L15609_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15609_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15476_
                                              _L15611_
                                              (gx#syntax->list _L15609_)
                                              _slots15565_
                                              _body15566_
                                              '#f)
                                             (_g1556815592_ _g1557015596_)))
                                       _tl1557515606_
                                       _hd1557415603_)))
                                  (_g1556815592_ _g1557015596_)))))
                       (_g1556715624_ _hd15563_)))))))
          (let ((_g1548215501_
                 (lambda (_g1548315497_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1548315497_))))
            (let ((_g1548115559_
                   (lambda (_g1548315505_)
                     (if (gx#stx-pair? _g1548315505_)
                         (let ((_e1548715508_ (gx#syntax-e _g1548315505_)))
                           (let ((_hd1548815512_ (##car _e1548715508_))
                                 (_tl1548915515_ (##cdr _e1548715508_)))
                             (if (gx#stx-pair? _tl1548915515_)
                                 (let ((_e1549015518_
                                        (gx#syntax-e _tl1548915515_)))
                                   (let ((_hd1549115522_ (##car _e1549015518_))
                                         (_tl1549215525_
                                          (##cdr _e1549015518_)))
                                     (if (gx#stx-pair? _tl1549215525_)
                                         (let ((_e1549315528_
                                                (gx#syntax-e _tl1549215525_)))
                                           (let ((_hd1549415532_
                                                  (##car _e1549315528_))
                                                 (_tl1549515535_
                                                  (##cdr _e1549315528_)))
                                             ((lambda (_L15538_
                                                       _L15540_
                                                       _L15541_)
                                                (if (if (gx#identifier-list?
                                                         _L15540_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15538_)
                                                        '#f)
                                                    (_generate15479_
                                                     _L15541_
                                                     _L15540_
                                                     _L15538_)
                                                    (_g1548215501_
                                                     _g1548315505_)))
                                              _tl1549515535_
                                              _hd1549415532_
                                              _hd1549115522_)))
                                         (_g1548215501_ _g1548315505_))))
                                 (_g1548215501_ _g1548315505_))))
                         (_g1548215501_ _g1548315505_)))))
              (_g1548115559_ _stx15476_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15628_)
        (let ((_wrap15631_
               (lambda (_e-stx15936_)
                 (gx#stx-wrap-source
                  _e-stx15936_
                  (gx#stx-source _stx15628_)))))
          (let ((_method-opt?15633_
                 (lambda (_x15933_) (memq (gx#stx-e _x15933_) '(rebind:)))))
            (let ((_g1563515664_
                   (lambda (_g1563615660_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1563615660_))))
              (let ((_g1563415929_
                     (lambda (_g1563615668_)
                       (if (gx#stx-pair? _g1563615668_)
                           (let ((_e1564115671_ (gx#syntax-e _g1563615668_)))
                             (let ((_hd1564215675_ (##car _e1564115671_))
                                   (_tl1564315678_ (##cdr _e1564115671_)))
                               (if (gx#stx-pair? _tl1564315678_)
                                   (let ((_e1564415681_
                                          (gx#syntax-e _tl1564315678_)))
                                     (let ((_hd1564515685_
                                            (##car _e1564415681_))
                                           (_tl1564615688_
                                            (##cdr _e1564415681_)))
                                       (if (gx#stx-pair? _hd1564515685_)
                                           (let ((_e1564715691_
                                                  (gx#syntax-e
                                                   _hd1564515685_)))
                                             (let ((_hd1564815695_
                                                    (##car _e1564715691_))
                                                   (_tl1564915698_
                                                    (##cdr _e1564715691_)))
                                               (if (gx#identifier?
                                                    _hd1564815695_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29512_|
                                                        _hd1564815695_)
                                                       (if (gx#stx-pair?
                                                            _tl1564915698_)
                                                           (let ((_e1565015701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1564915698_)))
                     (let ((_hd1565115705_ (##car _e1565015701_))
                           (_tl1565215708_ (##cdr _e1565015701_)))
                       (if (gx#stx-pair? _tl1565215708_)
                           (let ((_e1565315711_ (gx#syntax-e _tl1565215708_)))
                             (let ((_hd1565415715_ (##car _e1565315711_))
                                   (_tl1565515718_ (##cdr _e1565315711_)))
                               (if (gx#stx-null? _tl1565515718_)
                                   (if (gx#stx-pair? _tl1564615688_)
                                       (let ((_e1565615721_
                                              (gx#syntax-e _tl1564615688_)))
                                         (let ((_hd1565715725_
                                                (##car _e1565615721_))
                                               (_tl1565815728_
                                                (##cdr _e1565615721_)))
                                           ((lambda (_L15731_
                                                     _L15733_
                                                     _L15734_
                                                     _L15735_)
                                              (if (if (gx#identifier? _L15735_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15734_)
                                                          (gx#stx-plist?
                                                           _L15731_
                                                           _method-opt?15633_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15760_
                                                         (gx#syntax-local-value
                                                          _L15734_)))
                                                    (let ((_rebind?15763_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15731_))
                       '#t
                       '#f)))
              (let ((_g1576615774_
                     (lambda (_g1576715770_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1576715770_))))
                (let ((_g1576515925_
                       (lambda (_g1576715778_)
                         ((lambda (_L15781_)
                            (let ()
                              (let ((_g1579515803_
                                     (lambda (_g1579615799_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1579615799_))))
                                (let ((_g1579415921_
                                       (lambda (_g1579615807_)
                                         ((lambda (_L15810_)
                                            (let ()
                                              (let ((_g1582315831_
                                                     (lambda (_g1582415827_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1582415827_))))
                                                (let ((_g1582215917_
                                                       (lambda (_g1582415835_)
                                                         ((lambda (_L15838_)
                                                            (let ()
                                                              (let ((_g1585115859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1585215855_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1585215855_))))
                        (let ((_g1585015913_
                               (lambda (_g1585215863_)
                                 ((lambda (_L15866_)
                                    (let ()
                                      (let ((_g1587915887_
                                             (lambda (_g1588015883_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1588015883_))))
                                        (let ((_g1587815909_
                                               (lambda (_g1588015891_)
                                                 ((lambda (_L15894_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15631_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15894_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1588015891_))))
                                          (_g1587815909_
                                           (_wrap15631_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15781_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15735_ '()))
                      (cons _L15810_ (cons _L15866_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1585215863_))))
                          (_g1585015913_ _rebind?15763_)))))
                  _g1582415835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1582215917_
                                                   (_wrap15631_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15810_
                                                                (cons _L15733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1579615807_))))
                                  (_g1579415921_
                                   (gx#stx-identifier
                                    _L15735_
                                    _L15734_
                                    '"::"
                                    _L15735_))))))
                          _g1576715778_))))
                  (_g1576515925_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1563515664_
                                                   _g1563615668_)))
                                            _tl1565815728_
                                            _hd1565715725_
                                            _hd1565415715_
                                            _hd1565115705_)))
                                       (_g1563515664_ _g1563615668_))
                                   (_g1563515664_ _g1563615668_))))
                           (_g1563515664_ _g1563615668_))))
                   (_g1563515664_ _g1563615668_))
               (_g1563515664_ _g1563615668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1563515664_
                                                    _g1563615668_))))
                                           (_g1563515664_ _g1563615668_))))
                                   (_g1563515664_ _g1563615668_))))
                           (_g1563515664_ _g1563615668_)))))
                (_g1563415929_ _stx15628_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15939_)
        (let ((_g1594415993_
               (lambda (_g1594515989_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1594515989_))))
          (let ((_g1594316092_
                 (lambda (_g1594515997_)
                   (if (gx#stx-pair? _g1594515997_)
                       (let ((_e1597016000_ (gx#syntax-e _g1594515997_)))
                         (let ((_hd1597116004_ (##car _e1597016000_))
                               (_tl1597216007_ (##cdr _e1597016000_)))
                           (if (gx#stx-pair? _tl1597216007_)
                               (let ((_e1597316010_
                                      (gx#syntax-e _tl1597216007_)))
                                 (let ((_hd1597416014_ (##car _e1597316010_))
                                       (_tl1597516017_ (##cdr _e1597316010_)))
                                   (if (gx#stx-pair? _tl1597516017_)
                                       (let ((_e1597616020_
                                              (gx#syntax-e _tl1597516017_)))
                                         (let ((_hd1597716024_
                                                (##car _e1597616020_))
                                               (_tl1597816027_
                                                (##cdr _e1597616020_)))
                                           (if (gx#stx-pair/null?
                                                _tl1597816027_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1597816027_)
                                                         '0)
                                                   (let ((_g29513_
                                                          (gx#syntax-split-splice
                                                           _tl1597816027_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29514_
                                                              (values-count
                                                               _g29513_)))
                                                         (if (not (fx= _g29514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29514_)))
               (let ((_target1597916030_ (values-ref _g29513_ 0))
                     (_tl1598116033_ (values-ref _g29513_ 1)))
                 (if (gx#stx-null? _tl1598116033_)
                     (letrec ((_loop1598216036_
                               (lambda (_hd1598016040_ _arg1598616043_)
                                 (if (gx#stx-pair? _hd1598016040_)
                                     (let ((_e1598316046_
                                            (gx#syntax-e _hd1598016040_)))
                                       (let ((_lp-hd1598416050_
                                              (##car _e1598316046_))
                                             (_lp-tl1598516053_
                                              (##cdr _e1598316046_)))
                                         (_loop1598216036_
                                          _lp-tl1598516053_
                                          (cons _lp-hd1598416050_
                                                _arg1598616043_))))
                                     (let ((_arg1598716056_
                                            (reverse _arg1598616043_)))
                                       ((lambda (_L16060_ _L16062_ _L16063_)
                                          (if (gx#identifier? _L16063_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16062_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16063_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1608316086_ _g1608416089_)
                                   (cons _g1608316086_ _g1608416089_))
                                 '()
                                 _L16060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1594415993_ _g1594515997_)))
                                        _arg1598716056_
                                        _hd1597716024_
                                        _hd1597416014_))))))
                       (_loop1598216036_ _target1597916030_ '()))
                     (_g1594415993_ _g1594515997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1594415993_
                                                    _g1594515997_))
                                               (_g1594415993_ _g1594515997_))))
                                       (_g1594415993_ _g1594515997_))))
                               (_g1594415993_ _g1594515997_))))
                       (_g1594415993_ _g1594515997_)))))
            (let ((_g1594216198_
                   (lambda (_g1594516096_)
                     (if (gx#stx-pair? _g1594516096_)
                         (let ((_e1594916099_ (gx#syntax-e _g1594516096_)))
                           (let ((_hd1595016103_ (##car _e1594916099_))
                                 (_tl1595116106_ (##cdr _e1594916099_)))
                             (if (gx#stx-pair? _tl1595116106_)
                                 (let ((_e1595216109_
                                        (gx#syntax-e _tl1595116106_)))
                                   (let ((_hd1595316113_ (##car _e1595216109_))
                                         (_tl1595416116_
                                          (##cdr _e1595216109_)))
                                     (if (gx#stx-pair? _tl1595416116_)
                                         (let ((_e1595516119_
                                                (gx#syntax-e _tl1595416116_)))
                                           (let ((_hd1595616123_
                                                  (##car _e1595516119_))
                                                 (_tl1595716126_
                                                  (##cdr _e1595516119_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1595716126_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1595716126_)
                                                           '0)
                                                     (let ((_g29515_
                                                            (gx#syntax-split-splice
                                                             _tl1595716126_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29516_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29515_)))
                   (if (not (fx= _g29516_ 2))
                       (error "Context expects 2 values" _g29516_)))
                 (let ((_target1595816129_ (values-ref _g29515_ 0))
                       (_tl1596016132_ (values-ref _g29515_ 1)))
                   (if (gx#stx-null? _tl1596016132_)
                       (letrec ((_loop1596116135_
                                 (lambda (_hd1595916139_ _arg1596516142_)
                                   (if (gx#stx-pair? _hd1595916139_)
                                       (let ((_e1596216145_
                                              (gx#syntax-e _hd1595916139_)))
                                         (let ((_lp-hd1596316149_
                                                (##car _e1596216145_))
                                               (_lp-tl1596416152_
                                                (##cdr _e1596216145_)))
                                           (_loop1596116135_
                                            _lp-tl1596416152_
                                            (cons _lp-hd1596316149_
                                                  _arg1596516142_))))
                                       (let ((_arg1596616155_
                                              (reverse _arg1596516142_)))
                                         ((lambda (_L16159_ _L16161_ _L16162_)
                                            (if (if (gx#identifier? _L16162_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1618116184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1618216187_)
                        (cons _g1618116184_ _g1618216187_))
                      '()
                      _L16159_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16162_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1618916192_
                                                              _g1619016195_)
                                                       (cons _g1618916192_
                                                             _g1619016195_))
                                                     '()
                                                     _L16159_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1594316092_ _g1594516096_)))
                                          _arg1596616155_
                                          _hd1595616123_
                                          _hd1595316113_))))))
                         (_loop1596116135_ _target1595816129_ '()))
                       (_g1594316092_ _g1594516096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594316092_
                                                      _g1594516096_))
                                                 (_g1594316092_
                                                  _g1594516096_))))
                                         (_g1594316092_ _g1594516096_))))
                                 (_g1594316092_ _g1594516096_))))
                         (_g1594316092_ _g1594516096_)))))
              (_g1594216198_ _$stx15939_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16204_)
        (let ((_g1620916249_
               (lambda (_g1621016245_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1621016245_))))
          (let ((_g1620816350_
                 (lambda (_g1621016253_)
                   (if (gx#stx-pair? _g1621016253_)
                       (let ((_e1622616256_ (gx#syntax-e _g1621016253_)))
                         (let ((_hd1622716260_ (##car _e1622616256_))
                               (_tl1622816263_ (##cdr _e1622616256_)))
                           (if (gx#stx-pair? _tl1622816263_)
                               (let ((_e1622916266_
                                      (gx#syntax-e _tl1622816263_)))
                                 (let ((_hd1623016270_ (##car _e1622916266_))
                                       (_tl1623116273_ (##cdr _e1622916266_)))
                                   (if (gx#stx-pair? _tl1623116273_)
                                       (let ((_e1623216276_
                                              (gx#syntax-e _tl1623116273_)))
                                         (let ((_hd1623316280_
                                                (##car _e1623216276_))
                                               (_tl1623416283_
                                                (##cdr _e1623216276_)))
                                           (if (gx#stx-pair/null?
                                                _tl1623416283_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1623416283_)
                                                         '0)
                                                   (let ((_g29517_
                                                          (gx#syntax-split-splice
                                                           _tl1623416283_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29518_
                                                              (values-count
                                                               _g29517_)))
                                                         (if (not (fx= _g29518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29518_)))
               (let ((_target1623516286_ (values-ref _g29517_ 0))
                     (_tl1623716289_ (values-ref _g29517_ 1)))
                 (if (gx#stx-null? _tl1623716289_)
                     (letrec ((_loop1623816292_
                               (lambda (_hd1623616296_ _rest1624216299_)
                                 (if (gx#stx-pair? _hd1623616296_)
                                     (let ((_e1623916302_
                                            (gx#syntax-e _hd1623616296_)))
                                       (let ((_lp-hd1624016306_
                                              (##car _e1623916302_))
                                             (_lp-tl1624116309_
                                              (##cdr _e1623916302_)))
                                         (_loop1623816292_
                                          _lp-tl1624116309_
                                          (cons _lp-hd1624016306_
                                                _rest1624216299_))))
                                     (let ((_rest1624316312_
                                            (reverse _rest1624216299_)))
                                       ((lambda (_L16316_
                                                 _L16318_
                                                 _L16319_
                                                 _L16320_)
                                          (cons _L16320_
                                                (cons (cons _L16320_
                                                            (cons _L16319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16318_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1634116344_ _g1634216347_)
                         (cons _g1634116344_ _g1634216347_))
                       '()
                       _L16316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1624316312_
                                        _hd1623316280_
                                        _hd1623016270_
                                        _hd1622716260_))))))
                       (_loop1623816292_ _target1623516286_ '()))
                     (_g1620916249_ _g1621016253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1620916249_
                                                    _g1621016253_))
                                               (_g1620916249_ _g1621016253_))))
                                       (_g1620916249_ _g1621016253_))))
                               (_g1620916249_ _g1621016253_))))
                       (_g1620916249_ _g1621016253_)))))
            (let ((_g1620716404_
                   (lambda (_g1621016354_)
                     (if (gx#stx-pair? _g1621016354_)
                         (let ((_e1621316357_ (gx#syntax-e _g1621016354_)))
                           (let ((_hd1621416361_ (##car _e1621316357_))
                                 (_tl1621516364_ (##cdr _e1621316357_)))
                             (if (gx#stx-pair? _tl1621516364_)
                                 (let ((_e1621616367_
                                        (gx#syntax-e _tl1621516364_)))
                                   (let ((_hd1621716371_ (##car _e1621616367_))
                                         (_tl1621816374_
                                          (##cdr _e1621616367_)))
                                     (if (gx#stx-pair? _tl1621816374_)
                                         (let ((_e1621916377_
                                                (gx#syntax-e _tl1621816374_)))
                                           (let ((_hd1622016381_
                                                  (##car _e1621916377_))
                                                 (_tl1622116384_
                                                  (##cdr _e1621916377_)))
                                             (if (gx#stx-null? _tl1622116384_)
                                                 ((lambda (_L16387_ _L16389_)
                                                    (if (gx#identifier?
                                                         _L16387_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16387_ '()))
                                  '())))
                (_g1620816350_ _g1621016354_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1622016381_
                                                  _hd1621716371_)
                                                 (_g1620816350_
                                                  _g1621016354_))))
                                         (_g1620816350_ _g1621016354_))))
                                 (_g1620816350_ _g1621016354_))))
                         (_g1620816350_ _g1621016354_)))))
              (_g1620716404_ _$stx16204_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16409_)
        (let ((_g1641416466_
               (lambda (_g1641516462_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641516462_))))
          (let ((_g1641316595_
                 (lambda (_g1641516470_)
                   (if (gx#stx-pair? _g1641516470_)
                       (let ((_e1643716473_ (gx#syntax-e _g1641516470_)))
                         (let ((_hd1643816477_ (##car _e1643716473_))
                               (_tl1643916480_ (##cdr _e1643716473_)))
                           (if (gx#stx-pair? _tl1643916480_)
                               (let ((_e1644016483_
                                      (gx#syntax-e _tl1643916480_)))
                                 (let ((_hd1644116487_ (##car _e1644016483_))
                                       (_tl1644216490_ (##cdr _e1644016483_)))
                                   (if (gx#stx-pair? _tl1644216490_)
                                       (let ((_e1644316493_
                                              (gx#syntax-e _tl1644216490_)))
                                         (let ((_hd1644416497_
                                                (##car _e1644316493_))
                                               (_tl1644516500_
                                                (##cdr _e1644316493_)))
                                           (if (gx#stx-pair/null?
                                                _tl1644516500_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1644516500_)
                                                         '2)
                                                   (let ((_g29519_
                                                          (gx#syntax-split-splice
                                                           _tl1644516500_
                                                           '2)))
                                                     (begin
                                                       (let ((_g29520_
                                                              (values-count
                                                               _g29519_)))
                                                         (if (not (fx= _g29520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29520_)))
               (let ((_target1644616503_ (values-ref _g29519_ 0))
                     (_tl1644816506_ (values-ref _g29519_ 1)))
                 (if (gx#stx-pair? _tl1644816506_)
                     (let ((_e1645516509_ (gx#syntax-e _tl1644816506_)))
                       (let ((_hd1645616513_ (##car _e1645516509_))
                             (_tl1645716516_ (##cdr _e1645516509_)))
                         (if (gx#stx-pair? _tl1645716516_)
                             (let ((_e1645816519_
                                    (gx#syntax-e _tl1645716516_)))
                               (let ((_hd1645916523_ (##car _e1645816519_))
                                     (_tl1646016526_ (##cdr _e1645816519_)))
                                 (if (gx#stx-null? _tl1646016526_)
                                     (letrec ((_loop1644916529_
                                               (lambda (_hd1644716533_
                                                        _path1645316536_)
                                                 (if (gx#stx-pair?
                                                      _hd1644716533_)
                                                     (let ((_e1645016539_
                                                            (gx#syntax-e
                                                             _hd1644716533_)))
                                                       (let ((_lp-hd1645116543_
                                                              (##car _e1645016539_))
                                                             (_lp-tl1645216546_
                                                              (##cdr _e1645016539_)))
                                                         (_loop1644916529_
                                                          _lp-tl1645216546_
                                                          (cons _lp-hd1645116543_
                                                                _path1645316536_))))
                                                     (let ((_path1645416549_
                                                            (reverse _path1645316536_)))
                                                       ((lambda (_L16553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L16555_
                         _L16556_
                         _L16557_
                         _L16558_
                         _L16559_)
                  (cons _L16559_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L16558_
                                          (cons _L16557_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1658616589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1658716592_)
                   (cons _g1658616589_ _g1658716592_))
                 '()
                 _L16556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L16555_ (cons _L16553_ '())))))
                _hd1645916523_
                _hd1645616513_
                _path1645416549_
                _hd1644416497_
                _hd1644116487_
                _hd1643816477_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1644916529_
                                        _target1644616503_
                                        '()))
                                     (_g1641416466_ _g1641516470_))))
                             (_g1641416466_ _g1641516470_))))
                     (_g1641416466_ _g1641516470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1641416466_
                                                    _g1641516470_))
                                               (_g1641416466_ _g1641516470_))))
                                       (_g1641416466_ _g1641516470_))))
                               (_g1641416466_ _g1641516470_))))
                       (_g1641416466_ _g1641516470_)))))
            (let ((_g1641216663_
                   (lambda (_g1641516599_)
                     (if (gx#stx-pair? _g1641516599_)
                         (let ((_e1641916602_ (gx#syntax-e _g1641516599_)))
                           (let ((_hd1642016606_ (##car _e1641916602_))
                                 (_tl1642116609_ (##cdr _e1641916602_)))
                             (if (gx#stx-pair? _tl1642116609_)
                                 (let ((_e1642216612_
                                        (gx#syntax-e _tl1642116609_)))
                                   (let ((_hd1642316616_ (##car _e1642216612_))
                                         (_tl1642416619_
                                          (##cdr _e1642216612_)))
                                     (if (gx#stx-pair? _tl1642416619_)
                                         (let ((_e1642516622_
                                                (gx#syntax-e _tl1642416619_)))
                                           (let ((_hd1642616626_
                                                  (##car _e1642516622_))
                                                 (_tl1642716629_
                                                  (##cdr _e1642516622_)))
                                             (if (gx#stx-pair? _tl1642716629_)
                                                 (let ((_e1642816632_
                                                        (gx#syntax-e
                                                         _tl1642716629_)))
                                                   (let ((_hd1642916636_
                                                          (##car _e1642816632_))
                                                         (_tl1643016639_
                                                          (##cdr _e1642816632_)))
                                                     (if (gx#stx-null?
                                                          _tl1643016639_)
                                                         ((lambda (_L16642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16644_
                           _L16645_)
                    (if (gx#identifier? _L16644_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16645_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16644_ '()))
                                          (cons _L16642_ '()))))
                        (_g1641316595_ _g1641516599_)))
                  _hd1642916636_
                  _hd1642616626_
                  _hd1642316616_)
                 (_g1641316595_ _g1641516599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1641316595_
                                                  _g1641516599_))))
                                         (_g1641316595_ _g1641516599_))))
                                 (_g1641316595_ _g1641516599_))))
                         (_g1641316595_ _g1641516599_)))))
              (_g1641216663_ _$stx16409_))))))))
