(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g31369_|
    (gx#make-syntax-quote '@method #f (gx#current-expander-context) '()))
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
      (lambda _$args16280_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args16280_)))
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
      (lambda _$args16276_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args16276_)))
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
      (lambda _$args16272_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args16272_)))
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
      (lambda _$args16268_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args16268_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f))
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
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args16264_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args16264_)))
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
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args16260_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args16260_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1623216246_
             (lambda (_stx16234_ _is?16236_)
               (if (gx#identifier? _stx16234_)
                   (let ((_e1623716239_
                          (gx#syntax-local-value _stx16234_ false)))
                     (if _e1623716239_
                         (let ((_e16243_ _e1623716239_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e16243_)
                               (_is?16236_ _e16243_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g31355_
          (let ((_g31354_ (length _g31355_)))
            (cond ((fx= _g31354_ 1)
                   (apply (lambda (_stx16250_)
                            (let ((_is?16253_ true))
                              (_opt-lambda1623216246_ _stx16250_ _is?16253_)))
                          _g31355_))
                  ((fx= _g31354_ 2) (apply _opt-lambda1623216246_ _g31355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g31355_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx16230_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16230_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx16227_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16227_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id16221_)
        (if _id16221_
            (let ((_info16224_ (gx#syntax-local-value _id16221_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info16224_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info16224_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self15986_ _stx15988_)
        (let* ((_g1599016010_
                (lambda (_g1599116006_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1599116006_)))
               (_g1598916217_
                (lambda (_g1599116014_)
                  (if (gx#stx-pair? _g1599116014_)
                      (let ((_e1599316017_ (gx#syntax-e _g1599116014_)))
                        (let ((_hd1599416021_ (##car _e1599316017_))
                              (_tl1599516024_ (##cdr _e1599316017_)))
                          (if (gx#stx-pair/null? _tl1599516024_)
                              (if (fx>= (gx#stx-length _tl1599516024_) '0)
                                  (let ((_g31356_
                                         (gx#syntax-split-splice
                                          _tl1599516024_
                                          '0)))
                                    (begin
                                      (let ((_g31357_ (values-count _g31356_)))
                                        (if (not (fx= _g31357_ 2))
                                            (error "Context expects 2 values"
                                                   _g31357_)))
                                      (let ((_target1599616027_
                                             (values-ref _g31356_ 0))
                                            (_tl1599816030_
                                             (values-ref _g31356_ 1)))
                                        (if (gx#stx-null? _tl1599816030_)
                                            (letrec ((_loop1599916033_
                                                      (lambda (_hd1599716037_
                                                               _arg1600316040_)
                                                        (if (gx#stx-pair?
                                                             _hd1599716037_)
                                                            (let ((_e1600016043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1599716037_)))
                      (let ((_lp-hd1600116047_ (##car _e1600016043_))
                            (_lp-tl1600216050_ (##cdr _e1600016043_)))
                        (_loop1599916033_
                         _lp-tl1600216050_
                         (cons _lp-hd1600116047_ _arg1600316040_))))
                    (let ((_arg1600416053_ (reverse _arg1600316040_)))
                      ((lambda (_L16057_)
                         (let* ((_g1607316104_
                                 (lambda (_g1607416100_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1607416100_)))
                                (_g1607216213_
                                 (lambda (_g1607416108_)
                                   (if (gx#stx-pair? _g1607416108_)
                                       (let ((_e1608116111_
                                              (gx#syntax-e _g1607416108_)))
                                         (let ((_hd1608216115_
                                                (##car _e1608116111_))
                                               (_tl1608316118_
                                                (##cdr _e1608116111_)))
                                           (if (gx#stx-pair? _tl1608316118_)
                                               (let ((_e1608416121_
                                                      (gx#syntax-e
                                                       _tl1608316118_)))
                                                 (let ((_hd1608516125_
                                                        (##car _e1608416121_))
                                                       (_tl1608616128_
                                                        (##cdr _e1608416121_)))
                                                   (if (gx#stx-pair?
                                                        _tl1608616128_)
                                                       (let ((_e1608716131_
                                                              (gx#syntax-e
                                                               _tl1608616128_)))
                                                         (let ((_hd1608816135_
                                                                (##car _e1608716131_))
                                                               (_tl1608916138_
                                                                (##cdr _e1608716131_)))
                                                           (if (gx#stx-pair?
                                                                _tl1608916138_)
                                                               (let ((_e1609016141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1608916138_)))
                         (let ((_hd1609116145_ (##car _e1609016141_))
                               (_tl1609216148_ (##cdr _e1609016141_)))
                           (if (gx#stx-pair? _tl1609216148_)
                               (let ((_e1609316151_
                                      (gx#syntax-e _tl1609216148_)))
                                 (let ((_hd1609416155_ (##car _e1609316151_))
                                       (_tl1609516158_ (##cdr _e1609316151_)))
                                   (if (gx#stx-pair? _tl1609516158_)
                                       (let ((_e1609616161_
                                              (gx#syntax-e _tl1609516158_)))
                                         (let ((_hd1609716165_
                                                (##car _e1609616161_))
                                               (_tl1609816168_
                                                (##cdr _e1609616161_)))
                                           (if (gx#stx-null? _tl1609816168_)
                                               ((lambda (_L16171_
                                                         _L16173_
                                                         _L16174_
                                                         _L16175_
                                                         _L16176_
                                                         _L16177_)
                                                  (let ()
                                                    (cons _L16175_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1620416207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1620516210_)
                             (cons _g1620416207_ _g1620516210_))
                           '()
                           _L16057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1609716165_
                                                _hd1609416155_
                                                _hd1609116145_
                                                _hd1608816135_
                                                _hd1608516125_
                                                _hd1608216115_)
                                               (_g1607316104_ _g1607416108_))))
                                       (_g1607316104_ _g1607416108_))))
                               (_g1607316104_ _g1607416108_))))
                       (_g1607316104_ _g1607416108_))))
               (_g1607316104_ _g1607416108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1607316104_ _g1607416108_))))
                                       (_g1607316104_ _g1607416108_)))))
                           (_g1607216213_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self15986_))))
                       _arg1600416053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1599916033_
                                               _target1599616027_
                                               '()))
                                            (_g1599016010_ _g1599116014_)))))
                                  (_g1599016010_ _g1599116014_))
                              (_g1599016010_ _g1599116014_))))
                      (_g1599016010_ _g1599116014_)))))
          (_g1598916217_ _stx15988_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx15977_)
        (letrec ((_body-opt?15980_
                  (lambda (_key15983_)
                    (memq (gx#stx-e _key15983_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:)))))
          (gx#stx-plist? _stx15977_ _body-opt?15980_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx14834_
               _id14836_
               _super-ref14837_
               _els14838_
               _body14839_
               _struct?14840_)
        (letrec* ((_wrap14842_
                   (lambda (_e-stx15974_)
                     (gx#stx-wrap-source
                      _e-stx15974_
                      (gx#stx-source _stx14834_))))
                  (_make-id14844_
                   (if (uninterned-symbol? (gx#stx-e _id14836_))
                       (lambda _g31358_ (gx#genident _id14836_))
                       (lambda _args15971_
                         (apply gx#stx-identifier _id14836_ _args15971_)))))
          (begin
            (gx#check-duplicate-identifiers _els14838_ _stx14834_)
            (let* ((_name14846_ (symbol->string (gx#stx-e _id14836_)))
                   (_super14849_
                    (if _struct?14840_
                        (if _super-ref14837_
                            (gx#syntax-local-value _super-ref14837_)
                            '#f)
                        (map gx#syntax-local-value _super-ref14837_)))
                   (_g1485214860_
                    (lambda (_g1485314856_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1485314856_)))
                   (_g1485115965_
                    (lambda (_g1485314864_)
                      ((lambda (_L14867_)
                         (let ()
                           (let* ((_g1488314891_
                                   (lambda (_g1488414887_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1488414887_)))
                                  (_g1488215961_
                                   (lambda (_g1488414895_)
                                     ((lambda (_L14898_)
                                        (let ()
                                          (let* ((_g1491114919_
                                                  (lambda (_g1491214915_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1491214915_)))
                                                 (_g1491015957_
                                                  (lambda (_g1491214923_)
                                                    ((lambda (_L14926_)
                                                       (let ()
                                                         (let* ((_g1493914947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1494014943_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1494014943_)))
                        (_g1493815953_
                         (lambda (_g1494014951_)
                           ((lambda (_L14954_)
                              (let ()
                                (let* ((_g1496714975_
                                        (lambda (_g1496814971_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1496814971_)))
                                       (_g1496615949_
                                        (lambda (_g1496814979_)
                                          ((lambda (_L14982_)
                                             (let ()
                                               (let* ((_g1499515003_
                                                       (lambda (_g1499614999_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1499614999_)))
                                                      (_g1499415945_
                                                       (lambda (_g1499615007_)
                                                         ((lambda (_L15010_)
                                                            (let ()
                                                              (let* ((_g1502315040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1502415036_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1502415036_)))
                             (_g1502215941_
                              (lambda (_g1502415044_)
                                (if (gx#stx-pair/null? _g1502415044_)
                                    (if (fx>= (gx#stx-length _g1502415044_) '0)
                                        (let ((_g31359_
                                               (gx#syntax-split-splice
                                                _g1502415044_
                                                '0)))
                                          (begin
                                            (let ((_g31360_
                                                   (values-count _g31359_)))
                                              (if (not (fx= _g31360_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31360_)))
                                            (let ((_target1502615047_
                                                   (values-ref _g31359_ 0))
                                                  (_tl1502815050_
                                                   (values-ref _g31359_ 1)))
                                              (if (gx#stx-null? _tl1502815050_)
                                                  (letrec ((_loop1502915053_
                                                            (lambda (_hd1502715057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1503315060_)
                      (if (gx#stx-pair? _hd1502715057_)
                          (let ((_e1503015063_ (gx#syntax-e _hd1502715057_)))
                            (let ((_lp-hd1503115067_ (##car _e1503015063_))
                                  (_lp-tl1503215070_ (##cdr _e1503015063_)))
                              (_loop1502915053_
                               _lp-tl1503215070_
                               (cons _lp-hd1503115067_ _attr1503315060_))))
                          (let ((_attr1503415073_ (reverse _attr1503315060_)))
                            ((lambda (_L15077_)
                               (let ()
                                 (let* ((_g1509415111_
                                         (lambda (_g1509515107_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1509515107_)))
                                        (_g1509315932_
                                         (lambda (_g1509515115_)
                                           (if (gx#stx-pair/null?
                                                _g1509515115_)
                                               (if (fx>= (gx#stx-length
                                                          _g1509515115_)
                                                         '0)
                                                   (let ((_g31361_
                                                          (gx#syntax-split-splice
                                                           _g1509515115_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31362_
                                                              (values-count
                                                               _g31361_)))
                                                         (if (not (fx= _g31362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31362_)))
               (let ((_target1509715118_ (values-ref _g31361_ 0))
                     (_tl1509915121_ (values-ref _g31361_ 1)))
                 (if (gx#stx-null? _tl1509915121_)
                     (letrec ((_loop1510015124_
                               (lambda (_hd1509815128_ _getf1510415131_)
                                 (if (gx#stx-pair? _hd1509815128_)
                                     (let ((_e1510115134_
                                            (gx#syntax-e _hd1509815128_)))
                                       (let ((_lp-hd1510215138_
                                              (##car _e1510115134_))
                                             (_lp-tl1510315141_
                                              (##cdr _e1510115134_)))
                                         (_loop1510015124_
                                          _lp-tl1510315141_
                                          (cons _lp-hd1510215138_
                                                _getf1510415131_))))
                                     (let ((_getf1510515144_
                                            (reverse _getf1510415131_)))
                                       ((lambda (_L15148_)
                                          (let ()
                                            (let* ((_g1516515182_
                                                    (lambda (_g1516615178_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1516615178_)))
                                                   (_g1516415923_
                                                    (lambda (_g1516615186_)
                                                      (if (gx#stx-pair/null?
                                                           _g1516615186_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1516615186_)
                            '0)
                      (let ((_g31363_
                             (gx#syntax-split-splice _g1516615186_ '0)))
                        (begin
                          (let ((_g31364_ (values-count _g31363_)))
                            (if (not (fx= _g31364_ 2))
                                (error "Context expects 2 values" _g31364_)))
                          (let ((_target1516815189_ (values-ref _g31363_ 0))
                                (_tl1517015192_ (values-ref _g31363_ 1)))
                            (if (gx#stx-null? _tl1517015192_)
                                (letrec ((_loop1517115195_
                                          (lambda (_hd1516915199_
                                                   _setf1517515202_)
                                            (if (gx#stx-pair? _hd1516915199_)
                                                (let ((_e1517215205_
                                                       (gx#syntax-e
                                                        _hd1516915199_)))
                                                  (let ((_lp-hd1517315209_
                                                         (##car _e1517215205_))
                                                        (_lp-tl1517415212_
                                                         (##cdr _e1517215205_)))
                                                    (_loop1517115195_
                                                     _lp-tl1517415212_
                                                     (cons _lp-hd1517315209_
                                                           _setf1517515202_))))
                                                (let ((_setf1517615215_
                                                       (reverse _setf1517515202_)))
                                                  ((lambda (_L15219_)
                                                     (let ()
                                                       (let* ((_type-attr15261_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els14838_)
                           '()
                           (if _struct?14840_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15219_
                                              _L15148_)
                                             (foldr (lambda (_g1523515239_
                                                             _g1523615242_
                                                             _g1523715244_)
                                                      (cons (cons _g1523615242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1523515239_ '()))
                    _g1523715244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15219_
                                                    _L15148_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15219_
                                              _L15148_
                                              _L15077_)
                                             (foldr (lambda (_g1524615251_
                                                             _g1524715254_
                                                             _g1524815256_
                                                             _g1524915258_)
                                                      (cons (cons _g1524815256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1524715254_ (cons _g1524615251_ '())))
                    _g1524915258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15219_
                                                    _L15148_
                                                    _L15077_))
                                           '())))))
                      (_type-name15268_
                       (cons 'name:
                             (cons (let ((_$e15264_
                                          (gx#stx-getq 'name: _body14839_)))
                                     (if _$e15264_ _$e15264_ _id14836_))
                                   '())))
                      (_type-id15283_
                       (let ((_$e15279_
                              (let ((_e1527015272_
                                     (gx#stx-getq 'id: _body14839_)))
                                (if _e1527015272_
                                    (let ((_e15276_ _e1527015272_))
                                      (cons 'id: (cons _e15276_ '())))
                                    '#f))))
                         (if _$e15279_ _$e15279_ '())))
                      (_type-ctor15298_
                       (let ((_$e15294_
                              (let ((_e1528515287_
                                     (gx#stx-getq 'constructor: _body14839_)))
                                (if _e1528515287_
                                    (let ((_e15291_ _e1528515287_))
                                      (cons 'constructor: (cons _e15291_ '())))
                                    '#f))))
                         (if _$e15294_ _$e15294_ '())))
                      (_plist15316_
                       (let* ((_plist15305_
                               (let ((_$e15301_
                                      (gx#stx-getq 'plist: _body14839_)))
                                 (if _$e15301_ _$e15301_ '())))
                              (_plist15308_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body14839_))
                                   (cons (cons 'transparent: '#t) _plist15305_)
                                   _plist15305_))
                              (_plist15311_
                               (if (gx#stx-e (gx#stx-getq 'final: _body14839_))
                                   (cons (cons 'final: '#t) _plist15308_)
                                   _plist15308_)))
                         _plist15311_))
                      (_type-plist15356_
                       (if (null? _plist15316_)
                           _plist15316_
                           (let* ((_g1531915327_
                                   (lambda (_g1532015323_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1532015323_)))
                                  (_g1531815352_
                                   (lambda (_g1532015331_)
                                     ((lambda (_L15334_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L15334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1532015331_))))
                             (_g1531815352_ _plist15316_))))
                      (_type-unchecked15371_
                       (let ((_$e15367_
                              (let ((_e1535815360_
                                     (gx#stx-getq 'unchecked: _body14839_)))
                                (if _e1535815360_
                                    (let ((_e15364_ _e1535815360_))
                                      (cons 'unchecked: (cons _e15364_ '())))
                                    '#f))))
                         (if _$e15367_ _$e15367_ '())))
                      (_g1537415391_
                       (lambda (_g1537515387_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1537515387_)))
                      (_g1537315919_
                       (lambda (_g1537515395_)
                         (if (gx#stx-pair/null? _g1537515395_)
                             (if (fx>= (gx#stx-length _g1537515395_) '0)
                                 (let ((_g31365_
                                        (gx#syntax-split-splice
                                         _g1537515395_
                                         '0)))
                                   (begin
                                     (let ((_g31366_ (values-count _g31365_)))
                                       (if (not (fx= _g31366_ 2))
                                           (error "Context expects 2 values"
                                                  _g31366_)))
                                     (let ((_target1537715398_
                                            (values-ref _g31365_ 0))
                                           (_tl1537915401_
                                            (values-ref _g31365_ 1)))
                                       (if (gx#stx-null? _tl1537915401_)
                                           (letrec ((_loop1538015404_
                                                     (lambda (_hd1537815408_
                                                              _type-body1538415411_)
                                                       (if (gx#stx-pair?
                                                            _hd1537815408_)
                                                           (let ((_e1538115414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1537815408_)))
                     (let ((_lp-hd1538215418_ (##car _e1538115414_))
                           (_lp-tl1538315421_ (##cdr _e1538115414_)))
                       (_loop1538015404_
                        _lp-tl1538315421_
                        (cons _lp-hd1538215418_ _type-body1538415411_))))
                   (let ((_type-body1538515424_
                          (reverse _type-body1538415411_)))
                     ((lambda (_L15428_)
                        (let ()
                          (let* ((_g1544515453_
                                  (lambda (_g1544615449_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1544615449_)))
                                 (_g1544415907_
                                  (lambda (_g1544615457_)
                                    ((lambda (_L15460_)
                                       (let ()
                                         (let* ((_g1547315481_
                                                 (lambda (_g1547415477_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1547415477_)))
                                                (_g1547215903_
                                                 (lambda (_g1547415485_)
                                                   ((lambda (_L15488_)
                                                      (let ()
                                                        (let* ((_g1550115509_
                                                                (lambda (_g1550215505_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1550215505_)))
                       (_g1550015817_
                        (lambda (_g1550215513_)
                          ((lambda (_L15516_)
                             (let ()
                               (let* ((_g1552915537_
                                       (lambda (_g1553015533_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1553015533_)))
                                      (_g1552815813_
                                       (lambda (_g1553015541_)
                                         ((lambda (_L15544_)
                                            (let ()
                                              (let* ((_g1555715565_
                                                      (lambda (_g1555815561_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1555815561_)))
                                                     (_g1555615809_
                                                      (lambda (_g1555815569_)
                                                        ((lambda (_L15572_)
                                                           (let ()
                                                             (let* ((_g1558515593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1558615589_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1558615589_)))
                            (_g1558415767_
                             (lambda (_g1558615597_)
                               ((lambda (_L15600_)
                                  (let ()
                                    (let* ((_g1561315621_
                                            (lambda (_g1561415617_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1561415617_)))
                                           (_g1561215763_
                                            (lambda (_g1561415625_)
                                              ((lambda (_L15628_)
                                                 (let ()
                                                   (let* ((_g1564115649_
                                                           (lambda (_g1564215645_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1564215645_)))
                                                          (_g1564015759_
                                                           (lambda (_g1564215653_)
                                                             ((lambda (_L15656_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1566915677_
                                  (lambda (_g1567015673_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1567015673_)))
                                 (_g1566815755_
                                  (lambda (_g1567015681_)
                                    ((lambda (_L15684_)
                                       (let ()
                                         (let* ((_g1569715705_
                                                 (lambda (_g1569815701_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1569815701_)))
                                                (_g1569615727_
                                                 (lambda (_g1569815709_)
                                                   ((lambda (_L15712_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap14842_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15460_ (cons _L15712_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1569815709_))))
                                           (_g1569615727_
                                            (_wrap14842_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L14898_
                                                         (cons (cons _L15488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L14926_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L15516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L14926_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L14954_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L14982_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1573015737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1573115740_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1573015737_ '()))
                                _g1573115740_))
                        '()
                        _L15148_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1573215743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1573315746_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1573215743_ '()))
                                      _g1573315746_))
                              '()
                              _L15219_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L15544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L15572_ '()))
                                     (cons _L15600_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L15628_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L15656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15684_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1573415749_
                                                         _g1573515752_)
                                                  (cons _g1573415749_
                                                        _g1573515752_))
                                                '()
                                                _L15077_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1567015681_))))
                            (_g1566815755_ _plist15316_))))
                      _g1564215653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1564015759_
                                                      (if (not (null? _type-ctor15298_))
                                                          (cadr _type-ctor15298_)
                                                          '#f)))))
                                               _g1561415625_))))
                                      (_g1561215763_
                                       (cadr _type-name15268_)))))
                                _g1558615597_))))
                       (_g1558415767_
                        (let ((_quote-e15806_
                               (lambda (_x-ref15771_)
                                 (if _x-ref15771_
                                     (let* ((_g1577415782_
                                             (lambda (_g1577515778_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1577515778_)))
                                            (_g1577315802_
                                             (lambda (_g1577515786_)
                                               ((lambda (_L15789_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L15789_
                                                                '()))))
                                                _g1577515786_))))
                                       (_g1577315802_ _x-ref15771_))
                                     '#f))))
                          (if _struct?14840_
                              (_quote-e15806_ _super-ref14837_)
                              (cons 'list
                                    (map _quote-e15806_
                                         _super-ref14837_))))))))
                 _g1555815569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1555615809_
                                                 (if (not (null? _type-id15283_))
                                                     (cadr _type-id15283_)
                                                     '#f)))))
                                          _g1553015541_))))
                                 (_g1552815813_
                                  (if _struct?14840_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1550215513_))))
                  (_g1550015817_
                   (if _struct?14840_
                       (if _super14849_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L15010_ '()))
                           '#f)
                       (let* ((_g1582115838_
                               (lambda (_g1582215834_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1582215834_)))
                              (_g1582015899_
                               (lambda (_g1582215842_)
                                 (if (gx#stx-pair/null? _g1582215842_)
                                     (if (fx>= (gx#stx-length _g1582215842_)
                                               '0)
                                         (let ((_g31367_
                                                (gx#syntax-split-splice
                                                 _g1582215842_
                                                 '0)))
                                           (begin
                                             (let ((_g31368_
                                                    (values-count _g31367_)))
                                               (if (not (fx= _g31368_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31368_)))
                                             (let ((_target1582415845_
                                                    (values-ref _g31367_ 0))
                                                   (_tl1582615848_
                                                    (values-ref _g31367_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1582615848_)
                                                   (letrec ((_loop1582715851_
                                                             (lambda (_hd1582515855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1583115858_)
                       (if (gx#stx-pair? _hd1582515855_)
                           (let ((_e1582815861_ (gx#syntax-e _hd1582515855_)))
                             (let ((_lp-hd1582915865_ (##car _e1582815861_))
                                   (_lp-tl1583015868_ (##cdr _e1582815861_)))
                               (_loop1582715851_
                                _lp-tl1583015868_
                                (cons _lp-hd1582915865_
                                      _super-id1583115858_))))
                           (let ((_super-id1583215871_
                                  (reverse _super-id1583115858_)))
                             ((lambda (_L15875_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1589015893_
                                                          _g1589115896_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1589015893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1589115896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L15875_)))))
                              _super-id1583215871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1582715851_
                                                      _target1582415845_
                                                      '()))
                                                   (_g1582115838_
                                                    _g1582215842_)))))
                                         (_g1582115838_ _g1582215842_))
                                     (_g1582115838_ _g1582215842_)))))
                         (_g1582015899_ _L15010_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1547415485_))))
                                           (_g1547215903_
                                            (if _struct?14840_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1544615457_))))
                            (_g1544415907_
                             (_wrap14842_
                              (cons _L14867_
                                    (cons _L14926_
                                          (cons _L15010_
                                                (cons _L14954_
                                                      (cons _L14982_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1591015913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1591115916_)
                               (cons _g1591015913_ _g1591115916_))
                             '()
                             _L15428_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1538515424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1538015404_
                                              _target1537715398_
                                              '()))
                                           (_g1537415391_ _g1537515395_)))))
                                 (_g1537415391_ _g1537515395_))
                             (_g1537415391_ _g1537515395_)))))
                 (_g1537315919_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked15371_
                                                     _type-plist15356_)
                                              _type-ctor15298_)
                                       _type-name15268_)
                                _type-id15283_)
                         _type-attr15261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1517615215_))))))
                                  (_loop1517115195_ _target1516815189_ '()))
                                (_g1516515182_ _g1516615186_)))))
                      (_g1516515182_ _g1516615186_))
                  (_g1516515182_ _g1516615186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1516415923_
                                               (gx#stx-map
                                                (lambda (_g1592615928_)
                                                  (_make-id14844_
                                                   _name14846_
                                                   '"-"
                                                   _g1592615928_
                                                   '"-set!"))
                                                _els14838_)))))
                                        _getf1510515144_))))))
                       (_loop1510015124_ _target1509715118_ '()))
                     (_g1509415111_ _g1509515115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1509415111_
                                                    _g1509515115_))
                                               (_g1509415111_
                                                _g1509515115_)))))
                                   (_g1509315932_
                                    (gx#stx-map
                                     (lambda (_g1593515937_)
                                       (_make-id14844_
                                        _name14846_
                                        '"-"
                                        _g1593515937_))
                                     _els14838_)))))
                             _attr1503415073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1502915053_
                                                     _target1502615047_
                                                     '()))
                                                  (_g1502315040_
                                                   _g1502415044_)))))
                                        (_g1502315040_ _g1502415044_))
                                    (_g1502315040_ _g1502415044_)))))
                        (_g1502215941_ _els14838_))))
                  _g1499615007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1499415945_
                                                  (if _struct?14840_
                                                      (if _super14849_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super14849_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super14849_))))))
                                           _g1496814979_))))
                                  (_g1496615949_
                                   (_make-id14844_ _name14846_ '"?")))))
                            _g1494014951_))))
                   (_g1493815953_ (_make-id14844_ '"make-" _name14846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1491214923_))))
                                            (_g1491015957_
                                             (_make-id14844_
                                              _name14846_
                                              '"::t")))))
                                      _g1488414895_))))
                             (_g1488215961_ _id14836_))))
                       _g1485314864_))))
              (_g1485115965_
               (if _struct?14840_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx16293_)
        (letrec ((_generate16296_
                  (lambda (_hd16380_ _fields16382_ _body16383_)
                    (let* ((_g1638616401_
                            (lambda (_g1638716397_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1638716397_)))
                           (_g1638516412_
                            (lambda (_g1638716405_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16380_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16293_
                                      _hd16380_
                                      '#f
                                      _fields16382_
                                      _body16383_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16293_
                                      _hd16380_))))))
                           (_g1638416456_
                            (lambda (_g1638716416_)
                              (if (gx#stx-pair? _g1638716416_)
                                  (let ((_e1639016419_
                                         (gx#syntax-e _g1638716416_)))
                                    (let ((_hd1639116423_
                                           (##car _e1639016419_))
                                          (_tl1639216426_
                                           (##cdr _e1639016419_)))
                                      (if (gx#stx-pair? _tl1639216426_)
                                          (let ((_e1639316429_
                                                 (gx#syntax-e _tl1639216426_)))
                                            (let ((_hd1639416433_
                                                   (##car _e1639316429_))
                                                  (_tl1639516436_
                                                   (##cdr _e1639316429_)))
                                              (if (gx#stx-null? _tl1639516436_)
                                                  ((lambda (_L16439_ _L16441_)
                                                     (if (if (gx#identifier?
                                                              _L16441_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16439_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx16293_
                                                          _L16441_
                                                          _L16439_
                                                          _fields16382_
                                                          _body16383_
                                                          '#t)
                                                         (_g1638516412_
                                                          _g1638716416_)))
                                                   _hd1639416433_
                                                   _hd1639116423_)
                                                  (_g1638516412_
                                                   _g1638716416_))))
                                          (_g1638516412_ _g1638716416_))))
                                  (_g1638516412_ _g1638716416_)))))
                      (_g1638416456_ _hd16380_)))))
          (let* ((_g1629916318_
                  (lambda (_g1630016314_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1630016314_)))
                 (_g1629816376_
                  (lambda (_g1630016322_)
                    (if (gx#stx-pair? _g1630016322_)
                        (let ((_e1630416325_ (gx#syntax-e _g1630016322_)))
                          (let ((_hd1630516329_ (##car _e1630416325_))
                                (_tl1630616332_ (##cdr _e1630416325_)))
                            (if (gx#stx-pair? _tl1630616332_)
                                (let ((_e1630716335_
                                       (gx#syntax-e _tl1630616332_)))
                                  (let ((_hd1630816339_ (##car _e1630716335_))
                                        (_tl1630916342_ (##cdr _e1630716335_)))
                                    (if (gx#stx-pair? _tl1630916342_)
                                        (let ((_e1631016345_
                                               (gx#syntax-e _tl1630916342_)))
                                          (let ((_hd1631116349_
                                                 (##car _e1631016345_))
                                                (_tl1631216352_
                                                 (##cdr _e1631016345_)))
                                            ((lambda (_L16355_
                                                      _L16357_
                                                      _L16358_)
                                               (if (if (gx#identifier-list?
                                                        _L16357_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16355_)
                                                       '#f)
                                                   (_generate16296_
                                                    _L16358_
                                                    _L16357_
                                                    _L16355_)
                                                   (_g1629916318_
                                                    _g1630016322_)))
                                             _tl1631216352_
                                             _hd1631116349_
                                             _hd1630816339_)))
                                        (_g1629916318_ _g1630016322_))))
                                (_g1629916318_ _g1630016322_))))
                        (_g1629916318_ _g1630016322_)))))
            (_g1629816376_ _stx16293_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx16460_)
        (letrec ((_generate16463_
                  (lambda (_hd16547_ _slots16549_ _body16550_)
                    (let* ((_g1655316565_
                            (lambda (_g1655416561_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1655416561_)))
                           (_g1655216576_
                            (lambda (_g1655416569_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16547_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16460_
                                      _hd16547_
                                      '()
                                      _slots16549_
                                      _body16550_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16460_
                                      _hd16547_))))))
                           (_g1655116608_
                            (lambda (_g1655416580_)
                              (if (gx#stx-pair? _g1655416580_)
                                  (let ((_e1655716583_
                                         (gx#syntax-e _g1655416580_)))
                                    (let ((_hd1655816587_
                                           (##car _e1655716583_))
                                          (_tl1655916590_
                                           (##cdr _e1655716583_)))
                                      ((lambda (_L16593_ _L16595_)
                                         (if (if (gx#stx-list? _L16593_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16593_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx16460_
                                              _L16595_
                                              (gx#syntax->list _L16593_)
                                              _slots16549_
                                              _body16550_
                                              '#f)
                                             (_g1655216576_ _g1655416580_)))
                                       _tl1655916590_
                                       _hd1655816587_)))
                                  (_g1655216576_ _g1655416580_)))))
                      (_g1655116608_ _hd16547_)))))
          (let* ((_g1646616485_
                  (lambda (_g1646716481_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1646716481_)))
                 (_g1646516543_
                  (lambda (_g1646716489_)
                    (if (gx#stx-pair? _g1646716489_)
                        (let ((_e1647116492_ (gx#syntax-e _g1646716489_)))
                          (let ((_hd1647216496_ (##car _e1647116492_))
                                (_tl1647316499_ (##cdr _e1647116492_)))
                            (if (gx#stx-pair? _tl1647316499_)
                                (let ((_e1647416502_
                                       (gx#syntax-e _tl1647316499_)))
                                  (let ((_hd1647516506_ (##car _e1647416502_))
                                        (_tl1647616509_ (##cdr _e1647416502_)))
                                    (if (gx#stx-pair? _tl1647616509_)
                                        (let ((_e1647716512_
                                               (gx#syntax-e _tl1647616509_)))
                                          (let ((_hd1647816516_
                                                 (##car _e1647716512_))
                                                (_tl1647916519_
                                                 (##cdr _e1647716512_)))
                                            ((lambda (_L16522_
                                                      _L16524_
                                                      _L16525_)
                                               (if (if (gx#identifier-list?
                                                        _L16524_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16522_)
                                                       '#f)
                                                   (_generate16463_
                                                    _L16525_
                                                    _L16524_
                                                    _L16522_)
                                                   (_g1646616485_
                                                    _g1646716489_)))
                                             _tl1647916519_
                                             _hd1647816516_
                                             _hd1647516506_)))
                                        (_g1646616485_ _g1646716489_))))
                                (_g1646616485_ _g1646716489_))))
                        (_g1646616485_ _g1646716489_)))))
            (_g1646516543_ _stx16460_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx16612_)
        (letrec ((_wrap16615_
                  (lambda (_e-stx16952_)
                    (gx#stx-wrap-source
                     _e-stx16952_
                     (gx#stx-source _stx16612_))))
                 (_method-opt?16617_
                  (lambda (_x16949_) (memq (gx#stx-e _x16949_) '(rebind:)))))
          (let* ((_g1661916648_
                  (lambda (_g1662016644_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1662016644_)))
                 (_g1661816945_
                  (lambda (_g1662016652_)
                    (if (gx#stx-pair? _g1662016652_)
                        (let ((_e1662516655_ (gx#syntax-e _g1662016652_)))
                          (let ((_hd1662616659_ (##car _e1662516655_))
                                (_tl1662716662_ (##cdr _e1662516655_)))
                            (if (gx#stx-pair? _tl1662716662_)
                                (let ((_e1662816665_
                                       (gx#syntax-e _tl1662716662_)))
                                  (let ((_hd1662916669_ (##car _e1662816665_))
                                        (_tl1663016672_ (##cdr _e1662816665_)))
                                    (if (gx#stx-pair? _hd1662916669_)
                                        (let ((_e1663116675_
                                               (gx#syntax-e _hd1662916669_)))
                                          (let ((_hd1663216679_
                                                 (##car _e1663116675_))
                                                (_tl1663316682_
                                                 (##cdr _e1663116675_)))
                                            (if (gx#identifier? _hd1663216679_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g31369_|
                                                     _hd1663216679_)
                                                    (if (gx#stx-pair?
                                                         _tl1663316682_)
                                                        (let ((_e1663416685_
                                                               (gx#syntax-e
                                                                _tl1663316682_)))
                                                          (let ((_hd1663516689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1663416685_))
                        (_tl1663616692_ (##cdr _e1663416685_)))
                    (if (gx#stx-pair? _tl1663616692_)
                        (let ((_e1663716695_ (gx#syntax-e _tl1663616692_)))
                          (let ((_hd1663816699_ (##car _e1663716695_))
                                (_tl1663916702_ (##cdr _e1663716695_)))
                            (if (gx#stx-null? _tl1663916702_)
                                (if (gx#stx-pair? _tl1663016672_)
                                    (let ((_e1664016705_
                                           (gx#syntax-e _tl1663016672_)))
                                      (let ((_hd1664116709_
                                             (##car _e1664016705_))
                                            (_tl1664216712_
                                             (##cdr _e1664016705_)))
                                        ((lambda (_L16715_
                                                  _L16717_
                                                  _L16718_
                                                  _L16719_)
                                           (if (if (gx#identifier? _L16719_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L16718_)
                                                       (gx#stx-plist?
                                                        _L16715_
                                                        _method-opt?16617_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass16744_
                                                       (gx#syntax-local-value
                                                        _L16718_))
                                                      (_rebind?16747_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L16715_))
                                                           '#t
                                                           '#f))
                                                      (_g1675016758_
                                                       (lambda (_g1675116754_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1675116754_)))
                                                      (_g1674916941_
                                                       (lambda (_g1675116762_)
                                                         ((lambda (_L16765_)
                                                            (let ()
                                                              (let* ((_g1677916787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1678016783_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1678016783_)))
                             (_g1677816937_
                              (lambda (_g1678016791_)
                                ((lambda (_L16794_)
                                   (let ()
                                     (let* ((_g1680716815_
                                             (lambda (_g1680816811_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1680816811_)))
                                            (_g1680616933_
                                             (lambda (_g1680816819_)
                                               ((lambda (_L16822_)
                                                  (let ()
                                                    (let* ((_g1683516843_
                                                            (lambda (_g1683616839_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1683616839_)))
                                                           (_g1683416929_
                                                            (lambda (_g1683616847_)
                                                              ((lambda (_L16850_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1686316871_
                                   (lambda (_g1686416867_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1686416867_)))
                                  (_g1686216925_
                                   (lambda (_g1686416875_)
                                     ((lambda (_L16878_)
                                        (let ()
                                          (let* ((_g1689116899_
                                                  (lambda (_g1689216895_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1689216895_)))
                                                 (_g1689016921_
                                                  (lambda (_g1689216903_)
                                                    ((lambda (_L16906_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap16615_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L16850_ (cons _L16906_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1689216903_))))
                                            (_g1689016921_
                                             (_wrap16615_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L16765_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16719_ '()))
                        (cons _L16794_ (cons _L16878_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1686416875_))))
                             (_g1686216925_ _rebind?16747_))))
                       _g1683616847_))))
              (_g1683416929_
               (_wrap16615_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L16794_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L16822_
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
                                                            (cons _L16765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L16719_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L16717_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1680816819_))))
                                       (_g1680616933_
                                        (gx#stx-identifier
                                         _L16719_
                                         '@next-method)))))
                                 _g1678016791_))))
                        (_g1677816937_
                         (gx#stx-identifier
                          _L16719_
                          _L16718_
                          '"::"
                          _L16719_)))))
                  _g1675116762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1674916941_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass16744_)))
                                               (if (not (gx#identifier?
                                                         _L16719_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx16612_
                                                    _L16719_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L16718_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx16612_
                                                        _L16718_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx16612_)))))
                                         _tl1664216712_
                                         _hd1664116709_
                                         _hd1663816699_
                                         _hd1663516689_)))
                                    (_g1661916648_ _g1662016652_))
                                (_g1661916648_ _g1662016652_))))
                        (_g1661916648_ _g1662016652_))))
                (_g1661916648_ _g1662016652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1661916648_
                                                     _g1662016652_))
                                                (_g1661916648_
                                                 _g1662016652_))))
                                        (_g1661916648_ _g1662016652_))))
                                (_g1661916648_ _g1662016652_))))
                        (_g1661916648_ _g1662016652_)))))
            (_g1661816945_ _stx16612_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx16955_)
        (let* ((_g1696017009_
                (lambda (_g1696117005_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1696117005_)))
               (_g1695917108_
                (lambda (_g1696117013_)
                  (if (gx#stx-pair? _g1696117013_)
                      (let ((_e1698617016_ (gx#syntax-e _g1696117013_)))
                        (let ((_hd1698717020_ (##car _e1698617016_))
                              (_tl1698817023_ (##cdr _e1698617016_)))
                          (if (gx#stx-pair? _tl1698817023_)
                              (let ((_e1698917026_
                                     (gx#syntax-e _tl1698817023_)))
                                (let ((_hd1699017030_ (##car _e1698917026_))
                                      (_tl1699117033_ (##cdr _e1698917026_)))
                                  (if (gx#stx-pair? _tl1699117033_)
                                      (let ((_e1699217036_
                                             (gx#syntax-e _tl1699117033_)))
                                        (let ((_hd1699317040_
                                               (##car _e1699217036_))
                                              (_tl1699417043_
                                               (##cdr _e1699217036_)))
                                          (if (gx#stx-pair/null?
                                               _tl1699417043_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1699417043_)
                                                        '0)
                                                  (let ((_g31370_
                                                         (gx#syntax-split-splice
                                                          _tl1699417043_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31371_
                                                             (values-count
                                                              _g31370_)))
                                                        (if (not (fx= _g31371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31371_)))
              (let ((_target1699517046_ (values-ref _g31370_ 0))
                    (_tl1699717049_ (values-ref _g31370_ 1)))
                (if (gx#stx-null? _tl1699717049_)
                    (letrec ((_loop1699817052_
                              (lambda (_hd1699617056_ _arg1700217059_)
                                (if (gx#stx-pair? _hd1699617056_)
                                    (let ((_e1699917062_
                                           (gx#syntax-e _hd1699617056_)))
                                      (let ((_lp-hd1700017066_
                                             (##car _e1699917062_))
                                            (_lp-tl1700117069_
                                             (##cdr _e1699917062_)))
                                        (_loop1699817052_
                                         _lp-tl1700117069_
                                         (cons _lp-hd1700017066_
                                               _arg1700217059_))))
                                    (let ((_arg1700317072_
                                           (reverse _arg1700217059_)))
                                      ((lambda (_L17076_ _L17078_ _L17079_)
                                         (if (gx#identifier? _L17079_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L17078_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L17079_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g1709917102_ _g1710017105_)
                                  (cons _g1709917102_ _g1710017105_))
                                '()
                                _L17076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1696017009_ _g1696117013_)))
                                       _arg1700317072_
                                       _hd1699317040_
                                       _hd1699017030_))))))
                      (_loop1699817052_ _target1699517046_ '()))
                    (_g1696017009_ _g1696117013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1696017009_
                                                   _g1696117013_))
                                              (_g1696017009_ _g1696117013_))))
                                      (_g1696017009_ _g1696117013_))))
                              (_g1696017009_ _g1696117013_))))
                      (_g1696017009_ _g1696117013_))))
               (_g1695817214_
                (lambda (_g1696117112_)
                  (if (gx#stx-pair? _g1696117112_)
                      (let ((_e1696517115_ (gx#syntax-e _g1696117112_)))
                        (let ((_hd1696617119_ (##car _e1696517115_))
                              (_tl1696717122_ (##cdr _e1696517115_)))
                          (if (gx#stx-pair? _tl1696717122_)
                              (let ((_e1696817125_
                                     (gx#syntax-e _tl1696717122_)))
                                (let ((_hd1696917129_ (##car _e1696817125_))
                                      (_tl1697017132_ (##cdr _e1696817125_)))
                                  (if (gx#stx-pair? _tl1697017132_)
                                      (let ((_e1697117135_
                                             (gx#syntax-e _tl1697017132_)))
                                        (let ((_hd1697217139_
                                               (##car _e1697117135_))
                                              (_tl1697317142_
                                               (##cdr _e1697117135_)))
                                          (if (gx#stx-pair/null?
                                               _tl1697317142_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1697317142_)
                                                        '0)
                                                  (let ((_g31372_
                                                         (gx#syntax-split-splice
                                                          _tl1697317142_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31373_
                                                             (values-count
                                                              _g31372_)))
                                                        (if (not (fx= _g31373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31373_)))
              (let ((_target1697417145_ (values-ref _g31372_ 0))
                    (_tl1697617148_ (values-ref _g31372_ 1)))
                (if (gx#stx-null? _tl1697617148_)
                    (letrec ((_loop1697717151_
                              (lambda (_hd1697517155_ _arg1698117158_)
                                (if (gx#stx-pair? _hd1697517155_)
                                    (let ((_e1697817161_
                                           (gx#syntax-e _hd1697517155_)))
                                      (let ((_lp-hd1697917165_
                                             (##car _e1697817161_))
                                            (_lp-tl1698017168_
                                             (##cdr _e1697817161_)))
                                        (_loop1697717151_
                                         _lp-tl1698017168_
                                         (cons _lp-hd1697917165_
                                               _arg1698117158_))))
                                    (let ((_arg1698217171_
                                           (reverse _arg1698117158_)))
                                      ((lambda (_L17175_ _L17177_ _L17178_)
                                         (if (if (gx#identifier? _L17178_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1719717200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1719817203_)
                     (cons _g1719717200_ _g1719817203_))
                   '()
                   _L17175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L17177_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L17178_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1720517208_
                                                           _g1720617211_)
                                                    (cons _g1720517208_
                                                          _g1720617211_))
                                                  '()
                                                  _L17175_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1695917108_ _g1696117112_)))
                                       _arg1698217171_
                                       _hd1697217139_
                                       _hd1696917129_))))))
                      (_loop1697717151_ _target1697417145_ '()))
                    (_g1695917108_ _g1696117112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1695917108_
                                                   _g1696117112_))
                                              (_g1695917108_ _g1696117112_))))
                                      (_g1695917108_ _g1696117112_))))
                              (_g1695917108_ _g1696117112_))))
                      (_g1695917108_ _g1696117112_)))))
          (_g1695817214_ _$stx16955_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx17220_)
        (let* ((_g1722517265_
                (lambda (_g1722617261_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1722617261_)))
               (_g1722417366_
                (lambda (_g1722617269_)
                  (if (gx#stx-pair? _g1722617269_)
                      (let ((_e1724217272_ (gx#syntax-e _g1722617269_)))
                        (let ((_hd1724317276_ (##car _e1724217272_))
                              (_tl1724417279_ (##cdr _e1724217272_)))
                          (if (gx#stx-pair? _tl1724417279_)
                              (let ((_e1724517282_
                                     (gx#syntax-e _tl1724417279_)))
                                (let ((_hd1724617286_ (##car _e1724517282_))
                                      (_tl1724717289_ (##cdr _e1724517282_)))
                                  (if (gx#stx-pair? _tl1724717289_)
                                      (let ((_e1724817292_
                                             (gx#syntax-e _tl1724717289_)))
                                        (let ((_hd1724917296_
                                               (##car _e1724817292_))
                                              (_tl1725017299_
                                               (##cdr _e1724817292_)))
                                          (if (gx#stx-pair/null?
                                               _tl1725017299_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1725017299_)
                                                        '0)
                                                  (let ((_g31374_
                                                         (gx#syntax-split-splice
                                                          _tl1725017299_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31375_
                                                             (values-count
                                                              _g31374_)))
                                                        (if (not (fx= _g31375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31375_)))
              (let ((_target1725117302_ (values-ref _g31374_ 0))
                    (_tl1725317305_ (values-ref _g31374_ 1)))
                (if (gx#stx-null? _tl1725317305_)
                    (letrec ((_loop1725417308_
                              (lambda (_hd1725217312_ _rest1725817315_)
                                (if (gx#stx-pair? _hd1725217312_)
                                    (let ((_e1725517318_
                                           (gx#syntax-e _hd1725217312_)))
                                      (let ((_lp-hd1725617322_
                                             (##car _e1725517318_))
                                            (_lp-tl1725717325_
                                             (##cdr _e1725517318_)))
                                        (_loop1725417308_
                                         _lp-tl1725717325_
                                         (cons _lp-hd1725617322_
                                               _rest1725817315_))))
                                    (let ((_rest1725917328_
                                           (reverse _rest1725817315_)))
                                      ((lambda (_L17332_
                                                _L17334_
                                                _L17335_
                                                _L17336_)
                                         (cons _L17336_
                                               (cons (cons _L17336_
                                                           (cons _L17335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17334_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1735717360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1735817363_)
                        (cons _g1735717360_ _g1735817363_))
                      '()
                      _L17332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest1725917328_
                                       _hd1724917296_
                                       _hd1724617286_
                                       _hd1724317276_))))))
                      (_loop1725417308_ _target1725117302_ '()))
                    (_g1722517265_ _g1722617269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1722517265_
                                                   _g1722617269_))
                                              (_g1722517265_ _g1722617269_))))
                                      (_g1722517265_ _g1722617269_))))
                              (_g1722517265_ _g1722617269_))))
                      (_g1722517265_ _g1722617269_))))
               (_g1722317420_
                (lambda (_g1722617370_)
                  (if (gx#stx-pair? _g1722617370_)
                      (let ((_e1722917373_ (gx#syntax-e _g1722617370_)))
                        (let ((_hd1723017377_ (##car _e1722917373_))
                              (_tl1723117380_ (##cdr _e1722917373_)))
                          (if (gx#stx-pair? _tl1723117380_)
                              (let ((_e1723217383_
                                     (gx#syntax-e _tl1723117380_)))
                                (let ((_hd1723317387_ (##car _e1723217383_))
                                      (_tl1723417390_ (##cdr _e1723217383_)))
                                  (if (gx#stx-pair? _tl1723417390_)
                                      (let ((_e1723517393_
                                             (gx#syntax-e _tl1723417390_)))
                                        (let ((_hd1723617397_
                                               (##car _e1723517393_))
                                              (_tl1723717400_
                                               (##cdr _e1723517393_)))
                                          (if (gx#stx-null? _tl1723717400_)
                                              ((lambda (_L17403_ _L17405_)
                                                 (if (gx#identifier? _L17403_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L17405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17403_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1722417366_
                                                      _g1722617370_)))
                                               _hd1723617397_
                                               _hd1723317387_)
                                              (_g1722417366_ _g1722617370_))))
                                      (_g1722417366_ _g1722617370_))))
                              (_g1722417366_ _g1722617370_))))
                      (_g1722417366_ _g1722617370_)))))
          (_g1722317420_ _$stx17220_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx17425_)
        (let* ((_g1743017482_
                (lambda (_g1743117478_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1743117478_)))
               (_g1742917611_
                (lambda (_g1743117486_)
                  (if (gx#stx-pair? _g1743117486_)
                      (let ((_e1745317489_ (gx#syntax-e _g1743117486_)))
                        (let ((_hd1745417493_ (##car _e1745317489_))
                              (_tl1745517496_ (##cdr _e1745317489_)))
                          (if (gx#stx-pair? _tl1745517496_)
                              (let ((_e1745617499_
                                     (gx#syntax-e _tl1745517496_)))
                                (let ((_hd1745717503_ (##car _e1745617499_))
                                      (_tl1745817506_ (##cdr _e1745617499_)))
                                  (if (gx#stx-pair? _tl1745817506_)
                                      (let ((_e1745917509_
                                             (gx#syntax-e _tl1745817506_)))
                                        (let ((_hd1746017513_
                                               (##car _e1745917509_))
                                              (_tl1746117516_
                                               (##cdr _e1745917509_)))
                                          (if (gx#stx-pair/null?
                                               _tl1746117516_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1746117516_)
                                                        '2)
                                                  (let ((_g31376_
                                                         (gx#syntax-split-splice
                                                          _tl1746117516_
                                                          '2)))
                                                    (begin
                                                      (let ((_g31377_
                                                             (values-count
                                                              _g31376_)))
                                                        (if (not (fx= _g31377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31377_)))
              (let ((_target1746217519_ (values-ref _g31376_ 0))
                    (_tl1746417522_ (values-ref _g31376_ 1)))
                (if (gx#stx-pair? _tl1746417522_)
                    (let ((_e1747117525_ (gx#syntax-e _tl1746417522_)))
                      (let ((_hd1747217529_ (##car _e1747117525_))
                            (_tl1747317532_ (##cdr _e1747117525_)))
                        (if (gx#stx-pair? _tl1747317532_)
                            (let ((_e1747417535_ (gx#syntax-e _tl1747317532_)))
                              (let ((_hd1747517539_ (##car _e1747417535_))
                                    (_tl1747617542_ (##cdr _e1747417535_)))
                                (if (gx#stx-null? _tl1747617542_)
                                    (letrec ((_loop1746517545_
                                              (lambda (_hd1746317549_
                                                       _path1746917552_)
                                                (if (gx#stx-pair?
                                                     _hd1746317549_)
                                                    (let ((_e1746617555_
                                                           (gx#syntax-e
                                                            _hd1746317549_)))
                                                      (let ((_lp-hd1746717559_
                                                             (##car _e1746617555_))
                                                            (_lp-tl1746817562_
                                                             (##cdr _e1746617555_)))
                                                        (_loop1746517545_
                                                         _lp-tl1746817562_
                                                         (cons _lp-hd1746717559_
                                                               _path1746917552_))))
                                                    (let ((_path1747017565_
                                                           (reverse _path1746917552_)))
                                                      ((lambda (_L17569_
                                                                _L17571_
                                                                _L17572_
                                                                _L17573_
                                                                _L17574_
                                                                _L17575_)
                                                         (cons _L17575_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L17574_
                                         (cons _L17573_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1760217605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1760317608_)
                  (cons _g1760217605_ _g1760317608_))
                '()
                _L17572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L17571_ (cons _L17569_ '())))))
               _hd1747517539_
               _hd1747217529_
               _path1747017565_
               _hd1746017513_
               _hd1745717503_
               _hd1745417493_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1746517545_
                                       _target1746217519_
                                       '()))
                                    (_g1743017482_ _g1743117486_))))
                            (_g1743017482_ _g1743117486_))))
                    (_g1743017482_ _g1743117486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1743017482_
                                                   _g1743117486_))
                                              (_g1743017482_ _g1743117486_))))
                                      (_g1743017482_ _g1743117486_))))
                              (_g1743017482_ _g1743117486_))))
                      (_g1743017482_ _g1743117486_))))
               (_g1742817679_
                (lambda (_g1743117615_)
                  (if (gx#stx-pair? _g1743117615_)
                      (let ((_e1743517618_ (gx#syntax-e _g1743117615_)))
                        (let ((_hd1743617622_ (##car _e1743517618_))
                              (_tl1743717625_ (##cdr _e1743517618_)))
                          (if (gx#stx-pair? _tl1743717625_)
                              (let ((_e1743817628_
                                     (gx#syntax-e _tl1743717625_)))
                                (let ((_hd1743917632_ (##car _e1743817628_))
                                      (_tl1744017635_ (##cdr _e1743817628_)))
                                  (if (gx#stx-pair? _tl1744017635_)
                                      (let ((_e1744117638_
                                             (gx#syntax-e _tl1744017635_)))
                                        (let ((_hd1744217642_
                                               (##car _e1744117638_))
                                              (_tl1744317645_
                                               (##cdr _e1744117638_)))
                                          (if (gx#stx-pair? _tl1744317645_)
                                              (let ((_e1744417648_
                                                     (gx#syntax-e
                                                      _tl1744317645_)))
                                                (let ((_hd1744517652_
                                                       (##car _e1744417648_))
                                                      (_tl1744617655_
                                                       (##cdr _e1744417648_)))
                                                  (if (gx#stx-null?
                                                       _tl1744617655_)
                                                      ((lambda (_L17658_
                                                                _L17660_
                                                                _L17661_)
                                                         (if (gx#identifier?
                                                              _L17660_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L17661_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L17660_ '()))
                                       (cons _L17658_ '()))))
                     (_g1742917611_ _g1743117615_)))
               _hd1744517652_
               _hd1744217642_
               _hd1743917632_)
              (_g1742917611_ _g1743117615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1742917611_ _g1743117615_))))
                                      (_g1742917611_ _g1743117615_))))
                              (_g1742917611_ _g1743117615_))))
                      (_g1742917611_ _g1743117615_)))))
          (_g1742817679_ _$stx17425_))))))
