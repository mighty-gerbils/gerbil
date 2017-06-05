(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29516_|
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
      (lambda _$args15301_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15301_)))
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
      (lambda _$args15297_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15297_)))
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
      (lambda _$args15293_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15293_)))
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
      (lambda _$args15289_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15289_)))
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
      (lambda _$args15285_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15285_)))
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
      (lambda _$args15281_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15281_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1525315267_
             (lambda (_stx15255_ _is?15257_)
               (if (gx#identifier? _stx15255_)
                   (let ((_e1525815260_
                          (gx#syntax-local-value _stx15255_ false)))
                     (if _e1525815260_
                         (let ((_e15264_ _e1525815260_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15264_)
                               (_is?15257_ _e15264_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29504_
          (let ((_g29503_ (length _g29504_)))
            (cond ((fx= _g29503_ 1)
                   (apply (lambda (_stx15271_)
                            (let ((_is?15274_ true))
                              (_opt-lambda1525315267_ _stx15271_ _is?15274_)))
                          _g29504_))
                  ((fx= _g29503_ 2) (apply _opt-lambda1525315267_ _g29504_))
                  (else (error "No clause matching arguments" _g29504_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15251_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15251_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15248_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15248_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15242_)
        (if _id15242_
            (let ((_info15245_ (gx#syntax-local-value _id15242_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15245_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15245_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15233_)
        (let ((_body-opt?15236_
               (lambda (_key15239_)
                 (memq (gx#stx-e _key15239_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx15233_ _body-opt?15236_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14106_
               _id14108_
               _super-ref14109_
               _els14110_
               _body14111_
               _struct?14112_)
        (let ((_wrap14114_
               (lambda (_e-stx15230_)
                 (gx#stx-wrap-source
                  _e-stx15230_
                  (gx#stx-source _stx14106_)))))
          (let ((_make-id14116_
                 (if (uninterned-symbol? (gx#stx-e _id14108_))
                     (lambda _g29515_ (gx#genident _id14108_))
                     (lambda _args15227_
                       (apply gx#stx-identifier _id14108_ _args15227_)))))
            (begin
              (gx#check-duplicate-identifiers _els14110_ _stx14106_)
              (let ((_name14118_ (symbol->string (gx#stx-e _id14108_))))
                (let ((_super14121_
                       (if _struct?14112_
                           (if _super-ref14109_
                               (gx#syntax-local-value _super-ref14109_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14109_))))
                  (let ((_g1412414132_
                         (lambda (_g1412514128_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1412514128_))))
                    (let ((_g1412315221_
                           (lambda (_g1412514136_)
                             ((lambda (_L14139_)
                                (let ()
                                  (let ((_g1415514163_
                                         (lambda (_g1415614159_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1415614159_))))
                                    (let ((_g1415415217_
                                           (lambda (_g1415614167_)
                                             ((lambda (_L14170_)
                                                (let ()
                                                  (let ((_g1418314191_
                                                         (lambda (_g1418414187_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1418414187_))))
                                                    (let ((_g1418215213_
                                                           (lambda (_g1418414195_)
                                                             ((lambda (_L14198_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1421114219_
                                 (lambda (_g1421214215_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1421214215_))))
                            (let ((_g1421015209_
                                   (lambda (_g1421214223_)
                                     ((lambda (_L14226_)
                                        (let ()
                                          (let ((_g1423914247_
                                                 (lambda (_g1424014243_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1424014243_))))
                                            (let ((_g1423815205_
                                                   (lambda (_g1424014251_)
                                                     ((lambda (_L14254_)
                                                        (let ()
                                                          (let ((_g1426714275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1426814271_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1426814271_))))
                    (let ((_g1426615201_
                           (lambda (_g1426814279_)
                             ((lambda (_L14282_)
                                (let ()
                                  (let ((_g1429514312_
                                         (lambda (_g1429614308_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1429614308_))))
                                    (let ((_g1429415197_
                                           (lambda (_g1429614316_)
                                             (if (gx#stx-pair/null?
                                                  _g1429614316_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1429614316_)
                                                           '0)
                                                     (let ((_g29505_
                                                            (gx#syntax-split-splice
                                                             _g1429614316_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29506_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29505_)))
                   (if (not (fx= _g29506_ 2))
                       (error "Context expects 2 values" _g29506_)))
                 (let ((_target1429814319_ (values-ref _g29505_ 0))
                       (_tl1430014322_ (values-ref _g29505_ 1)))
                   (if (gx#stx-null? _tl1430014322_)
                       (letrec ((_loop1430114325_
                                 (lambda (_hd1429914329_ _attr1430514332_)
                                   (if (gx#stx-pair? _hd1429914329_)
                                       (let ((_e1430214335_
                                              (gx#syntax-e _hd1429914329_)))
                                         (let ((_lp-hd1430314339_
                                                (##car _e1430214335_))
                                               (_lp-tl1430414342_
                                                (##cdr _e1430214335_)))
                                           (_loop1430114325_
                                            _lp-tl1430414342_
                                            (cons _lp-hd1430314339_
                                                  _attr1430514332_))))
                                       (let ((_attr1430614345_
                                              (reverse _attr1430514332_)))
                                         ((lambda (_L14349_)
                                            (let ()
                                              (let ((_g1436614383_
                                                     (lambda (_g1436714379_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1436714379_))))
                                                (let ((_g1436515188_
                                                       (lambda (_g1436714387_)
                                                         (if (gx#stx-pair/null?
                                                              _g1436714387_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1436714387_)
                               '0)
                         (let ((_g29507_
                                (gx#syntax-split-splice _g1436714387_ '0)))
                           (begin
                             (let ((_g29508_ (values-count _g29507_)))
                               (if (not (fx= _g29508_ 2))
                                   (error "Context expects 2 values"
                                          _g29508_)))
                             (let ((_target1436914390_ (values-ref _g29507_ 0))
                                   (_tl1437114393_ (values-ref _g29507_ 1)))
                               (if (gx#stx-null? _tl1437114393_)
                                   (letrec ((_loop1437214396_
                                             (lambda (_hd1437014400_
                                                      _getf1437614403_)
                                               (if (gx#stx-pair?
                                                    _hd1437014400_)
                                                   (let ((_e1437314406_
                                                          (gx#syntax-e
                                                           _hd1437014400_)))
                                                     (let ((_lp-hd1437414410_
                                                            (##car _e1437314406_))
                                                           (_lp-tl1437514413_
                                                            (##cdr _e1437314406_)))
                                                       (_loop1437214396_
                                                        _lp-tl1437514413_
                                                        (cons _lp-hd1437414410_
                                                              _getf1437614403_))))
                                                   (let ((_getf1437714416_
                                                          (reverse _getf1437614403_)))
                                                     ((lambda (_L14420_)
                                                        (let ()
                                                          (let ((_g1443714454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1443814450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1443814450_))))
                    (let ((_g1443615179_
                           (lambda (_g1443814458_)
                             (if (gx#stx-pair/null? _g1443814458_)
                                 (if (fx>= (gx#stx-length _g1443814458_) '0)
                                     (let ((_g29509_
                                            (gx#syntax-split-splice
                                             _g1443814458_
                                             '0)))
                                       (begin
                                         (let ((_g29510_
                                                (values-count _g29509_)))
                                           (if (not (fx= _g29510_ 2))
                                               (error "Context expects 2 values"
                                                      _g29510_)))
                                         (let ((_target1444014461_
                                                (values-ref _g29509_ 0))
                                               (_tl1444214464_
                                                (values-ref _g29509_ 1)))
                                           (if (gx#stx-null? _tl1444214464_)
                                               (letrec ((_loop1444314467_
                                                         (lambda (_hd1444114471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1444714474_)
                   (if (gx#stx-pair? _hd1444114471_)
                       (let ((_e1444414477_ (gx#syntax-e _hd1444114471_)))
                         (let ((_lp-hd1444514481_ (##car _e1444414477_))
                               (_lp-tl1444614484_ (##cdr _e1444414477_)))
                           (_loop1444314467_
                            _lp-tl1444614484_
                            (cons _lp-hd1444514481_ _setf1444714474_))))
                       (let ((_setf1444814487_ (reverse _setf1444714474_)))
                         ((lambda (_L14491_)
                            (let ()
                              (let ((_type-attr14533_
                                     (if (gx#stx-null? _els14110_)
                                         '()
                                         (if _struct?14112_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14491_
                                                            _L14420_)
                                                           (foldr (lambda (_g1450714511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1450814514_
                                   _g1450914516_)
                            (cons (cons _g1450814514_ (cons _g1450714511_ '()))
                                  _g1450914516_))
                          '()
                          _L14491_
                          _L14420_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14491_
                                                            _L14420_
                                                            _L14349_)
                                                           (foldr (lambda (_g1451814523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1451914526_
                                   _g1452014528_
                                   _g1452114530_)
                            (cons (cons _g1452014528_
                                        (cons _g1451914526_
                                              (cons _g1451814523_ '())))
                                  _g1452114530_))
                          '()
                          _L14491_
                          _L14420_
                          _L14349_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14540_
                                       (cons 'name:
                                             (cons (let ((_$e14536_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14111_)))
                                                     (if _$e14536_
                                                         _$e14536_
                                                         _id14108_))
                                                   '()))))
                                  (let ((_type-id14555_
                                         (let ((_$e14551_
                                                (let ((_e1454214544_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14111_)))
                                                  (if _e1454214544_
                                                      (let ((_e14548_
                                                             _e1454214544_))
                                                        (cons 'id:
                                                              (cons _e14548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14551_ _$e14551_ '()))))
                                    (let ((_type-ctor14570_
                                           (let ((_$e14566_
                                                  (let ((_e1455714559_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14111_)))
                                                    (if _e1455714559_
                                                        (let ((_e14563_
                                                               _e1455714559_))
                                                          (cons 'constructor:
                                                                (cons _e14563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14566_ _$e14566_ '()))))
                                      (let ((_plist14588_
                                             (let ((_plist14577_
                                                    (let ((_$e14573_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14111_)))
                                                      (if _$e14573_
                                                          _$e14573_
                                                          '()))))
                                               (let ((_plist14580_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14111_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14577_)
                  _plist14577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14583_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14111_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14580_)
                    _plist14580_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14583_))))))
                                        (let ((_type-plist14628_
                                               (if (null? _plist14588_)
                                                   _plist14588_
                                                   (let ((_g1459114599_
                                                          (lambda (_g1459214595_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1459214595_))))
                                                     (let ((_g1459014624_
                                                            (lambda (_g1459214603_)
                                                              ((lambda (_L14606_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14606_ '()))
                                       '()))))
                       _g1459214603_))))
               (_g1459014624_ _plist14588_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1463114648_
                                                 (lambda (_g1463214644_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1463214644_))))
                                            (let ((_g1463015175_
                                                   (lambda (_g1463214652_)
                                                     (if (gx#stx-pair/null?
                                                          _g1463214652_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1463214652_)
                           '0)
                     (let ((_g29511_
                            (gx#syntax-split-splice _g1463214652_ '0)))
                       (begin
                         (let ((_g29512_ (values-count _g29511_)))
                           (if (not (fx= _g29512_ 2))
                               (error "Context expects 2 values" _g29512_)))
                         (let ((_target1463414655_ (values-ref _g29511_ 0))
                               (_tl1463614658_ (values-ref _g29511_ 1)))
                           (if (gx#stx-null? _tl1463614658_)
                               (letrec ((_loop1463714661_
                                         (lambda (_hd1463514665_
                                                  _type-body1464114668_)
                                           (if (gx#stx-pair? _hd1463514665_)
                                               (let ((_e1463814671_
                                                      (gx#syntax-e
                                                       _hd1463514665_)))
                                                 (let ((_lp-hd1463914675_
                                                        (##car _e1463814671_))
                                                       (_lp-tl1464014678_
                                                        (##cdr _e1463814671_)))
                                                   (_loop1463714661_
                                                    _lp-tl1464014678_
                                                    (cons _lp-hd1463914675_
                                                          _type-body1464114668_))))
                                               (let ((_type-body1464214681_
                                                      (reverse _type-body1464114668_)))
                                                 ((lambda (_L14685_)
                                                    (let ()
                                                      (let ((_g1470114709_
                                                             (lambda (_g1470214705_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1470214705_))))
                                                        (let ((_g1470015163_
                                                               (lambda (_g1470214713_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14716_)
                            (let ()
                              (let ((_g1472914737_
                                     (lambda (_g1473014733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1473014733_))))
                                (let ((_g1472815159_
                                       (lambda (_g1473014741_)
                                         ((lambda (_L14744_)
                                            (let ()
                                              (let ((_g1475714765_
                                                     (lambda (_g1475814761_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1475814761_))))
                                                (let ((_g1475615073_
                                                       (lambda (_g1475814769_)
                                                         ((lambda (_L14772_)
                                                            (let ()
                                                              (let ((_g1478514793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1478614789_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1478614789_))))
                        (let ((_g1478415069_
                               (lambda (_g1478614797_)
                                 ((lambda (_L14800_)
                                    (let ()
                                      (let ((_g1481314821_
                                             (lambda (_g1481414817_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1481414817_))))
                                        (let ((_g1481215065_
                                               (lambda (_g1481414825_)
                                                 ((lambda (_L14828_)
                                                    (let ()
                                                      (let ((_g1484114849_
                                                             (lambda (_g1484214845_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1484214845_))))
                                                        (let ((_g1484015023_
                                                               (lambda (_g1484214853_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14856_)
                            (let ()
                              (let ((_g1486914877_
                                     (lambda (_g1487014873_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1487014873_))))
                                (let ((_g1486815019_
                                       (lambda (_g1487014881_)
                                         ((lambda (_L14884_)
                                            (let ()
                                              (let ((_g1489714905_
                                                     (lambda (_g1489814901_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1489814901_))))
                                                (let ((_g1489615015_
                                                       (lambda (_g1489814909_)
                                                         ((lambda (_L14912_)
                                                            (let ()
                                                              (let ((_g1492514933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1492614929_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1492614929_))))
                        (let ((_g1492415011_
                               (lambda (_g1492614937_)
                                 ((lambda (_L14940_)
                                    (let ()
                                      (let ((_g1495314961_
                                             (lambda (_g1495414957_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1495414957_))))
                                        (let ((_g1495214983_
                                               (lambda (_g1495414965_)
                                                 ((lambda (_L14968_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap14114_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14968_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1495414965_))))
                                          (_g1495214983_
                                           (_wrap14114_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L14170_
                                                        (cons (cons _L14744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L14198_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14772_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L14198_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L14226_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14254_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1498614993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1498714996_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1498614993_ '()))
                               _g1498714996_))
                       '()
                       _L14420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1498814999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1498915002_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1498814999_ '()))
                                     _g1498915002_))
                             '()
                             _L14491_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14828_ '()))
                                    (cons _L14856_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14884_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14940_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1499015005_
                                                        _g1499115008_)
                                                 (cons _g1499015005_
                                                       _g1499115008_))
                                               '()
                                               _L14349_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1492614937_))))
                          (_g1492415011_ _plist14588_)))))
                  _g1489814909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1489615015_
                                                   (if (not (null? _type-ctor14570_))
                                                       (cadr _type-ctor14570_)
                                                       '#f))))))
                                          _g1487014881_))))
                                  (_g1486815019_ (cadr _type-name14540_))))))
                          _g1484214853_))))
                  (_g1484015023_
                   (let ((_quote-e15062_
                          (lambda (_x-ref15027_)
                            (if _x-ref15027_
                                (let ((_g1503015038_
                                       (lambda (_g1503115034_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1503115034_))))
                                  (let ((_g1502915058_
                                         (lambda (_g1503115042_)
                                           ((lambda (_L15045_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L15045_ '()))))
                                            _g1503115042_))))
                                    (_g1502915058_ _x-ref15027_)))
                                '#f))))
                     (if _struct?14112_
                         (_quote-e15062_ _super-ref14109_)
                         (cons 'list
                               (map _quote-e15062_ _super-ref14109_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1481414825_))))
                                          (_g1481215065_
                                           (if (not (null? _type-id14555_))
                                               (cadr _type-id14555_)
                                               '#f))))))
                                  _g1478614797_))))
                          (_g1478415069_
                           (if _struct?14112_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1475814769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1475615073_
                                                   (if _struct?14112_
                                                       (if _super14121_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14282_ '()))
                   '#f)
               (let ((_g1507715094_
                      (lambda (_g1507815090_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1507815090_))))
                 (let ((_g1507615155_
                        (lambda (_g1507815098_)
                          (if (gx#stx-pair/null? _g1507815098_)
                              (if (fx>= (gx#stx-length _g1507815098_) '0)
                                  (let ((_g29513_
                                         (gx#syntax-split-splice
                                          _g1507815098_
                                          '0)))
                                    (begin
                                      (let ((_g29514_ (values-count _g29513_)))
                                        (if (not (fx= _g29514_ 2))
                                            (error "Context expects 2 values"
                                                   _g29514_)))
                                      (let ((_target1508015101_
                                             (values-ref _g29513_ 0))
                                            (_tl1508215104_
                                             (values-ref _g29513_ 1)))
                                        (if (gx#stx-null? _tl1508215104_)
                                            (letrec ((_loop1508315107_
                                                      (lambda (_hd1508115111_
                                                               _super-id1508715114_)
                                                        (if (gx#stx-pair?
                                                             _hd1508115111_)
                                                            (let ((_e1508415117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1508115111_)))
                      (let ((_lp-hd1508515121_ (##car _e1508415117_))
                            (_lp-tl1508615124_ (##cdr _e1508415117_)))
                        (_loop1508315107_
                         _lp-tl1508615124_
                         (cons _lp-hd1508515121_ _super-id1508715114_))))
                    (let ((_super-id1508815127_
                           (reverse _super-id1508715114_)))
                      ((lambda (_L15131_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1514615149_ _g1514715152_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1514615149_
                                                              '()))
                                                  _g1514715152_))
                                          '()
                                          _L15131_)))))
                       _super-id1508815127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1508315107_
                                               _target1508015101_
                                               '()))
                                            (_g1507715094_ _g1507815098_)))))
                                  (_g1507715094_ _g1507815098_))
                              (_g1507715094_ _g1507815098_)))))
                   (_g1507615155_ _L14282_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1473014741_))))
                                  (_g1472815159_
                                   (if _struct?14112_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1470214713_))))
                  (_g1470015163_
                   (_wrap14114_
                    (cons _L14139_
                          (cons _L14198_
                                (cons _L14282_
                                      (cons _L14226_
                                            (cons _L14254_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1516615169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1516715172_)
                     (cons _g1516615169_ _g1516715172_))
                   '()
                   _L14685_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1464214681_))))))
                                 (_loop1463714661_ _target1463414655_ '()))
                               (_g1463114648_ _g1463214652_)))))
                     (_g1463114648_ _g1463214652_))
                 (_g1463114648_ _g1463214652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1463015175_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14628_ _type-ctor14570_)
                            _type-name14540_)
                     _type-id14555_)
              _type-attr14533_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1444814487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1444314467_
                                                  _target1444014461_
                                                  '()))
                                               (_g1443714454_
                                                _g1443814458_)))))
                                     (_g1443714454_ _g1443814458_))
                                 (_g1443714454_ _g1443814458_)))))
                      (_g1443615179_
                       (gx#stx-map
                        (lambda (_g1518215184_)
                          (_make-id14116_
                           _name14118_
                           '"-"
                           _g1518215184_
                           '"-set!"))
                        _els14110_))))))
              _getf1437714416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1437214396_ _target1436914390_ '()))
                                   (_g1436614383_ _g1436714387_)))))
                         (_g1436614383_ _g1436714387_))
                     (_g1436614383_ _g1436714387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1436515188_
                                                   (gx#stx-map
                                                    (lambda (_g1519115193_)
                                                      (_make-id14116_
                                                       _name14118_
                                                       '"-"
                                                       _g1519115193_))
                                                    _els14110_))))))
                                          _attr1430614345_))))))
                         (_loop1430114325_ _target1429814319_ '()))
                       (_g1429514312_ _g1429614316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1429514312_
                                                      _g1429614316_))
                                                 (_g1429514312_
                                                  _g1429614316_)))))
                                      (_g1429415197_ _els14110_)))))
                              _g1426814279_))))
                      (_g1426615201_
                       (if _struct?14112_
                           (if _super14121_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14121_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14121_)))))))
              _g1424014251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1423815205_
                                               (_make-id14116_
                                                _name14118_
                                                '"?"))))))
                                      _g1421214223_))))
                              (_g1421015209_
                               (_make-id14116_ '"make-" _name14118_))))))
                      _g1418414195_))))
              (_g1418215213_ (_make-id14116_ _name14118_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1415614167_))))
                                      (_g1415415217_ _id14108_)))))
                              _g1412514136_))))
                      (_g1412315221_
                       (if _struct?14112_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15313_)
        (let ((_generate15316_
               (lambda (_hd15400_ _fields15402_ _body15403_)
                 (let ((_g1540615421_
                        (lambda (_g1540715417_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1540715417_))))
                   (let ((_g1540515432_
                          (lambda (_g1540715425_)
                            ((lambda ()
                               (if (gx#identifier? _hd15400_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15313_
                                    _hd15400_
                                    '#f
                                    _fields15402_
                                    _body15403_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15313_
                                    _hd15400_)))))))
                     (let ((_g1540415476_
                            (lambda (_g1540715436_)
                              (if (gx#stx-pair? _g1540715436_)
                                  (let ((_e1541015439_
                                         (gx#syntax-e _g1540715436_)))
                                    (let ((_hd1541115443_
                                           (##car _e1541015439_))
                                          (_tl1541215446_
                                           (##cdr _e1541015439_)))
                                      (if (gx#stx-pair? _tl1541215446_)
                                          (let ((_e1541315449_
                                                 (gx#syntax-e _tl1541215446_)))
                                            (let ((_hd1541415453_
                                                   (##car _e1541315449_))
                                                  (_tl1541515456_
                                                   (##cdr _e1541315449_)))
                                              (if (gx#stx-null? _tl1541515456_)
                                                  ((lambda (_L15459_ _L15461_)
                                                     (if (if (gx#identifier?
                                                              _L15461_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15459_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15313_
                                                          _L15461_
                                                          _L15459_
                                                          _fields15402_
                                                          _body15403_
                                                          '#t)
                                                         (_g1540515432_
                                                          _g1540715436_)))
                                                   _hd1541415453_
                                                   _hd1541115443_)
                                                  (_g1540515432_
                                                   _g1540715436_))))
                                          (_g1540515432_ _g1540715436_))))
                                  (_g1540515432_ _g1540715436_)))))
                       (_g1540415476_ _hd15400_)))))))
          (let ((_g1531915338_
                 (lambda (_g1532015334_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1532015334_))))
            (let ((_g1531815396_
                   (lambda (_g1532015342_)
                     (if (gx#stx-pair? _g1532015342_)
                         (let ((_e1532415345_ (gx#syntax-e _g1532015342_)))
                           (let ((_hd1532515349_ (##car _e1532415345_))
                                 (_tl1532615352_ (##cdr _e1532415345_)))
                             (if (gx#stx-pair? _tl1532615352_)
                                 (let ((_e1532715355_
                                        (gx#syntax-e _tl1532615352_)))
                                   (let ((_hd1532815359_ (##car _e1532715355_))
                                         (_tl1532915362_
                                          (##cdr _e1532715355_)))
                                     (if (gx#stx-pair? _tl1532915362_)
                                         (let ((_e1533015365_
                                                (gx#syntax-e _tl1532915362_)))
                                           (let ((_hd1533115369_
                                                  (##car _e1533015365_))
                                                 (_tl1533215372_
                                                  (##cdr _e1533015365_)))
                                             ((lambda (_L15375_
                                                       _L15377_
                                                       _L15378_)
                                                (if (if (gx#identifier-list?
                                                         _L15377_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15375_)
                                                        '#f)
                                                    (_generate15316_
                                                     _L15378_
                                                     _L15377_
                                                     _L15375_)
                                                    (_g1531915338_
                                                     _g1532015342_)))
                                              _tl1533215372_
                                              _hd1533115369_
                                              _hd1532815359_)))
                                         (_g1531915338_ _g1532015342_))))
                                 (_g1531915338_ _g1532015342_))))
                         (_g1531915338_ _g1532015342_)))))
              (_g1531815396_ _stx15313_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15480_)
        (let ((_generate15483_
               (lambda (_hd15567_ _slots15569_ _body15570_)
                 (let ((_g1557315585_
                        (lambda (_g1557415581_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1557415581_))))
                   (let ((_g1557215596_
                          (lambda (_g1557415589_)
                            ((lambda ()
                               (if (gx#identifier? _hd15567_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15480_
                                    _hd15567_
                                    '()
                                    _slots15569_
                                    _body15570_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15480_
                                    _hd15567_)))))))
                     (let ((_g1557115628_
                            (lambda (_g1557415600_)
                              (if (gx#stx-pair? _g1557415600_)
                                  (let ((_e1557715603_
                                         (gx#syntax-e _g1557415600_)))
                                    (let ((_hd1557815607_
                                           (##car _e1557715603_))
                                          (_tl1557915610_
                                           (##cdr _e1557715603_)))
                                      ((lambda (_L15613_ _L15615_)
                                         (if (if (gx#stx-list? _L15613_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15613_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15480_
                                              _L15615_
                                              (gx#syntax->list _L15613_)
                                              _slots15569_
                                              _body15570_
                                              '#f)
                                             (_g1557215596_ _g1557415600_)))
                                       _tl1557915610_
                                       _hd1557815607_)))
                                  (_g1557215596_ _g1557415600_)))))
                       (_g1557115628_ _hd15567_)))))))
          (let ((_g1548615505_
                 (lambda (_g1548715501_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1548715501_))))
            (let ((_g1548515563_
                   (lambda (_g1548715509_)
                     (if (gx#stx-pair? _g1548715509_)
                         (let ((_e1549115512_ (gx#syntax-e _g1548715509_)))
                           (let ((_hd1549215516_ (##car _e1549115512_))
                                 (_tl1549315519_ (##cdr _e1549115512_)))
                             (if (gx#stx-pair? _tl1549315519_)
                                 (let ((_e1549415522_
                                        (gx#syntax-e _tl1549315519_)))
                                   (let ((_hd1549515526_ (##car _e1549415522_))
                                         (_tl1549615529_
                                          (##cdr _e1549415522_)))
                                     (if (gx#stx-pair? _tl1549615529_)
                                         (let ((_e1549715532_
                                                (gx#syntax-e _tl1549615529_)))
                                           (let ((_hd1549815536_
                                                  (##car _e1549715532_))
                                                 (_tl1549915539_
                                                  (##cdr _e1549715532_)))
                                             ((lambda (_L15542_
                                                       _L15544_
                                                       _L15545_)
                                                (if (if (gx#identifier-list?
                                                         _L15544_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15542_)
                                                        '#f)
                                                    (_generate15483_
                                                     _L15545_
                                                     _L15544_
                                                     _L15542_)
                                                    (_g1548615505_
                                                     _g1548715509_)))
                                              _tl1549915539_
                                              _hd1549815536_
                                              _hd1549515526_)))
                                         (_g1548615505_ _g1548715509_))))
                                 (_g1548615505_ _g1548715509_))))
                         (_g1548615505_ _g1548715509_)))))
              (_g1548515563_ _stx15480_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15632_)
        (let ((_wrap15635_
               (lambda (_e-stx15940_)
                 (gx#stx-wrap-source
                  _e-stx15940_
                  (gx#stx-source _stx15632_)))))
          (let ((_method-opt?15637_
                 (lambda (_x15937_) (memq (gx#stx-e _x15937_) '(rebind:)))))
            (let ((_g1563915668_
                   (lambda (_g1564015664_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1564015664_))))
              (let ((_g1563815933_
                     (lambda (_g1564015672_)
                       (if (gx#stx-pair? _g1564015672_)
                           (let ((_e1564515675_ (gx#syntax-e _g1564015672_)))
                             (let ((_hd1564615679_ (##car _e1564515675_))
                                   (_tl1564715682_ (##cdr _e1564515675_)))
                               (if (gx#stx-pair? _tl1564715682_)
                                   (let ((_e1564815685_
                                          (gx#syntax-e _tl1564715682_)))
                                     (let ((_hd1564915689_
                                            (##car _e1564815685_))
                                           (_tl1565015692_
                                            (##cdr _e1564815685_)))
                                       (if (gx#stx-pair? _hd1564915689_)
                                           (let ((_e1565115695_
                                                  (gx#syntax-e
                                                   _hd1564915689_)))
                                             (let ((_hd1565215699_
                                                    (##car _e1565115695_))
                                                   (_tl1565315702_
                                                    (##cdr _e1565115695_)))
                                               (if (gx#identifier?
                                                    _hd1565215699_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29516_|
                                                        _hd1565215699_)
                                                       (if (gx#stx-pair?
                                                            _tl1565315702_)
                                                           (let ((_e1565415705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1565315702_)))
                     (let ((_hd1565515709_ (##car _e1565415705_))
                           (_tl1565615712_ (##cdr _e1565415705_)))
                       (if (gx#stx-pair? _tl1565615712_)
                           (let ((_e1565715715_ (gx#syntax-e _tl1565615712_)))
                             (let ((_hd1565815719_ (##car _e1565715715_))
                                   (_tl1565915722_ (##cdr _e1565715715_)))
                               (if (gx#stx-null? _tl1565915722_)
                                   (if (gx#stx-pair? _tl1565015692_)
                                       (let ((_e1566015725_
                                              (gx#syntax-e _tl1565015692_)))
                                         (let ((_hd1566115729_
                                                (##car _e1566015725_))
                                               (_tl1566215732_
                                                (##cdr _e1566015725_)))
                                           ((lambda (_L15735_
                                                     _L15737_
                                                     _L15738_
                                                     _L15739_)
                                              (if (if (gx#identifier? _L15739_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15738_)
                                                          (gx#stx-plist?
                                                           _L15735_
                                                           _method-opt?15637_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15764_
                                                         (gx#syntax-local-value
                                                          _L15738_)))
                                                    (let ((_rebind?15767_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15735_))
                       '#t
                       '#f)))
              (let ((_g1577015778_
                     (lambda (_g1577115774_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1577115774_))))
                (let ((_g1576915929_
                       (lambda (_g1577115782_)
                         ((lambda (_L15785_)
                            (let ()
                              (let ((_g1579915807_
                                     (lambda (_g1580015803_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1580015803_))))
                                (let ((_g1579815925_
                                       (lambda (_g1580015811_)
                                         ((lambda (_L15814_)
                                            (let ()
                                              (let ((_g1582715835_
                                                     (lambda (_g1582815831_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1582815831_))))
                                                (let ((_g1582615921_
                                                       (lambda (_g1582815839_)
                                                         ((lambda (_L15842_)
                                                            (let ()
                                                              (let ((_g1585515863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1585615859_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1585615859_))))
                        (let ((_g1585415917_
                               (lambda (_g1585615867_)
                                 ((lambda (_L15870_)
                                    (let ()
                                      (let ((_g1588315891_
                                             (lambda (_g1588415887_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1588415887_))))
                                        (let ((_g1588215913_
                                               (lambda (_g1588415895_)
                                                 ((lambda (_L15898_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15635_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15898_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1588415895_))))
                                          (_g1588215913_
                                           (_wrap15635_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15785_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15739_ '()))
                      (cons _L15814_ (cons _L15870_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1585615867_))))
                          (_g1585415917_ _rebind?15767_)))))
                  _g1582815839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1582615921_
                                                   (_wrap15635_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15814_
                                                                (cons _L15737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1580015811_))))
                                  (_g1579815925_
                                   (gx#stx-identifier
                                    _L15739_
                                    _L15738_
                                    '"::"
                                    _L15739_))))))
                          _g1577115782_))))
                  (_g1576915929_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1563915668_
                                                   _g1564015672_)))
                                            _tl1566215732_
                                            _hd1566115729_
                                            _hd1565815719_
                                            _hd1565515709_)))
                                       (_g1563915668_ _g1564015672_))
                                   (_g1563915668_ _g1564015672_))))
                           (_g1563915668_ _g1564015672_))))
                   (_g1563915668_ _g1564015672_))
               (_g1563915668_ _g1564015672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1563915668_
                                                    _g1564015672_))))
                                           (_g1563915668_ _g1564015672_))))
                                   (_g1563915668_ _g1564015672_))))
                           (_g1563915668_ _g1564015672_)))))
                (_g1563815933_ _stx15632_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15943_)
        (let ((_g1594815997_
               (lambda (_g1594915993_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1594915993_))))
          (let ((_g1594716096_
                 (lambda (_g1594916001_)
                   (if (gx#stx-pair? _g1594916001_)
                       (let ((_e1597416004_ (gx#syntax-e _g1594916001_)))
                         (let ((_hd1597516008_ (##car _e1597416004_))
                               (_tl1597616011_ (##cdr _e1597416004_)))
                           (if (gx#stx-pair? _tl1597616011_)
                               (let ((_e1597716014_
                                      (gx#syntax-e _tl1597616011_)))
                                 (let ((_hd1597816018_ (##car _e1597716014_))
                                       (_tl1597916021_ (##cdr _e1597716014_)))
                                   (if (gx#stx-pair? _tl1597916021_)
                                       (let ((_e1598016024_
                                              (gx#syntax-e _tl1597916021_)))
                                         (let ((_hd1598116028_
                                                (##car _e1598016024_))
                                               (_tl1598216031_
                                                (##cdr _e1598016024_)))
                                           (if (gx#stx-pair/null?
                                                _tl1598216031_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1598216031_)
                                                         '0)
                                                   (let ((_g29517_
                                                          (gx#syntax-split-splice
                                                           _tl1598216031_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29518_
                                                              (values-count
                                                               _g29517_)))
                                                         (if (not (fx= _g29518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29518_)))
               (let ((_target1598316034_ (values-ref _g29517_ 0))
                     (_tl1598516037_ (values-ref _g29517_ 1)))
                 (if (gx#stx-null? _tl1598516037_)
                     (letrec ((_loop1598616040_
                               (lambda (_hd1598416044_ _arg1599016047_)
                                 (if (gx#stx-pair? _hd1598416044_)
                                     (let ((_e1598716050_
                                            (gx#syntax-e _hd1598416044_)))
                                       (let ((_lp-hd1598816054_
                                              (##car _e1598716050_))
                                             (_lp-tl1598916057_
                                              (##cdr _e1598716050_)))
                                         (_loop1598616040_
                                          _lp-tl1598916057_
                                          (cons _lp-hd1598816054_
                                                _arg1599016047_))))
                                     (let ((_arg1599116060_
                                            (reverse _arg1599016047_)))
                                       ((lambda (_L16064_ _L16066_ _L16067_)
                                          (if (gx#identifier? _L16067_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16066_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16067_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1608716090_ _g1608816093_)
                                   (cons _g1608716090_ _g1608816093_))
                                 '()
                                 _L16064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1594815997_ _g1594916001_)))
                                        _arg1599116060_
                                        _hd1598116028_
                                        _hd1597816018_))))))
                       (_loop1598616040_ _target1598316034_ '()))
                     (_g1594815997_ _g1594916001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1594815997_
                                                    _g1594916001_))
                                               (_g1594815997_ _g1594916001_))))
                                       (_g1594815997_ _g1594916001_))))
                               (_g1594815997_ _g1594916001_))))
                       (_g1594815997_ _g1594916001_)))))
            (let ((_g1594616202_
                   (lambda (_g1594916100_)
                     (if (gx#stx-pair? _g1594916100_)
                         (let ((_e1595316103_ (gx#syntax-e _g1594916100_)))
                           (let ((_hd1595416107_ (##car _e1595316103_))
                                 (_tl1595516110_ (##cdr _e1595316103_)))
                             (if (gx#stx-pair? _tl1595516110_)
                                 (let ((_e1595616113_
                                        (gx#syntax-e _tl1595516110_)))
                                   (let ((_hd1595716117_ (##car _e1595616113_))
                                         (_tl1595816120_
                                          (##cdr _e1595616113_)))
                                     (if (gx#stx-pair? _tl1595816120_)
                                         (let ((_e1595916123_
                                                (gx#syntax-e _tl1595816120_)))
                                           (let ((_hd1596016127_
                                                  (##car _e1595916123_))
                                                 (_tl1596116130_
                                                  (##cdr _e1595916123_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1596116130_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1596116130_)
                                                           '0)
                                                     (let ((_g29519_
                                                            (gx#syntax-split-splice
                                                             _tl1596116130_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29520_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29519_)))
                   (if (not (fx= _g29520_ 2))
                       (error "Context expects 2 values" _g29520_)))
                 (let ((_target1596216133_ (values-ref _g29519_ 0))
                       (_tl1596416136_ (values-ref _g29519_ 1)))
                   (if (gx#stx-null? _tl1596416136_)
                       (letrec ((_loop1596516139_
                                 (lambda (_hd1596316143_ _arg1596916146_)
                                   (if (gx#stx-pair? _hd1596316143_)
                                       (let ((_e1596616149_
                                              (gx#syntax-e _hd1596316143_)))
                                         (let ((_lp-hd1596716153_
                                                (##car _e1596616149_))
                                               (_lp-tl1596816156_
                                                (##cdr _e1596616149_)))
                                           (_loop1596516139_
                                            _lp-tl1596816156_
                                            (cons _lp-hd1596716153_
                                                  _arg1596916146_))))
                                       (let ((_arg1597016159_
                                              (reverse _arg1596916146_)))
                                         ((lambda (_L16163_ _L16165_ _L16166_)
                                            (if (if (gx#identifier? _L16166_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1618516188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1618616191_)
                        (cons _g1618516188_ _g1618616191_))
                      '()
                      _L16163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16166_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1619316196_
                                                              _g1619416199_)
                                                       (cons _g1619316196_
                                                             _g1619416199_))
                                                     '()
                                                     _L16163_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1594716096_ _g1594916100_)))
                                          _arg1597016159_
                                          _hd1596016127_
                                          _hd1595716117_))))))
                         (_loop1596516139_ _target1596216133_ '()))
                       (_g1594716096_ _g1594916100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594716096_
                                                      _g1594916100_))
                                                 (_g1594716096_
                                                  _g1594916100_))))
                                         (_g1594716096_ _g1594916100_))))
                                 (_g1594716096_ _g1594916100_))))
                         (_g1594716096_ _g1594916100_)))))
              (_g1594616202_ _$stx15943_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16208_)
        (let ((_g1621316253_
               (lambda (_g1621416249_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1621416249_))))
          (let ((_g1621216354_
                 (lambda (_g1621416257_)
                   (if (gx#stx-pair? _g1621416257_)
                       (let ((_e1623016260_ (gx#syntax-e _g1621416257_)))
                         (let ((_hd1623116264_ (##car _e1623016260_))
                               (_tl1623216267_ (##cdr _e1623016260_)))
                           (if (gx#stx-pair? _tl1623216267_)
                               (let ((_e1623316270_
                                      (gx#syntax-e _tl1623216267_)))
                                 (let ((_hd1623416274_ (##car _e1623316270_))
                                       (_tl1623516277_ (##cdr _e1623316270_)))
                                   (if (gx#stx-pair? _tl1623516277_)
                                       (let ((_e1623616280_
                                              (gx#syntax-e _tl1623516277_)))
                                         (let ((_hd1623716284_
                                                (##car _e1623616280_))
                                               (_tl1623816287_
                                                (##cdr _e1623616280_)))
                                           (if (gx#stx-pair/null?
                                                _tl1623816287_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1623816287_)
                                                         '0)
                                                   (let ((_g29521_
                                                          (gx#syntax-split-splice
                                                           _tl1623816287_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29522_
                                                              (values-count
                                                               _g29521_)))
                                                         (if (not (fx= _g29522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29522_)))
               (let ((_target1623916290_ (values-ref _g29521_ 0))
                     (_tl1624116293_ (values-ref _g29521_ 1)))
                 (if (gx#stx-null? _tl1624116293_)
                     (letrec ((_loop1624216296_
                               (lambda (_hd1624016300_ _rest1624616303_)
                                 (if (gx#stx-pair? _hd1624016300_)
                                     (let ((_e1624316306_
                                            (gx#syntax-e _hd1624016300_)))
                                       (let ((_lp-hd1624416310_
                                              (##car _e1624316306_))
                                             (_lp-tl1624516313_
                                              (##cdr _e1624316306_)))
                                         (_loop1624216296_
                                          _lp-tl1624516313_
                                          (cons _lp-hd1624416310_
                                                _rest1624616303_))))
                                     (let ((_rest1624716316_
                                            (reverse _rest1624616303_)))
                                       ((lambda (_L16320_
                                                 _L16322_
                                                 _L16323_
                                                 _L16324_)
                                          (cons _L16324_
                                                (cons (cons _L16324_
                                                            (cons _L16323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16322_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1634516348_ _g1634616351_)
                         (cons _g1634516348_ _g1634616351_))
                       '()
                       _L16320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1624716316_
                                        _hd1623716284_
                                        _hd1623416274_
                                        _hd1623116264_))))))
                       (_loop1624216296_ _target1623916290_ '()))
                     (_g1621316253_ _g1621416257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1621316253_
                                                    _g1621416257_))
                                               (_g1621316253_ _g1621416257_))))
                                       (_g1621316253_ _g1621416257_))))
                               (_g1621316253_ _g1621416257_))))
                       (_g1621316253_ _g1621416257_)))))
            (let ((_g1621116408_
                   (lambda (_g1621416358_)
                     (if (gx#stx-pair? _g1621416358_)
                         (let ((_e1621716361_ (gx#syntax-e _g1621416358_)))
                           (let ((_hd1621816365_ (##car _e1621716361_))
                                 (_tl1621916368_ (##cdr _e1621716361_)))
                             (if (gx#stx-pair? _tl1621916368_)
                                 (let ((_e1622016371_
                                        (gx#syntax-e _tl1621916368_)))
                                   (let ((_hd1622116375_ (##car _e1622016371_))
                                         (_tl1622216378_
                                          (##cdr _e1622016371_)))
                                     (if (gx#stx-pair? _tl1622216378_)
                                         (let ((_e1622316381_
                                                (gx#syntax-e _tl1622216378_)))
                                           (let ((_hd1622416385_
                                                  (##car _e1622316381_))
                                                 (_tl1622516388_
                                                  (##cdr _e1622316381_)))
                                             (if (gx#stx-null? _tl1622516388_)
                                                 ((lambda (_L16391_ _L16393_)
                                                    (if (gx#identifier?
                                                         _L16391_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16391_ '()))
                                  '())))
                (_g1621216354_ _g1621416358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1622416385_
                                                  _hd1622116375_)
                                                 (_g1621216354_
                                                  _g1621416358_))))
                                         (_g1621216354_ _g1621416358_))))
                                 (_g1621216354_ _g1621416358_))))
                         (_g1621216354_ _g1621416358_)))))
              (_g1621116408_ _$stx16208_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16413_)
        (let ((_g1641816470_
               (lambda (_g1641916466_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641916466_))))
          (let ((_g1641716599_
                 (lambda (_g1641916474_)
                   (if (gx#stx-pair? _g1641916474_)
                       (let ((_e1644116477_ (gx#syntax-e _g1641916474_)))
                         (let ((_hd1644216481_ (##car _e1644116477_))
                               (_tl1644316484_ (##cdr _e1644116477_)))
                           (if (gx#stx-pair? _tl1644316484_)
                               (let ((_e1644416487_
                                      (gx#syntax-e _tl1644316484_)))
                                 (let ((_hd1644516491_ (##car _e1644416487_))
                                       (_tl1644616494_ (##cdr _e1644416487_)))
                                   (if (gx#stx-pair? _tl1644616494_)
                                       (let ((_e1644716497_
                                              (gx#syntax-e _tl1644616494_)))
                                         (let ((_hd1644816501_
                                                (##car _e1644716497_))
                                               (_tl1644916504_
                                                (##cdr _e1644716497_)))
                                           (if (gx#stx-pair/null?
                                                _tl1644916504_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1644916504_)
                                                         '2)
                                                   (let ((_g29523_
                                                          (gx#syntax-split-splice
                                                           _tl1644916504_
                                                           '2)))
                                                     (begin
                                                       (let ((_g29524_
                                                              (values-count
                                                               _g29523_)))
                                                         (if (not (fx= _g29524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29524_)))
               (let ((_target1645016507_ (values-ref _g29523_ 0))
                     (_tl1645216510_ (values-ref _g29523_ 1)))
                 (if (gx#stx-pair? _tl1645216510_)
                     (let ((_e1645916513_ (gx#syntax-e _tl1645216510_)))
                       (let ((_hd1646016517_ (##car _e1645916513_))
                             (_tl1646116520_ (##cdr _e1645916513_)))
                         (if (gx#stx-pair? _tl1646116520_)
                             (let ((_e1646216523_
                                    (gx#syntax-e _tl1646116520_)))
                               (let ((_hd1646316527_ (##car _e1646216523_))
                                     (_tl1646416530_ (##cdr _e1646216523_)))
                                 (if (gx#stx-null? _tl1646416530_)
                                     (letrec ((_loop1645316533_
                                               (lambda (_hd1645116537_
                                                        _path1645716540_)
                                                 (if (gx#stx-pair?
                                                      _hd1645116537_)
                                                     (let ((_e1645416543_
                                                            (gx#syntax-e
                                                             _hd1645116537_)))
                                                       (let ((_lp-hd1645516547_
                                                              (##car _e1645416543_))
                                                             (_lp-tl1645616550_
                                                              (##cdr _e1645416543_)))
                                                         (_loop1645316533_
                                                          _lp-tl1645616550_
                                                          (cons _lp-hd1645516547_
                                                                _path1645716540_))))
                                                     (let ((_path1645816553_
                                                            (reverse _path1645716540_)))
                                                       ((lambda (_L16557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L16559_
                         _L16560_
                         _L16561_
                         _L16562_
                         _L16563_)
                  (cons _L16563_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L16562_
                                          (cons _L16561_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1659016593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1659116596_)
                   (cons _g1659016593_ _g1659116596_))
                 '()
                 _L16560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L16559_ (cons _L16557_ '())))))
                _hd1646316527_
                _hd1646016517_
                _path1645816553_
                _hd1644816501_
                _hd1644516491_
                _hd1644216481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1645316533_
                                        _target1645016507_
                                        '()))
                                     (_g1641816470_ _g1641916474_))))
                             (_g1641816470_ _g1641916474_))))
                     (_g1641816470_ _g1641916474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1641816470_
                                                    _g1641916474_))
                                               (_g1641816470_ _g1641916474_))))
                                       (_g1641816470_ _g1641916474_))))
                               (_g1641816470_ _g1641916474_))))
                       (_g1641816470_ _g1641916474_)))))
            (let ((_g1641616667_
                   (lambda (_g1641916603_)
                     (if (gx#stx-pair? _g1641916603_)
                         (let ((_e1642316606_ (gx#syntax-e _g1641916603_)))
                           (let ((_hd1642416610_ (##car _e1642316606_))
                                 (_tl1642516613_ (##cdr _e1642316606_)))
                             (if (gx#stx-pair? _tl1642516613_)
                                 (let ((_e1642616616_
                                        (gx#syntax-e _tl1642516613_)))
                                   (let ((_hd1642716620_ (##car _e1642616616_))
                                         (_tl1642816623_
                                          (##cdr _e1642616616_)))
                                     (if (gx#stx-pair? _tl1642816623_)
                                         (let ((_e1642916626_
                                                (gx#syntax-e _tl1642816623_)))
                                           (let ((_hd1643016630_
                                                  (##car _e1642916626_))
                                                 (_tl1643116633_
                                                  (##cdr _e1642916626_)))
                                             (if (gx#stx-pair? _tl1643116633_)
                                                 (let ((_e1643216636_
                                                        (gx#syntax-e
                                                         _tl1643116633_)))
                                                   (let ((_hd1643316640_
                                                          (##car _e1643216636_))
                                                         (_tl1643416643_
                                                          (##cdr _e1643216636_)))
                                                     (if (gx#stx-null?
                                                          _tl1643416643_)
                                                         ((lambda (_L16646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16648_
                           _L16649_)
                    (if (gx#identifier? _L16648_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16649_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16648_ '()))
                                          (cons _L16646_ '()))))
                        (_g1641716599_ _g1641916603_)))
                  _hd1643316640_
                  _hd1643016630_
                  _hd1642716620_)
                 (_g1641716599_ _g1641916603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1641716599_
                                                  _g1641916603_))))
                                         (_g1641716599_ _g1641916603_))))
                                 (_g1641716599_ _g1641916603_))))
                         (_g1641716599_ _g1641916603_)))))
              (_g1641616667_ _$stx16413_))))))))
