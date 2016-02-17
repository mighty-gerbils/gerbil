(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g28098_|
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
      (lambda _$args15022_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15022_)))
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
      (lambda _$args15018_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15018_)))
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
      (lambda _$args15014_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15014_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
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
      (lambda _$args15010_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15010_)))
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
      (lambda _$args15006_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15006_)))
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
      (lambda _$args15002_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15002_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1497414988_
             (lambda (_stx14976_ _is?14978_)
               (if (gx#identifier? _stx14976_)
                   (let ((_e1497914981_
                          (gx#syntax-local-value _stx14976_ false)))
                     (if _e1497914981_
                         (let ((_e14985_ _e1497914981_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e14985_)
                               (_is?14978_ _e14985_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g28086_
          (let ((_g28085_ (length _g28086_)))
            (cond ((fx= _g28085_ 1)
                   (apply (lambda (_stx14992_)
                            (let ((_is?14995_ true))
                              (_opt-lambda1497414988_ _stx14992_ _is?14995_)))
                          _g28086_))
                  ((fx= _g28085_ 2)
                   (apply (lambda (_stx14998_ _is?15000_)
                            (_opt-lambda1497414988_ _stx14998_ _is?15000_))
                          _g28086_))
                  (else (error "No clause matching arguments" _g28086_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx14972_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx14972_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx14969_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx14969_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id14963_)
        (if _id14963_
            (let ((_info14966_ (gx#syntax-local-value _id14963_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info14966_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info14966_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx14954_)
        (let ((_body-opt?14957_
               (lambda (_key14960_)
                 (memq (gx#stx-e _key14960_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx14954_ _body-opt?14957_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx13827_
               _id13829_
               _super-ref13830_
               _els13831_
               _body13832_
               _struct?13833_)
        (let ((_wrap13835_
               (lambda (_e-stx14951_)
                 (gx#stx-wrap-source
                  _e-stx14951_
                  (gx#stx-source _stx13827_)))))
          (let ((_make-id13837_
                 (if (uninterned-symbol? (gx#stx-e _id13829_))
                     (lambda _g28097_ (gx#genident _id13829_))
                     (lambda _args14948_
                       (apply gx#stx-identifier _id13829_ _args14948_)))))
            (begin
              (gx#check-duplicate-identifiers _els13831_ _stx13827_)
              (let ((_name13839_ (symbol->string (gx#stx-e _id13829_))))
                (let ((_super13842_
                       (if _struct?13833_
                           (if _super-ref13830_
                               (gx#syntax-local-value _super-ref13830_)
                               '#f)
                           (map gx#syntax-local-value _super-ref13830_))))
                  (let ((_g1384513853_
                         (lambda (_g1384613849_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1384613849_))))
                    (let ((_g1384414942_
                           (lambda (_g1384613857_)
                             ((lambda (_L13860_)
                                (let ()
                                  (let ((_g1387613884_
                                         (lambda (_g1387713880_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1387713880_))))
                                    (let ((_g1387514938_
                                           (lambda (_g1387713888_)
                                             ((lambda (_L13891_)
                                                (let ()
                                                  (let ((_g1390413912_
                                                         (lambda (_g1390513908_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1390513908_))))
                                                    (let ((_g1390314934_
                                                           (lambda (_g1390513916_)
                                                             ((lambda (_L13919_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1393213940_
                                 (lambda (_g1393313936_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1393313936_))))
                            (let ((_g1393114930_
                                   (lambda (_g1393313944_)
                                     ((lambda (_L13947_)
                                        (let ()
                                          (let ((_g1396013968_
                                                 (lambda (_g1396113964_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1396113964_))))
                                            (let ((_g1395914926_
                                                   (lambda (_g1396113972_)
                                                     ((lambda (_L13975_)
                                                        (let ()
                                                          (let ((_g1398813996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1398913992_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1398913992_))))
                    (let ((_g1398714922_
                           (lambda (_g1398914000_)
                             ((lambda (_L14003_)
                                (let ()
                                  (let ((_g1401614033_
                                         (lambda (_g1401714029_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1401714029_))))
                                    (let ((_g1401514918_
                                           (lambda (_g1401714037_)
                                             (if (gx#stx-pair/null?
                                                  _g1401714037_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1401714037_)
                                                           '0)
                                                     (let ((_g28087_
                                                            (gx#syntax-split-splice
                                                             _g1401714037_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28088_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28087_)))
                   (if (not (fx= _g28088_ 2))
                       (error "Context expects 2 values" _g28088_)))
                 (let ((_target1401914040_ (values-ref _g28087_ 0))
                       (_tl1402114043_ (values-ref _g28087_ 1)))
                   (if (gx#stx-null? _tl1402114043_)
                       (letrec ((_loop1402214046_
                                 (lambda (_hd1402014050_ _attr1402614053_)
                                   (if (gx#stx-pair? _hd1402014050_)
                                       (let ((_e1402314056_
                                              (gx#syntax-e _hd1402014050_)))
                                         (let ((_lp-hd1402414060_
                                                (##car _e1402314056_))
                                               (_lp-tl1402514063_
                                                (##cdr _e1402314056_)))
                                           (_loop1402214046_
                                            _lp-tl1402514063_
                                            (cons _lp-hd1402414060_
                                                  _attr1402614053_))))
                                       (let ((_attr1402714066_
                                              (reverse _attr1402614053_)))
                                         ((lambda (_L14070_)
                                            (let ()
                                              (let ((_g1408714104_
                                                     (lambda (_g1408814100_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1408814100_))))
                                                (let ((_g1408614909_
                                                       (lambda (_g1408814108_)
                                                         (if (gx#stx-pair/null?
                                                              _g1408814108_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1408814108_)
                               '0)
                         (let ((_g28089_
                                (gx#syntax-split-splice _g1408814108_ '0)))
                           (begin
                             (let ((_g28090_ (values-count _g28089_)))
                               (if (not (fx= _g28090_ 2))
                                   (error "Context expects 2 values"
                                          _g28090_)))
                             (let ((_target1409014111_ (values-ref _g28089_ 0))
                                   (_tl1409214114_ (values-ref _g28089_ 1)))
                               (if (gx#stx-null? _tl1409214114_)
                                   (letrec ((_loop1409314117_
                                             (lambda (_hd1409114121_
                                                      _getf1409714124_)
                                               (if (gx#stx-pair?
                                                    _hd1409114121_)
                                                   (let ((_e1409414127_
                                                          (gx#syntax-e
                                                           _hd1409114121_)))
                                                     (let ((_lp-hd1409514131_
                                                            (##car _e1409414127_))
                                                           (_lp-tl1409614134_
                                                            (##cdr _e1409414127_)))
                                                       (_loop1409314117_
                                                        _lp-tl1409614134_
                                                        (cons _lp-hd1409514131_
                                                              _getf1409714124_))))
                                                   (let ((_getf1409814137_
                                                          (reverse _getf1409714124_)))
                                                     ((lambda (_L14141_)
                                                        (let ()
                                                          (let ((_g1415814175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1415914171_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1415914171_))))
                    (let ((_g1415714900_
                           (lambda (_g1415914179_)
                             (if (gx#stx-pair/null? _g1415914179_)
                                 (if (fx>= (gx#stx-length _g1415914179_) '0)
                                     (let ((_g28091_
                                            (gx#syntax-split-splice
                                             _g1415914179_
                                             '0)))
                                       (begin
                                         (let ((_g28092_
                                                (values-count _g28091_)))
                                           (if (not (fx= _g28092_ 2))
                                               (error "Context expects 2 values"
                                                      _g28092_)))
                                         (let ((_target1416114182_
                                                (values-ref _g28091_ 0))
                                               (_tl1416314185_
                                                (values-ref _g28091_ 1)))
                                           (if (gx#stx-null? _tl1416314185_)
                                               (letrec ((_loop1416414188_
                                                         (lambda (_hd1416214192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1416814195_)
                   (if (gx#stx-pair? _hd1416214192_)
                       (let ((_e1416514198_ (gx#syntax-e _hd1416214192_)))
                         (let ((_lp-hd1416614202_ (##car _e1416514198_))
                               (_lp-tl1416714205_ (##cdr _e1416514198_)))
                           (_loop1416414188_
                            _lp-tl1416714205_
                            (cons _lp-hd1416614202_ _setf1416814195_))))
                       (let ((_setf1416914208_ (reverse _setf1416814195_)))
                         ((lambda (_L14212_)
                            (let ()
                              (let ((_type-attr14254_
                                     (if (gx#stx-null? _els13831_)
                                         '()
                                         (if _struct?13833_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14212_
                                                            _L14141_)
                                                           (foldr (lambda (_g1422814232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1422914235_
                                   _g1423014237_)
                            (cons (cons _g1422914235_ (cons _g1422814232_ '()))
                                  _g1423014237_))
                          '()
                          _L14212_
                          _L14141_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14212_
                                                            _L14141_
                                                            _L14070_)
                                                           (foldr (lambda (_g1423914244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1424014247_
                                   _g1424114249_
                                   _g1424214251_)
                            (cons (cons _g1424114249_
                                        (cons _g1424014247_
                                              (cons _g1423914244_ '())))
                                  _g1424214251_))
                          '()
                          _L14212_
                          _L14141_
                          _L14070_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14261_
                                       (cons 'name:
                                             (cons (let ((_$e14257_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body13832_)))
                                                     (if _$e14257_
                                                         _$e14257_
                                                         _id13829_))
                                                   '()))))
                                  (let ((_type-id14276_
                                         (let ((_$e14272_
                                                (let ((_e1426314265_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body13832_)))
                                                  (if _e1426314265_
                                                      (let ((_e14269_
                                                             _e1426314265_))
                                                        (cons 'id:
                                                              (cons _e14269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14272_ _$e14272_ '()))))
                                    (let ((_type-ctor14291_
                                           (let ((_$e14287_
                                                  (let ((_e1427814280_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body13832_)))
                                                    (if _e1427814280_
                                                        (let ((_e14284_
                                                               _e1427814280_))
                                                          (cons 'constructor:
                                                                (cons _e14284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14287_ _$e14287_ '()))))
                                      (let ((_plist14309_
                                             (let ((_plist14298_
                                                    (let ((_$e14294_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body13832_)))
                                                      (if _$e14294_
                                                          _$e14294_
                                                          '()))))
                                               (let ((_plist14301_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body13832_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14298_)
                  _plist14298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14304_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body13832_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14301_)
                    _plist14301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14304_))))))
                                        (let ((_type-plist14349_
                                               (if (null? _plist14309_)
                                                   _plist14309_
                                                   (let ((_g1431214320_
                                                          (lambda (_g1431314316_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1431314316_))))
                                                     (let ((_g1431114345_
                                                            (lambda (_g1431314324_)
                                                              ((lambda (_L14327_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14327_ '()))
                                       '()))))
                       _g1431314324_))))
               (_g1431114345_ _plist14309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g1435214369_
                                                 (lambda (_g1435314365_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1435314365_))))
                                            (let ((_g1435114896_
                                                   (lambda (_g1435314373_)
                                                     (if (gx#stx-pair/null?
                                                          _g1435314373_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1435314373_)
                           '0)
                     (let ((_g28093_
                            (gx#syntax-split-splice _g1435314373_ '0)))
                       (begin
                         (let ((_g28094_ (values-count _g28093_)))
                           (if (not (fx= _g28094_ 2))
                               (error "Context expects 2 values" _g28094_)))
                         (let ((_target1435514376_ (values-ref _g28093_ 0))
                               (_tl1435714379_ (values-ref _g28093_ 1)))
                           (if (gx#stx-null? _tl1435714379_)
                               (letrec ((_loop1435814382_
                                         (lambda (_hd1435614386_
                                                  _type-body1436214389_)
                                           (if (gx#stx-pair? _hd1435614386_)
                                               (let ((_e1435914392_
                                                      (gx#syntax-e
                                                       _hd1435614386_)))
                                                 (let ((_lp-hd1436014396_
                                                        (##car _e1435914392_))
                                                       (_lp-tl1436114399_
                                                        (##cdr _e1435914392_)))
                                                   (_loop1435814382_
                                                    _lp-tl1436114399_
                                                    (cons _lp-hd1436014396_
                                                          _type-body1436214389_))))
                                               (let ((_type-body1436314402_
                                                      (reverse _type-body1436214389_)))
                                                 ((lambda (_L14406_)
                                                    (let ()
                                                      (let ((_g1442214430_
                                                             (lambda (_g1442314426_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1442314426_))))
                                                        (let ((_g1442114884_
                                                               (lambda (_g1442314434_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14437_)
                            (let ()
                              (let ((_g1445014458_
                                     (lambda (_g1445114454_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1445114454_))))
                                (let ((_g1444914880_
                                       (lambda (_g1445114462_)
                                         ((lambda (_L14465_)
                                            (let ()
                                              (let ((_g1447814486_
                                                     (lambda (_g1447914482_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1447914482_))))
                                                (let ((_g1447714794_
                                                       (lambda (_g1447914490_)
                                                         ((lambda (_L14493_)
                                                            (let ()
                                                              (let ((_g1450614514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1450714510_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1450714510_))))
                        (let ((_g1450514790_
                               (lambda (_g1450714518_)
                                 ((lambda (_L14521_)
                                    (let ()
                                      (let ((_g1453414542_
                                             (lambda (_g1453514538_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1453514538_))))
                                        (let ((_g1453314786_
                                               (lambda (_g1453514546_)
                                                 ((lambda (_L14549_)
                                                    (let ()
                                                      (let ((_g1456214570_
                                                             (lambda (_g1456314566_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1456314566_))))
                                                        (let ((_g1456114744_
                                                               (lambda (_g1456314574_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L14577_)
                            (let ()
                              (let ((_g1459014598_
                                     (lambda (_g1459114594_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1459114594_))))
                                (let ((_g1458914740_
                                       (lambda (_g1459114602_)
                                         ((lambda (_L14605_)
                                            (let ()
                                              (let ((_g1461814626_
                                                     (lambda (_g1461914622_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1461914622_))))
                                                (let ((_g1461714736_
                                                       (lambda (_g1461914630_)
                                                         ((lambda (_L14633_)
                                                            (let ()
                                                              (let ((_g1464614654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1464714650_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1464714650_))))
                        (let ((_g1464514732_
                               (lambda (_g1464714658_)
                                 ((lambda (_L14661_)
                                    (let ()
                                      (let ((_g1467414682_
                                             (lambda (_g1467514678_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1467514678_))))
                                        (let ((_g1467314704_
                                               (lambda (_g1467514686_)
                                                 ((lambda (_L14689_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap13835_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L14437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L14689_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1467514686_))))
                                          (_g1467314704_
                                           (_wrap13835_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L13891_
                                                        (cons (cons _L14465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L13919_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L14493_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L13919_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L13947_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L13975_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1470714714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1470814717_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g1470714714_ '()))
                               _g1470814717_))
                       '()
                       _L14141_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1470914720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1471014723_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1470914720_ '()))
                                     _g1471014723_))
                             '()
                             _L14212_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L14521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L14549_ '()))
                                    (cons _L14577_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L14605_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L14633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L14661_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g1471114726_
                                                        _g1471214729_)
                                                 (cons _g1471114726_
                                                       _g1471214729_))
                                               '()
                                               _L14070_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1464714658_))))
                          (_g1464514732_ _plist14309_)))))
                  _g1461914630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1461714736_
                                                   (if (not (null? _type-ctor14291_))
                                                       (cadr _type-ctor14291_)
                                                       '#f))))))
                                          _g1459114602_))))
                                  (_g1458914740_ (cadr _type-name14261_))))))
                          _g1456314574_))))
                  (_g1456114744_
                   (let ((_quote-e14783_
                          (lambda (_x-ref14748_)
                            (if _x-ref14748_
                                (let ((_g1475114759_
                                       (lambda (_g1475214755_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1475214755_))))
                                  (let ((_g1475014779_
                                         (lambda (_g1475214763_)
                                           ((lambda (_L14766_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L14766_ '()))))
                                            _g1475214763_))))
                                    (_g1475014779_ _x-ref14748_)))
                                '#f))))
                     (if _struct?13833_
                         (_quote-e14783_ _super-ref13830_)
                         (cons 'list
                               (map _quote-e14783_ _super-ref13830_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1453514546_))))
                                          (_g1453314786_
                                           (if (not (null? _type-id14276_))
                                               (cadr _type-id14276_)
                                               '#f))))))
                                  _g1450714518_))))
                          (_g1450514790_
                           (if _struct?13833_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g1447914490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1447714794_
                                                   (if _struct?13833_
                                                       (if _super13842_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L14003_ '()))
                   '#f)
               (let ((_g1479814815_
                      (lambda (_g1479914811_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1479914811_))))
                 (let ((_g1479714876_
                        (lambda (_g1479914819_)
                          (if (gx#stx-pair/null? _g1479914819_)
                              (if (fx>= (gx#stx-length _g1479914819_) '0)
                                  (let ((_g28095_
                                         (gx#syntax-split-splice
                                          _g1479914819_
                                          '0)))
                                    (begin
                                      (let ((_g28096_ (values-count _g28095_)))
                                        (if (not (fx= _g28096_ 2))
                                            (error "Context expects 2 values"
                                                   _g28096_)))
                                      (let ((_target1480114822_
                                             (values-ref _g28095_ 0))
                                            (_tl1480314825_
                                             (values-ref _g28095_ 1)))
                                        (if (gx#stx-null? _tl1480314825_)
                                            (letrec ((_loop1480414828_
                                                      (lambda (_hd1480214832_
                                                               _super-id1480814835_)
                                                        (if (gx#stx-pair?
                                                             _hd1480214832_)
                                                            (let ((_e1480514838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1480214832_)))
                      (let ((_lp-hd1480614842_ (##car _e1480514838_))
                            (_lp-tl1480714845_ (##cdr _e1480514838_)))
                        (_loop1480414828_
                         _lp-tl1480714845_
                         (cons _lp-hd1480614842_ _super-id1480814835_))))
                    (let ((_super-id1480914848_
                           (reverse _super-id1480814835_)))
                      ((lambda (_L14852_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1486714870_ _g1486814873_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g1486714870_
                                                              '()))
                                                  _g1486814873_))
                                          '()
                                          _L14852_)))))
                       _super-id1480914848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1480414828_
                                               _target1480114822_
                                               '()))
                                            (_g1479814815_ _g1479914819_)))))
                                  (_g1479814815_ _g1479914819_))
                              (_g1479814815_ _g1479914819_)))))
                   (_g1479714876_ _L14003_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1445114462_))))
                                  (_g1444914880_
                                   (if _struct?13833_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g1442314434_))))
                  (_g1442114884_
                   (_wrap13835_
                    (cons _L13860_
                          (cons _L13919_
                                (cons _L14003_
                                      (cons _L13947_
                                            (cons _L13975_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1488714890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1488814893_)
                     (cons _g1488714890_ _g1488814893_))
                   '()
                   _L14406_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body1436314402_))))))
                                 (_loop1435814382_ _target1435514376_ '()))
                               (_g1435214369_ _g1435314373_)))))
                     (_g1435214369_ _g1435314373_))
                 (_g1435214369_ _g1435314373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1435114896_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist14349_ _type-ctor14291_)
                            _type-name14261_)
                     _type-id14276_)
              _type-attr14254_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1416914208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1416414188_
                                                  _target1416114182_
                                                  '()))
                                               (_g1415814175_
                                                _g1415914179_)))))
                                     (_g1415814175_ _g1415914179_))
                                 (_g1415814175_ _g1415914179_)))))
                      (_g1415714900_
                       (gx#stx-map
                        (lambda (_g1490314905_)
                          (_make-id13837_
                           _name13839_
                           '"-"
                           _g1490314905_
                           '"-set!"))
                        _els13831_))))))
              _getf1409814137_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1409314117_ _target1409014111_ '()))
                                   (_g1408714104_ _g1408814108_)))))
                         (_g1408714104_ _g1408814108_))
                     (_g1408714104_ _g1408814108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1408614909_
                                                   (gx#stx-map
                                                    (lambda (_g1491214914_)
                                                      (_make-id13837_
                                                       _name13839_
                                                       '"-"
                                                       _g1491214914_))
                                                    _els13831_))))))
                                          _attr1402714066_))))))
                         (_loop1402214046_ _target1401914040_ '()))
                       (_g1401614033_ _g1401714037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401614033_
                                                      _g1401714037_))
                                                 (_g1401614033_
                                                  _g1401714037_)))))
                                      (_g1401514918_ _els13831_)))))
                              _g1398914000_))))
                      (_g1398714922_
                       (if _struct?13833_
                           (if _super13842_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13842_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super13842_)))))))
              _g1396113972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1395914926_
                                               (_make-id13837_
                                                _name13839_
                                                '"?"))))))
                                      _g1393313944_))))
                              (_g1393114930_
                               (_make-id13837_ '"make-" _name13839_))))))
                      _g1390513916_))))
              (_g1390314934_ (_make-id13837_ _name13839_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1387713888_))))
                                      (_g1387514938_ _id13829_)))))
                              _g1384613857_))))
                      (_g1384414942_
                       (if _struct?13833_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15034_)
        (let ((_generate15037_
               (lambda (_hd15121_ _fields15123_ _body15124_)
                 (let ((_g1512715142_
                        (lambda (_g1512815138_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1512815138_))))
                   (let ((_g1512615153_
                          (lambda (_g1512815146_)
                            ((lambda ()
                               (if (gx#identifier? _hd15121_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15034_
                                    _hd15121_
                                    '#f
                                    _fields15123_
                                    _body15124_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15034_
                                    _hd15121_)))))))
                     (let ((_g1512515197_
                            (lambda (_g1512815157_)
                              (if (gx#stx-pair? _g1512815157_)
                                  (let ((_e1513115160_
                                         (gx#syntax-e _g1512815157_)))
                                    (let ((_hd1513215164_
                                           (##car _e1513115160_))
                                          (_tl1513315167_
                                           (##cdr _e1513115160_)))
                                      (if (gx#stx-pair? _tl1513315167_)
                                          (let ((_e1513415170_
                                                 (gx#syntax-e _tl1513315167_)))
                                            (let ((_hd1513515174_
                                                   (##car _e1513415170_))
                                                  (_tl1513615177_
                                                   (##cdr _e1513415170_)))
                                              (if (gx#stx-null? _tl1513615177_)
                                                  ((lambda (_L15180_ _L15182_)
                                                     (if (if (gx#identifier?
                                                              _L15182_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15180_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15034_
                                                          _L15182_
                                                          _L15180_
                                                          _fields15123_
                                                          _body15124_
                                                          '#t)
                                                         (_g1512615153_
                                                          _g1512815157_)))
                                                   _hd1513515174_
                                                   _hd1513215164_)
                                                  (_g1512615153_
                                                   _g1512815157_))))
                                          (_g1512615153_ _g1512815157_))))
                                  (_g1512615153_ _g1512815157_)))))
                       (_g1512515197_ _hd15121_)))))))
          (let ((_g1504015059_
                 (lambda (_g1504115055_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1504115055_))))
            (let ((_g1503915117_
                   (lambda (_g1504115063_)
                     (if (gx#stx-pair? _g1504115063_)
                         (let ((_e1504515066_ (gx#syntax-e _g1504115063_)))
                           (let ((_hd1504615070_ (##car _e1504515066_))
                                 (_tl1504715073_ (##cdr _e1504515066_)))
                             (if (gx#stx-pair? _tl1504715073_)
                                 (let ((_e1504815076_
                                        (gx#syntax-e _tl1504715073_)))
                                   (let ((_hd1504915080_ (##car _e1504815076_))
                                         (_tl1505015083_
                                          (##cdr _e1504815076_)))
                                     (if (gx#stx-pair? _tl1505015083_)
                                         (let ((_e1505115086_
                                                (gx#syntax-e _tl1505015083_)))
                                           (let ((_hd1505215090_
                                                  (##car _e1505115086_))
                                                 (_tl1505315093_
                                                  (##cdr _e1505115086_)))
                                             ((lambda (_L15096_
                                                       _L15098_
                                                       _L15099_)
                                                (if (if (gx#identifier-list?
                                                         _L15098_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15096_)
                                                        '#f)
                                                    (_generate15037_
                                                     _L15099_
                                                     _L15098_
                                                     _L15096_)
                                                    (_g1504015059_
                                                     _g1504115063_)))
                                              _tl1505315093_
                                              _hd1505215090_
                                              _hd1504915080_)))
                                         (_g1504015059_ _g1504115063_))))
                                 (_g1504015059_ _g1504115063_))))
                         (_g1504015059_ _g1504115063_)))))
              (_g1503915117_ _stx15034_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15201_)
        (let ((_generate15204_
               (lambda (_hd15288_ _slots15290_ _body15291_)
                 (let ((_g1529415306_
                        (lambda (_g1529515302_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1529515302_))))
                   (let ((_g1529315317_
                          (lambda (_g1529515310_)
                            ((lambda ()
                               (if (gx#identifier? _hd15288_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15201_
                                    _hd15288_
                                    '()
                                    _slots15290_
                                    _body15291_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15201_
                                    _hd15288_)))))))
                     (let ((_g1529215349_
                            (lambda (_g1529515321_)
                              (if (gx#stx-pair? _g1529515321_)
                                  (let ((_e1529815324_
                                         (gx#syntax-e _g1529515321_)))
                                    (let ((_hd1529915328_
                                           (##car _e1529815324_))
                                          (_tl1530015331_
                                           (##cdr _e1529815324_)))
                                      ((lambda (_L15334_ _L15336_)
                                         (if (if (gx#stx-list? _L15334_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                                  _L15334_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15201_
                                              _L15336_
                                              (gx#syntax->list _L15334_)
                                              _slots15290_
                                              _body15291_
                                              '#f)
                                             (_g1529315317_ _g1529515321_)))
                                       _tl1530015331_
                                       _hd1529915328_)))
                                  (_g1529315317_ _g1529515321_)))))
                       (_g1529215349_ _hd15288_)))))))
          (let ((_g1520715226_
                 (lambda (_g1520815222_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1520815222_))))
            (let ((_g1520615284_
                   (lambda (_g1520815230_)
                     (if (gx#stx-pair? _g1520815230_)
                         (let ((_e1521215233_ (gx#syntax-e _g1520815230_)))
                           (let ((_hd1521315237_ (##car _e1521215233_))
                                 (_tl1521415240_ (##cdr _e1521215233_)))
                             (if (gx#stx-pair? _tl1521415240_)
                                 (let ((_e1521515243_
                                        (gx#syntax-e _tl1521415240_)))
                                   (let ((_hd1521615247_ (##car _e1521515243_))
                                         (_tl1521715250_
                                          (##cdr _e1521515243_)))
                                     (if (gx#stx-pair? _tl1521715250_)
                                         (let ((_e1521815253_
                                                (gx#syntax-e _tl1521715250_)))
                                           (let ((_hd1521915257_
                                                  (##car _e1521815253_))
                                                 (_tl1522015260_
                                                  (##cdr _e1521815253_)))
                                             ((lambda (_L15263_
                                                       _L15265_
                                                       _L15266_)
                                                (if (if (gx#identifier-list?
                                                         _L15265_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15263_)
                                                        '#f)
                                                    (_generate15204_
                                                     _L15266_
                                                     _L15265_
                                                     _L15263_)
                                                    (_g1520715226_
                                                     _g1520815230_)))
                                              _tl1522015260_
                                              _hd1521915257_
                                              _hd1521615247_)))
                                         (_g1520715226_ _g1520815230_))))
                                 (_g1520715226_ _g1520815230_))))
                         (_g1520715226_ _g1520815230_)))))
              (_g1520615284_ _stx15201_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15353_)
        (let ((_wrap15356_
               (lambda (_e-stx15665_)
                 (gx#stx-wrap-source
                  _e-stx15665_
                  (gx#stx-source _stx15353_)))))
          (let ((_method-opt?15358_
                 (lambda (_x15662_)
                   (memq (gx#stx-e _x15662_) '(rebind: no-cache:)))))
            (let ((_g1536015389_
                   (lambda (_g1536115385_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1536115385_))))
              (let ((_g1535915658_
                     (lambda (_g1536115393_)
                       (if (gx#stx-pair? _g1536115393_)
                           (let ((_e1536615396_ (gx#syntax-e _g1536115393_)))
                             (let ((_hd1536715400_ (##car _e1536615396_))
                                   (_tl1536815403_ (##cdr _e1536615396_)))
                               (if (gx#stx-pair? _tl1536815403_)
                                   (let ((_e1536915406_
                                          (gx#syntax-e _tl1536815403_)))
                                     (let ((_hd1537015410_
                                            (##car _e1536915406_))
                                           (_tl1537115413_
                                            (##cdr _e1536915406_)))
                                       (if (gx#stx-pair? _hd1537015410_)
                                           (let ((_e1537215416_
                                                  (gx#syntax-e
                                                   _hd1537015410_)))
                                             (let ((_hd1537315420_
                                                    (##car _e1537215416_))
                                                   (_tl1537415423_
                                                    (##cdr _e1537215416_)))
                                               (if (gx#identifier?
                                                    _hd1537315420_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g28098_|
                                                        _hd1537315420_)
                                                       (if (gx#stx-pair?
                                                            _tl1537415423_)
                                                           (let ((_e1537515426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1537415423_)))
                     (let ((_hd1537615430_ (##car _e1537515426_))
                           (_tl1537715433_ (##cdr _e1537515426_)))
                       (if (gx#stx-pair? _tl1537715433_)
                           (let ((_e1537815436_ (gx#syntax-e _tl1537715433_)))
                             (let ((_hd1537915440_ (##car _e1537815436_))
                                   (_tl1538015443_ (##cdr _e1537815436_)))
                               (if (gx#stx-null? _tl1538015443_)
                                   (if (gx#stx-pair? _tl1537115413_)
                                       (let ((_e1538115446_
                                              (gx#syntax-e _tl1537115413_)))
                                         (let ((_hd1538215450_
                                                (##car _e1538115446_))
                                               (_tl1538315453_
                                                (##cdr _e1538115446_)))
                                           ((lambda (_L15456_
                                                     _L15458_
                                                     _L15459_
                                                     _L15460_)
                                              (if (if (gx#identifier? _L15460_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15459_)
                                                          (gx#stx-plist?
                                                           _L15456_
                                                           _method-opt?15358_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass15485_
                                                         (gx#syntax-local-value
                                                          _L15459_)))
                                                    (let ((_rebind?15488_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15456_))
                       '#t
                       '#f)))
              (let ((_no-cache?15491_
                     (if (gx#stx-e (gx#stx-getq 'no-cache: _L15456_))
                         '#t
                         '#f)))
                (let ((_g1549415502_
                       (lambda (_g1549515498_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1549515498_))))
                  (let ((_g1549315654_
                         (lambda (_g1549515506_)
                           ((lambda (_L15509_)
                              (let ()
                                (let ((_g1552415532_
                                       (lambda (_g1552515528_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1552515528_))))
                                  (let ((_g1552315650_
                                         (lambda (_g1552515536_)
                                           ((lambda (_L15539_)
                                              (let ()
                                                (let ((_g1555215560_
                                                       (lambda (_g1555315556_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1555315556_))))
                                                  (let ((_g1555115646_
                                                         (lambda (_g1555315564_)
                                                           ((lambda (_L15567_)
                                                              (let ()
                                                                (let ((_g1558015588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1558115584_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1558115584_))))
                          (let ((_g1557915642_
                                 (lambda (_g1558115592_)
                                   ((lambda (_L15595_)
                                      (let ()
                                        (let ((_g1560815616_
                                               (lambda (_g1560915612_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1560915612_))))
                                          (let ((_g1560715638_
                                                 (lambda (_g1560915620_)
                                                   ((lambda (_L15623_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap15356_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15567_ (cons _L15623_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1560915620_))))
                                            (_g1560715638_
                                             (_wrap15356_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L15509_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L15460_ '()))
                        (cons _L15539_ (cons _L15595_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1558115592_))))
                            (_g1557915642_ _rebind?15488_)))))
                    _g1555315564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1555115646_
                                                     (_wrap15356_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L15539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15458_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1552515536_))))
                                    (_g1552315650_
                                     (gx#stx-identifier
                                      _L15460_
                                      _L15459_
                                      '"::"
                                      _L15460_))))))
                            _g1549515506_))))
                    (_g1549315654_
                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                      _klass15485_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1536015389_
                                                   _g1536115393_)))
                                            _tl1538315453_
                                            _hd1538215450_
                                            _hd1537915440_
                                            _hd1537615430_)))
                                       (_g1536015389_ _g1536115393_))
                                   (_g1536015389_ _g1536115393_))))
                           (_g1536015389_ _g1536115393_))))
                   (_g1536015389_ _g1536115393_))
               (_g1536015389_ _g1536115393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536015389_
                                                    _g1536115393_))))
                                           (_g1536015389_ _g1536115393_))))
                                   (_g1536015389_ _g1536115393_))))
                           (_g1536015389_ _g1536115393_)))))
                (_g1535915658_ _stx15353_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx15668_)
        (let ((_g1567315722_
               (lambda (_g1567415718_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1567415718_))))
          (let ((_g1567215821_
                 (lambda (_g1567415726_)
                   (if (gx#stx-pair? _g1567415726_)
                       (let ((_e1569915729_ (gx#syntax-e _g1567415726_)))
                         (let ((_hd1570015733_ (##car _e1569915729_))
                               (_tl1570115736_ (##cdr _e1569915729_)))
                           (if (gx#stx-pair? _tl1570115736_)
                               (let ((_e1570215739_
                                      (gx#syntax-e _tl1570115736_)))
                                 (let ((_hd1570315743_ (##car _e1570215739_))
                                       (_tl1570415746_ (##cdr _e1570215739_)))
                                   (if (gx#stx-pair? _tl1570415746_)
                                       (let ((_e1570515749_
                                              (gx#syntax-e _tl1570415746_)))
                                         (let ((_hd1570615753_
                                                (##car _e1570515749_))
                                               (_tl1570715756_
                                                (##cdr _e1570515749_)))
                                           (if (gx#stx-pair/null?
                                                _tl1570715756_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1570715756_)
                                                         '0)
                                                   (let ((_g28099_
                                                          (gx#syntax-split-splice
                                                           _tl1570715756_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28100_
                                                              (values-count
                                                               _g28099_)))
                                                         (if (not (fx= _g28100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28100_)))
               (let ((_target1570815759_ (values-ref _g28099_ 0))
                     (_tl1571015762_ (values-ref _g28099_ 1)))
                 (if (gx#stx-null? _tl1571015762_)
                     (letrec ((_loop1571115765_
                               (lambda (_hd1570915769_ _arg1571515772_)
                                 (if (gx#stx-pair? _hd1570915769_)
                                     (let ((_e1571215775_
                                            (gx#syntax-e _hd1570915769_)))
                                       (let ((_lp-hd1571315779_
                                              (##car _e1571215775_))
                                             (_lp-tl1571415782_
                                              (##cdr _e1571215775_)))
                                         (_loop1571115765_
                                          _lp-tl1571415782_
                                          (cons _lp-hd1571315779_
                                                _arg1571515772_))))
                                     (let ((_arg1571615785_
                                            (reverse _arg1571515772_)))
                                       ((lambda (_L15789_ _L15791_ _L15792_)
                                          (if (gx#identifier? _L15792_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L15791_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L15792_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1581215815_ _g1581315818_)
                                   (cons _g1581215815_ _g1581315818_))
                                 '()
                                 _L15789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1567315722_ _g1567415726_)))
                                        _arg1571615785_
                                        _hd1570615753_
                                        _hd1570315743_))))))
                       (_loop1571115765_ _target1570815759_ '()))
                     (_g1567315722_ _g1567415726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1567315722_
                                                    _g1567415726_))
                                               (_g1567315722_ _g1567415726_))))
                                       (_g1567315722_ _g1567415726_))))
                               (_g1567315722_ _g1567415726_))))
                       (_g1567315722_ _g1567415726_)))))
            (let ((_g1567115927_
                   (lambda (_g1567415825_)
                     (if (gx#stx-pair? _g1567415825_)
                         (let ((_e1567815828_ (gx#syntax-e _g1567415825_)))
                           (let ((_hd1567915832_ (##car _e1567815828_))
                                 (_tl1568015835_ (##cdr _e1567815828_)))
                             (if (gx#stx-pair? _tl1568015835_)
                                 (let ((_e1568115838_
                                        (gx#syntax-e _tl1568015835_)))
                                   (let ((_hd1568215842_ (##car _e1568115838_))
                                         (_tl1568315845_
                                          (##cdr _e1568115838_)))
                                     (if (gx#stx-pair? _tl1568315845_)
                                         (let ((_e1568415848_
                                                (gx#syntax-e _tl1568315845_)))
                                           (let ((_hd1568515852_
                                                  (##car _e1568415848_))
                                                 (_tl1568615855_
                                                  (##cdr _e1568415848_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1568615855_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1568615855_)
                                                           '0)
                                                     (let ((_g28101_
                                                            (gx#syntax-split-splice
                                                             _tl1568615855_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28102_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28101_)))
                   (if (not (fx= _g28102_ 2))
                       (error "Context expects 2 values" _g28102_)))
                 (let ((_target1568715858_ (values-ref _g28101_ 0))
                       (_tl1568915861_ (values-ref _g28101_ 1)))
                   (if (gx#stx-null? _tl1568915861_)
                       (letrec ((_loop1569015864_
                                 (lambda (_hd1568815868_ _arg1569415871_)
                                   (if (gx#stx-pair? _hd1568815868_)
                                       (let ((_e1569115874_
                                              (gx#syntax-e _hd1568815868_)))
                                         (let ((_lp-hd1569215878_
                                                (##car _e1569115874_))
                                               (_lp-tl1569315881_
                                                (##cdr _e1569115874_)))
                                           (_loop1569015864_
                                            _lp-tl1569315881_
                                            (cons _lp-hd1569215878_
                                                  _arg1569415871_))))
                                       (let ((_arg1569515884_
                                              (reverse _arg1569415871_)))
                                         ((lambda (_L15888_ _L15890_ _L15891_)
                                            (if (if (gx#identifier? _L15891_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1591015913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1591115916_)
                        (cons _g1591015913_ _g1591115916_))
                      '()
                      _L15888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L15890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L15891_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1591815921_
                                                              _g1591915924_)
                                                       (cons _g1591815921_
                                                             _g1591915924_))
                                                     '()
                                                     _L15888_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1567215821_ _g1567415825_)))
                                          _arg1569515884_
                                          _hd1568515852_
                                          _hd1568215842_))))))
                         (_loop1569015864_ _target1568715858_ '()))
                       (_g1567215821_ _g1567415825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1567215821_
                                                      _g1567415825_))
                                                 (_g1567215821_
                                                  _g1567415825_))))
                                         (_g1567215821_ _g1567415825_))))
                                 (_g1567215821_ _g1567415825_))))
                         (_g1567215821_ _g1567415825_)))))
              (_g1567115927_ _$stx15668_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx15933_)
        (let ((_g1593815978_
               (lambda (_g1593915974_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1593915974_))))
          (let ((_g1593716079_
                 (lambda (_g1593915982_)
                   (if (gx#stx-pair? _g1593915982_)
                       (let ((_e1595515985_ (gx#syntax-e _g1593915982_)))
                         (let ((_hd1595615989_ (##car _e1595515985_))
                               (_tl1595715992_ (##cdr _e1595515985_)))
                           (if (gx#stx-pair? _tl1595715992_)
                               (let ((_e1595815995_
                                      (gx#syntax-e _tl1595715992_)))
                                 (let ((_hd1595915999_ (##car _e1595815995_))
                                       (_tl1596016002_ (##cdr _e1595815995_)))
                                   (if (gx#stx-pair? _tl1596016002_)
                                       (let ((_e1596116005_
                                              (gx#syntax-e _tl1596016002_)))
                                         (let ((_hd1596216009_
                                                (##car _e1596116005_))
                                               (_tl1596316012_
                                                (##cdr _e1596116005_)))
                                           (if (gx#stx-pair/null?
                                                _tl1596316012_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1596316012_)
                                                         '0)
                                                   (let ((_g28103_
                                                          (gx#syntax-split-splice
                                                           _tl1596316012_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28104_
                                                              (values-count
                                                               _g28103_)))
                                                         (if (not (fx= _g28104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28104_)))
               (let ((_target1596416015_ (values-ref _g28103_ 0))
                     (_tl1596616018_ (values-ref _g28103_ 1)))
                 (if (gx#stx-null? _tl1596616018_)
                     (letrec ((_loop1596716021_
                               (lambda (_hd1596516025_ _rest1597116028_)
                                 (if (gx#stx-pair? _hd1596516025_)
                                     (let ((_e1596816031_
                                            (gx#syntax-e _hd1596516025_)))
                                       (let ((_lp-hd1596916035_
                                              (##car _e1596816031_))
                                             (_lp-tl1597016038_
                                              (##cdr _e1596816031_)))
                                         (_loop1596716021_
                                          _lp-tl1597016038_
                                          (cons _lp-hd1596916035_
                                                _rest1597116028_))))
                                     (let ((_rest1597216041_
                                            (reverse _rest1597116028_)))
                                       ((lambda (_L16045_
                                                 _L16047_
                                                 _L16048_
                                                 _L16049_)
                                          (cons _L16049_
                                                (cons (cons _L16049_
                                                            (cons _L16048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16047_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1607016073_ _g1607116076_)
                         (cons _g1607016073_ _g1607116076_))
                       '()
                       _L16045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1597216041_
                                        _hd1596216009_
                                        _hd1595915999_
                                        _hd1595615989_))))))
                       (_loop1596716021_ _target1596416015_ '()))
                     (_g1593815978_ _g1593915982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1593815978_
                                                    _g1593915982_))
                                               (_g1593815978_ _g1593915982_))))
                                       (_g1593815978_ _g1593915982_))))
                               (_g1593815978_ _g1593915982_))))
                       (_g1593815978_ _g1593915982_)))))
            (let ((_g1593616133_
                   (lambda (_g1593916083_)
                     (if (gx#stx-pair? _g1593916083_)
                         (let ((_e1594216086_ (gx#syntax-e _g1593916083_)))
                           (let ((_hd1594316090_ (##car _e1594216086_))
                                 (_tl1594416093_ (##cdr _e1594216086_)))
                             (if (gx#stx-pair? _tl1594416093_)
                                 (let ((_e1594516096_
                                        (gx#syntax-e _tl1594416093_)))
                                   (let ((_hd1594616100_ (##car _e1594516096_))
                                         (_tl1594716103_
                                          (##cdr _e1594516096_)))
                                     (if (gx#stx-pair? _tl1594716103_)
                                         (let ((_e1594816106_
                                                (gx#syntax-e _tl1594716103_)))
                                           (let ((_hd1594916110_
                                                  (##car _e1594816106_))
                                                 (_tl1595016113_
                                                  (##cdr _e1594816106_)))
                                             (if (gx#stx-null? _tl1595016113_)
                                                 ((lambda (_L16116_ _L16118_)
                                                    (if (gx#identifier?
                                                         _L16116_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16116_ '()))
                                  '())))
                (_g1593716079_ _g1593916083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1594916110_
                                                  _hd1594616100_)
                                                 (_g1593716079_
                                                  _g1593916083_))))
                                         (_g1593716079_ _g1593916083_))))
                                 (_g1593716079_ _g1593916083_))))
                         (_g1593716079_ _g1593916083_)))))
              (_g1593616133_ _$stx15933_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16138_)
        (let ((_g1614316190_
               (lambda (_g1614416186_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1614416186_))))
          (let ((_g1614216303_
                 (lambda (_g1614416194_)
                   (if (gx#stx-pair? _g1614416194_)
                       (let ((_e1616416197_ (gx#syntax-e _g1614416194_)))
                         (let ((_hd1616516201_ (##car _e1616416197_))
                               (_tl1616616204_ (##cdr _e1616416197_)))
                           (if (gx#stx-pair? _tl1616616204_)
                               (let ((_e1616716207_
                                      (gx#syntax-e _tl1616616204_)))
                                 (let ((_hd1616816211_ (##car _e1616716207_))
                                       (_tl1616916214_ (##cdr _e1616716207_)))
                                   (if (gx#stx-pair? _tl1616916214_)
                                       (let ((_e1617016217_
                                              (gx#syntax-e _tl1616916214_)))
                                         (let ((_hd1617116221_
                                                (##car _e1617016217_))
                                               (_tl1617216224_
                                                (##cdr _e1617016217_)))
                                           (if (gx#stx-pair/null?
                                                _tl1617216224_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1617216224_)
                                                         '1)
                                                   (let ((_g28105_
                                                          (gx#syntax-split-splice
                                                           _tl1617216224_
                                                           '1)))
                                                     (begin
                                                       (let ((_g28106_
                                                              (values-count
                                                               _g28105_)))
                                                         (if (not (fx= _g28106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28106_)))
               (let ((_target1617316227_ (values-ref _g28105_ 0))
                     (_tl1617516230_ (values-ref _g28105_ 1)))
                 (if (gx#stx-pair? _tl1617516230_)
                     (let ((_e1618216233_ (gx#syntax-e _tl1617516230_)))
                       (let ((_hd1618316237_ (##car _e1618216233_))
                             (_tl1618416240_ (##cdr _e1618216233_)))
                         (if (gx#stx-null? _tl1618416240_)
                             (letrec ((_loop1617616243_
                                       (lambda (_hd1617416247_
                                                _path1618016250_)
                                         (if (gx#stx-pair? _hd1617416247_)
                                             (let ((_e1617716253_
                                                    (gx#syntax-e
                                                     _hd1617416247_)))
                                               (let ((_lp-hd1617816257_
                                                      (##car _e1617716253_))
                                                     (_lp-tl1617916260_
                                                      (##cdr _e1617716253_)))
                                                 (_loop1617616243_
                                                  _lp-tl1617916260_
                                                  (cons _lp-hd1617816257_
                                                        _path1618016250_))))
                                             (let ((_path1618116263_
                                                    (reverse _path1618016250_)))
                                               ((lambda (_L16267_
                                                         _L16269_
                                                         _L16270_
                                                         _L16271_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'slot-set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@)
                            (cons _L16271_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1629416297_
                                                    _g1629516300_)
                                             (cons _g1629416297_
                                                   _g1629516300_))
                                           '()
                                           _L16269_))))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16270_ '()))
                            (cons _L16267_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1618316237_
                                                _path1618116263_
                                                _hd1617116221_
                                                _hd1616816211_))))))
                               (_loop1617616243_ _target1617316227_ '()))
                             (_g1614316190_ _g1614416194_))))
                     (_g1614316190_ _g1614416194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1614316190_
                                                    _g1614416194_))
                                               (_g1614316190_ _g1614416194_))))
                                       (_g1614316190_ _g1614416194_))))
                               (_g1614316190_ _g1614416194_))))
                       (_g1614316190_ _g1614416194_)))))
            (let ((_g1614116371_
                   (lambda (_g1614416307_)
                     (if (gx#stx-pair? _g1614416307_)
                         (let ((_e1614816310_ (gx#syntax-e _g1614416307_)))
                           (let ((_hd1614916314_ (##car _e1614816310_))
                                 (_tl1615016317_ (##cdr _e1614816310_)))
                             (if (gx#stx-pair? _tl1615016317_)
                                 (let ((_e1615116320_
                                        (gx#syntax-e _tl1615016317_)))
                                   (let ((_hd1615216324_ (##car _e1615116320_))
                                         (_tl1615316327_
                                          (##cdr _e1615116320_)))
                                     (if (gx#stx-pair? _tl1615316327_)
                                         (let ((_e1615416330_
                                                (gx#syntax-e _tl1615316327_)))
                                           (let ((_hd1615516334_
                                                  (##car _e1615416330_))
                                                 (_tl1615616337_
                                                  (##cdr _e1615416330_)))
                                             (if (gx#stx-pair? _tl1615616337_)
                                                 (let ((_e1615716340_
                                                        (gx#syntax-e
                                                         _tl1615616337_)))
                                                   (let ((_hd1615816344_
                                                          (##car _e1615716340_))
                                                         (_tl1615916347_
                                                          (##cdr _e1615716340_)))
                                                     (if (gx#stx-null?
                                                          _tl1615916347_)
                                                         ((lambda (_L16350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16352_
                           _L16353_)
                    (if (gx#identifier? _L16352_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16353_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16352_ '()))
                                          (cons _L16350_ '()))))
                        (_g1614216303_ _g1614416307_)))
                  _hd1615816344_
                  _hd1615516334_
                  _hd1615216324_)
                 (_g1614216303_ _g1614416307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1614216303_
                                                  _g1614416307_))))
                                         (_g1614216303_ _g1614416307_))))
                                 (_g1614216303_ _g1614416307_))))
                         (_g1614216303_ _g1614416307_)))))
              (_g1614116371_ _$stx16138_))))))))
