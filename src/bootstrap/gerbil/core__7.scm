(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g29984_|
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
      (lambda _$args15537_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15537_)))
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
      (lambda _$args15533_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15533_)))
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
      (lambda _$args15529_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15529_)))
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
      (lambda _$args15525_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15525_)))
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
      (lambda _$args15521_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15521_)))
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
      (lambda _$args15517_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15517_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1548915503_
             (lambda (_stx15491_ _is?15493_)
               (if (gx#identifier? _stx15491_)
                   (let ((_e1549415496_
                          (gx#syntax-local-value _stx15491_ false)))
                     (if _e1549415496_
                         (let ((_e15500_ _e1549415496_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15500_)
                               (_is?15493_ _e15500_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g29970_
          (let ((_g29969_ (length _g29970_)))
            (cond ((fx= _g29969_ 1)
                   (apply (lambda (_stx15507_)
                            (let ((_is?15510_ true))
                              (_opt-lambda1548915503_ _stx15507_ _is?15510_)))
                          _g29970_))
                  ((fx= _g29969_ 2) (apply _opt-lambda1548915503_ _g29970_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                    _g29970_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15487_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15487_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15484_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15484_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15478_)
        (if _id15478_
            (let ((_info15481_ (gx#syntax-local-value _id15478_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15481_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15481_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self15243_ _stx15245_)
        (let ((_g1524715267_
               (lambda (_g1524815263_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1524815263_))))
          (let ((_g1524615474_
                 (lambda (_g1524815271_)
                   (if (gx#stx-pair? _g1524815271_)
                       (let ((_e1525015274_ (gx#syntax-e _g1524815271_)))
                         (let ((_hd1525115278_ (##car _e1525015274_))
                               (_tl1525215281_ (##cdr _e1525015274_)))
                           (if (gx#stx-pair/null? _tl1525215281_)
                               (if (fx>= (gx#stx-length _tl1525215281_) '0)
                                   (let ((_g29971_
                                          (gx#syntax-split-splice
                                           _tl1525215281_
                                           '0)))
                                     (begin
                                       (let ((_g29972_
                                              (values-count _g29971_)))
                                         (if (not (fx= _g29972_ 2))
                                             (error "Context expects 2 values"
                                                    _g29972_)))
                                       (let ((_target1525315284_
                                              (values-ref _g29971_ 0))
                                             (_tl1525515287_
                                              (values-ref _g29971_ 1)))
                                         (if (gx#stx-null? _tl1525515287_)
                                             (letrec ((_loop1525615290_
                                                       (lambda (_hd1525415294_
                                                                _arg1526015297_)
                                                         (if (gx#stx-pair?
                                                              _hd1525415294_)
                                                             (let ((_e1525715300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1525415294_)))
                       (let ((_lp-hd1525815304_ (##car _e1525715300_))
                             (_lp-tl1525915307_ (##cdr _e1525715300_)))
                         (_loop1525615290_
                          _lp-tl1525915307_
                          (cons _lp-hd1525815304_ _arg1526015297_))))
                     (let ((_arg1526115310_ (reverse _arg1526015297_)))
                       ((lambda (_L15314_)
                          (let ((_g1533015361_
                                 (lambda (_g1533115357_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1533115357_))))
                            (let ((_g1532915470_
                                   (lambda (_g1533115365_)
                                     (if (gx#stx-pair? _g1533115365_)
                                         (let ((_e1533815368_
                                                (gx#syntax-e _g1533115365_)))
                                           (let ((_hd1533915372_
                                                  (##car _e1533815368_))
                                                 (_tl1534015375_
                                                  (##cdr _e1533815368_)))
                                             (if (gx#stx-pair? _tl1534015375_)
                                                 (let ((_e1534115378_
                                                        (gx#syntax-e
                                                         _tl1534015375_)))
                                                   (let ((_hd1534215382_
                                                          (##car _e1534115378_))
                                                         (_tl1534315385_
                                                          (##cdr _e1534115378_)))
                                                     (if (gx#stx-pair?
                                                          _tl1534315385_)
                                                         (let ((_e1534415388_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1534315385_)))
                   (let ((_hd1534515392_ (##car _e1534415388_))
                         (_tl1534615395_ (##cdr _e1534415388_)))
                     (if (gx#stx-pair? _tl1534615395_)
                         (let ((_e1534715398_ (gx#syntax-e _tl1534615395_)))
                           (let ((_hd1534815402_ (##car _e1534715398_))
                                 (_tl1534915405_ (##cdr _e1534715398_)))
                             (if (gx#stx-pair? _tl1534915405_)
                                 (let ((_e1535015408_
                                        (gx#syntax-e _tl1534915405_)))
                                   (let ((_hd1535115412_ (##car _e1535015408_))
                                         (_tl1535215415_
                                          (##cdr _e1535015408_)))
                                     (if (gx#stx-pair? _tl1535215415_)
                                         (let ((_e1535315418_
                                                (gx#syntax-e _tl1535215415_)))
                                           (let ((_hd1535415422_
                                                  (##car _e1535315418_))
                                                 (_tl1535515425_
                                                  (##cdr _e1535315418_)))
                                             (if (gx#stx-null? _tl1535515425_)
                                                 ((lambda (_L15428_
                                                           _L15430_
                                                           _L15431_
                                                           _L15432_
                                                           _L15433_
                                                           _L15434_)
                                                    (let ()
                                                      (cons _L15432_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1546115464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1546215467_)
                               (cons _g1546115464_ _g1546215467_))
                             '()
                             _L15314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1535415422_
                                                  _hd1535115412_
                                                  _hd1534815402_
                                                  _hd1534515392_
                                                  _hd1534215382_
                                                  _hd1533915372_)
                                                 (_g1533015361_
                                                  _g1533115365_))))
                                         (_g1533015361_ _g1533115365_))))
                                 (_g1533015361_ _g1533115365_))))
                         (_g1533015361_ _g1533115365_))))
                 (_g1533015361_ _g1533115365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1533015361_
                                                  _g1533115365_))))
                                         (_g1533015361_ _g1533115365_)))))
                              (_g1532915470_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers|
                                _self15243_)))))
                        _arg1526115310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1525615290_
                                                _target1525315284_
                                                '()))
                                             (_g1524715267_ _g1524815271_)))))
                                   (_g1524715267_ _g1524815271_))
                               (_g1524715267_ _g1524815271_))))
                       (_g1524715267_ _g1524815271_)))))
            (_g1524615474_ _stx15245_)))))
    (bind-method!
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|)
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
                     (lambda _g29983_ (gx#genident _id14109_))
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
                                                     (let ((_g29973_
                                                            (gx#syntax-split-splice
                                                             _g1429714317_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29974_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29973_)))
                   (if (not (fx= _g29974_ 2))
                       (error "Context expects 2 values" _g29974_)))
                 (let ((_target1429914320_ (values-ref _g29973_ 0))
                       (_tl1430114323_ (values-ref _g29973_ 1)))
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
                         (let ((_g29975_
                                (gx#syntax-split-splice _g1436814388_ '0)))
                           (begin
                             (let ((_g29976_ (values-count _g29975_)))
                               (if (not (fx= _g29976_ 2))
                                   (error "Context expects 2 values"
                                          _g29976_)))
                             (let ((_target1437014391_ (values-ref _g29975_ 0))
                                   (_tl1437214394_ (values-ref _g29975_ 1)))
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
                                     (let ((_g29977_
                                            (gx#syntax-split-splice
                                             _g1443914459_
                                             '0)))
                                       (begin
                                         (let ((_g29978_
                                                (values-count _g29977_)))
                                           (if (not (fx= _g29978_ 2))
                                               (error "Context expects 2 values"
                                                      _g29978_)))
                                         (let ((_target1444114462_
                                                (values-ref _g29977_ 0))
                                               (_tl1444314465_
                                                (values-ref _g29977_ 1)))
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
                     (let ((_g29979_
                            (gx#syntax-split-splice _g1463314653_ '0)))
                       (begin
                         (let ((_g29980_ (values-count _g29979_)))
                           (if (not (fx= _g29980_ 2))
                               (error "Context expects 2 values" _g29980_)))
                         (let ((_target1463514656_ (values-ref _g29979_ 0))
                               (_tl1463714659_ (values-ref _g29979_ 1)))
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
                                  (let ((_g29981_
                                         (gx#syntax-split-splice
                                          _g1507915099_
                                          '0)))
                                    (begin
                                      (let ((_g29982_ (values-count _g29981_)))
                                        (if (not (fx= _g29982_ 2))
                                            (error "Context expects 2 values"
                                                   _g29982_)))
                                      (let ((_target1508115102_
                                             (values-ref _g29981_ 0))
                                            (_tl1508315105_
                                             (values-ref _g29981_ 1)))
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
      (lambda (_stx15550_)
        (let ((_generate15553_
               (lambda (_hd15637_ _fields15639_ _body15640_)
                 (let ((_g1564315658_
                        (lambda (_g1564415654_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1564415654_))))
                   (let ((_g1564215669_
                          (lambda (_g1564415662_)
                            ((lambda ()
                               (if (gx#identifier? _hd15637_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15550_
                                    _hd15637_
                                    '#f
                                    _fields15639_
                                    _body15640_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15550_
                                    _hd15637_)))))))
                     (let ((_g1564115713_
                            (lambda (_g1564415673_)
                              (if (gx#stx-pair? _g1564415673_)
                                  (let ((_e1564715676_
                                         (gx#syntax-e _g1564415673_)))
                                    (let ((_hd1564815680_
                                           (##car _e1564715676_))
                                          (_tl1564915683_
                                           (##cdr _e1564715676_)))
                                      (if (gx#stx-pair? _tl1564915683_)
                                          (let ((_e1565015686_
                                                 (gx#syntax-e _tl1564915683_)))
                                            (let ((_hd1565115690_
                                                   (##car _e1565015686_))
                                                  (_tl1565215693_
                                                   (##cdr _e1565015686_)))
                                              (if (gx#stx-null? _tl1565215693_)
                                                  ((lambda (_L15696_ _L15698_)
                                                     (if (if (gx#identifier?
                                                              _L15698_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L15696_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15550_
                                                          _L15698_
                                                          _L15696_
                                                          _fields15639_
                                                          _body15640_
                                                          '#t)
                                                         (_g1564215669_
                                                          _g1564415673_)))
                                                   _hd1565115690_
                                                   _hd1564815680_)
                                                  (_g1564215669_
                                                   _g1564415673_))))
                                          (_g1564215669_ _g1564415673_))))
                                  (_g1564215669_ _g1564415673_)))))
                       (_g1564115713_ _hd15637_)))))))
          (let ((_g1555615575_
                 (lambda (_g1555715571_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1555715571_))))
            (let ((_g1555515633_
                   (lambda (_g1555715579_)
                     (if (gx#stx-pair? _g1555715579_)
                         (let ((_e1556115582_ (gx#syntax-e _g1555715579_)))
                           (let ((_hd1556215586_ (##car _e1556115582_))
                                 (_tl1556315589_ (##cdr _e1556115582_)))
                             (if (gx#stx-pair? _tl1556315589_)
                                 (let ((_e1556415592_
                                        (gx#syntax-e _tl1556315589_)))
                                   (let ((_hd1556515596_ (##car _e1556415592_))
                                         (_tl1556615599_
                                          (##cdr _e1556415592_)))
                                     (if (gx#stx-pair? _tl1556615599_)
                                         (let ((_e1556715602_
                                                (gx#syntax-e _tl1556615599_)))
                                           (let ((_hd1556815606_
                                                  (##car _e1556715602_))
                                                 (_tl1556915609_
                                                  (##cdr _e1556715602_)))
                                             ((lambda (_L15612_
                                                       _L15614_
                                                       _L15615_)
                                                (if (if (gx#identifier-list?
                                                         _L15614_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15612_)
                                                        '#f)
                                                    (_generate15553_
                                                     _L15615_
                                                     _L15614_
                                                     _L15612_)
                                                    (_g1555615575_
                                                     _g1555715579_)))
                                              _tl1556915609_
                                              _hd1556815606_
                                              _hd1556515596_)))
                                         (_g1555615575_ _g1555715579_))))
                                 (_g1555615575_ _g1555715579_))))
                         (_g1555615575_ _g1555715579_)))))
              (_g1555515633_ _stx15550_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx15717_)
        (let ((_generate15720_
               (lambda (_hd15804_ _slots15806_ _body15807_)
                 (let ((_g1581015822_
                        (lambda (_g1581115818_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1581115818_))))
                   (let ((_g1580915833_
                          (lambda (_g1581115826_)
                            ((lambda ()
                               (if (gx#identifier? _hd15804_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15717_
                                    _hd15804_
                                    '()
                                    _slots15806_
                                    _body15807_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15717_
                                    _hd15804_)))))))
                     (let ((_g1580815865_
                            (lambda (_g1581115837_)
                              (if (gx#stx-pair? _g1581115837_)
                                  (let ((_e1581415840_
                                         (gx#syntax-e _g1581115837_)))
                                    (let ((_hd1581515844_
                                           (##car _e1581415840_))
                                          (_tl1581615847_
                                           (##cdr _e1581415840_)))
                                      ((lambda (_L15850_ _L15852_)
                                         (if (if (gx#stx-list? _L15850_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L15850_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx15717_
                                              _L15852_
                                              (gx#syntax->list _L15850_)
                                              _slots15806_
                                              _body15807_
                                              '#f)
                                             (_g1580915833_ _g1581115837_)))
                                       _tl1581615847_
                                       _hd1581515844_)))
                                  (_g1580915833_ _g1581115837_)))))
                       (_g1580815865_ _hd15804_)))))))
          (let ((_g1572315742_
                 (lambda (_g1572415738_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1572415738_))))
            (let ((_g1572215800_
                   (lambda (_g1572415746_)
                     (if (gx#stx-pair? _g1572415746_)
                         (let ((_e1572815749_ (gx#syntax-e _g1572415746_)))
                           (let ((_hd1572915753_ (##car _e1572815749_))
                                 (_tl1573015756_ (##cdr _e1572815749_)))
                             (if (gx#stx-pair? _tl1573015756_)
                                 (let ((_e1573115759_
                                        (gx#syntax-e _tl1573015756_)))
                                   (let ((_hd1573215763_ (##car _e1573115759_))
                                         (_tl1573315766_
                                          (##cdr _e1573115759_)))
                                     (if (gx#stx-pair? _tl1573315766_)
                                         (let ((_e1573415769_
                                                (gx#syntax-e _tl1573315766_)))
                                           (let ((_hd1573515773_
                                                  (##car _e1573415769_))
                                                 (_tl1573615776_
                                                  (##cdr _e1573415769_)))
                                             ((lambda (_L15779_
                                                       _L15781_
                                                       _L15782_)
                                                (if (if (gx#identifier-list?
                                                         _L15781_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15779_)
                                                        '#f)
                                                    (_generate15720_
                                                     _L15782_
                                                     _L15781_
                                                     _L15779_)
                                                    (_g1572315742_
                                                     _g1572415746_)))
                                              _tl1573615776_
                                              _hd1573515773_
                                              _hd1573215763_)))
                                         (_g1572315742_ _g1572415746_))))
                                 (_g1572315742_ _g1572415746_))))
                         (_g1572315742_ _g1572415746_)))))
              (_g1572215800_ _stx15717_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx15869_)
        (let ((_wrap15872_
               (lambda (_e-stx16177_)
                 (gx#stx-wrap-source
                  _e-stx16177_
                  (gx#stx-source _stx15869_)))))
          (let ((_method-opt?15874_
                 (lambda (_x16174_) (memq (gx#stx-e _x16174_) '(rebind:)))))
            (let ((_g1587615905_
                   (lambda (_g1587715901_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1587715901_))))
              (let ((_g1587516170_
                     (lambda (_g1587715909_)
                       (if (gx#stx-pair? _g1587715909_)
                           (let ((_e1588215912_ (gx#syntax-e _g1587715909_)))
                             (let ((_hd1588315916_ (##car _e1588215912_))
                                   (_tl1588415919_ (##cdr _e1588215912_)))
                               (if (gx#stx-pair? _tl1588415919_)
                                   (let ((_e1588515922_
                                          (gx#syntax-e _tl1588415919_)))
                                     (let ((_hd1588615926_
                                            (##car _e1588515922_))
                                           (_tl1588715929_
                                            (##cdr _e1588515922_)))
                                       (if (gx#stx-pair? _hd1588615926_)
                                           (let ((_e1588815932_
                                                  (gx#syntax-e
                                                   _hd1588615926_)))
                                             (let ((_hd1588915936_
                                                    (##car _e1588815932_))
                                                   (_tl1589015939_
                                                    (##cdr _e1588815932_)))
                                               (if (gx#identifier?
                                                    _hd1588915936_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g29984_|
                                                        _hd1588915936_)
                                                       (if (gx#stx-pair?
                                                            _tl1589015939_)
                                                           (let ((_e1589115942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1589015939_)))
                     (let ((_hd1589215946_ (##car _e1589115942_))
                           (_tl1589315949_ (##cdr _e1589115942_)))
                       (if (gx#stx-pair? _tl1589315949_)
                           (let ((_e1589415952_ (gx#syntax-e _tl1589315949_)))
                             (let ((_hd1589515956_ (##car _e1589415952_))
                                   (_tl1589615959_ (##cdr _e1589415952_)))
                               (if (gx#stx-null? _tl1589615959_)
                                   (if (gx#stx-pair? _tl1588715929_)
                                       (let ((_e1589715962_
                                              (gx#syntax-e _tl1588715929_)))
                                         (let ((_hd1589815966_
                                                (##car _e1589715962_))
                                               (_tl1589915969_
                                                (##cdr _e1589715962_)))
                                           ((lambda (_L15972_
                                                     _L15974_
                                                     _L15975_
                                                     _L15976_)
                                              (if (if (gx#identifier? _L15976_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L15975_)
                                                          (gx#stx-plist?
                                                           _L15972_
                                                           _method-opt?15874_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass16001_
                                                         (gx#syntax-local-value
                                                          _L15975_)))
                                                    (let ((_rebind?16004_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L15972_))
                       '#t
                       '#f)))
              (let ((_g1600716015_
                     (lambda (_g1600816011_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1600816011_))))
                (let ((_g1600616166_
                       (lambda (_g1600816019_)
                         ((lambda (_L16022_)
                            (let ()
                              (let ((_g1603616044_
                                     (lambda (_g1603716040_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1603716040_))))
                                (let ((_g1603516162_
                                       (lambda (_g1603716048_)
                                         ((lambda (_L16051_)
                                            (let ()
                                              (let ((_g1606416072_
                                                     (lambda (_g1606516068_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1606516068_))))
                                                (let ((_g1606316158_
                                                       (lambda (_g1606516076_)
                                                         ((lambda (_L16079_)
                                                            (let ()
                                                              (let ((_g1609216100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1609316096_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1609316096_))))
                        (let ((_g1609116154_
                               (lambda (_g1609316104_)
                                 ((lambda (_L16107_)
                                    (let ()
                                      (let ((_g1612016128_
                                             (lambda (_g1612116124_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1612116124_))))
                                        (let ((_g1611916150_
                                               (lambda (_g1612116132_)
                                                 ((lambda (_L16135_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap15872_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L16079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L16135_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1612116132_))))
                                          (_g1611916150_
                                           (_wrap15872_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L16022_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L15976_ '()))
                      (cons _L16051_ (cons _L16107_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1609316104_))))
                          (_g1609116154_ _rebind?16004_)))))
                  _g1606516076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1606316158_
                                                   (_wrap15872_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L16051_
                                                                (cons _L15974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1603716048_))))
                                  (_g1603516162_
                                   (gx#stx-identifier
                                    _L15976_
                                    _L15975_
                                    '"::"
                                    _L15976_))))))
                          _g1600816019_))))
                  (_g1600616166_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass16001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1587615905_
                                                   _g1587715909_)))
                                            _tl1589915969_
                                            _hd1589815966_
                                            _hd1589515956_
                                            _hd1589215946_)))
                                       (_g1587615905_ _g1587715909_))
                                   (_g1587615905_ _g1587715909_))))
                           (_g1587615905_ _g1587715909_))))
                   (_g1587615905_ _g1587715909_))
               (_g1587615905_ _g1587715909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587615905_
                                                    _g1587715909_))))
                                           (_g1587615905_ _g1587715909_))))
                                   (_g1587615905_ _g1587715909_))))
                           (_g1587615905_ _g1587715909_)))))
                (_g1587516170_ _stx15869_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx16180_)
        (let ((_g1618516234_
               (lambda (_g1618616230_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1618616230_))))
          (let ((_g1618416333_
                 (lambda (_g1618616238_)
                   (if (gx#stx-pair? _g1618616238_)
                       (let ((_e1621116241_ (gx#syntax-e _g1618616238_)))
                         (let ((_hd1621216245_ (##car _e1621116241_))
                               (_tl1621316248_ (##cdr _e1621116241_)))
                           (if (gx#stx-pair? _tl1621316248_)
                               (let ((_e1621416251_
                                      (gx#syntax-e _tl1621316248_)))
                                 (let ((_hd1621516255_ (##car _e1621416251_))
                                       (_tl1621616258_ (##cdr _e1621416251_)))
                                   (if (gx#stx-pair? _tl1621616258_)
                                       (let ((_e1621716261_
                                              (gx#syntax-e _tl1621616258_)))
                                         (let ((_hd1621816265_
                                                (##car _e1621716261_))
                                               (_tl1621916268_
                                                (##cdr _e1621716261_)))
                                           (if (gx#stx-pair/null?
                                                _tl1621916268_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1621916268_)
                                                         '0)
                                                   (let ((_g29985_
                                                          (gx#syntax-split-splice
                                                           _tl1621916268_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29986_
                                                              (values-count
                                                               _g29985_)))
                                                         (if (not (fx= _g29986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29986_)))
               (let ((_target1622016271_ (values-ref _g29985_ 0))
                     (_tl1622216274_ (values-ref _g29985_ 1)))
                 (if (gx#stx-null? _tl1622216274_)
                     (letrec ((_loop1622316277_
                               (lambda (_hd1622116281_ _arg1622716284_)
                                 (if (gx#stx-pair? _hd1622116281_)
                                     (let ((_e1622416287_
                                            (gx#syntax-e _hd1622116281_)))
                                       (let ((_lp-hd1622516291_
                                              (##car _e1622416287_))
                                             (_lp-tl1622616294_
                                              (##cdr _e1622416287_)))
                                         (_loop1622316277_
                                          _lp-tl1622616294_
                                          (cons _lp-hd1622516291_
                                                _arg1622716284_))))
                                     (let ((_arg1622816297_
                                            (reverse _arg1622716284_)))
                                       ((lambda (_L16301_ _L16303_ _L16304_)
                                          (if (gx#identifier? _L16304_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16303_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16304_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1632416327_ _g1632516330_)
                                   (cons _g1632416327_ _g1632516330_))
                                 '()
                                 _L16301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1618516234_ _g1618616238_)))
                                        _arg1622816297_
                                        _hd1621816265_
                                        _hd1621516255_))))))
                       (_loop1622316277_ _target1622016271_ '()))
                     (_g1618516234_ _g1618616238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1618516234_
                                                    _g1618616238_))
                                               (_g1618516234_ _g1618616238_))))
                                       (_g1618516234_ _g1618616238_))))
                               (_g1618516234_ _g1618616238_))))
                       (_g1618516234_ _g1618616238_)))))
            (let ((_g1618316439_
                   (lambda (_g1618616337_)
                     (if (gx#stx-pair? _g1618616337_)
                         (let ((_e1619016340_ (gx#syntax-e _g1618616337_)))
                           (let ((_hd1619116344_ (##car _e1619016340_))
                                 (_tl1619216347_ (##cdr _e1619016340_)))
                             (if (gx#stx-pair? _tl1619216347_)
                                 (let ((_e1619316350_
                                        (gx#syntax-e _tl1619216347_)))
                                   (let ((_hd1619416354_ (##car _e1619316350_))
                                         (_tl1619516357_
                                          (##cdr _e1619316350_)))
                                     (if (gx#stx-pair? _tl1619516357_)
                                         (let ((_e1619616360_
                                                (gx#syntax-e _tl1619516357_)))
                                           (let ((_hd1619716364_
                                                  (##car _e1619616360_))
                                                 (_tl1619816367_
                                                  (##cdr _e1619616360_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1619816367_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1619816367_)
                                                           '0)
                                                     (let ((_g29987_
                                                            (gx#syntax-split-splice
                                                             _tl1619816367_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29988_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29987_)))
                   (if (not (fx= _g29988_ 2))
                       (error "Context expects 2 values" _g29988_)))
                 (let ((_target1619916370_ (values-ref _g29987_ 0))
                       (_tl1620116373_ (values-ref _g29987_ 1)))
                   (if (gx#stx-null? _tl1620116373_)
                       (letrec ((_loop1620216376_
                                 (lambda (_hd1620016380_ _arg1620616383_)
                                   (if (gx#stx-pair? _hd1620016380_)
                                       (let ((_e1620316386_
                                              (gx#syntax-e _hd1620016380_)))
                                         (let ((_lp-hd1620416390_
                                                (##car _e1620316386_))
                                               (_lp-tl1620516393_
                                                (##cdr _e1620316386_)))
                                           (_loop1620216376_
                                            _lp-tl1620516393_
                                            (cons _lp-hd1620416390_
                                                  _arg1620616383_))))
                                       (let ((_arg1620716396_
                                              (reverse _arg1620616383_)))
                                         ((lambda (_L16400_ _L16402_ _L16403_)
                                            (if (if (gx#identifier? _L16403_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1642216425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1642316428_)
                        (cons _g1642216425_ _g1642316428_))
                      '()
                      _L16400_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16403_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1643016433_
                                                              _g1643116436_)
                                                       (cons _g1643016433_
                                                             _g1643116436_))
                                                     '()
                                                     _L16400_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1618416333_ _g1618616337_)))
                                          _arg1620716396_
                                          _hd1619716364_
                                          _hd1619416354_))))))
                         (_loop1620216376_ _target1619916370_ '()))
                       (_g1618416333_ _g1618616337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1618416333_
                                                      _g1618616337_))
                                                 (_g1618416333_
                                                  _g1618616337_))))
                                         (_g1618416333_ _g1618616337_))))
                                 (_g1618416333_ _g1618616337_))))
                         (_g1618416333_ _g1618616337_)))))
              (_g1618316439_ _$stx16180_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16445_)
        (let ((_g1645016490_
               (lambda (_g1645116486_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1645116486_))))
          (let ((_g1644916591_
                 (lambda (_g1645116494_)
                   (if (gx#stx-pair? _g1645116494_)
                       (let ((_e1646716497_ (gx#syntax-e _g1645116494_)))
                         (let ((_hd1646816501_ (##car _e1646716497_))
                               (_tl1646916504_ (##cdr _e1646716497_)))
                           (if (gx#stx-pair? _tl1646916504_)
                               (let ((_e1647016507_
                                      (gx#syntax-e _tl1646916504_)))
                                 (let ((_hd1647116511_ (##car _e1647016507_))
                                       (_tl1647216514_ (##cdr _e1647016507_)))
                                   (if (gx#stx-pair? _tl1647216514_)
                                       (let ((_e1647316517_
                                              (gx#syntax-e _tl1647216514_)))
                                         (let ((_hd1647416521_
                                                (##car _e1647316517_))
                                               (_tl1647516524_
                                                (##cdr _e1647316517_)))
                                           (if (gx#stx-pair/null?
                                                _tl1647516524_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1647516524_)
                                                         '0)
                                                   (let ((_g29989_
                                                          (gx#syntax-split-splice
                                                           _tl1647516524_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29990_
                                                              (values-count
                                                               _g29989_)))
                                                         (if (not (fx= _g29990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29990_)))
               (let ((_target1647616527_ (values-ref _g29989_ 0))
                     (_tl1647816530_ (values-ref _g29989_ 1)))
                 (if (gx#stx-null? _tl1647816530_)
                     (letrec ((_loop1647916533_
                               (lambda (_hd1647716537_ _rest1648316540_)
                                 (if (gx#stx-pair? _hd1647716537_)
                                     (let ((_e1648016543_
                                            (gx#syntax-e _hd1647716537_)))
                                       (let ((_lp-hd1648116547_
                                              (##car _e1648016543_))
                                             (_lp-tl1648216550_
                                              (##cdr _e1648016543_)))
                                         (_loop1647916533_
                                          _lp-tl1648216550_
                                          (cons _lp-hd1648116547_
                                                _rest1648316540_))))
                                     (let ((_rest1648416553_
                                            (reverse _rest1648316540_)))
                                       ((lambda (_L16557_
                                                 _L16559_
                                                 _L16560_
                                                 _L16561_)
                                          (cons _L16561_
                                                (cons (cons _L16561_
                                                            (cons _L16560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16559_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1658216585_ _g1658316588_)
                         (cons _g1658216585_ _g1658316588_))
                       '()
                       _L16557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1648416553_
                                        _hd1647416521_
                                        _hd1647116511_
                                        _hd1646816501_))))))
                       (_loop1647916533_ _target1647616527_ '()))
                     (_g1645016490_ _g1645116494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1645016490_
                                                    _g1645116494_))
                                               (_g1645016490_ _g1645116494_))))
                                       (_g1645016490_ _g1645116494_))))
                               (_g1645016490_ _g1645116494_))))
                       (_g1645016490_ _g1645116494_)))))
            (let ((_g1644816645_
                   (lambda (_g1645116595_)
                     (if (gx#stx-pair? _g1645116595_)
                         (let ((_e1645416598_ (gx#syntax-e _g1645116595_)))
                           (let ((_hd1645516602_ (##car _e1645416598_))
                                 (_tl1645616605_ (##cdr _e1645416598_)))
                             (if (gx#stx-pair? _tl1645616605_)
                                 (let ((_e1645716608_
                                        (gx#syntax-e _tl1645616605_)))
                                   (let ((_hd1645816612_ (##car _e1645716608_))
                                         (_tl1645916615_
                                          (##cdr _e1645716608_)))
                                     (if (gx#stx-pair? _tl1645916615_)
                                         (let ((_e1646016618_
                                                (gx#syntax-e _tl1645916615_)))
                                           (let ((_hd1646116622_
                                                  (##car _e1646016618_))
                                                 (_tl1646216625_
                                                  (##cdr _e1646016618_)))
                                             (if (gx#stx-null? _tl1646216625_)
                                                 ((lambda (_L16628_ _L16630_)
                                                    (if (gx#identifier?
                                                         _L16628_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16628_ '()))
                                  '())))
                (_g1644916591_ _g1645116595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1646116622_
                                                  _hd1645816612_)
                                                 (_g1644916591_
                                                  _g1645116595_))))
                                         (_g1644916591_ _g1645116595_))))
                                 (_g1644916591_ _g1645116595_))))
                         (_g1644916591_ _g1645116595_)))))
              (_g1644816645_ _$stx16445_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16650_)
        (let ((_g1665516707_
               (lambda (_g1665616703_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1665616703_))))
          (let ((_g1665416836_
                 (lambda (_g1665616711_)
                   (if (gx#stx-pair? _g1665616711_)
                       (let ((_e1667816714_ (gx#syntax-e _g1665616711_)))
                         (let ((_hd1667916718_ (##car _e1667816714_))
                               (_tl1668016721_ (##cdr _e1667816714_)))
                           (if (gx#stx-pair? _tl1668016721_)
                               (let ((_e1668116724_
                                      (gx#syntax-e _tl1668016721_)))
                                 (let ((_hd1668216728_ (##car _e1668116724_))
                                       (_tl1668316731_ (##cdr _e1668116724_)))
                                   (if (gx#stx-pair? _tl1668316731_)
                                       (let ((_e1668416734_
                                              (gx#syntax-e _tl1668316731_)))
                                         (let ((_hd1668516738_
                                                (##car _e1668416734_))
                                               (_tl1668616741_
                                                (##cdr _e1668416734_)))
                                           (if (gx#stx-pair/null?
                                                _tl1668616741_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1668616741_)
                                                         '2)
                                                   (let ((_g29991_
                                                          (gx#syntax-split-splice
                                                           _tl1668616741_
                                                           '2)))
                                                     (begin
                                                       (let ((_g29992_
                                                              (values-count
                                                               _g29991_)))
                                                         (if (not (fx= _g29992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29992_)))
               (let ((_target1668716744_ (values-ref _g29991_ 0))
                     (_tl1668916747_ (values-ref _g29991_ 1)))
                 (if (gx#stx-pair? _tl1668916747_)
                     (let ((_e1669616750_ (gx#syntax-e _tl1668916747_)))
                       (let ((_hd1669716754_ (##car _e1669616750_))
                             (_tl1669816757_ (##cdr _e1669616750_)))
                         (if (gx#stx-pair? _tl1669816757_)
                             (let ((_e1669916760_
                                    (gx#syntax-e _tl1669816757_)))
                               (let ((_hd1670016764_ (##car _e1669916760_))
                                     (_tl1670116767_ (##cdr _e1669916760_)))
                                 (if (gx#stx-null? _tl1670116767_)
                                     (letrec ((_loop1669016770_
                                               (lambda (_hd1668816774_
                                                        _path1669416777_)
                                                 (if (gx#stx-pair?
                                                      _hd1668816774_)
                                                     (let ((_e1669116780_
                                                            (gx#syntax-e
                                                             _hd1668816774_)))
                                                       (let ((_lp-hd1669216784_
                                                              (##car _e1669116780_))
                                                             (_lp-tl1669316787_
                                                              (##cdr _e1669116780_)))
                                                         (_loop1669016770_
                                                          _lp-tl1669316787_
                                                          (cons _lp-hd1669216784_
                                                                _path1669416777_))))
                                                     (let ((_path1669516790_
                                                            (reverse _path1669416777_)))
                                                       ((lambda (_L16794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L16796_
                         _L16797_
                         _L16798_
                         _L16799_
                         _L16800_)
                  (cons _L16800_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L16799_
                                          (cons _L16798_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1682716830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1682816833_)
                   (cons _g1682716830_ _g1682816833_))
                 '()
                 _L16797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L16796_ (cons _L16794_ '())))))
                _hd1670016764_
                _hd1669716754_
                _path1669516790_
                _hd1668516738_
                _hd1668216728_
                _hd1667916718_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1669016770_
                                        _target1668716744_
                                        '()))
                                     (_g1665516707_ _g1665616711_))))
                             (_g1665516707_ _g1665616711_))))
                     (_g1665516707_ _g1665616711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665516707_
                                                    _g1665616711_))
                                               (_g1665516707_ _g1665616711_))))
                                       (_g1665516707_ _g1665616711_))))
                               (_g1665516707_ _g1665616711_))))
                       (_g1665516707_ _g1665616711_)))))
            (let ((_g1665316904_
                   (lambda (_g1665616840_)
                     (if (gx#stx-pair? _g1665616840_)
                         (let ((_e1666016843_ (gx#syntax-e _g1665616840_)))
                           (let ((_hd1666116847_ (##car _e1666016843_))
                                 (_tl1666216850_ (##cdr _e1666016843_)))
                             (if (gx#stx-pair? _tl1666216850_)
                                 (let ((_e1666316853_
                                        (gx#syntax-e _tl1666216850_)))
                                   (let ((_hd1666416857_ (##car _e1666316853_))
                                         (_tl1666516860_
                                          (##cdr _e1666316853_)))
                                     (if (gx#stx-pair? _tl1666516860_)
                                         (let ((_e1666616863_
                                                (gx#syntax-e _tl1666516860_)))
                                           (let ((_hd1666716867_
                                                  (##car _e1666616863_))
                                                 (_tl1666816870_
                                                  (##cdr _e1666616863_)))
                                             (if (gx#stx-pair? _tl1666816870_)
                                                 (let ((_e1666916873_
                                                        (gx#syntax-e
                                                         _tl1666816870_)))
                                                   (let ((_hd1667016877_
                                                          (##car _e1666916873_))
                                                         (_tl1667116880_
                                                          (##cdr _e1666916873_)))
                                                     (if (gx#stx-null?
                                                          _tl1667116880_)
                                                         ((lambda (_L16883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16885_
                           _L16886_)
                    (if (gx#identifier? _L16885_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L16886_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16885_ '()))
                                          (cons _L16883_ '()))))
                        (_g1665416836_ _g1665616840_)))
                  _hd1667016877_
                  _hd1666716867_
                  _hd1666416857_)
                 (_g1665416836_ _g1665616840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1665416836_
                                                  _g1665616840_))))
                                         (_g1665416836_ _g1665616840_))))
                                 (_g1665416836_ _g1665616840_))))
                         (_g1665416836_ _g1665616840_)))))
              (_g1665316904_ _$stx16650_))))))))
