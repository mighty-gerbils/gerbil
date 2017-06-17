(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29517_|
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
      (lambda _$args15302_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15302_)))
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
      (lambda _$args15298_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15298_)))
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
      (lambda _$args15294_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15294_)))
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
      (lambda _$args15290_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15290_)))
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
      (lambda _$args15286_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15286_)))
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
      (lambda _$args15282_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15282_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1525415268_
             (lambda (_stx15256_ _is?15258_)
               (if (gx#identifier? _stx15256_)
                   (let ((_e1525915261_
                          (gx#syntax-local-value _stx15256_ false)))
                     (if _e1525915261_
                         (let ((_e15265_ _e1525915261_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15265_)
                               (_is?15258_ _e15265_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29505_
          (let ((_g29504_ (length _g29505_)))
            (cond ((fx= _g29504_ 1)
                   (apply (lambda (_stx15272_)
                            (let ((_is?15275_ true))
                              (_opt-lambda1525415268_ _stx15272_ _is?15275_)))
                          _g29505_))
                  ((fx= _g29504_ 2) (apply _opt-lambda1525415268_ _g29505_))
                  (else (error "No clause matching arguments" _g29505_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15252_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15252_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15249_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15249_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15243_)
        (if _id15243_
            (let ((_info15246_ (gx#syntax-local-value _id15243_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15246_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15246_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15234_)
        (let ((_body-opt?15237_
               (lambda (_key15240_)
                 (memq (gx#stx-e _key15240_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx15234_ _body-opt?15237_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14107_
               _id14109_
               _super-ref14110_
               _els14111_
               _body14112_
               _struct?14113_)
        (let ((_wrap14115_
               (lambda (_e-stx15231_)
                 (gx#stx-wrap-source
                  _e-stx15231_
                  (gx#stx-source _stx14107_)))))
          (let ((_make-id14117_
                 (if (uninterned-symbol? (gx#stx-e _id14109_))
                     (lambda _g29516_ (gx#genident _id14109_))
                     (lambda _args15228_
                       (apply gx#stx-identifier _id14109_ _args15228_)))))
            (begin
              (gx#check-duplicate-identifiers _els14111_ _stx14107_)
              (let ((_name14119_ (symbol->string (gx#stx-e _id14109_))))
                (let ((_super14122_
                       (if _struct?14113_
                           (if _super-ref14110_
                               (gx#syntax-local-value _super-ref14110_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14110_))))
                  (let ((_g1412514133_
                         (lambda (_g1412614129_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1412614129_))))
                    (let ((_g1412415222_
                           (lambda (_g1412614137_)
                             ((lambda (_L14140_)
                                (let ()
                                  (let ((_g1415614164_
                                         (lambda (_g1415714160_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1415714160_))))
                                    (let ((_g1415515218_
                                           (lambda (_g1415714168_)
                                             ((lambda (_L14171_)
                                                (let ()
                                                  (let ((_g1418414192_
                                                         (lambda (_g1418514188_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1418514188_))))
                                                    (let ((_g1418315214_
                                                           (lambda (_g1418514196_)
                                                             ((lambda (_L14199_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1421214220_
                                 (lambda (_g1421314216_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1421314216_))))
                            (let ((_g1421115210_
                                   (lambda (_g1421314224_)
                                     ((lambda (_L14227_)
                                        (let ()
                                          (let ((_g1424014248_
                                                 (lambda (_g1424114244_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1424114244_))))
                                            (let ((_g1423915206_
                                                   (lambda (_g1424114252_)
                                                     ((lambda (_L14255_)
                                                        (let ()
                                                          (let ((_g1426814276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1426914272_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1426914272_))))
                    (let ((_g1426715202_
                           (lambda (_g1426914280_)
                             ((lambda (_L14283_)
                                (let ()
                                  (let ((_g1429614313_
                                         (lambda (_g1429714309_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1429714309_))))
                                    (let ((_g1429515198_
                                           (lambda (_g1429714317_)
                                             (if (gx#stx-pair/null?
                                                  _g1429714317_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1429714317_)
                                                           '0)
                                                     (let ((_g29506_
                                                            (gx#syntax-split-splice
                                                             _g1429714317_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29507_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29506_)))
                   (if (not (fx= _g29507_ 2))
                       (error "Context expects 2 values" _g29507_)))
                 (let ((_target1429914320_ (values-ref _g29506_ 0))
                       (_tl1430114323_ (values-ref _g29506_ 1)))
                   (if (gx#stx-null? _tl1430114323_)
                       (letrec ((_loop1430214326_
                                 (lambda (_hd1430014330_ _attr1430614333_)
                                   (if (gx#stx-pair? _hd1430014330_)
                                       (let ((_e1430314336_
                                              (gx#syntax-e _hd1430014330_)))
                                         (let ((_lp-hd1430414340_
                                                (##car _e1430314336_))
                                               (_lp-tl1430514343_
                                                (##cdr _e1430314336_)))
                                           (_loop1430214326_
                                            _lp-tl1430514343_
                                            (cons _lp-hd1430414340_
                                                  _attr1430614333_))))
                                       (let ((_attr1430714346_
                                              (reverse _attr1430614333_)))
                                         ((lambda (_L14350_)
                                            (let ()
                                              (let ((_g1436714384_
                                                     (lambda (_g1436814380_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1436814380_))))
                                                (let ((_g1436615189_
                                                       (lambda (_g1436814388_)
                                                         (if (gx#stx-pair/null?
                                                              _g1436814388_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1436814388_)
                               '0)
                         (let ((_g29508_
                                (gx#syntax-split-splice _g1436814388_ '0)))
                           (begin
                             (let ((_g29509_ (values-count _g29508_)))
                               (if (not (fx= _g29509_ 2))
                                   (error "Context expects 2 values"
                                          _g29509_)))
                             (let ((_target1437014391_ (values-ref _g29508_ 0))
                                   (_tl1437214394_ (values-ref _g29508_ 1)))
                               (if (gx#stx-null? _tl1437214394_)
                                   (letrec ((_loop1437314397_
                                             (lambda (_hd1437114401_
                                                      _getf1437714404_)
                                               (if (gx#stx-pair?
                                                    _hd1437114401_)
                                                   (let ((_e1437414407_
                                                          (gx#syntax-e
                                                           _hd1437114401_)))
                                                     (let ((_lp-hd1437514411_
                                                            (##car _e1437414407_))
                                                           (_lp-tl1437614414_
                                                            (##cdr _e1437414407_)))
                                                       (_loop1437314397_
                                                        _lp-tl1437614414_
                                                        (cons _lp-hd1437514411_
                                                              _getf1437714404_))))
                                                   (let ((_getf1437814417_
                                                          (reverse _getf1437714404_)))
                                                     ((lambda (_L14421_)
                                                        (let ()
                                                          (let ((_g1443814455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1443914451_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1443914451_))))
                    (let ((_g1443715180_
                           (lambda (_g1443914459_)
                             (if (gx#stx-pair/null? _g1443914459_)
                                 (if (fx>= (gx#stx-length _g1443914459_) '0)
                                     (let ((_g29510_
                                            (gx#syntax-split-splice
                                             _g1443914459_
                                             '0)))
                                       (begin
                                         (let ((_g29511_
                                                (values-count _g29510_)))
                                           (if (not (fx= _g29511_ 2))
                                               (error "Context expects 2 values"
                                                      _g29511_)))
                                         (let ((_target1444114462_
                                                (values-ref _g29510_ 0))
                                               (_tl1444314465_
                                                (values-ref _g29510_ 1)))
                                           (if (gx#stx-null? _tl1444314465_)
                                               (letrec ((_loop1444414468_
                                                         (lambda (_hd1444214472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1444814475_)
                   (if (gx#stx-pair? _hd1444214472_)
                       (let ((_e1444514478_ (gx#syntax-e _hd1444214472_)))
                         (let ((_lp-hd1444614482_ (##car _e1444514478_))
                               (_lp-tl1444714485_ (##cdr _e1444514478_)))
                           (_loop1444414468_
                            _lp-tl1444714485_
                            (cons _lp-hd1444614482_ _setf1444814475_))))
                       (let ((_setf1444914488_ (reverse _setf1444814475_)))
                         ((lambda (_L14492_)
                            (let ()
                              (let ((_type-attr14534_
                                     (if (gx#stx-null? _els14111_)
                                         '()
                                         (if _struct?14113_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14492_
                                                            _L14421_)
                                                           (foldr (lambda (_g1450814512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1450914515_
                                   _g1451014517_)
                            (cons (cons _g1450914515_ (cons _g1450814512_ '()))
                                  _g1451014517_))
                          '()
                          _L14492_
                          _L14421_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14492_
                                                            _L14421_
                                                            _L14350_)
                                                           (foldr (lambda (_g1451914524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1452014527_
                                   _g1452114529_
                                   _g1452214531_)
                            (cons (cons _g1452114529_
                                        (cons _g1452014527_
                                              (cons _g1451914524_ '())))
                                  _g1452214531_))
                          '()
                          _L14492_
                          _L14421_
                          _L14350_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14541_
                                       (cons 'name:
                                             (cons (let ((_$e14537_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14112_)))
                                                     (if _$e14537_
                                                         _$e14537_
                                                         _id14109_))
                                                   '()))))
                                  (let ((_type-id14556_
                                         (let ((_$e14552_
                                                (let ((_e1454314545_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14112_)))
                                                  (if _e1454314545_
                                                      (let ((_e14549_
                                                             _e1454314545_))
                                                        (cons 'id:
                                                              (cons _e14549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14552_ _$e14552_ '()))))
                                    (let ((_type-ctor14571_
                                           (let ((_$e14567_
                                                  (let ((_e1455814560_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14112_)))
                                                    (if _e1455814560_
                                                        (let ((_e14564_
                                                               _e1455814560_))
                                                          (cons 'constructor:
                                                                (cons _e14564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14567_ _$e14567_ '()))))
                                      (let ((_plist14589_
                                             (let ((_plist14578_
                                                    (let ((_$e14574_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14112_)))
                                                      (if _$e14574_
                                                          _$e14574_
                                                          '()))))
                                               (let ((_plist14581_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14112_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14578_)
                  _plist14578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14584_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14112_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14581_)
                    _plist14581_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14584_))))))
                                        (let ((_type-plist14629_
                                               (if (null? _plist14589_)
                                                   _plist14589_
                                                   (let ((_g1459214600_
                                                          (lambda (_g1459314596_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1459314596_))))
                                                     (let ((_g1459114625_
                                                            (lambda (_g1459314604_)
                                                              ((lambda (_L14607_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14607_ '()))
                                       '()))))
                       _g1459314604_))))
               (_g1459114625_ _plist14589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1463214649_
                                                 (lambda (_g1463314645_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1463314645_))))
                                            (let ((_g1463115176_
                                                   (lambda (_g1463314653_)
                                                     (if (gx#stx-pair/null?
                                                          _g1463314653_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1463314653_)
                           '0)
                     (let ((_g29512_
                            (gx#syntax-split-splice _g1463314653_ '0)))
                       (begin
                         (let ((_g29513_ (values-count _g29512_)))
                           (if (not (fx= _g29513_ 2))
                               (error "Context expects 2 values" _g29513_)))
                         (let ((_target1463514656_ (values-ref _g29512_ 0))
                               (_tl1463714659_ (values-ref _g29512_ 1)))
                           (if (gx#stx-null? _tl1463714659_)
                               (letrec ((_loop1463814662_
                                         (lambda (_hd1463614666_
                                                  _type-body1464214669_)
                                           (if (gx#stx-pair? _hd1463614666_)
                                               (let ((_e1463914672_
                                                      (gx#syntax-e
                                                       _hd1463614666_)))
                                                 (let ((_lp-hd1464014676_
                                                        (##car _e1463914672_))
                                                       (_lp-tl1464114679_
                                                        (##cdr _e1463914672_)))
                                                   (_loop1463814662_
                                                    _lp-tl1464114679_
                                                    (cons _lp-hd1464014676_
                                                          _type-body1464214669_))))
                                               (let ((_type-body1464314682_
                                                      (reverse _type-body1464214669_)))
                                                 ((lambda (_L14686_)
                                                    (let ()
                                                      (let ((_g1470214710_
                                                             (lambda (_g1470314706_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1470314706_))))
                                                        (let ((_g1470115164_
                                                               (lambda (_g1470314714_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14717_)
                            (let ()
                              (let ((_g1473014738_
                                     (lambda (_g1473114734_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1473114734_))))
                                (let ((_g1472915160_
                                       (lambda (_g1473114742_)
                                         ((lambda (_L14745_)
                                            (let ()
                                              (let ((_g1475814766_
                                                     (lambda (_g1475914762_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1475914762_))))
                                                (let ((_g1475715074_
                                                       (lambda (_g1475914770_)
                                                         ((lambda (_L14773_)
                                                            (let ()
                                                              (let ((_g1478614794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1478714790_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1478714790_))))
                        (let ((_g1478515070_
                               (lambda (_g1478714798_)
                                 ((lambda (_L14801_)
                                    (let ()
                                      (let ((_g1481414822_
                                             (lambda (_g1481514818_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1481514818_))))
                                        (let ((_g1481315066_
                                               (lambda (_g1481514826_)
                                                 ((lambda (_L14829_)
                                                    (let ()
                                                      (let ((_g1484214850_
                                                             (lambda (_g1484314846_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1484314846_))))
                                                        (let ((_g1484115024_
                                                               (lambda (_g1484314854_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14857_)
                            (let ()
                              (let ((_g1487014878_
                                     (lambda (_g1487114874_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1487114874_))))
                                (let ((_g1486915020_
                                       (lambda (_g1487114882_)
                                         ((lambda (_L14885_)
                                            (let ()
                                              (let ((_g1489814906_
                                                     (lambda (_g1489914902_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1489914902_))))
                                                (let ((_g1489715016_
                                                       (lambda (_g1489914910_)
                                                         ((lambda (_L14913_)
                                                            (let ()
                                                              (let ((_g1492614934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1492714930_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1492714930_))))
                        (let ((_g1492515012_
                               (lambda (_g1492714938_)
                                 ((lambda (_L14941_)
                                    (let ()
                                      (let ((_g1495414962_
                                             (lambda (_g1495514958_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1495514958_))))
                                        (let ((_g1495314984_
                                               (lambda (_g1495514966_)
                                                 ((lambda (_L14969_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap14115_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14969_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1495514966_))))
                                          (_g1495314984_
                                           (_wrap14115_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L14171_
                                                        (cons (cons _L14745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L14199_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14773_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L14199_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L14227_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14255_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1498714994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1498814997_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1498714994_ '()))
                               _g1498814997_))
                       '()
                       _L14421_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1498915000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1499015003_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1498915000_ '()))
                                     _g1499015003_))
                             '()
                             _L14492_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14829_ '()))
                                    (cons _L14857_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14885_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14941_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1499115006_
                                                        _g1499215009_)
                                                 (cons _g1499115006_
                                                       _g1499215009_))
                                               '()
                                               _L14350_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1492714938_))))
                          (_g1492515012_ _plist14589_)))))
                  _g1489914910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1489715016_
                                                   (if (not (null? _type-ctor14571_))
                                                       (cadr _type-ctor14571_)
                                                       '#f))))))
                                          _g1487114882_))))
                                  (_g1486915020_ (cadr _type-name14541_))))))
                          _g1484314854_))))
                  (_g1484115024_
                   (let ((_quote-e15063_
                          (lambda (_x-ref15028_)
                            (if _x-ref15028_
                                (let ((_g1503115039_
                                       (lambda (_g1503215035_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1503215035_))))
                                  (let ((_g1503015059_
                                         (lambda (_g1503215043_)
                                           ((lambda (_L15046_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L15046_ '()))))
                                            _g1503215043_))))
                                    (_g1503015059_ _x-ref15028_)))
                                '#f))))
                     (if _struct?14113_
                         (_quote-e15063_ _super-ref14110_)
                         (cons 'list
                               (map _quote-e15063_ _super-ref14110_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1481514826_))))
                                          (_g1481315066_
                                           (if (not (null? _type-id14556_))
                                               (cadr _type-id14556_)
                                               '#f))))))
                                  _g1478714798_))))
                          (_g1478515070_
                           (if _struct?14113_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1475914770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1475715074_
                                                   (if _struct?14113_
                                                       (if _super14122_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14283_ '()))
                   '#f)
               (let ((_g1507815095_
                      (lambda (_g1507915091_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1507915091_))))
                 (let ((_g1507715156_
                        (lambda (_g1507915099_)
                          (if (gx#stx-pair/null? _g1507915099_)
                              (if (fx>= (gx#stx-length _g1507915099_) '0)
                                  (let ((_g29514_
                                         (gx#syntax-split-splice
                                          _g1507915099_
                                          '0)))
                                    (begin
                                      (let ((_g29515_ (values-count _g29514_)))
                                        (if (not (fx= _g29515_ 2))
                                            (error "Context expects 2 values"
                                                   _g29515_)))
                                      (let ((_target1508115102_
                                             (values-ref _g29514_ 0))
                                            (_tl1508315105_
                                             (values-ref _g29514_ 1)))
                                        (if (gx#stx-null? _tl1508315105_)
                                            (letrec ((_loop1508415108_
                                                      (lambda (_hd1508215112_
                                                               _super-id1508815115_)
                                                        (if (gx#stx-pair?
                                                             _hd1508215112_)
                                                            (let ((_e1508515118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1508215112_)))
                      (let ((_lp-hd1508615122_ (##car _e1508515118_))
                            (_lp-tl1508715125_ (##cdr _e1508515118_)))
                        (_loop1508415108_
                         _lp-tl1508715125_
                         (cons _lp-hd1508615122_ _super-id1508815115_))))
                    (let ((_super-id1508915128_
                           (reverse _super-id1508815115_)))
                      ((lambda (_L15132_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1514715150_ _g1514815153_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1514715150_
                                                              '()))
                                                  _g1514815153_))
                                          '()
                                          _L15132_)))))
                       _super-id1508915128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1508415108_
                                               _target1508115102_
                                               '()))
                                            (_g1507815095_ _g1507915099_)))))
                                  (_g1507815095_ _g1507915099_))
                              (_g1507815095_ _g1507915099_)))))
                   (_g1507715156_ _L14283_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1473114742_))))
                                  (_g1472915160_
                                   (if _struct?14113_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1470314714_))))
                  (_g1470115164_
                   (_wrap14115_
                    (cons _L14140_
                          (cons _L14199_
                                (cons _L14283_
                                      (cons _L14227_
                                            (cons _L14255_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1516715170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1516815173_)
                     (cons _g1516715170_ _g1516815173_))
                   '()
                   _L14686_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1464314682_))))))
                                 (_loop1463814662_ _target1463514656_ '()))
                               (_g1463214649_ _g1463314653_)))))
                     (_g1463214649_ _g1463314653_))
                 (_g1463214649_ _g1463314653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1463115176_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14629_ _type-ctor14571_)
                            _type-name14541_)
                     _type-id14556_)
              _type-attr14534_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1444914488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1444414468_
                                                  _target1444114462_
                                                  '()))
                                               (_g1443814455_
                                                _g1443914459_)))))
                                     (_g1443814455_ _g1443914459_))
                                 (_g1443814455_ _g1443914459_)))))
                      (_g1443715180_
                       (gx#stx-map
                        (lambda (_g1518315185_)
                          (_make-id14117_
                           _name14119_
                           '"-"
                           _g1518315185_
                           '"-set!"))
                        _els14111_))))))
              _getf1437814417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1437314397_ _target1437014391_ '()))
                                   (_g1436714384_ _g1436814388_)))))
                         (_g1436714384_ _g1436814388_))
                     (_g1436714384_ _g1436814388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1436615189_
                                                   (gx#stx-map
                                                    (lambda (_g1519215194_)
                                                      (_make-id14117_
                                                       _name14119_
                                                       '"-"
                                                       _g1519215194_))
                                                    _els14111_))))))
                                          _attr1430714346_))))))
                         (_loop1430214326_ _target1429914320_ '()))
                       (_g1429614313_ _g1429714317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1429614313_
                                                      _g1429714317_))
                                                 (_g1429614313_
                                                  _g1429714317_)))))
                                      (_g1429515198_ _els14111_)))))
                              _g1426914280_))))
                      (_g1426715202_
                       (if _struct?14113_
                           (if _super14122_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14122_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14122_)))))))
              _g1424114252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1423915206_
                                               (_make-id14117_
                                                _name14119_
                                                '"?"))))))
                                      _g1421314224_))))
                              (_g1421115210_
                               (_make-id14117_ '"make-" _name14119_))))))
                      _g1418514196_))))
              (_g1418315214_ (_make-id14117_ _name14119_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1415714168_))))
                                      (_g1415515218_ _id14109_)))))
                              _g1412614137_))))
                      (_g1412415222_
                       (if _struct?14113_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15314_)
        (let ((_generate15317_
               (lambda (_hd15401_ _fields15403_ _body15404_)
                 (let ((_g1540715422_
                        (lambda (_g1540815418_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1540815418_))))
                   (let ((_g1540615433_
                          (lambda (_g1540815426_)
                            ((lambda ()
                               (if (gx#identifier? _hd15401_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15314_
                                    _hd15401_
                                    '#f
                                    _fields15403_
                                    _body15404_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15314_
                                    _hd15401_)))))))
                     (let ((_g1540515477_
                            (lambda (_g1540815437_)
                              (if (gx#stx-pair? _g1540815437_)
                                  (let ((_e1541115440_
                                         (gx#syntax-e _g1540815437_)))
                                    (let ((_hd1541215444_
                                           (##car _e1541115440_))
                                          (_tl1541315447_
                                           (##cdr _e1541115440_)))
                                      (if (gx#stx-pair? _tl1541315447_)
                                          (let ((_e1541415450_
                                                 (gx#syntax-e _tl1541315447_)))
                                            (let ((_hd1541515454_
                                                   (##car _e1541415450_))
                                                  (_tl1541615457_
                                                   (##cdr _e1541415450_)))
                                              (if (gx#stx-null? _tl1541615457_)
                                                  ((lambda (_L15460_ _L15462_)
                                                     (if (if (gx#identifier?
                                                              _L15462_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15460_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15314_
                                                          _L15462_
                                                          _L15460_
                                                          _fields15403_
                                                          _body15404_
                                                          '#t)
                                                         (_g1540615433_
                                                          _g1540815437_)))
                                                   _hd1541515454_
                                                   _hd1541215444_)
                                                  (_g1540615433_
                                                   _g1540815437_))))
                                          (_g1540615433_ _g1540815437_))))
                                  (_g1540615433_ _g1540815437_)))))
                       (_g1540515477_ _hd15401_)))))))
          (let ((_g1532015339_
                 (lambda (_g1532115335_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1532115335_))))
            (let ((_g1531915397_
                   (lambda (_g1532115343_)
                     (if (gx#stx-pair? _g1532115343_)
                         (let ((_e1532515346_ (gx#syntax-e _g1532115343_)))
                           (let ((_hd1532615350_ (##car _e1532515346_))
                                 (_tl1532715353_ (##cdr _e1532515346_)))
                             (if (gx#stx-pair? _tl1532715353_)
                                 (let ((_e1532815356_
                                        (gx#syntax-e _tl1532715353_)))
                                   (let ((_hd1532915360_ (##car _e1532815356_))
                                         (_tl1533015363_
                                          (##cdr _e1532815356_)))
                                     (if (gx#stx-pair? _tl1533015363_)
                                         (let ((_e1533115366_
                                                (gx#syntax-e _tl1533015363_)))
                                           (let ((_hd1533215370_
                                                  (##car _e1533115366_))
                                                 (_tl1533315373_
                                                  (##cdr _e1533115366_)))
                                             ((lambda (_L15376_
                                                       _L15378_
                                                       _L15379_)
                                                (if (if (gx#identifier-list?
                                                         _L15378_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15376_)
                                                        '#f)
                                                    (_generate15317_
                                                     _L15379_
                                                     _L15378_
                                                     _L15376_)
                                                    (_g1532015339_
                                                     _g1532115343_)))
                                              _tl1533315373_
                                              _hd1533215370_
                                              _hd1532915360_)))
                                         (_g1532015339_ _g1532115343_))))
                                 (_g1532015339_ _g1532115343_))))
                         (_g1532015339_ _g1532115343_)))))
              (_g1531915397_ _stx15314_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15481_)
        (let ((_generate15484_
               (lambda (_hd15568_ _slots15570_ _body15571_)
                 (let ((_g1557415586_
                        (lambda (_g1557515582_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1557515582_))))
                   (let ((_g1557315597_
                          (lambda (_g1557515590_)
                            ((lambda ()
                               (if (gx#identifier? _hd15568_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15481_
                                    _hd15568_
                                    '()
                                    _slots15570_
                                    _body15571_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15481_
                                    _hd15568_)))))))
                     (let ((_g1557215629_
                            (lambda (_g1557515601_)
                              (if (gx#stx-pair? _g1557515601_)
                                  (let ((_e1557815604_
                                         (gx#syntax-e _g1557515601_)))
                                    (let ((_hd1557915608_
                                           (##car _e1557815604_))
                                          (_tl1558015611_
                                           (##cdr _e1557815604_)))
                                      ((lambda (_L15614_ _L15616_)
                                         (if (if (gx#stx-list? _L15614_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15614_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15481_
                                              _L15616_
                                              (gx#syntax->list _L15614_)
                                              _slots15570_
                                              _body15571_
                                              '#f)
                                             (_g1557315597_ _g1557515601_)))
                                       _tl1558015611_
                                       _hd1557915608_)))
                                  (_g1557315597_ _g1557515601_)))))
                       (_g1557215629_ _hd15568_)))))))
          (let ((_g1548715506_
                 (lambda (_g1548815502_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1548815502_))))
            (let ((_g1548615564_
                   (lambda (_g1548815510_)
                     (if (gx#stx-pair? _g1548815510_)
                         (let ((_e1549215513_ (gx#syntax-e _g1548815510_)))
                           (let ((_hd1549315517_ (##car _e1549215513_))
                                 (_tl1549415520_ (##cdr _e1549215513_)))
                             (if (gx#stx-pair? _tl1549415520_)
                                 (let ((_e1549515523_
                                        (gx#syntax-e _tl1549415520_)))
                                   (let ((_hd1549615527_ (##car _e1549515523_))
                                         (_tl1549715530_
                                          (##cdr _e1549515523_)))
                                     (if (gx#stx-pair? _tl1549715530_)
                                         (let ((_e1549815533_
                                                (gx#syntax-e _tl1549715530_)))
                                           (let ((_hd1549915537_
                                                  (##car _e1549815533_))
                                                 (_tl1550015540_
                                                  (##cdr _e1549815533_)))
                                             ((lambda (_L15543_
                                                       _L15545_
                                                       _L15546_)
                                                (if (if (gx#identifier-list?
                                                         _L15545_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15543_)
                                                        '#f)
                                                    (_generate15484_
                                                     _L15546_
                                                     _L15545_
                                                     _L15543_)
                                                    (_g1548715506_
                                                     _g1548815510_)))
                                              _tl1550015540_
                                              _hd1549915537_
                                              _hd1549615527_)))
                                         (_g1548715506_ _g1548815510_))))
                                 (_g1548715506_ _g1548815510_))))
                         (_g1548715506_ _g1548815510_)))))
              (_g1548615564_ _stx15481_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15633_)
        (let ((_wrap15636_
               (lambda (_e-stx15941_)
                 (gx#stx-wrap-source
                  _e-stx15941_
                  (gx#stx-source _stx15633_)))))
          (let ((_method-opt?15638_
                 (lambda (_x15938_) (memq (gx#stx-e _x15938_) '(rebind:)))))
            (let ((_g1564015669_
                   (lambda (_g1564115665_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1564115665_))))
              (let ((_g1563915934_
                     (lambda (_g1564115673_)
                       (if (gx#stx-pair? _g1564115673_)
                           (let ((_e1564615676_ (gx#syntax-e _g1564115673_)))
                             (let ((_hd1564715680_ (##car _e1564615676_))
                                   (_tl1564815683_ (##cdr _e1564615676_)))
                               (if (gx#stx-pair? _tl1564815683_)
                                   (let ((_e1564915686_
                                          (gx#syntax-e _tl1564815683_)))
                                     (let ((_hd1565015690_
                                            (##car _e1564915686_))
                                           (_tl1565115693_
                                            (##cdr _e1564915686_)))
                                       (if (gx#stx-pair? _hd1565015690_)
                                           (let ((_e1565215696_
                                                  (gx#syntax-e
                                                   _hd1565015690_)))
                                             (let ((_hd1565315700_
                                                    (##car _e1565215696_))
                                                   (_tl1565415703_
                                                    (##cdr _e1565215696_)))
                                               (if (gx#identifier?
                                                    _hd1565315700_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29517_|
                                                        _hd1565315700_)
                                                       (if (gx#stx-pair?
                                                            _tl1565415703_)
                                                           (let ((_e1565515706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1565415703_)))
                     (let ((_hd1565615710_ (##car _e1565515706_))
                           (_tl1565715713_ (##cdr _e1565515706_)))
                       (if (gx#stx-pair? _tl1565715713_)
                           (let ((_e1565815716_ (gx#syntax-e _tl1565715713_)))
                             (let ((_hd1565915720_ (##car _e1565815716_))
                                   (_tl1566015723_ (##cdr _e1565815716_)))
                               (if (gx#stx-null? _tl1566015723_)
                                   (if (gx#stx-pair? _tl1565115693_)
                                       (let ((_e1566115726_
                                              (gx#syntax-e _tl1565115693_)))
                                         (let ((_hd1566215730_
                                                (##car _e1566115726_))
                                               (_tl1566315733_
                                                (##cdr _e1566115726_)))
                                           ((lambda (_L15736_
                                                     _L15738_
                                                     _L15739_
                                                     _L15740_)
                                              (if (if (gx#identifier? _L15740_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15739_)
                                                          (gx#stx-plist?
                                                           _L15736_
                                                           _method-opt?15638_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15765_
                                                         (gx#syntax-local-value
                                                          _L15739_)))
                                                    (let ((_rebind?15768_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15736_))
                       '#t
                       '#f)))
              (let ((_g1577115779_
                     (lambda (_g1577215775_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1577215775_))))
                (let ((_g1577015930_
                       (lambda (_g1577215783_)
                         ((lambda (_L15786_)
                            (let ()
                              (let ((_g1580015808_
                                     (lambda (_g1580115804_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1580115804_))))
                                (let ((_g1579915926_
                                       (lambda (_g1580115812_)
                                         ((lambda (_L15815_)
                                            (let ()
                                              (let ((_g1582815836_
                                                     (lambda (_g1582915832_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1582915832_))))
                                                (let ((_g1582715922_
                                                       (lambda (_g1582915840_)
                                                         ((lambda (_L15843_)
                                                            (let ()
                                                              (let ((_g1585615864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1585715860_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1585715860_))))
                        (let ((_g1585515918_
                               (lambda (_g1585715868_)
                                 ((lambda (_L15871_)
                                    (let ()
                                      (let ((_g1588415892_
                                             (lambda (_g1588515888_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1588515888_))))
                                        (let ((_g1588315914_
                                               (lambda (_g1588515896_)
                                                 ((lambda (_L15899_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15636_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15899_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1588515896_))))
                                          (_g1588315914_
                                           (_wrap15636_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15786_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15740_ '()))
                      (cons _L15815_ (cons _L15871_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1585715868_))))
                          (_g1585515918_ _rebind?15768_)))))
                  _g1582915840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1582715922_
                                                   (_wrap15636_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15815_
                                                                (cons _L15738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1580115812_))))
                                  (_g1579915926_
                                   (gx#stx-identifier
                                    _L15740_
                                    _L15739_
                                    '"::"
                                    _L15740_))))))
                          _g1577215783_))))
                  (_g1577015930_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1564015669_
                                                   _g1564115673_)))
                                            _tl1566315733_
                                            _hd1566215730_
                                            _hd1565915720_
                                            _hd1565615710_)))
                                       (_g1564015669_ _g1564115673_))
                                   (_g1564015669_ _g1564115673_))))
                           (_g1564015669_ _g1564115673_))))
                   (_g1564015669_ _g1564115673_))
               (_g1564015669_ _g1564115673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1564015669_
                                                    _g1564115673_))))
                                           (_g1564015669_ _g1564115673_))))
                                   (_g1564015669_ _g1564115673_))))
                           (_g1564015669_ _g1564115673_)))))
                (_g1563915934_ _stx15633_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15944_)
        (let ((_g1594915998_
               (lambda (_g1595015994_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1595015994_))))
          (let ((_g1594816097_
                 (lambda (_g1595016002_)
                   (if (gx#stx-pair? _g1595016002_)
                       (let ((_e1597516005_ (gx#syntax-e _g1595016002_)))
                         (let ((_hd1597616009_ (##car _e1597516005_))
                               (_tl1597716012_ (##cdr _e1597516005_)))
                           (if (gx#stx-pair? _tl1597716012_)
                               (let ((_e1597816015_
                                      (gx#syntax-e _tl1597716012_)))
                                 (let ((_hd1597916019_ (##car _e1597816015_))
                                       (_tl1598016022_ (##cdr _e1597816015_)))
                                   (if (gx#stx-pair? _tl1598016022_)
                                       (let ((_e1598116025_
                                              (gx#syntax-e _tl1598016022_)))
                                         (let ((_hd1598216029_
                                                (##car _e1598116025_))
                                               (_tl1598316032_
                                                (##cdr _e1598116025_)))
                                           (if (gx#stx-pair/null?
                                                _tl1598316032_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1598316032_)
                                                         '0)
                                                   (let ((_g29518_
                                                          (gx#syntax-split-splice
                                                           _tl1598316032_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29519_
                                                              (values-count
                                                               _g29518_)))
                                                         (if (not (fx= _g29519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29519_)))
               (let ((_target1598416035_ (values-ref _g29518_ 0))
                     (_tl1598616038_ (values-ref _g29518_ 1)))
                 (if (gx#stx-null? _tl1598616038_)
                     (letrec ((_loop1598716041_
                               (lambda (_hd1598516045_ _arg1599116048_)
                                 (if (gx#stx-pair? _hd1598516045_)
                                     (let ((_e1598816051_
                                            (gx#syntax-e _hd1598516045_)))
                                       (let ((_lp-hd1598916055_
                                              (##car _e1598816051_))
                                             (_lp-tl1599016058_
                                              (##cdr _e1598816051_)))
                                         (_loop1598716041_
                                          _lp-tl1599016058_
                                          (cons _lp-hd1598916055_
                                                _arg1599116048_))))
                                     (let ((_arg1599216061_
                                            (reverse _arg1599116048_)))
                                       ((lambda (_L16065_ _L16067_ _L16068_)
                                          (if (gx#identifier? _L16068_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16067_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16068_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1608816091_ _g1608916094_)
                                   (cons _g1608816091_ _g1608916094_))
                                 '()
                                 _L16065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1594915998_ _g1595016002_)))
                                        _arg1599216061_
                                        _hd1598216029_
                                        _hd1597916019_))))))
                       (_loop1598716041_ _target1598416035_ '()))
                     (_g1594915998_ _g1595016002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1594915998_
                                                    _g1595016002_))
                                               (_g1594915998_ _g1595016002_))))
                                       (_g1594915998_ _g1595016002_))))
                               (_g1594915998_ _g1595016002_))))
                       (_g1594915998_ _g1595016002_)))))
            (let ((_g1594716203_
                   (lambda (_g1595016101_)
                     (if (gx#stx-pair? _g1595016101_)
                         (let ((_e1595416104_ (gx#syntax-e _g1595016101_)))
                           (let ((_hd1595516108_ (##car _e1595416104_))
                                 (_tl1595616111_ (##cdr _e1595416104_)))
                             (if (gx#stx-pair? _tl1595616111_)
                                 (let ((_e1595716114_
                                        (gx#syntax-e _tl1595616111_)))
                                   (let ((_hd1595816118_ (##car _e1595716114_))
                                         (_tl1595916121_
                                          (##cdr _e1595716114_)))
                                     (if (gx#stx-pair? _tl1595916121_)
                                         (let ((_e1596016124_
                                                (gx#syntax-e _tl1595916121_)))
                                           (let ((_hd1596116128_
                                                  (##car _e1596016124_))
                                                 (_tl1596216131_
                                                  (##cdr _e1596016124_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1596216131_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1596216131_)
                                                           '0)
                                                     (let ((_g29520_
                                                            (gx#syntax-split-splice
                                                             _tl1596216131_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29521_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29520_)))
                   (if (not (fx= _g29521_ 2))
                       (error "Context expects 2 values" _g29521_)))
                 (let ((_target1596316134_ (values-ref _g29520_ 0))
                       (_tl1596516137_ (values-ref _g29520_ 1)))
                   (if (gx#stx-null? _tl1596516137_)
                       (letrec ((_loop1596616140_
                                 (lambda (_hd1596416144_ _arg1597016147_)
                                   (if (gx#stx-pair? _hd1596416144_)
                                       (let ((_e1596716150_
                                              (gx#syntax-e _hd1596416144_)))
                                         (let ((_lp-hd1596816154_
                                                (##car _e1596716150_))
                                               (_lp-tl1596916157_
                                                (##cdr _e1596716150_)))
                                           (_loop1596616140_
                                            _lp-tl1596916157_
                                            (cons _lp-hd1596816154_
                                                  _arg1597016147_))))
                                       (let ((_arg1597116160_
                                              (reverse _arg1597016147_)))
                                         ((lambda (_L16164_ _L16166_ _L16167_)
                                            (if (if (gx#identifier? _L16167_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1618616189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1618716192_)
                        (cons _g1618616189_ _g1618716192_))
                      '()
                      _L16164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16167_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1619416197_
                                                              _g1619516200_)
                                                       (cons _g1619416197_
                                                             _g1619516200_))
                                                     '()
                                                     _L16164_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1594816097_ _g1595016101_)))
                                          _arg1597116160_
                                          _hd1596116128_
                                          _hd1595816118_))))))
                         (_loop1596616140_ _target1596316134_ '()))
                       (_g1594816097_ _g1595016101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594816097_
                                                      _g1595016101_))
                                                 (_g1594816097_
                                                  _g1595016101_))))
                                         (_g1594816097_ _g1595016101_))))
                                 (_g1594816097_ _g1595016101_))))
                         (_g1594816097_ _g1595016101_)))))
              (_g1594716203_ _$stx15944_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16209_)
        (let ((_g1621416254_
               (lambda (_g1621516250_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1621516250_))))
          (let ((_g1621316355_
                 (lambda (_g1621516258_)
                   (if (gx#stx-pair? _g1621516258_)
                       (let ((_e1623116261_ (gx#syntax-e _g1621516258_)))
                         (let ((_hd1623216265_ (##car _e1623116261_))
                               (_tl1623316268_ (##cdr _e1623116261_)))
                           (if (gx#stx-pair? _tl1623316268_)
                               (let ((_e1623416271_
                                      (gx#syntax-e _tl1623316268_)))
                                 (let ((_hd1623516275_ (##car _e1623416271_))
                                       (_tl1623616278_ (##cdr _e1623416271_)))
                                   (if (gx#stx-pair? _tl1623616278_)
                                       (let ((_e1623716281_
                                              (gx#syntax-e _tl1623616278_)))
                                         (let ((_hd1623816285_
                                                (##car _e1623716281_))
                                               (_tl1623916288_
                                                (##cdr _e1623716281_)))
                                           (if (gx#stx-pair/null?
                                                _tl1623916288_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1623916288_)
                                                         '0)
                                                   (let ((_g29522_
                                                          (gx#syntax-split-splice
                                                           _tl1623916288_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29523_
                                                              (values-count
                                                               _g29522_)))
                                                         (if (not (fx= _g29523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29523_)))
               (let ((_target1624016291_ (values-ref _g29522_ 0))
                     (_tl1624216294_ (values-ref _g29522_ 1)))
                 (if (gx#stx-null? _tl1624216294_)
                     (letrec ((_loop1624316297_
                               (lambda (_hd1624116301_ _rest1624716304_)
                                 (if (gx#stx-pair? _hd1624116301_)
                                     (let ((_e1624416307_
                                            (gx#syntax-e _hd1624116301_)))
                                       (let ((_lp-hd1624516311_
                                              (##car _e1624416307_))
                                             (_lp-tl1624616314_
                                              (##cdr _e1624416307_)))
                                         (_loop1624316297_
                                          _lp-tl1624616314_
                                          (cons _lp-hd1624516311_
                                                _rest1624716304_))))
                                     (let ((_rest1624816317_
                                            (reverse _rest1624716304_)))
                                       ((lambda (_L16321_
                                                 _L16323_
                                                 _L16324_
                                                 _L16325_)
                                          (cons _L16325_
                                                (cons (cons _L16325_
                                                            (cons _L16324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16323_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1634616349_ _g1634716352_)
                         (cons _g1634616349_ _g1634716352_))
                       '()
                       _L16321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1624816317_
                                        _hd1623816285_
                                        _hd1623516275_
                                        _hd1623216265_))))))
                       (_loop1624316297_ _target1624016291_ '()))
                     (_g1621416254_ _g1621516258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1621416254_
                                                    _g1621516258_))
                                               (_g1621416254_ _g1621516258_))))
                                       (_g1621416254_ _g1621516258_))))
                               (_g1621416254_ _g1621516258_))))
                       (_g1621416254_ _g1621516258_)))))
            (let ((_g1621216409_
                   (lambda (_g1621516359_)
                     (if (gx#stx-pair? _g1621516359_)
                         (let ((_e1621816362_ (gx#syntax-e _g1621516359_)))
                           (let ((_hd1621916366_ (##car _e1621816362_))
                                 (_tl1622016369_ (##cdr _e1621816362_)))
                             (if (gx#stx-pair? _tl1622016369_)
                                 (let ((_e1622116372_
                                        (gx#syntax-e _tl1622016369_)))
                                   (let ((_hd1622216376_ (##car _e1622116372_))
                                         (_tl1622316379_
                                          (##cdr _e1622116372_)))
                                     (if (gx#stx-pair? _tl1622316379_)
                                         (let ((_e1622416382_
                                                (gx#syntax-e _tl1622316379_)))
                                           (let ((_hd1622516386_
                                                  (##car _e1622416382_))
                                                 (_tl1622616389_
                                                  (##cdr _e1622416382_)))
                                             (if (gx#stx-null? _tl1622616389_)
                                                 ((lambda (_L16392_ _L16394_)
                                                    (if (gx#identifier?
                                                         _L16392_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16392_ '()))
                                  '())))
                (_g1621316355_ _g1621516359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1622516386_
                                                  _hd1622216376_)
                                                 (_g1621316355_
                                                  _g1621516359_))))
                                         (_g1621316355_ _g1621516359_))))
                                 (_g1621316355_ _g1621516359_))))
                         (_g1621316355_ _g1621516359_)))))
              (_g1621216409_ _$stx16209_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16414_)
        (let ((_g1641916471_
               (lambda (_g1642016467_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1642016467_))))
          (let ((_g1641816600_
                 (lambda (_g1642016475_)
                   (if (gx#stx-pair? _g1642016475_)
                       (let ((_e1644216478_ (gx#syntax-e _g1642016475_)))
                         (let ((_hd1644316482_ (##car _e1644216478_))
                               (_tl1644416485_ (##cdr _e1644216478_)))
                           (if (gx#stx-pair? _tl1644416485_)
                               (let ((_e1644516488_
                                      (gx#syntax-e _tl1644416485_)))
                                 (let ((_hd1644616492_ (##car _e1644516488_))
                                       (_tl1644716495_ (##cdr _e1644516488_)))
                                   (if (gx#stx-pair? _tl1644716495_)
                                       (let ((_e1644816498_
                                              (gx#syntax-e _tl1644716495_)))
                                         (let ((_hd1644916502_
                                                (##car _e1644816498_))
                                               (_tl1645016505_
                                                (##cdr _e1644816498_)))
                                           (if (gx#stx-pair/null?
                                                _tl1645016505_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1645016505_)
                                                         '2)
                                                   (let ((_g29524_
                                                          (gx#syntax-split-splice
                                                           _tl1645016505_
                                                           '2)))
                                                     (begin
                                                       (let ((_g29525_
                                                              (values-count
                                                               _g29524_)))
                                                         (if (not (fx= _g29525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29525_)))
               (let ((_target1645116508_ (values-ref _g29524_ 0))
                     (_tl1645316511_ (values-ref _g29524_ 1)))
                 (if (gx#stx-pair? _tl1645316511_)
                     (let ((_e1646016514_ (gx#syntax-e _tl1645316511_)))
                       (let ((_hd1646116518_ (##car _e1646016514_))
                             (_tl1646216521_ (##cdr _e1646016514_)))
                         (if (gx#stx-pair? _tl1646216521_)
                             (let ((_e1646316524_
                                    (gx#syntax-e _tl1646216521_)))
                               (let ((_hd1646416528_ (##car _e1646316524_))
                                     (_tl1646516531_ (##cdr _e1646316524_)))
                                 (if (gx#stx-null? _tl1646516531_)
                                     (letrec ((_loop1645416534_
                                               (lambda (_hd1645216538_
                                                        _path1645816541_)
                                                 (if (gx#stx-pair?
                                                      _hd1645216538_)
                                                     (let ((_e1645516544_
                                                            (gx#syntax-e
                                                             _hd1645216538_)))
                                                       (let ((_lp-hd1645616548_
                                                              (##car _e1645516544_))
                                                             (_lp-tl1645716551_
                                                              (##cdr _e1645516544_)))
                                                         (_loop1645416534_
                                                          _lp-tl1645716551_
                                                          (cons _lp-hd1645616548_
                                                                _path1645816541_))))
                                                     (let ((_path1645916554_
                                                            (reverse _path1645816541_)))
                                                       ((lambda (_L16558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L16560_
                         _L16561_
                         _L16562_
                         _L16563_
                         _L16564_)
                  (cons _L16564_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L16563_
                                          (cons _L16562_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1659116594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1659216597_)
                   (cons _g1659116594_ _g1659216597_))
                 '()
                 _L16561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L16560_ (cons _L16558_ '())))))
                _hd1646416528_
                _hd1646116518_
                _path1645916554_
                _hd1644916502_
                _hd1644616492_
                _hd1644316482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1645416534_
                                        _target1645116508_
                                        '()))
                                     (_g1641916471_ _g1642016475_))))
                             (_g1641916471_ _g1642016475_))))
                     (_g1641916471_ _g1642016475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1641916471_
                                                    _g1642016475_))
                                               (_g1641916471_ _g1642016475_))))
                                       (_g1641916471_ _g1642016475_))))
                               (_g1641916471_ _g1642016475_))))
                       (_g1641916471_ _g1642016475_)))))
            (let ((_g1641716668_
                   (lambda (_g1642016604_)
                     (if (gx#stx-pair? _g1642016604_)
                         (let ((_e1642416607_ (gx#syntax-e _g1642016604_)))
                           (let ((_hd1642516611_ (##car _e1642416607_))
                                 (_tl1642616614_ (##cdr _e1642416607_)))
                             (if (gx#stx-pair? _tl1642616614_)
                                 (let ((_e1642716617_
                                        (gx#syntax-e _tl1642616614_)))
                                   (let ((_hd1642816621_ (##car _e1642716617_))
                                         (_tl1642916624_
                                          (##cdr _e1642716617_)))
                                     (if (gx#stx-pair? _tl1642916624_)
                                         (let ((_e1643016627_
                                                (gx#syntax-e _tl1642916624_)))
                                           (let ((_hd1643116631_
                                                  (##car _e1643016627_))
                                                 (_tl1643216634_
                                                  (##cdr _e1643016627_)))
                                             (if (gx#stx-pair? _tl1643216634_)
                                                 (let ((_e1643316637_
                                                        (gx#syntax-e
                                                         _tl1643216634_)))
                                                   (let ((_hd1643416641_
                                                          (##car _e1643316637_))
                                                         (_tl1643516644_
                                                          (##cdr _e1643316637_)))
                                                     (if (gx#stx-null?
                                                          _tl1643516644_)
                                                         ((lambda (_L16647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16649_
                           _L16650_)
                    (if (gx#identifier? _L16649_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16650_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16649_ '()))
                                          (cons _L16647_ '()))))
                        (_g1641816600_ _g1642016604_)))
                  _hd1643416641_
                  _hd1643116631_
                  _hd1642816621_)
                 (_g1641816600_ _g1642016604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1641816600_
                                                  _g1642016604_))))
                                         (_g1641816600_ _g1642016604_))))
                                 (_g1641816600_ _g1642016604_))))
                         (_g1641816600_ _g1642016604_)))))
              (_g1641716668_ _$stx16414_))))))))
