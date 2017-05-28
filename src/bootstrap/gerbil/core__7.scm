(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29257_|
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
      (lambda _$args15217_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15217_)))
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
      (lambda _$args15213_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15213_)))
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
      (lambda _$args15209_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15209_)))
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
      (lambda _$args15205_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15205_)))
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
      (lambda _$args15201_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15201_)))
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
      (lambda _$args15197_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15197_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1516915183_
             (lambda (_stx15171_ _is?15173_)
               (if (gx#identifier? _stx15171_)
                   (let ((_e1517415176_
                          (gx#syntax-local-value _stx15171_ false)))
                     (if _e1517415176_
                         (let ((_e15180_ _e1517415176_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15180_)
                               (_is?15173_ _e15180_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29245_
          (let ((_g29244_ (length _g29245_)))
            (cond ((fx= _g29244_ 1)
                   (apply (lambda (_stx15187_)
                            (let ((_is?15190_ true))
                              (_opt-lambda1516915183_ _stx15187_ _is?15190_)))
                          _g29245_))
                  ((fx= _g29244_ 2) (apply _opt-lambda1516915183_ _g29245_))
                  (else (error "No clause matching arguments" _g29245_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15167_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15167_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15164_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15164_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15158_)
        (if _id15158_
            (let ((_info15161_ (gx#syntax-local-value _id15158_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15161_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15161_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15149_)
        (let ((_body-opt?15152_
               (lambda (_key15155_)
                 (memq (gx#stx-e _key15155_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx15149_ _body-opt?15152_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14022_
               _id14024_
               _super-ref14025_
               _els14026_
               _body14027_
               _struct?14028_)
        (let ((_wrap14030_
               (lambda (_e-stx15146_)
                 (gx#stx-wrap-source
                  _e-stx15146_
                  (gx#stx-source _stx14022_)))))
          (let ((_make-id14032_
                 (if (uninterned-symbol? (gx#stx-e _id14024_))
                     (lambda _g29256_ (gx#genident _id14024_))
                     (lambda _args15143_
                       (apply gx#stx-identifier _id14024_ _args15143_)))))
            (begin
              (gx#check-duplicate-identifiers _els14026_ _stx14022_)
              (let ((_name14034_ (symbol->string (gx#stx-e _id14024_))))
                (let ((_super14037_
                       (if _struct?14028_
                           (if _super-ref14025_
                               (gx#syntax-local-value _super-ref14025_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14025_))))
                  (let ((_g1404014048_
                         (lambda (_g1404114044_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1404114044_))))
                    (let ((_g1403915137_
                           (lambda (_g1404114052_)
                             ((lambda (_L14055_)
                                (let ()
                                  (let ((_g1407114079_
                                         (lambda (_g1407214075_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1407214075_))))
                                    (let ((_g1407015133_
                                           (lambda (_g1407214083_)
                                             ((lambda (_L14086_)
                                                (let ()
                                                  (let ((_g1409914107_
                                                         (lambda (_g1410014103_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1410014103_))))
                                                    (let ((_g1409815129_
                                                           (lambda (_g1410014111_)
                                                             ((lambda (_L14114_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1412714135_
                                 (lambda (_g1412814131_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1412814131_))))
                            (let ((_g1412615125_
                                   (lambda (_g1412814139_)
                                     ((lambda (_L14142_)
                                        (let ()
                                          (let ((_g1415514163_
                                                 (lambda (_g1415614159_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1415614159_))))
                                            (let ((_g1415415121_
                                                   (lambda (_g1415614167_)
                                                     ((lambda (_L14170_)
                                                        (let ()
                                                          (let ((_g1418314191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1418414187_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1418414187_))))
                    (let ((_g1418215117_
                           (lambda (_g1418414195_)
                             ((lambda (_L14198_)
                                (let ()
                                  (let ((_g1421114228_
                                         (lambda (_g1421214224_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1421214224_))))
                                    (let ((_g1421015113_
                                           (lambda (_g1421214232_)
                                             (if (gx#stx-pair/null?
                                                  _g1421214232_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1421214232_)
                                                           '0)
                                                     (let ((_g29246_
                                                            (gx#syntax-split-splice
                                                             _g1421214232_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29247_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29246_)))
                   (if (not (fx= _g29247_ 2))
                       (error "Context expects 2 values" _g29247_)))
                 (let ((_target1421414235_ (values-ref _g29246_ 0))
                       (_tl1421614238_ (values-ref _g29246_ 1)))
                   (if (gx#stx-null? _tl1421614238_)
                       (letrec ((_loop1421714241_
                                 (lambda (_hd1421514245_ _attr1422114248_)
                                   (if (gx#stx-pair? _hd1421514245_)
                                       (let ((_e1421814251_
                                              (gx#syntax-e _hd1421514245_)))
                                         (let ((_lp-hd1421914255_
                                                (##car _e1421814251_))
                                               (_lp-tl1422014258_
                                                (##cdr _e1421814251_)))
                                           (_loop1421714241_
                                            _lp-tl1422014258_
                                            (cons _lp-hd1421914255_
                                                  _attr1422114248_))))
                                       (let ((_attr1422214261_
                                              (reverse _attr1422114248_)))
                                         ((lambda (_L14265_)
                                            (let ()
                                              (let ((_g1428214299_
                                                     (lambda (_g1428314295_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1428314295_))))
                                                (let ((_g1428115104_
                                                       (lambda (_g1428314303_)
                                                         (if (gx#stx-pair/null?
                                                              _g1428314303_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1428314303_)
                               '0)
                         (let ((_g29248_
                                (gx#syntax-split-splice _g1428314303_ '0)))
                           (begin
                             (let ((_g29249_ (values-count _g29248_)))
                               (if (not (fx= _g29249_ 2))
                                   (error "Context expects 2 values"
                                          _g29249_)))
                             (let ((_target1428514306_ (values-ref _g29248_ 0))
                                   (_tl1428714309_ (values-ref _g29248_ 1)))
                               (if (gx#stx-null? _tl1428714309_)
                                   (letrec ((_loop1428814312_
                                             (lambda (_hd1428614316_
                                                      _getf1429214319_)
                                               (if (gx#stx-pair?
                                                    _hd1428614316_)
                                                   (let ((_e1428914322_
                                                          (gx#syntax-e
                                                           _hd1428614316_)))
                                                     (let ((_lp-hd1429014326_
                                                            (##car _e1428914322_))
                                                           (_lp-tl1429114329_
                                                            (##cdr _e1428914322_)))
                                                       (_loop1428814312_
                                                        _lp-tl1429114329_
                                                        (cons _lp-hd1429014326_
                                                              _getf1429214319_))))
                                                   (let ((_getf1429314332_
                                                          (reverse _getf1429214319_)))
                                                     ((lambda (_L14336_)
                                                        (let ()
                                                          (let ((_g1435314370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1435414366_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1435414366_))))
                    (let ((_g1435215095_
                           (lambda (_g1435414374_)
                             (if (gx#stx-pair/null? _g1435414374_)
                                 (if (fx>= (gx#stx-length _g1435414374_) '0)
                                     (let ((_g29250_
                                            (gx#syntax-split-splice
                                             _g1435414374_
                                             '0)))
                                       (begin
                                         (let ((_g29251_
                                                (values-count _g29250_)))
                                           (if (not (fx= _g29251_ 2))
                                               (error "Context expects 2 values"
                                                      _g29251_)))
                                         (let ((_target1435614377_
                                                (values-ref _g29250_ 0))
                                               (_tl1435814380_
                                                (values-ref _g29250_ 1)))
                                           (if (gx#stx-null? _tl1435814380_)
                                               (letrec ((_loop1435914383_
                                                         (lambda (_hd1435714387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1436314390_)
                   (if (gx#stx-pair? _hd1435714387_)
                       (let ((_e1436014393_ (gx#syntax-e _hd1435714387_)))
                         (let ((_lp-hd1436114397_ (##car _e1436014393_))
                               (_lp-tl1436214400_ (##cdr _e1436014393_)))
                           (_loop1435914383_
                            _lp-tl1436214400_
                            (cons _lp-hd1436114397_ _setf1436314390_))))
                       (let ((_setf1436414403_ (reverse _setf1436314390_)))
                         ((lambda (_L14407_)
                            (let ()
                              (let ((_type-attr14449_
                                     (if (gx#stx-null? _els14026_)
                                         '()
                                         (if _struct?14028_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14407_
                                                            _L14336_)
                                                           (foldr (lambda (_g1442314427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1442414430_
                                   _g1442514432_)
                            (cons (cons _g1442414430_ (cons _g1442314427_ '()))
                                  _g1442514432_))
                          '()
                          _L14407_
                          _L14336_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14407_
                                                            _L14336_
                                                            _L14265_)
                                                           (foldr (lambda (_g1443414439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1443514442_
                                   _g1443614444_
                                   _g1443714446_)
                            (cons (cons _g1443614444_
                                        (cons _g1443514442_
                                              (cons _g1443414439_ '())))
                                  _g1443714446_))
                          '()
                          _L14407_
                          _L14336_
                          _L14265_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14456_
                                       (cons 'name:
                                             (cons (let ((_$e14452_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14027_)))
                                                     (if _$e14452_
                                                         _$e14452_
                                                         _id14024_))
                                                   '()))))
                                  (let ((_type-id14471_
                                         (let ((_$e14467_
                                                (let ((_e1445814460_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14027_)))
                                                  (if _e1445814460_
                                                      (let ((_e14464_
                                                             _e1445814460_))
                                                        (cons 'id:
                                                              (cons _e14464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14467_ _$e14467_ '()))))
                                    (let ((_type-ctor14486_
                                           (let ((_$e14482_
                                                  (let ((_e1447314475_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14027_)))
                                                    (if _e1447314475_
                                                        (let ((_e14479_
                                                               _e1447314475_))
                                                          (cons 'constructor:
                                                                (cons _e14479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14482_ _$e14482_ '()))))
                                      (let ((_plist14504_
                                             (let ((_plist14493_
                                                    (let ((_$e14489_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14027_)))
                                                      (if _$e14489_
                                                          _$e14489_
                                                          '()))))
                                               (let ((_plist14496_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14027_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14493_)
                  _plist14493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14499_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14027_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14496_)
                    _plist14496_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14499_))))))
                                        (let ((_type-plist14544_
                                               (if (null? _plist14504_)
                                                   _plist14504_
                                                   (let ((_g1450714515_
                                                          (lambda (_g1450814511_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1450814511_))))
                                                     (let ((_g1450614540_
                                                            (lambda (_g1450814519_)
                                                              ((lambda (_L14522_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14522_ '()))
                                       '()))))
                       _g1450814519_))))
               (_g1450614540_ _plist14504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1454714564_
                                                 (lambda (_g1454814560_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1454814560_))))
                                            (let ((_g1454615091_
                                                   (lambda (_g1454814568_)
                                                     (if (gx#stx-pair/null?
                                                          _g1454814568_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1454814568_)
                           '0)
                     (let ((_g29252_
                            (gx#syntax-split-splice _g1454814568_ '0)))
                       (begin
                         (let ((_g29253_ (values-count _g29252_)))
                           (if (not (fx= _g29253_ 2))
                               (error "Context expects 2 values" _g29253_)))
                         (let ((_target1455014571_ (values-ref _g29252_ 0))
                               (_tl1455214574_ (values-ref _g29252_ 1)))
                           (if (gx#stx-null? _tl1455214574_)
                               (letrec ((_loop1455314577_
                                         (lambda (_hd1455114581_
                                                  _type-body1455714584_)
                                           (if (gx#stx-pair? _hd1455114581_)
                                               (let ((_e1455414587_
                                                      (gx#syntax-e
                                                       _hd1455114581_)))
                                                 (let ((_lp-hd1455514591_
                                                        (##car _e1455414587_))
                                                       (_lp-tl1455614594_
                                                        (##cdr _e1455414587_)))
                                                   (_loop1455314577_
                                                    _lp-tl1455614594_
                                                    (cons _lp-hd1455514591_
                                                          _type-body1455714584_))))
                                               (let ((_type-body1455814597_
                                                      (reverse _type-body1455714584_)))
                                                 ((lambda (_L14601_)
                                                    (let ()
                                                      (let ((_g1461714625_
                                                             (lambda (_g1461814621_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1461814621_))))
                                                        (let ((_g1461615079_
                                                               (lambda (_g1461814629_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14632_)
                            (let ()
                              (let ((_g1464514653_
                                     (lambda (_g1464614649_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1464614649_))))
                                (let ((_g1464415075_
                                       (lambda (_g1464614657_)
                                         ((lambda (_L14660_)
                                            (let ()
                                              (let ((_g1467314681_
                                                     (lambda (_g1467414677_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1467414677_))))
                                                (let ((_g1467214989_
                                                       (lambda (_g1467414685_)
                                                         ((lambda (_L14688_)
                                                            (let ()
                                                              (let ((_g1470114709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1470214705_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1470214705_))))
                        (let ((_g1470014985_
                               (lambda (_g1470214713_)
                                 ((lambda (_L14716_)
                                    (let ()
                                      (let ((_g1472914737_
                                             (lambda (_g1473014733_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1473014733_))))
                                        (let ((_g1472814981_
                                               (lambda (_g1473014741_)
                                                 ((lambda (_L14744_)
                                                    (let ()
                                                      (let ((_g1475714765_
                                                             (lambda (_g1475814761_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1475814761_))))
                                                        (let ((_g1475614939_
                                                               (lambda (_g1475814769_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14772_)
                            (let ()
                              (let ((_g1478514793_
                                     (lambda (_g1478614789_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1478614789_))))
                                (let ((_g1478414935_
                                       (lambda (_g1478614797_)
                                         ((lambda (_L14800_)
                                            (let ()
                                              (let ((_g1481314821_
                                                     (lambda (_g1481414817_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1481414817_))))
                                                (let ((_g1481214931_
                                                       (lambda (_g1481414825_)
                                                         ((lambda (_L14828_)
                                                            (let ()
                                                              (let ((_g1484114849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1484214845_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1484214845_))))
                        (let ((_g1484014927_
                               (lambda (_g1484214853_)
                                 ((lambda (_L14856_)
                                    (let ()
                                      (let ((_g1486914877_
                                             (lambda (_g1487014873_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1487014873_))))
                                        (let ((_g1486814899_
                                               (lambda (_g1487014881_)
                                                 ((lambda (_L14884_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap14030_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14884_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1487014881_))))
                                          (_g1486814899_
                                           (_wrap14030_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L14086_
                                                        (cons (cons _L14660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L14114_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14688_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L14114_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L14142_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14170_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1490214909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1490314912_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1490214909_ '()))
                               _g1490314912_))
                       '()
                       _L14336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1490414915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1490514918_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1490414915_ '()))
                                     _g1490514918_))
                             '()
                             _L14407_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14744_ '()))
                                    (cons _L14772_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14800_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14856_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1490614921_
                                                        _g1490714924_)
                                                 (cons _g1490614921_
                                                       _g1490714924_))
                                               '()
                                               _L14265_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1484214853_))))
                          (_g1484014927_ _plist14504_)))))
                  _g1481414825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1481214931_
                                                   (if (not (null? _type-ctor14486_))
                                                       (cadr _type-ctor14486_)
                                                       '#f))))))
                                          _g1478614797_))))
                                  (_g1478414935_ (cadr _type-name14456_))))))
                          _g1475814769_))))
                  (_g1475614939_
                   (let ((_quote-e14978_
                          (lambda (_x-ref14943_)
                            (if _x-ref14943_
                                (let ((_g1494614954_
                                       (lambda (_g1494714950_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1494714950_))))
                                  (let ((_g1494514974_
                                         (lambda (_g1494714958_)
                                           ((lambda (_L14961_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L14961_ '()))))
                                            _g1494714958_))))
                                    (_g1494514974_ _x-ref14943_)))
                                '#f))))
                     (if _struct?14028_
                         (_quote-e14978_ _super-ref14025_)
                         (cons 'list
                               (map _quote-e14978_ _super-ref14025_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1473014741_))))
                                          (_g1472814981_
                                           (if (not (null? _type-id14471_))
                                               (cadr _type-id14471_)
                                               '#f))))))
                                  _g1470214713_))))
                          (_g1470014985_
                           (if _struct?14028_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1467414685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1467214989_
                                                   (if _struct?14028_
                                                       (if _super14037_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14198_ '()))
                   '#f)
               (let ((_g1499315010_
                      (lambda (_g1499415006_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1499415006_))))
                 (let ((_g1499215071_
                        (lambda (_g1499415014_)
                          (if (gx#stx-pair/null? _g1499415014_)
                              (if (fx>= (gx#stx-length _g1499415014_) '0)
                                  (let ((_g29254_
                                         (gx#syntax-split-splice
                                          _g1499415014_
                                          '0)))
                                    (begin
                                      (let ((_g29255_ (values-count _g29254_)))
                                        (if (not (fx= _g29255_ 2))
                                            (error "Context expects 2 values"
                                                   _g29255_)))
                                      (let ((_target1499615017_
                                             (values-ref _g29254_ 0))
                                            (_tl1499815020_
                                             (values-ref _g29254_ 1)))
                                        (if (gx#stx-null? _tl1499815020_)
                                            (letrec ((_loop1499915023_
                                                      (lambda (_hd1499715027_
                                                               _super-id1500315030_)
                                                        (if (gx#stx-pair?
                                                             _hd1499715027_)
                                                            (let ((_e1500015033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1499715027_)))
                      (let ((_lp-hd1500115037_ (##car _e1500015033_))
                            (_lp-tl1500215040_ (##cdr _e1500015033_)))
                        (_loop1499915023_
                         _lp-tl1500215040_
                         (cons _lp-hd1500115037_ _super-id1500315030_))))
                    (let ((_super-id1500415043_
                           (reverse _super-id1500315030_)))
                      ((lambda (_L15047_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1506215065_ _g1506315068_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1506215065_
                                                              '()))
                                                  _g1506315068_))
                                          '()
                                          _L15047_)))))
                       _super-id1500415043_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1499915023_
                                               _target1499615017_
                                               '()))
                                            (_g1499315010_ _g1499415014_)))))
                                  (_g1499315010_ _g1499415014_))
                              (_g1499315010_ _g1499415014_)))))
                   (_g1499215071_ _L14198_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1464614657_))))
                                  (_g1464415075_
                                   (if _struct?14028_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1461814629_))))
                  (_g1461615079_
                   (_wrap14030_
                    (cons _L14055_
                          (cons _L14114_
                                (cons _L14198_
                                      (cons _L14142_
                                            (cons _L14170_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1508215085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1508315088_)
                     (cons _g1508215085_ _g1508315088_))
                   '()
                   _L14601_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1455814597_))))))
                                 (_loop1455314577_ _target1455014571_ '()))
                               (_g1454714564_ _g1454814568_)))))
                     (_g1454714564_ _g1454814568_))
                 (_g1454714564_ _g1454814568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1454615091_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14544_ _type-ctor14486_)
                            _type-name14456_)
                     _type-id14471_)
              _type-attr14449_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1436414403_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1435914383_
                                                  _target1435614377_
                                                  '()))
                                               (_g1435314370_
                                                _g1435414374_)))))
                                     (_g1435314370_ _g1435414374_))
                                 (_g1435314370_ _g1435414374_)))))
                      (_g1435215095_
                       (gx#stx-map
                        (lambda (_g1509815100_)
                          (_make-id14032_
                           _name14034_
                           '"-"
                           _g1509815100_
                           '"-set!"))
                        _els14026_))))))
              _getf1429314332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1428814312_ _target1428514306_ '()))
                                   (_g1428214299_ _g1428314303_)))))
                         (_g1428214299_ _g1428314303_))
                     (_g1428214299_ _g1428314303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1428115104_
                                                   (gx#stx-map
                                                    (lambda (_g1510715109_)
                                                      (_make-id14032_
                                                       _name14034_
                                                       '"-"
                                                       _g1510715109_))
                                                    _els14026_))))))
                                          _attr1422214261_))))))
                         (_loop1421714241_ _target1421414235_ '()))
                       (_g1421114228_ _g1421214232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1421114228_
                                                      _g1421214232_))
                                                 (_g1421114228_
                                                  _g1421214232_)))))
                                      (_g1421015113_ _els14026_)))))
                              _g1418414195_))))
                      (_g1418215117_
                       (if _struct?14028_
                           (if _super14037_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14037_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14037_)))))))
              _g1415614167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1415415121_
                                               (_make-id14032_
                                                _name14034_
                                                '"?"))))))
                                      _g1412814139_))))
                              (_g1412615125_
                               (_make-id14032_ '"make-" _name14034_))))))
                      _g1410014111_))))
              (_g1409815129_ (_make-id14032_ _name14034_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1407214083_))))
                                      (_g1407015133_ _id14024_)))))
                              _g1404114052_))))
                      (_g1403915137_
                       (if _struct?14028_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15229_)
        (let ((_generate15232_
               (lambda (_hd15316_ _fields15318_ _body15319_)
                 (let ((_g1532215337_
                        (lambda (_g1532315333_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1532315333_))))
                   (let ((_g1532115348_
                          (lambda (_g1532315341_)
                            ((lambda ()
                               (if (gx#identifier? _hd15316_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15229_
                                    _hd15316_
                                    '#f
                                    _fields15318_
                                    _body15319_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15229_
                                    _hd15316_)))))))
                     (let ((_g1532015392_
                            (lambda (_g1532315352_)
                              (if (gx#stx-pair? _g1532315352_)
                                  (let ((_e1532615355_
                                         (gx#syntax-e _g1532315352_)))
                                    (let ((_hd1532715359_
                                           (##car _e1532615355_))
                                          (_tl1532815362_
                                           (##cdr _e1532615355_)))
                                      (if (gx#stx-pair? _tl1532815362_)
                                          (let ((_e1532915365_
                                                 (gx#syntax-e _tl1532815362_)))
                                            (let ((_hd1533015369_
                                                   (##car _e1532915365_))
                                                  (_tl1533115372_
                                                   (##cdr _e1532915365_)))
                                              (if (gx#stx-null? _tl1533115372_)
                                                  ((lambda (_L15375_ _L15377_)
                                                     (if (if (gx#identifier?
                                                              _L15377_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15375_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15229_
                                                          _L15377_
                                                          _L15375_
                                                          _fields15318_
                                                          _body15319_
                                                          '#t)
                                                         (_g1532115348_
                                                          _g1532315352_)))
                                                   _hd1533015369_
                                                   _hd1532715359_)
                                                  (_g1532115348_
                                                   _g1532315352_))))
                                          (_g1532115348_ _g1532315352_))))
                                  (_g1532115348_ _g1532315352_)))))
                       (_g1532015392_ _hd15316_)))))))
          (let ((_g1523515254_
                 (lambda (_g1523615250_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1523615250_))))
            (let ((_g1523415312_
                   (lambda (_g1523615258_)
                     (if (gx#stx-pair? _g1523615258_)
                         (let ((_e1524015261_ (gx#syntax-e _g1523615258_)))
                           (let ((_hd1524115265_ (##car _e1524015261_))
                                 (_tl1524215268_ (##cdr _e1524015261_)))
                             (if (gx#stx-pair? _tl1524215268_)
                                 (let ((_e1524315271_
                                        (gx#syntax-e _tl1524215268_)))
                                   (let ((_hd1524415275_ (##car _e1524315271_))
                                         (_tl1524515278_
                                          (##cdr _e1524315271_)))
                                     (if (gx#stx-pair? _tl1524515278_)
                                         (let ((_e1524615281_
                                                (gx#syntax-e _tl1524515278_)))
                                           (let ((_hd1524715285_
                                                  (##car _e1524615281_))
                                                 (_tl1524815288_
                                                  (##cdr _e1524615281_)))
                                             ((lambda (_L15291_
                                                       _L15293_
                                                       _L15294_)
                                                (if (if (gx#identifier-list?
                                                         _L15293_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15291_)
                                                        '#f)
                                                    (_generate15232_
                                                     _L15294_
                                                     _L15293_
                                                     _L15291_)
                                                    (_g1523515254_
                                                     _g1523615258_)))
                                              _tl1524815288_
                                              _hd1524715285_
                                              _hd1524415275_)))
                                         (_g1523515254_ _g1523615258_))))
                                 (_g1523515254_ _g1523615258_))))
                         (_g1523515254_ _g1523615258_)))))
              (_g1523415312_ _stx15229_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15396_)
        (let ((_generate15399_
               (lambda (_hd15483_ _slots15485_ _body15486_)
                 (let ((_g1548915501_
                        (lambda (_g1549015497_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1549015497_))))
                   (let ((_g1548815512_
                          (lambda (_g1549015505_)
                            ((lambda ()
                               (if (gx#identifier? _hd15483_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15396_
                                    _hd15483_
                                    '()
                                    _slots15485_
                                    _body15486_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15396_
                                    _hd15483_)))))))
                     (let ((_g1548715544_
                            (lambda (_g1549015516_)
                              (if (gx#stx-pair? _g1549015516_)
                                  (let ((_e1549315519_
                                         (gx#syntax-e _g1549015516_)))
                                    (let ((_hd1549415523_
                                           (##car _e1549315519_))
                                          (_tl1549515526_
                                           (##cdr _e1549315519_)))
                                      ((lambda (_L15529_ _L15531_)
                                         (if (if (gx#stx-list? _L15529_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15529_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15396_
                                              _L15531_
                                              (gx#syntax->list _L15529_)
                                              _slots15485_
                                              _body15486_
                                              '#f)
                                             (_g1548815512_ _g1549015516_)))
                                       _tl1549515526_
                                       _hd1549415523_)))
                                  (_g1548815512_ _g1549015516_)))))
                       (_g1548715544_ _hd15483_)))))))
          (let ((_g1540215421_
                 (lambda (_g1540315417_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1540315417_))))
            (let ((_g1540115479_
                   (lambda (_g1540315425_)
                     (if (gx#stx-pair? _g1540315425_)
                         (let ((_e1540715428_ (gx#syntax-e _g1540315425_)))
                           (let ((_hd1540815432_ (##car _e1540715428_))
                                 (_tl1540915435_ (##cdr _e1540715428_)))
                             (if (gx#stx-pair? _tl1540915435_)
                                 (let ((_e1541015438_
                                        (gx#syntax-e _tl1540915435_)))
                                   (let ((_hd1541115442_ (##car _e1541015438_))
                                         (_tl1541215445_
                                          (##cdr _e1541015438_)))
                                     (if (gx#stx-pair? _tl1541215445_)
                                         (let ((_e1541315448_
                                                (gx#syntax-e _tl1541215445_)))
                                           (let ((_hd1541415452_
                                                  (##car _e1541315448_))
                                                 (_tl1541515455_
                                                  (##cdr _e1541315448_)))
                                             ((lambda (_L15458_
                                                       _L15460_
                                                       _L15461_)
                                                (if (if (gx#identifier-list?
                                                         _L15460_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15458_)
                                                        '#f)
                                                    (_generate15399_
                                                     _L15461_
                                                     _L15460_
                                                     _L15458_)
                                                    (_g1540215421_
                                                     _g1540315425_)))
                                              _tl1541515455_
                                              _hd1541415452_
                                              _hd1541115442_)))
                                         (_g1540215421_ _g1540315425_))))
                                 (_g1540215421_ _g1540315425_))))
                         (_g1540215421_ _g1540315425_)))))
              (_g1540115479_ _stx15396_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15548_)
        (let ((_wrap15551_
               (lambda (_e-stx15856_)
                 (gx#stx-wrap-source
                  _e-stx15856_
                  (gx#stx-source _stx15548_)))))
          (let ((_method-opt?15553_
                 (lambda (_x15853_) (memq (gx#stx-e _x15853_) '(rebind:)))))
            (let ((_g1555515584_
                   (lambda (_g1555615580_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1555615580_))))
              (let ((_g1555415849_
                     (lambda (_g1555615588_)
                       (if (gx#stx-pair? _g1555615588_)
                           (let ((_e1556115591_ (gx#syntax-e _g1555615588_)))
                             (let ((_hd1556215595_ (##car _e1556115591_))
                                   (_tl1556315598_ (##cdr _e1556115591_)))
                               (if (gx#stx-pair? _tl1556315598_)
                                   (let ((_e1556415601_
                                          (gx#syntax-e _tl1556315598_)))
                                     (let ((_hd1556515605_
                                            (##car _e1556415601_))
                                           (_tl1556615608_
                                            (##cdr _e1556415601_)))
                                       (if (gx#stx-pair? _hd1556515605_)
                                           (let ((_e1556715611_
                                                  (gx#syntax-e
                                                   _hd1556515605_)))
                                             (let ((_hd1556815615_
                                                    (##car _e1556715611_))
                                                   (_tl1556915618_
                                                    (##cdr _e1556715611_)))
                                               (if (gx#identifier?
                                                    _hd1556815615_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29257_|
                                                        _hd1556815615_)
                                                       (if (gx#stx-pair?
                                                            _tl1556915618_)
                                                           (let ((_e1557015621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1556915618_)))
                     (let ((_hd1557115625_ (##car _e1557015621_))
                           (_tl1557215628_ (##cdr _e1557015621_)))
                       (if (gx#stx-pair? _tl1557215628_)
                           (let ((_e1557315631_ (gx#syntax-e _tl1557215628_)))
                             (let ((_hd1557415635_ (##car _e1557315631_))
                                   (_tl1557515638_ (##cdr _e1557315631_)))
                               (if (gx#stx-null? _tl1557515638_)
                                   (if (gx#stx-pair? _tl1556615608_)
                                       (let ((_e1557615641_
                                              (gx#syntax-e _tl1556615608_)))
                                         (let ((_hd1557715645_
                                                (##car _e1557615641_))
                                               (_tl1557815648_
                                                (##cdr _e1557615641_)))
                                           ((lambda (_L15651_
                                                     _L15653_
                                                     _L15654_
                                                     _L15655_)
                                              (if (if (gx#identifier? _L15655_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15654_)
                                                          (gx#stx-plist?
                                                           _L15651_
                                                           _method-opt?15553_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15680_
                                                         (gx#syntax-local-value
                                                          _L15654_)))
                                                    (let ((_rebind?15683_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15651_))
                       '#t
                       '#f)))
              (let ((_g1568615694_
                     (lambda (_g1568715690_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1568715690_))))
                (let ((_g1568515845_
                       (lambda (_g1568715698_)
                         ((lambda (_L15701_)
                            (let ()
                              (let ((_g1571515723_
                                     (lambda (_g1571615719_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1571615719_))))
                                (let ((_g1571415841_
                                       (lambda (_g1571615727_)
                                         ((lambda (_L15730_)
                                            (let ()
                                              (let ((_g1574315751_
                                                     (lambda (_g1574415747_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1574415747_))))
                                                (let ((_g1574215837_
                                                       (lambda (_g1574415755_)
                                                         ((lambda (_L15758_)
                                                            (let ()
                                                              (let ((_g1577115779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1577215775_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1577215775_))))
                        (let ((_g1577015833_
                               (lambda (_g1577215783_)
                                 ((lambda (_L15786_)
                                    (let ()
                                      (let ((_g1579915807_
                                             (lambda (_g1580015803_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1580015803_))))
                                        (let ((_g1579815829_
                                               (lambda (_g1580015811_)
                                                 ((lambda (_L15814_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15551_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L15758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L15814_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1580015811_))))
                                          (_g1579815829_
                                           (_wrap15551_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L15701_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15655_ '()))
                      (cons _L15730_ (cons _L15786_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1577215783_))))
                          (_g1577015833_ _rebind?15683_)))))
                  _g1574415755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1574215837_
                                                   (_wrap15551_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L15730_
                                                                (cons _L15653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1571615727_))))
                                  (_g1571415841_
                                   (gx#stx-identifier
                                    _L15655_
                                    _L15654_
                                    '"::"
                                    _L15655_))))))
                          _g1568715698_))))
                  (_g1568515845_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass15680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1555515584_
                                                   _g1555615588_)))
                                            _tl1557815648_
                                            _hd1557715645_
                                            _hd1557415635_
                                            _hd1557115625_)))
                                       (_g1555515584_ _g1555615588_))
                                   (_g1555515584_ _g1555615588_))))
                           (_g1555515584_ _g1555615588_))))
                   (_g1555515584_ _g1555615588_))
               (_g1555515584_ _g1555615588_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1555515584_
                                                    _g1555615588_))))
                                           (_g1555515584_ _g1555615588_))))
                                   (_g1555515584_ _g1555615588_))))
                           (_g1555515584_ _g1555615588_)))))
                (_g1555415849_ _stx15548_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15859_)
        (let ((_g1586415913_
               (lambda (_g1586515909_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1586515909_))))
          (let ((_g1586316012_
                 (lambda (_g1586515917_)
                   (if (gx#stx-pair? _g1586515917_)
                       (let ((_e1589015920_ (gx#syntax-e _g1586515917_)))
                         (let ((_hd1589115924_ (##car _e1589015920_))
                               (_tl1589215927_ (##cdr _e1589015920_)))
                           (if (gx#stx-pair? _tl1589215927_)
                               (let ((_e1589315930_
                                      (gx#syntax-e _tl1589215927_)))
                                 (let ((_hd1589415934_ (##car _e1589315930_))
                                       (_tl1589515937_ (##cdr _e1589315930_)))
                                   (if (gx#stx-pair? _tl1589515937_)
                                       (let ((_e1589615940_
                                              (gx#syntax-e _tl1589515937_)))
                                         (let ((_hd1589715944_
                                                (##car _e1589615940_))
                                               (_tl1589815947_
                                                (##cdr _e1589615940_)))
                                           (if (gx#stx-pair/null?
                                                _tl1589815947_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1589815947_)
                                                         '0)
                                                   (let ((_g29258_
                                                          (gx#syntax-split-splice
                                                           _tl1589815947_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29259_
                                                              (values-count
                                                               _g29258_)))
                                                         (if (not (fx= _g29259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29259_)))
               (let ((_target1589915950_ (values-ref _g29258_ 0))
                     (_tl1590115953_ (values-ref _g29258_ 1)))
                 (if (gx#stx-null? _tl1590115953_)
                     (letrec ((_loop1590215956_
                               (lambda (_hd1590015960_ _arg1590615963_)
                                 (if (gx#stx-pair? _hd1590015960_)
                                     (let ((_e1590315966_
                                            (gx#syntax-e _hd1590015960_)))
                                       (let ((_lp-hd1590415970_
                                              (##car _e1590315966_))
                                             (_lp-tl1590515973_
                                              (##cdr _e1590315966_)))
                                         (_loop1590215956_
                                          _lp-tl1590515973_
                                          (cons _lp-hd1590415970_
                                                _arg1590615963_))))
                                     (let ((_arg1590715976_
                                            (reverse _arg1590615963_)))
                                       ((lambda (_L15980_ _L15982_ _L15983_)
                                          (if (gx#identifier? _L15983_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L15982_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L15983_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1600316006_ _g1600416009_)
                                   (cons _g1600316006_ _g1600416009_))
                                 '()
                                 _L15980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1586415913_ _g1586515917_)))
                                        _arg1590715976_
                                        _hd1589715944_
                                        _hd1589415934_))))))
                       (_loop1590215956_ _target1589915950_ '()))
                     (_g1586415913_ _g1586515917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586415913_
                                                    _g1586515917_))
                                               (_g1586415913_ _g1586515917_))))
                                       (_g1586415913_ _g1586515917_))))
                               (_g1586415913_ _g1586515917_))))
                       (_g1586415913_ _g1586515917_)))))
            (let ((_g1586216118_
                   (lambda (_g1586516016_)
                     (if (gx#stx-pair? _g1586516016_)
                         (let ((_e1586916019_ (gx#syntax-e _g1586516016_)))
                           (let ((_hd1587016023_ (##car _e1586916019_))
                                 (_tl1587116026_ (##cdr _e1586916019_)))
                             (if (gx#stx-pair? _tl1587116026_)
                                 (let ((_e1587216029_
                                        (gx#syntax-e _tl1587116026_)))
                                   (let ((_hd1587316033_ (##car _e1587216029_))
                                         (_tl1587416036_
                                          (##cdr _e1587216029_)))
                                     (if (gx#stx-pair? _tl1587416036_)
                                         (let ((_e1587516039_
                                                (gx#syntax-e _tl1587416036_)))
                                           (let ((_hd1587616043_
                                                  (##car _e1587516039_))
                                                 (_tl1587716046_
                                                  (##cdr _e1587516039_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1587716046_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1587716046_)
                                                           '0)
                                                     (let ((_g29260_
                                                            (gx#syntax-split-splice
                                                             _tl1587716046_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29261_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29260_)))
                   (if (not (fx= _g29261_ 2))
                       (error "Context expects 2 values" _g29261_)))
                 (let ((_target1587816049_ (values-ref _g29260_ 0))
                       (_tl1588016052_ (values-ref _g29260_ 1)))
                   (if (gx#stx-null? _tl1588016052_)
                       (letrec ((_loop1588116055_
                                 (lambda (_hd1587916059_ _arg1588516062_)
                                   (if (gx#stx-pair? _hd1587916059_)
                                       (let ((_e1588216065_
                                              (gx#syntax-e _hd1587916059_)))
                                         (let ((_lp-hd1588316069_
                                                (##car _e1588216065_))
                                               (_lp-tl1588416072_
                                                (##cdr _e1588216065_)))
                                           (_loop1588116055_
                                            _lp-tl1588416072_
                                            (cons _lp-hd1588316069_
                                                  _arg1588516062_))))
                                       (let ((_arg1588616075_
                                              (reverse _arg1588516062_)))
                                         ((lambda (_L16079_ _L16081_ _L16082_)
                                            (if (if (gx#identifier? _L16082_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1610116104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1610216107_)
                        (cons _g1610116104_ _g1610216107_))
                      '()
                      _L16079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16082_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1610916112_
                                                              _g1611016115_)
                                                       (cons _g1610916112_
                                                             _g1611016115_))
                                                     '()
                                                     _L16079_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1586316012_ _g1586516016_)))
                                          _arg1588616075_
                                          _hd1587616043_
                                          _hd1587316033_))))))
                         (_loop1588116055_ _target1587816049_ '()))
                       (_g1586316012_ _g1586516016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1586316012_
                                                      _g1586516016_))
                                                 (_g1586316012_
                                                  _g1586516016_))))
                                         (_g1586316012_ _g1586516016_))))
                                 (_g1586316012_ _g1586516016_))))
                         (_g1586316012_ _g1586516016_)))))
              (_g1586216118_ _$stx15859_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16124_)
        (let ((_g1612916169_
               (lambda (_g1613016165_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1613016165_))))
          (let ((_g1612816270_
                 (lambda (_g1613016173_)
                   (if (gx#stx-pair? _g1613016173_)
                       (let ((_e1614616176_ (gx#syntax-e _g1613016173_)))
                         (let ((_hd1614716180_ (##car _e1614616176_))
                               (_tl1614816183_ (##cdr _e1614616176_)))
                           (if (gx#stx-pair? _tl1614816183_)
                               (let ((_e1614916186_
                                      (gx#syntax-e _tl1614816183_)))
                                 (let ((_hd1615016190_ (##car _e1614916186_))
                                       (_tl1615116193_ (##cdr _e1614916186_)))
                                   (if (gx#stx-pair? _tl1615116193_)
                                       (let ((_e1615216196_
                                              (gx#syntax-e _tl1615116193_)))
                                         (let ((_hd1615316200_
                                                (##car _e1615216196_))
                                               (_tl1615416203_
                                                (##cdr _e1615216196_)))
                                           (if (gx#stx-pair/null?
                                                _tl1615416203_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1615416203_)
                                                         '0)
                                                   (let ((_g29262_
                                                          (gx#syntax-split-splice
                                                           _tl1615416203_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29263_
                                                              (values-count
                                                               _g29262_)))
                                                         (if (not (fx= _g29263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29263_)))
               (let ((_target1615516206_ (values-ref _g29262_ 0))
                     (_tl1615716209_ (values-ref _g29262_ 1)))
                 (if (gx#stx-null? _tl1615716209_)
                     (letrec ((_loop1615816212_
                               (lambda (_hd1615616216_ _rest1616216219_)
                                 (if (gx#stx-pair? _hd1615616216_)
                                     (let ((_e1615916222_
                                            (gx#syntax-e _hd1615616216_)))
                                       (let ((_lp-hd1616016226_
                                              (##car _e1615916222_))
                                             (_lp-tl1616116229_
                                              (##cdr _e1615916222_)))
                                         (_loop1615816212_
                                          _lp-tl1616116229_
                                          (cons _lp-hd1616016226_
                                                _rest1616216219_))))
                                     (let ((_rest1616316232_
                                            (reverse _rest1616216219_)))
                                       ((lambda (_L16236_
                                                 _L16238_
                                                 _L16239_
                                                 _L16240_)
                                          (cons _L16240_
                                                (cons (cons _L16240_
                                                            (cons _L16239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16238_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1626116264_ _g1626216267_)
                         (cons _g1626116264_ _g1626216267_))
                       '()
                       _L16236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1616316232_
                                        _hd1615316200_
                                        _hd1615016190_
                                        _hd1614716180_))))))
                       (_loop1615816212_ _target1615516206_ '()))
                     (_g1612916169_ _g1613016173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1612916169_
                                                    _g1613016173_))
                                               (_g1612916169_ _g1613016173_))))
                                       (_g1612916169_ _g1613016173_))))
                               (_g1612916169_ _g1613016173_))))
                       (_g1612916169_ _g1613016173_)))))
            (let ((_g1612716324_
                   (lambda (_g1613016274_)
                     (if (gx#stx-pair? _g1613016274_)
                         (let ((_e1613316277_ (gx#syntax-e _g1613016274_)))
                           (let ((_hd1613416281_ (##car _e1613316277_))
                                 (_tl1613516284_ (##cdr _e1613316277_)))
                             (if (gx#stx-pair? _tl1613516284_)
                                 (let ((_e1613616287_
                                        (gx#syntax-e _tl1613516284_)))
                                   (let ((_hd1613716291_ (##car _e1613616287_))
                                         (_tl1613816294_
                                          (##cdr _e1613616287_)))
                                     (if (gx#stx-pair? _tl1613816294_)
                                         (let ((_e1613916297_
                                                (gx#syntax-e _tl1613816294_)))
                                           (let ((_hd1614016301_
                                                  (##car _e1613916297_))
                                                 (_tl1614116304_
                                                  (##cdr _e1613916297_)))
                                             (if (gx#stx-null? _tl1614116304_)
                                                 ((lambda (_L16307_ _L16309_)
                                                    (if (gx#identifier?
                                                         _L16307_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16307_ '()))
                                  '())))
                (_g1612816270_ _g1613016274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1614016301_
                                                  _hd1613716291_)
                                                 (_g1612816270_
                                                  _g1613016274_))))
                                         (_g1612816270_ _g1613016274_))))
                                 (_g1612816270_ _g1613016274_))))
                         (_g1612816270_ _g1613016274_)))))
              (_g1612716324_ _$stx16124_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16329_)
        (let ((_g1633416381_
               (lambda (_g1633516377_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1633516377_))))
          (let ((_g1633316494_
                 (lambda (_g1633516385_)
                   (if (gx#stx-pair? _g1633516385_)
                       (let ((_e1635516388_ (gx#syntax-e _g1633516385_)))
                         (let ((_hd1635616392_ (##car _e1635516388_))
                               (_tl1635716395_ (##cdr _e1635516388_)))
                           (if (gx#stx-pair? _tl1635716395_)
                               (let ((_e1635816398_
                                      (gx#syntax-e _tl1635716395_)))
                                 (let ((_hd1635916402_ (##car _e1635816398_))
                                       (_tl1636016405_ (##cdr _e1635816398_)))
                                   (if (gx#stx-pair? _tl1636016405_)
                                       (let ((_e1636116408_
                                              (gx#syntax-e _tl1636016405_)))
                                         (let ((_hd1636216412_
                                                (##car _e1636116408_))
                                               (_tl1636316415_
                                                (##cdr _e1636116408_)))
                                           (if (gx#stx-pair/null?
                                                _tl1636316415_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1636316415_)
                                                         '1)
                                                   (let ((_g29264_
                                                          (gx#syntax-split-splice
                                                           _tl1636316415_
                                                           '1)))
                                                     (begin
                                                       (let ((_g29265_
                                                              (values-count
                                                               _g29264_)))
                                                         (if (not (fx= _g29265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29265_)))
               (let ((_target1636416418_ (values-ref _g29264_ 0))
                     (_tl1636616421_ (values-ref _g29264_ 1)))
                 (if (gx#stx-pair? _tl1636616421_)
                     (let ((_e1637316424_ (gx#syntax-e _tl1636616421_)))
                       (let ((_hd1637416428_ (##car _e1637316424_))
                             (_tl1637516431_ (##cdr _e1637316424_)))
                         (if (gx#stx-null? _tl1637516431_)
                             (letrec ((_loop1636716434_
                                       (lambda (_hd1636516438_
                                                _path1637116441_)
                                         (if (gx#stx-pair? _hd1636516438_)
                                             (let ((_e1636816444_
                                                    (gx#syntax-e
                                                     _hd1636516438_)))
                                               (let ((_lp-hd1636916448_
                                                      (##car _e1636816444_))
                                                     (_lp-tl1637016451_
                                                      (##cdr _e1636816444_)))
                                                 (_loop1636716434_
                                                  _lp-tl1637016451_
                                                  (cons _lp-hd1636916448_
                                                        _path1637116441_))))
                                             (let ((_path1637216454_
                                                    (reverse _path1637116441_)))
                                               ((lambda (_L16458_
                                                         _L16460_
                                                         _L16461_
                                                         _L16462_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'slot-set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@)
                            (cons _L16462_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1648516488_
                                                    _g1648616491_)
                                             (cons _g1648516488_
                                                   _g1648616491_))
                                           '()
                                           _L16460_))))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16461_ '()))
                            (cons _L16458_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1637416428_
                                                _path1637216454_
                                                _hd1636216412_
                                                _hd1635916402_))))))
                               (_loop1636716434_ _target1636416418_ '()))
                             (_g1633416381_ _g1633516385_))))
                     (_g1633416381_ _g1633516385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1633416381_
                                                    _g1633516385_))
                                               (_g1633416381_ _g1633516385_))))
                                       (_g1633416381_ _g1633516385_))))
                               (_g1633416381_ _g1633516385_))))
                       (_g1633416381_ _g1633516385_)))))
            (let ((_g1633216562_
                   (lambda (_g1633516498_)
                     (if (gx#stx-pair? _g1633516498_)
                         (let ((_e1633916501_ (gx#syntax-e _g1633516498_)))
                           (let ((_hd1634016505_ (##car _e1633916501_))
                                 (_tl1634116508_ (##cdr _e1633916501_)))
                             (if (gx#stx-pair? _tl1634116508_)
                                 (let ((_e1634216511_
                                        (gx#syntax-e _tl1634116508_)))
                                   (let ((_hd1634316515_ (##car _e1634216511_))
                                         (_tl1634416518_
                                          (##cdr _e1634216511_)))
                                     (if (gx#stx-pair? _tl1634416518_)
                                         (let ((_e1634516521_
                                                (gx#syntax-e _tl1634416518_)))
                                           (let ((_hd1634616525_
                                                  (##car _e1634516521_))
                                                 (_tl1634716528_
                                                  (##cdr _e1634516521_)))
                                             (if (gx#stx-pair? _tl1634716528_)
                                                 (let ((_e1634816531_
                                                        (gx#syntax-e
                                                         _tl1634716528_)))
                                                   (let ((_hd1634916535_
                                                          (##car _e1634816531_))
                                                         (_tl1635016538_
                                                          (##cdr _e1634816531_)))
                                                     (if (gx#stx-null?
                                                          _tl1635016538_)
                                                         ((lambda (_L16541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16543_
                           _L16544_)
                    (if (gx#identifier? _L16543_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16544_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16543_ '()))
                                          (cons _L16541_ '()))))
                        (_g1633316494_ _g1633516498_)))
                  _hd1634916535_
                  _hd1634616525_
                  _hd1634316515_)
                 (_g1633316494_ _g1633516498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1633316494_
                                                  _g1633516498_))))
                                         (_g1633316494_ _g1633516498_))))
                                 (_g1633316494_ _g1633516498_))))
                         (_g1633316494_ _g1633516498_)))))
              (_g1633216562_ _$stx16329_))))))))
