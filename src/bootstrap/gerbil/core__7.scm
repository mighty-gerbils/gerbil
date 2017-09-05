(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g30318_|
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
      (lambda _$args15869_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15869_)))
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
      (lambda _$args15865_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15865_)))
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
      (lambda _$args15861_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15861_)))
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
      (lambda _$args15857_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15857_)))
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
      (lambda _$args15853_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15853_)))
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
      (lambda _$args15849_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15849_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1582115835_
             (lambda (_stx15823_ _is?15825_)
               (if (gx#identifier? _stx15823_)
                   (let ((_e1582615828_
                          (gx#syntax-local-value _stx15823_ false)))
                     (if _e1582615828_
                         (let ((_e15832_ _e1582615828_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15832_)
                               (_is?15825_ _e15832_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g30304_
          (let ((_g30303_ (length _g30304_)))
            (cond ((fx= _g30303_ 1)
                   (apply (lambda (_stx15839_)
                            (let ((_is?15842_ true))
                              (_opt-lambda1582115835_ _stx15839_ _is?15842_)))
                          _g30304_))
                  ((fx= _g30303_ 2) (apply _opt-lambda1582115835_ _g30304_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                    _g30304_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15819_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15819_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15816_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15816_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15810_)
        (if _id15810_
            (let ((_info15813_ (gx#syntax-local-value _id15810_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15813_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15813_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self15575_ _stx15577_)
        (let ((_g1557915599_
               (lambda (_g1558015595_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1558015595_))))
          (let ((_g1557815806_
                 (lambda (_g1558015603_)
                   (if (gx#stx-pair? _g1558015603_)
                       (let ((_e1558215606_ (gx#syntax-e _g1558015603_)))
                         (let ((_hd1558315610_ (##car _e1558215606_))
                               (_tl1558415613_ (##cdr _e1558215606_)))
                           (if (gx#stx-pair/null? _tl1558415613_)
                               (if (fx>= (gx#stx-length _tl1558415613_) '0)
                                   (let ((_g30305_
                                          (gx#syntax-split-splice
                                           _tl1558415613_
                                           '0)))
                                     (begin
                                       (let ((_g30306_
                                              (values-count _g30305_)))
                                         (if (not (fx= _g30306_ 2))
                                             (error "Context expects 2 values"
                                                    _g30306_)))
                                       (let ((_target1558515616_
                                              (values-ref _g30305_ 0))
                                             (_tl1558715619_
                                              (values-ref _g30305_ 1)))
                                         (if (gx#stx-null? _tl1558715619_)
                                             (letrec ((_loop1558815622_
                                                       (lambda (_hd1558615626_
                                                                _arg1559215629_)
                                                         (if (gx#stx-pair?
                                                              _hd1558615626_)
                                                             (let ((_e1558915632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1558615626_)))
                       (let ((_lp-hd1559015636_ (##car _e1558915632_))
                             (_lp-tl1559115639_ (##cdr _e1558915632_)))
                         (_loop1558815622_
                          _lp-tl1559115639_
                          (cons _lp-hd1559015636_ _arg1559215629_))))
                     (let ((_arg1559315642_ (reverse _arg1559215629_)))
                       ((lambda (_L15646_)
                          (let ((_g1566215693_
                                 (lambda (_g1566315689_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1566315689_))))
                            (let ((_g1566115802_
                                   (lambda (_g1566315697_)
                                     (if (gx#stx-pair? _g1566315697_)
                                         (let ((_e1567015700_
                                                (gx#syntax-e _g1566315697_)))
                                           (let ((_hd1567115704_
                                                  (##car _e1567015700_))
                                                 (_tl1567215707_
                                                  (##cdr _e1567015700_)))
                                             (if (gx#stx-pair? _tl1567215707_)
                                                 (let ((_e1567315710_
                                                        (gx#syntax-e
                                                         _tl1567215707_)))
                                                   (let ((_hd1567415714_
                                                          (##car _e1567315710_))
                                                         (_tl1567515717_
                                                          (##cdr _e1567315710_)))
                                                     (if (gx#stx-pair?
                                                          _tl1567515717_)
                                                         (let ((_e1567615720_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1567515717_)))
                   (let ((_hd1567715724_ (##car _e1567615720_))
                         (_tl1567815727_ (##cdr _e1567615720_)))
                     (if (gx#stx-pair? _tl1567815727_)
                         (let ((_e1567915730_ (gx#syntax-e _tl1567815727_)))
                           (let ((_hd1568015734_ (##car _e1567915730_))
                                 (_tl1568115737_ (##cdr _e1567915730_)))
                             (if (gx#stx-pair? _tl1568115737_)
                                 (let ((_e1568215740_
                                        (gx#syntax-e _tl1568115737_)))
                                   (let ((_hd1568315744_ (##car _e1568215740_))
                                         (_tl1568415747_
                                          (##cdr _e1568215740_)))
                                     (if (gx#stx-pair? _tl1568415747_)
                                         (let ((_e1568515750_
                                                (gx#syntax-e _tl1568415747_)))
                                           (let ((_hd1568615754_
                                                  (##car _e1568515750_))
                                                 (_tl1568715757_
                                                  (##cdr _e1568515750_)))
                                             (if (gx#stx-null? _tl1568715757_)
                                                 ((lambda (_L15760_
                                                           _L15762_
                                                           _L15763_
                                                           _L15764_
                                                           _L15765_
                                                           _L15766_)
                                                    (let ()
                                                      (cons _L15764_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1579315796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1579415799_)
                               (cons _g1579315796_ _g1579415799_))
                             '()
                             _L15646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1568615754_
                                                  _hd1568315744_
                                                  _hd1568015734_
                                                  _hd1567715724_
                                                  _hd1567415714_
                                                  _hd1567115704_)
                                                 (_g1566215693_
                                                  _g1566315697_))))
                                         (_g1566215693_ _g1566315697_))))
                                 (_g1566215693_ _g1566315697_))))
                         (_g1566215693_ _g1566315697_))))
                 (_g1566215693_ _g1566315697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1566215693_
                                                  _g1566315697_))))
                                         (_g1566215693_ _g1566315697_)))))
                              (_g1566115802_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers|
                                _self15575_)))))
                        _arg1559315642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1558815622_
                                                _target1558515616_
                                                '()))
                                             (_g1557915599_ _g1558015603_)))))
                                   (_g1557915599_ _g1558015603_))
                               (_g1557915599_ _g1558015603_))))
                       (_g1557915599_ _g1558015603_)))))
            (_g1557815806_ _stx15577_)))))
    (bind-method!
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15566_)
        (let ((_body-opt?15569_
               (lambda (_key15572_)
                 (memq (gx#stx-e _key15572_)
                       '(id:
                         name:
                         constructor:
                         transparent:
                         final:
                         plist:
                         unchecked:)))))
          (gx#stx-plist? _stx15566_ _body-opt?15569_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14423_
               _id14425_
               _super-ref14426_
               _els14427_
               _body14428_
               _struct?14429_)
        (let ((_wrap14431_
               (lambda (_e-stx15563_)
                 (gx#stx-wrap-source
                  _e-stx15563_
                  (gx#stx-source _stx14423_)))))
          (let ((_make-id14433_
                 (if (uninterned-symbol? (gx#stx-e _id14425_))
                     (lambda _g30317_ (gx#genident _id14425_))
                     (lambda _args15560_
                       (apply gx#stx-identifier _id14425_ _args15560_)))))
            (begin
              (gx#check-duplicate-identifiers _els14427_ _stx14423_)
              (let ((_name14435_ (symbol->string (gx#stx-e _id14425_))))
                (let ((_super14438_
                       (if _struct?14429_
                           (if _super-ref14426_
                               (gx#syntax-local-value _super-ref14426_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14426_))))
                  (let ((_g1444114449_
                         (lambda (_g1444214445_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1444214445_))))
                    (let ((_g1444015554_
                           (lambda (_g1444214453_)
                             ((lambda (_L14456_)
                                (let ()
                                  (let ((_g1447214480_
                                         (lambda (_g1447314476_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1447314476_))))
                                    (let ((_g1447115550_
                                           (lambda (_g1447314484_)
                                             ((lambda (_L14487_)
                                                (let ()
                                                  (let ((_g1450014508_
                                                         (lambda (_g1450114504_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1450114504_))))
                                                    (let ((_g1449915546_
                                                           (lambda (_g1450114512_)
                                                             ((lambda (_L14515_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1452814536_
                                 (lambda (_g1452914532_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1452914532_))))
                            (let ((_g1452715542_
                                   (lambda (_g1452914540_)
                                     ((lambda (_L14543_)
                                        (let ()
                                          (let ((_g1455614564_
                                                 (lambda (_g1455714560_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1455714560_))))
                                            (let ((_g1455515538_
                                                   (lambda (_g1455714568_)
                                                     ((lambda (_L14571_)
                                                        (let ()
                                                          (let ((_g1458414592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1458514588_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1458514588_))))
                    (let ((_g1458315534_
                           (lambda (_g1458514596_)
                             ((lambda (_L14599_)
                                (let ()
                                  (let ((_g1461214629_
                                         (lambda (_g1461314625_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1461314625_))))
                                    (let ((_g1461115530_
                                           (lambda (_g1461314633_)
                                             (if (gx#stx-pair/null?
                                                  _g1461314633_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1461314633_)
                                                           '0)
                                                     (let ((_g30307_
                                                            (gx#syntax-split-splice
                                                             _g1461314633_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30308_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30307_)))
                   (if (not (fx= _g30308_ 2))
                       (error "Context expects 2 values" _g30308_)))
                 (let ((_target1461514636_ (values-ref _g30307_ 0))
                       (_tl1461714639_ (values-ref _g30307_ 1)))
                   (if (gx#stx-null? _tl1461714639_)
                       (letrec ((_loop1461814642_
                                 (lambda (_hd1461614646_ _attr1462214649_)
                                   (if (gx#stx-pair? _hd1461614646_)
                                       (let ((_e1461914652_
                                              (gx#syntax-e _hd1461614646_)))
                                         (let ((_lp-hd1462014656_
                                                (##car _e1461914652_))
                                               (_lp-tl1462114659_
                                                (##cdr _e1461914652_)))
                                           (_loop1461814642_
                                            _lp-tl1462114659_
                                            (cons _lp-hd1462014656_
                                                  _attr1462214649_))))
                                       (let ((_attr1462314662_
                                              (reverse _attr1462214649_)))
                                         ((lambda (_L14666_)
                                            (let ()
                                              (let ((_g1468314700_
                                                     (lambda (_g1468414696_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1468414696_))))
                                                (let ((_g1468215521_
                                                       (lambda (_g1468414704_)
                                                         (if (gx#stx-pair/null?
                                                              _g1468414704_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1468414704_)
                               '0)
                         (let ((_g30309_
                                (gx#syntax-split-splice _g1468414704_ '0)))
                           (begin
                             (let ((_g30310_ (values-count _g30309_)))
                               (if (not (fx= _g30310_ 2))
                                   (error "Context expects 2 values"
                                          _g30310_)))
                             (let ((_target1468614707_ (values-ref _g30309_ 0))
                                   (_tl1468814710_ (values-ref _g30309_ 1)))
                               (if (gx#stx-null? _tl1468814710_)
                                   (letrec ((_loop1468914713_
                                             (lambda (_hd1468714717_
                                                      _getf1469314720_)
                                               (if (gx#stx-pair?
                                                    _hd1468714717_)
                                                   (let ((_e1469014723_
                                                          (gx#syntax-e
                                                           _hd1468714717_)))
                                                     (let ((_lp-hd1469114727_
                                                            (##car _e1469014723_))
                                                           (_lp-tl1469214730_
                                                            (##cdr _e1469014723_)))
                                                       (_loop1468914713_
                                                        _lp-tl1469214730_
                                                        (cons _lp-hd1469114727_
                                                              _getf1469314720_))))
                                                   (let ((_getf1469414733_
                                                          (reverse _getf1469314720_)))
                                                     ((lambda (_L14737_)
                                                        (let ()
                                                          (let ((_g1475414771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1475514767_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1475514767_))))
                    (let ((_g1475315512_
                           (lambda (_g1475514775_)
                             (if (gx#stx-pair/null? _g1475514775_)
                                 (if (fx>= (gx#stx-length _g1475514775_) '0)
                                     (let ((_g30311_
                                            (gx#syntax-split-splice
                                             _g1475514775_
                                             '0)))
                                       (begin
                                         (let ((_g30312_
                                                (values-count _g30311_)))
                                           (if (not (fx= _g30312_ 2))
                                               (error "Context expects 2 values"
                                                      _g30312_)))
                                         (let ((_target1475714778_
                                                (values-ref _g30311_ 0))
                                               (_tl1475914781_
                                                (values-ref _g30311_ 1)))
                                           (if (gx#stx-null? _tl1475914781_)
                                               (letrec ((_loop1476014784_
                                                         (lambda (_hd1475814788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1476414791_)
                   (if (gx#stx-pair? _hd1475814788_)
                       (let ((_e1476114794_ (gx#syntax-e _hd1475814788_)))
                         (let ((_lp-hd1476214798_ (##car _e1476114794_))
                               (_lp-tl1476314801_ (##cdr _e1476114794_)))
                           (_loop1476014784_
                            _lp-tl1476314801_
                            (cons _lp-hd1476214798_ _setf1476414791_))))
                       (let ((_setf1476514804_ (reverse _setf1476414791_)))
                         ((lambda (_L14808_)
                            (let ()
                              (let ((_type-attr14850_
                                     (if (gx#stx-null? _els14427_)
                                         '()
                                         (if _struct?14429_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14808_
                                                            _L14737_)
                                                           (foldr (lambda (_g1482414828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1482514831_
                                   _g1482614833_)
                            (cons (cons _g1482514831_ (cons _g1482414828_ '()))
                                  _g1482614833_))
                          '()
                          _L14808_
                          _L14737_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14808_
                                                            _L14737_
                                                            _L14666_)
                                                           (foldr (lambda (_g1483514840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1483614843_
                                   _g1483714845_
                                   _g1483814847_)
                            (cons (cons _g1483714845_
                                        (cons _g1483614843_
                                              (cons _g1483514840_ '())))
                                  _g1483814847_))
                          '()
                          _L14808_
                          _L14737_
                          _L14666_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14857_
                                       (cons 'name:
                                             (cons (let ((_$e14853_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14428_)))
                                                     (if _$e14853_
                                                         _$e14853_
                                                         _id14425_))
                                                   '()))))
                                  (let ((_type-id14872_
                                         (let ((_$e14868_
                                                (let ((_e1485914861_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14428_)))
                                                  (if _e1485914861_
                                                      (let ((_e14865_
                                                             _e1485914861_))
                                                        (cons 'id:
                                                              (cons _e14865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14868_ _$e14868_ '()))))
                                    (let ((_type-ctor14887_
                                           (let ((_$e14883_
                                                  (let ((_e1487414876_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14428_)))
                                                    (if _e1487414876_
                                                        (let ((_e14880_
                                                               _e1487414876_))
                                                          (cons 'constructor:
                                                                (cons _e14880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14883_ _$e14883_ '()))))
                                      (let ((_plist14905_
                                             (let ((_plist14894_
                                                    (let ((_$e14890_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14428_)))
                                                      (if _$e14890_
                                                          _$e14890_
                                                          '()))))
                                               (let ((_plist14897_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14428_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14894_)
                  _plist14894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14900_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14428_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14897_)
                    _plist14897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14900_))))))
                                        (let ((_type-plist14945_
                                               (if (null? _plist14905_)
                                                   _plist14905_
                                                   (let ((_g1490814916_
                                                          (lambda (_g1490914912_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1490914912_))))
                                                     (let ((_g1490714941_
                                                            (lambda (_g1490914920_)
                                                              ((lambda (_L14923_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14923_ '()))
                                       '()))))
                       _g1490914920_))))
               (_g1490714941_ _plist14905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_type-unchecked14960_
                                                 (let ((_$e14956_
                                                        (let ((_e1494714949_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body14428_)))
                                                          (if _e1494714949_
                                                              (let ((_e14953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1494714949_))
                        (cons 'unchecked: (cons _e14953_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e14956_
                                                       _$e14956_
                                                       '()))))
                                            (let ((_g1496314980_
                                                   (lambda (_g1496414976_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1496414976_))))
                                              (let ((_g1496215508_
                                                     (lambda (_g1496414984_)
                                                       (if (gx#stx-pair/null?
                                                            _g1496414984_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1496414984_)
                             '0)
                       (let ((_g30313_
                              (gx#syntax-split-splice _g1496414984_ '0)))
                         (begin
                           (let ((_g30314_ (values-count _g30313_)))
                             (if (not (fx= _g30314_ 2))
                                 (error "Context expects 2 values" _g30314_)))
                           (let ((_target1496614987_ (values-ref _g30313_ 0))
                                 (_tl1496814990_ (values-ref _g30313_ 1)))
                             (if (gx#stx-null? _tl1496814990_)
                                 (letrec ((_loop1496914993_
                                           (lambda (_hd1496714997_
                                                    _type-body1497315000_)
                                             (if (gx#stx-pair? _hd1496714997_)
                                                 (let ((_e1497015003_
                                                        (gx#syntax-e
                                                         _hd1496714997_)))
                                                   (let ((_lp-hd1497115007_
                                                          (##car _e1497015003_))
                                                         (_lp-tl1497215010_
                                                          (##cdr _e1497015003_)))
                                                     (_loop1496914993_
                                                      _lp-tl1497215010_
                                                      (cons _lp-hd1497115007_
                                                            _type-body1497315000_))))
                                                 (let ((_type-body1497415013_
                                                        (reverse _type-body1497315000_)))
                                                   ((lambda (_L15017_)
                                                      (let ()
                                                        (let ((_g1503415042_
                                                               (lambda (_g1503515038_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1503515038_))))
                  (let ((_g1503315496_
                         (lambda (_g1503515046_)
                           ((lambda (_L15049_)
                              (let ()
                                (let ((_g1506215070_
                                       (lambda (_g1506315066_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1506315066_))))
                                  (let ((_g1506115492_
                                         (lambda (_g1506315074_)
                                           ((lambda (_L15077_)
                                              (let ()
                                                (let ((_g1509015098_
                                                       (lambda (_g1509115094_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1509115094_))))
                                                  (let ((_g1508915406_
                                                         (lambda (_g1509115102_)
                                                           ((lambda (_L15105_)
                                                              (let ()
                                                                (let ((_g1511815126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1511915122_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1511915122_))))
                          (let ((_g1511715402_
                                 (lambda (_g1511915130_)
                                   ((lambda (_L15133_)
                                      (let ()
                                        (let ((_g1514615154_
                                               (lambda (_g1514715150_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1514715150_))))
                                          (let ((_g1514515398_
                                                 (lambda (_g1514715158_)
                                                   ((lambda (_L15161_)
                                                      (let ()
                                                        (let ((_g1517415182_
                                                               (lambda (_g1517515178_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1517515178_))))
                  (let ((_g1517315356_
                         (lambda (_g1517515186_)
                           ((lambda (_L15189_)
                              (let ()
                                (let ((_g1520215210_
                                       (lambda (_g1520315206_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1520315206_))))
                                  (let ((_g1520115352_
                                         (lambda (_g1520315214_)
                                           ((lambda (_L15217_)
                                              (let ()
                                                (let ((_g1523015238_
                                                       (lambda (_g1523115234_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1523115234_))))
                                                  (let ((_g1522915348_
                                                         (lambda (_g1523115242_)
                                                           ((lambda (_L15245_)
                                                              (let ()
                                                                (let ((_g1525815266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1525915262_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1525915262_))))
                          (let ((_g1525715344_
                                 (lambda (_g1525915270_)
                                   ((lambda (_L15273_)
                                      (let ()
                                        (let ((_g1528615294_
                                               (lambda (_g1528715290_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1528715290_))))
                                          (let ((_g1528515316_
                                                 (lambda (_g1528715298_)
                                                   ((lambda (_L15301_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap14431_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15049_ (cons _L15301_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1528715298_))))
                                            (_g1528515316_
                                             (_wrap14431_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'defsyntax)
                                                    (cons _L14487_
                                                          (cons (cons _L15077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'runtime-identifier:
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14515_ '()))
                                          (cons 'expander-identifiers:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons _L15105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _L14515_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _L14543_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _L14571_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1531915326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1532015329_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g1531915326_ '()))
                                 _g1532015329_))
                         '()
                         _L14737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1532115332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1532215335_)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _g1532115332_ '()))
                                       _g1532215335_))
                               '()
                               _L14808_)))
                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (cons 'type-exhibitor:
                    (cons (cons _L15133_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L15161_ '()))
                                      (cons _L15189_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L15217_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L15245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15273_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons (begin
                                          '#!void
                                          (foldr (lambda (_g1532315338_
                                                          _g1532415341_)
                                                   (cons _g1532315338_
                                                         _g1532415341_))
                                                 '()
                                                 _L14666_))
                                        '()))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1525915270_))))
                            (_g1525715344_ _plist14905_)))))
                    _g1523115242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1522915348_
                                                     (if (not (null? _type-ctor14887_))
                                                         (cadr _type-ctor14887_)
                                                         '#f))))))
                                            _g1520315214_))))
                                    (_g1520115352_ (cadr _type-name14857_))))))
                            _g1517515186_))))
                    (_g1517315356_
                     (let ((_quote-e15395_
                            (lambda (_x-ref15360_)
                              (if _x-ref15360_
                                  (let ((_g1536315371_
                                         (lambda (_g1536415367_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1536415367_))))
                                    (let ((_g1536215391_
                                           (lambda (_g1536415375_)
                                             ((lambda (_L15378_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _L15378_ '()))))
                                              _g1536415375_))))
                                      (_g1536215391_ _x-ref15360_)))
                                  '#f))))
                       (if _struct?14429_
                           (_quote-e15395_ _super-ref14426_)
                           (cons 'list
                                 (map _quote-e15395_ _super-ref14426_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1514715158_))))
                                            (_g1514515398_
                                             (if (not (null? _type-id14872_))
                                                 (cadr _type-id14872_)
                                                 '#f))))))
                                    _g1511915130_))))
                            (_g1511715402_
                             (if _struct?14429_
                                 (gx#datum->syntax
                                  '#f
                                  'make-runtime-struct-exhibitor)
                                 (gx#datum->syntax
                                  '#f
                                  'make-runtime-class-exhibitor)))))))
                    _g1509115102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1508915406_
                                                     (if _struct?14429_
                                                         (if _super14438_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _L14599_ '()))
                     '#f)
                 (let ((_g1541015427_
                        (lambda (_g1541115423_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1541115423_))))
                   (let ((_g1540915488_
                          (lambda (_g1541115431_)
                            (if (gx#stx-pair/null? _g1541115431_)
                                (if (fx>= (gx#stx-length _g1541115431_) '0)
                                    (let ((_g30315_
                                           (gx#syntax-split-splice
                                            _g1541115431_
                                            '0)))
                                      (begin
                                        (let ((_g30316_
                                               (values-count _g30315_)))
                                          (if (not (fx= _g30316_ 2))
                                              (error "Context expects 2 values"
                                                     _g30316_)))
                                        (let ((_target1541315434_
                                               (values-ref _g30315_ 0))
                                              (_tl1541515437_
                                               (values-ref _g30315_ 1)))
                                          (if (gx#stx-null? _tl1541515437_)
                                              (letrec ((_loop1541615440_
                                                        (lambda (_hd1541415444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-id1542015447_)
                  (if (gx#stx-pair? _hd1541415444_)
                      (let ((_e1541715450_ (gx#syntax-e _hd1541415444_)))
                        (let ((_lp-hd1541815454_ (##car _e1541715450_))
                              (_lp-tl1541915457_ (##cdr _e1541715450_)))
                          (_loop1541615440_
                           _lp-tl1541915457_
                           (cons _lp-hd1541815454_ _super-id1542015447_))))
                      (let ((_super-id1542115460_
                             (reverse _super-id1542015447_)))
                        ((lambda (_L15464_)
                           (let ()
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1547915482_
                                                     _g1548015485_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g1547915482_
                                                                '()))
                                                    _g1548015485_))
                                            '()
                                            _L15464_)))))
                         _super-id1542115460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1541615440_
                                                 _target1541315434_
                                                 '()))
                                              (_g1541015427_ _g1541115431_)))))
                                    (_g1541015427_ _g1541115431_))
                                (_g1541015427_ _g1541115431_)))))
                     (_g1540915488_ _L14599_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1506315074_))))
                                    (_g1506115492_
                                     (if _struct?14429_
                                         (gx#datum->syntax
                                          '#f
                                          'make-extended-struct-info)
                                         (gx#datum->syntax
                                          '#f
                                          'make-extended-class-info)))))))
                            _g1503515046_))))
                    (_g1503315496_
                     (_wrap14431_
                      (cons _L14456_
                            (cons _L14515_
                                  (cons _L14599_
                                        (cons _L14543_
                                              (cons _L14571_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1549915502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1550015505_)
                       (cons _g1549915502_ _g1550015505_))
                     '()
                     _L15017_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _type-body1497415013_))))))
                                   (_loop1496914993_ _target1496614987_ '()))
                                 (_g1496314980_ _g1496414984_)))))
                       (_g1496314980_ _g1496414984_))
                   (_g1496314980_ _g1496414984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1496215508_
                                                 (foldr cons
                                                        (foldr cons
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr cons
                                     (foldr cons
                                            _type-unchecked14960_
                                            _type-plist14945_)
                                     _type-ctor14887_)
                              _type-name14857_)
                       _type-id14872_)
                _type-attr14850_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1476514804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1476014784_
                                                  _target1475714778_
                                                  '()))
                                               (_g1475414771_
                                                _g1475514775_)))))
                                     (_g1475414771_ _g1475514775_))
                                 (_g1475414771_ _g1475514775_)))))
                      (_g1475315512_
                       (gx#stx-map
                        (lambda (_g1551515517_)
                          (_make-id14433_
                           _name14435_
                           '"-"
                           _g1551515517_
                           '"-set!"))
                        _els14427_))))))
              _getf1469414733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1468914713_ _target1468614707_ '()))
                                   (_g1468314700_ _g1468414704_)))))
                         (_g1468314700_ _g1468414704_))
                     (_g1468314700_ _g1468414704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1468215521_
                                                   (gx#stx-map
                                                    (lambda (_g1552415526_)
                                                      (_make-id14433_
                                                       _name14435_
                                                       '"-"
                                                       _g1552415526_))
                                                    _els14427_))))))
                                          _attr1462314662_))))))
                         (_loop1461814642_ _target1461514636_ '()))
                       (_g1461214629_ _g1461314633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1461214629_
                                                      _g1461314633_))
                                                 (_g1461214629_
                                                  _g1461314633_)))))
                                      (_g1461115530_ _els14427_)))))
                              _g1458514596_))))
                      (_g1458315534_
                       (if _struct?14429_
                           (if _super14438_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14438_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14438_)))))))
              _g1455714568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1455515538_
                                               (_make-id14433_
                                                _name14435_
                                                '"?"))))))
                                      _g1452914540_))))
                              (_g1452715542_
                               (_make-id14433_ '"make-" _name14435_))))))
                      _g1450114512_))))
              (_g1449915546_ (_make-id14433_ _name14435_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1447314484_))))
                                      (_g1447115550_ _id14425_)))))
                              _g1444214453_))))
                      (_g1444015554_
                       (if _struct?14429_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15882_)
        (let ((_generate15885_
               (lambda (_hd15969_ _fields15971_ _body15972_)
                 (let ((_g1597515990_
                        (lambda (_g1597615986_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1597615986_))))
                   (let ((_g1597416001_
                          (lambda (_g1597615994_)
                            ((lambda ()
                               (if (gx#identifier? _hd15969_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15882_
                                    _hd15969_
                                    '#f
                                    _fields15971_
                                    _body15972_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15882_
                                    _hd15969_)))))))
                     (let ((_g1597316045_
                            (lambda (_g1597616005_)
                              (if (gx#stx-pair? _g1597616005_)
                                  (let ((_e1597916008_
                                         (gx#syntax-e _g1597616005_)))
                                    (let ((_hd1598016012_
                                           (##car _e1597916008_))
                                          (_tl1598116015_
                                           (##cdr _e1597916008_)))
                                      (if (gx#stx-pair? _tl1598116015_)
                                          (let ((_e1598216018_
                                                 (gx#syntax-e _tl1598116015_)))
                                            (let ((_hd1598316022_
                                                   (##car _e1598216018_))
                                                  (_tl1598416025_
                                                   (##cdr _e1598216018_)))
                                              (if (gx#stx-null? _tl1598416025_)
                                                  ((lambda (_L16028_ _L16030_)
                                                     (if (if (gx#identifier?
                                                              _L16030_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16028_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15882_
                                                          _L16030_
                                                          _L16028_
                                                          _fields15971_
                                                          _body15972_
                                                          '#t)
                                                         (_g1597416001_
                                                          _g1597616005_)))
                                                   _hd1598316022_
                                                   _hd1598016012_)
                                                  (_g1597416001_
                                                   _g1597616005_))))
                                          (_g1597416001_ _g1597616005_))))
                                  (_g1597416001_ _g1597616005_)))))
                       (_g1597316045_ _hd15969_)))))))
          (let ((_g1588815907_
                 (lambda (_g1588915903_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1588915903_))))
            (let ((_g1588715965_
                   (lambda (_g1588915911_)
                     (if (gx#stx-pair? _g1588915911_)
                         (let ((_e1589315914_ (gx#syntax-e _g1588915911_)))
                           (let ((_hd1589415918_ (##car _e1589315914_))
                                 (_tl1589515921_ (##cdr _e1589315914_)))
                             (if (gx#stx-pair? _tl1589515921_)
                                 (let ((_e1589615924_
                                        (gx#syntax-e _tl1589515921_)))
                                   (let ((_hd1589715928_ (##car _e1589615924_))
                                         (_tl1589815931_
                                          (##cdr _e1589615924_)))
                                     (if (gx#stx-pair? _tl1589815931_)
                                         (let ((_e1589915934_
                                                (gx#syntax-e _tl1589815931_)))
                                           (let ((_hd1590015938_
                                                  (##car _e1589915934_))
                                                 (_tl1590115941_
                                                  (##cdr _e1589915934_)))
                                             ((lambda (_L15944_
                                                       _L15946_
                                                       _L15947_)
                                                (if (if (gx#identifier-list?
                                                         _L15946_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15944_)
                                                        '#f)
                                                    (_generate15885_
                                                     _L15947_
                                                     _L15946_
                                                     _L15944_)
                                                    (_g1588815907_
                                                     _g1588915911_)))
                                              _tl1590115941_
                                              _hd1590015938_
                                              _hd1589715928_)))
                                         (_g1588815907_ _g1588915911_))))
                                 (_g1588815907_ _g1588915911_))))
                         (_g1588815907_ _g1588915911_)))))
              (_g1588715965_ _stx15882_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx16049_)
        (let ((_generate16052_
               (lambda (_hd16136_ _slots16138_ _body16139_)
                 (let ((_g1614216154_
                        (lambda (_g1614316150_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1614316150_))))
                   (let ((_g1614116165_
                          (lambda (_g1614316158_)
                            ((lambda ()
                               (if (gx#identifier? _hd16136_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx16049_
                                    _hd16136_
                                    '()
                                    _slots16138_
                                    _body16139_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx16049_
                                    _hd16136_)))))))
                     (let ((_g1614016197_
                            (lambda (_g1614316169_)
                              (if (gx#stx-pair? _g1614316169_)
                                  (let ((_e1614616172_
                                         (gx#syntax-e _g1614316169_)))
                                    (let ((_hd1614716176_
                                           (##car _e1614616172_))
                                          (_tl1614816179_
                                           (##cdr _e1614616172_)))
                                      ((lambda (_L16182_ _L16184_)
                                         (if (if (gx#stx-list? _L16182_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16182_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx16049_
                                              _L16184_
                                              (gx#syntax->list _L16182_)
                                              _slots16138_
                                              _body16139_
                                              '#f)
                                             (_g1614116165_ _g1614316169_)))
                                       _tl1614816179_
                                       _hd1614716176_)))
                                  (_g1614116165_ _g1614316169_)))))
                       (_g1614016197_ _hd16136_)))))))
          (let ((_g1605516074_
                 (lambda (_g1605616070_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1605616070_))))
            (let ((_g1605416132_
                   (lambda (_g1605616078_)
                     (if (gx#stx-pair? _g1605616078_)
                         (let ((_e1606016081_ (gx#syntax-e _g1605616078_)))
                           (let ((_hd1606116085_ (##car _e1606016081_))
                                 (_tl1606216088_ (##cdr _e1606016081_)))
                             (if (gx#stx-pair? _tl1606216088_)
                                 (let ((_e1606316091_
                                        (gx#syntax-e _tl1606216088_)))
                                   (let ((_hd1606416095_ (##car _e1606316091_))
                                         (_tl1606516098_
                                          (##cdr _e1606316091_)))
                                     (if (gx#stx-pair? _tl1606516098_)
                                         (let ((_e1606616101_
                                                (gx#syntax-e _tl1606516098_)))
                                           (let ((_hd1606716105_
                                                  (##car _e1606616101_))
                                                 (_tl1606816108_
                                                  (##cdr _e1606616101_)))
                                             ((lambda (_L16111_
                                                       _L16113_
                                                       _L16114_)
                                                (if (if (gx#identifier-list?
                                                         _L16113_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L16111_)
                                                        '#f)
                                                    (_generate16052_
                                                     _L16114_
                                                     _L16113_
                                                     _L16111_)
                                                    (_g1605516074_
                                                     _g1605616078_)))
                                              _tl1606816108_
                                              _hd1606716105_
                                              _hd1606416095_)))
                                         (_g1605516074_ _g1605616078_))))
                                 (_g1605516074_ _g1605616078_))))
                         (_g1605516074_ _g1605616078_)))))
              (_g1605416132_ _stx16049_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx16201_)
        (let ((_wrap16204_
               (lambda (_e-stx16509_)
                 (gx#stx-wrap-source
                  _e-stx16509_
                  (gx#stx-source _stx16201_)))))
          (let ((_method-opt?16206_
                 (lambda (_x16506_) (memq (gx#stx-e _x16506_) '(rebind:)))))
            (let ((_g1620816237_
                   (lambda (_g1620916233_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1620916233_))))
              (let ((_g1620716502_
                     (lambda (_g1620916241_)
                       (if (gx#stx-pair? _g1620916241_)
                           (let ((_e1621416244_ (gx#syntax-e _g1620916241_)))
                             (let ((_hd1621516248_ (##car _e1621416244_))
                                   (_tl1621616251_ (##cdr _e1621416244_)))
                               (if (gx#stx-pair? _tl1621616251_)
                                   (let ((_e1621716254_
                                          (gx#syntax-e _tl1621616251_)))
                                     (let ((_hd1621816258_
                                            (##car _e1621716254_))
                                           (_tl1621916261_
                                            (##cdr _e1621716254_)))
                                       (if (gx#stx-pair? _hd1621816258_)
                                           (let ((_e1622016264_
                                                  (gx#syntax-e
                                                   _hd1621816258_)))
                                             (let ((_hd1622116268_
                                                    (##car _e1622016264_))
                                                   (_tl1622216271_
                                                    (##cdr _e1622016264_)))
                                               (if (gx#identifier?
                                                    _hd1622116268_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g30318_|
                                                        _hd1622116268_)
                                                       (if (gx#stx-pair?
                                                            _tl1622216271_)
                                                           (let ((_e1622316274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1622216271_)))
                     (let ((_hd1622416278_ (##car _e1622316274_))
                           (_tl1622516281_ (##cdr _e1622316274_)))
                       (if (gx#stx-pair? _tl1622516281_)
                           (let ((_e1622616284_ (gx#syntax-e _tl1622516281_)))
                             (let ((_hd1622716288_ (##car _e1622616284_))
                                   (_tl1622816291_ (##cdr _e1622616284_)))
                               (if (gx#stx-null? _tl1622816291_)
                                   (if (gx#stx-pair? _tl1621916261_)
                                       (let ((_e1622916294_
                                              (gx#syntax-e _tl1621916261_)))
                                         (let ((_hd1623016298_
                                                (##car _e1622916294_))
                                               (_tl1623116301_
                                                (##cdr _e1622916294_)))
                                           ((lambda (_L16304_
                                                     _L16306_
                                                     _L16307_
                                                     _L16308_)
                                              (if (if (gx#identifier? _L16308_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L16307_)
                                                          (gx#stx-plist?
                                                           _L16304_
                                                           _method-opt?16206_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass16333_
                                                         (gx#syntax-local-value
                                                          _L16307_)))
                                                    (let ((_rebind?16336_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L16304_))
                       '#t
                       '#f)))
              (let ((_g1633916347_
                     (lambda (_g1634016343_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1634016343_))))
                (let ((_g1633816498_
                       (lambda (_g1634016351_)
                         ((lambda (_L16354_)
                            (let ()
                              (let ((_g1636816376_
                                     (lambda (_g1636916372_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1636916372_))))
                                (let ((_g1636716494_
                                       (lambda (_g1636916380_)
                                         ((lambda (_L16383_)
                                            (let ()
                                              (let ((_g1639616404_
                                                     (lambda (_g1639716400_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1639716400_))))
                                                (let ((_g1639516490_
                                                       (lambda (_g1639716408_)
                                                         ((lambda (_L16411_)
                                                            (let ()
                                                              (let ((_g1642416432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1642516428_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1642516428_))))
                        (let ((_g1642316486_
                               (lambda (_g1642516436_)
                                 ((lambda (_L16439_)
                                    (let ()
                                      (let ((_g1645216460_
                                             (lambda (_g1645316456_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1645316456_))))
                                        (let ((_g1645116482_
                                               (lambda (_g1645316464_)
                                                 ((lambda (_L16467_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap16204_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L16411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L16467_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1645316464_))))
                                          (_g1645116482_
                                           (_wrap16204_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L16354_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L16308_ '()))
                      (cons _L16383_ (cons _L16439_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1642516436_))))
                          (_g1642316486_ _rebind?16336_)))))
                  _g1639716408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1639516490_
                                                   (_wrap16204_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L16383_
                                                                (cons _L16306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1636916380_))))
                                  (_g1636716494_
                                   (gx#stx-identifier
                                    _L16308_
                                    _L16307_
                                    '"::"
                                    _L16308_))))))
                          _g1634016351_))))
                  (_g1633816498_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass16333_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not (gx#identifier?
                                                            _L16308_))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; expected method identifier"
                                                       _stx16201_
                                                       _L16308_)
                                                      (if (not (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                                _L16307_))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; expected type identifier"
                                                           _stx16201_
                                                           _L16307_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; illegal method options"
                                                           _stx16201_)))))
                                            _tl1623116301_
                                            _hd1623016298_
                                            _hd1622716288_
                                            _hd1622416278_)))
                                       (_g1620816237_ _g1620916241_))
                                   (_g1620816237_ _g1620916241_))))
                           (_g1620816237_ _g1620916241_))))
                   (_g1620816237_ _g1620916241_))
               (_g1620816237_ _g1620916241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1620816237_
                                                    _g1620916241_))))
                                           (_g1620816237_ _g1620916241_))))
                                   (_g1620816237_ _g1620916241_))))
                           (_g1620816237_ _g1620916241_)))))
                (_g1620716502_ _stx16201_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx16512_)
        (let ((_g1651716566_
               (lambda (_g1651816562_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1651816562_))))
          (let ((_g1651616665_
                 (lambda (_g1651816570_)
                   (if (gx#stx-pair? _g1651816570_)
                       (let ((_e1654316573_ (gx#syntax-e _g1651816570_)))
                         (let ((_hd1654416577_ (##car _e1654316573_))
                               (_tl1654516580_ (##cdr _e1654316573_)))
                           (if (gx#stx-pair? _tl1654516580_)
                               (let ((_e1654616583_
                                      (gx#syntax-e _tl1654516580_)))
                                 (let ((_hd1654716587_ (##car _e1654616583_))
                                       (_tl1654816590_ (##cdr _e1654616583_)))
                                   (if (gx#stx-pair? _tl1654816590_)
                                       (let ((_e1654916593_
                                              (gx#syntax-e _tl1654816590_)))
                                         (let ((_hd1655016597_
                                                (##car _e1654916593_))
                                               (_tl1655116600_
                                                (##cdr _e1654916593_)))
                                           (if (gx#stx-pair/null?
                                                _tl1655116600_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1655116600_)
                                                         '0)
                                                   (let ((_g30319_
                                                          (gx#syntax-split-splice
                                                           _tl1655116600_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30320_
                                                              (values-count
                                                               _g30319_)))
                                                         (if (not (fx= _g30320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30320_)))
               (let ((_target1655216603_ (values-ref _g30319_ 0))
                     (_tl1655416606_ (values-ref _g30319_ 1)))
                 (if (gx#stx-null? _tl1655416606_)
                     (letrec ((_loop1655516609_
                               (lambda (_hd1655316613_ _arg1655916616_)
                                 (if (gx#stx-pair? _hd1655316613_)
                                     (let ((_e1655616619_
                                            (gx#syntax-e _hd1655316613_)))
                                       (let ((_lp-hd1655716623_
                                              (##car _e1655616619_))
                                             (_lp-tl1655816626_
                                              (##cdr _e1655616619_)))
                                         (_loop1655516609_
                                          _lp-tl1655816626_
                                          (cons _lp-hd1655716623_
                                                _arg1655916616_))))
                                     (let ((_arg1656016629_
                                            (reverse _arg1655916616_)))
                                       ((lambda (_L16633_ _L16635_ _L16636_)
                                          (if (gx#identifier? _L16636_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16635_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16636_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1665616659_ _g1665716662_)
                                   (cons _g1665616659_ _g1665716662_))
                                 '()
                                 _L16633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1651716566_ _g1651816570_)))
                                        _arg1656016629_
                                        _hd1655016597_
                                        _hd1654716587_))))))
                       (_loop1655516609_ _target1655216603_ '()))
                     (_g1651716566_ _g1651816570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1651716566_
                                                    _g1651816570_))
                                               (_g1651716566_ _g1651816570_))))
                                       (_g1651716566_ _g1651816570_))))
                               (_g1651716566_ _g1651816570_))))
                       (_g1651716566_ _g1651816570_)))))
            (let ((_g1651516771_
                   (lambda (_g1651816669_)
                     (if (gx#stx-pair? _g1651816669_)
                         (let ((_e1652216672_ (gx#syntax-e _g1651816669_)))
                           (let ((_hd1652316676_ (##car _e1652216672_))
                                 (_tl1652416679_ (##cdr _e1652216672_)))
                             (if (gx#stx-pair? _tl1652416679_)
                                 (let ((_e1652516682_
                                        (gx#syntax-e _tl1652416679_)))
                                   (let ((_hd1652616686_ (##car _e1652516682_))
                                         (_tl1652716689_
                                          (##cdr _e1652516682_)))
                                     (if (gx#stx-pair? _tl1652716689_)
                                         (let ((_e1652816692_
                                                (gx#syntax-e _tl1652716689_)))
                                           (let ((_hd1652916696_
                                                  (##car _e1652816692_))
                                                 (_tl1653016699_
                                                  (##cdr _e1652816692_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1653016699_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1653016699_)
                                                           '0)
                                                     (let ((_g30321_
                                                            (gx#syntax-split-splice
                                                             _tl1653016699_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30322_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30321_)))
                   (if (not (fx= _g30322_ 2))
                       (error "Context expects 2 values" _g30322_)))
                 (let ((_target1653116702_ (values-ref _g30321_ 0))
                       (_tl1653316705_ (values-ref _g30321_ 1)))
                   (if (gx#stx-null? _tl1653316705_)
                       (letrec ((_loop1653416708_
                                 (lambda (_hd1653216712_ _arg1653816715_)
                                   (if (gx#stx-pair? _hd1653216712_)
                                       (let ((_e1653516718_
                                              (gx#syntax-e _hd1653216712_)))
                                         (let ((_lp-hd1653616722_
                                                (##car _e1653516718_))
                                               (_lp-tl1653716725_
                                                (##cdr _e1653516718_)))
                                           (_loop1653416708_
                                            _lp-tl1653716725_
                                            (cons _lp-hd1653616722_
                                                  _arg1653816715_))))
                                       (let ((_arg1653916728_
                                              (reverse _arg1653816715_)))
                                         ((lambda (_L16732_ _L16734_ _L16735_)
                                            (if (if (gx#identifier? _L16735_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1675416757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1675516760_)
                        (cons _g1675416757_ _g1675516760_))
                      '()
                      _L16732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16735_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1676216765_
                                                              _g1676316768_)
                                                       (cons _g1676216765_
                                                             _g1676316768_))
                                                     '()
                                                     _L16732_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1651616665_ _g1651816669_)))
                                          _arg1653916728_
                                          _hd1652916696_
                                          _hd1652616686_))))))
                         (_loop1653416708_ _target1653116702_ '()))
                       (_g1651616665_ _g1651816669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1651616665_
                                                      _g1651816669_))
                                                 (_g1651616665_
                                                  _g1651816669_))))
                                         (_g1651616665_ _g1651816669_))))
                                 (_g1651616665_ _g1651816669_))))
                         (_g1651616665_ _g1651816669_)))))
              (_g1651516771_ _$stx16512_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16777_)
        (let ((_g1678216822_
               (lambda (_g1678316818_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1678316818_))))
          (let ((_g1678116923_
                 (lambda (_g1678316826_)
                   (if (gx#stx-pair? _g1678316826_)
                       (let ((_e1679916829_ (gx#syntax-e _g1678316826_)))
                         (let ((_hd1680016833_ (##car _e1679916829_))
                               (_tl1680116836_ (##cdr _e1679916829_)))
                           (if (gx#stx-pair? _tl1680116836_)
                               (let ((_e1680216839_
                                      (gx#syntax-e _tl1680116836_)))
                                 (let ((_hd1680316843_ (##car _e1680216839_))
                                       (_tl1680416846_ (##cdr _e1680216839_)))
                                   (if (gx#stx-pair? _tl1680416846_)
                                       (let ((_e1680516849_
                                              (gx#syntax-e _tl1680416846_)))
                                         (let ((_hd1680616853_
                                                (##car _e1680516849_))
                                               (_tl1680716856_
                                                (##cdr _e1680516849_)))
                                           (if (gx#stx-pair/null?
                                                _tl1680716856_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1680716856_)
                                                         '0)
                                                   (let ((_g30323_
                                                          (gx#syntax-split-splice
                                                           _tl1680716856_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30324_
                                                              (values-count
                                                               _g30323_)))
                                                         (if (not (fx= _g30324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30324_)))
               (let ((_target1680816859_ (values-ref _g30323_ 0))
                     (_tl1681016862_ (values-ref _g30323_ 1)))
                 (if (gx#stx-null? _tl1681016862_)
                     (letrec ((_loop1681116865_
                               (lambda (_hd1680916869_ _rest1681516872_)
                                 (if (gx#stx-pair? _hd1680916869_)
                                     (let ((_e1681216875_
                                            (gx#syntax-e _hd1680916869_)))
                                       (let ((_lp-hd1681316879_
                                              (##car _e1681216875_))
                                             (_lp-tl1681416882_
                                              (##cdr _e1681216875_)))
                                         (_loop1681116865_
                                          _lp-tl1681416882_
                                          (cons _lp-hd1681316879_
                                                _rest1681516872_))))
                                     (let ((_rest1681616885_
                                            (reverse _rest1681516872_)))
                                       ((lambda (_L16889_
                                                 _L16891_
                                                 _L16892_
                                                 _L16893_)
                                          (cons _L16893_
                                                (cons (cons _L16893_
                                                            (cons _L16892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16891_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1691416917_ _g1691516920_)
                         (cons _g1691416917_ _g1691516920_))
                       '()
                       _L16889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1681616885_
                                        _hd1680616853_
                                        _hd1680316843_
                                        _hd1680016833_))))))
                       (_loop1681116865_ _target1680816859_ '()))
                     (_g1678216822_ _g1678316826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1678216822_
                                                    _g1678316826_))
                                               (_g1678216822_ _g1678316826_))))
                                       (_g1678216822_ _g1678316826_))))
                               (_g1678216822_ _g1678316826_))))
                       (_g1678216822_ _g1678316826_)))))
            (let ((_g1678016977_
                   (lambda (_g1678316927_)
                     (if (gx#stx-pair? _g1678316927_)
                         (let ((_e1678616930_ (gx#syntax-e _g1678316927_)))
                           (let ((_hd1678716934_ (##car _e1678616930_))
                                 (_tl1678816937_ (##cdr _e1678616930_)))
                             (if (gx#stx-pair? _tl1678816937_)
                                 (let ((_e1678916940_
                                        (gx#syntax-e _tl1678816937_)))
                                   (let ((_hd1679016944_ (##car _e1678916940_))
                                         (_tl1679116947_
                                          (##cdr _e1678916940_)))
                                     (if (gx#stx-pair? _tl1679116947_)
                                         (let ((_e1679216950_
                                                (gx#syntax-e _tl1679116947_)))
                                           (let ((_hd1679316954_
                                                  (##car _e1679216950_))
                                                 (_tl1679416957_
                                                  (##cdr _e1679216950_)))
                                             (if (gx#stx-null? _tl1679416957_)
                                                 ((lambda (_L16960_ _L16962_)
                                                    (if (gx#identifier?
                                                         _L16960_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16960_ '()))
                                  '())))
                (_g1678116923_ _g1678316927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1679316954_
                                                  _hd1679016944_)
                                                 (_g1678116923_
                                                  _g1678316927_))))
                                         (_g1678116923_ _g1678316927_))))
                                 (_g1678116923_ _g1678316927_))))
                         (_g1678116923_ _g1678316927_)))))
              (_g1678016977_ _$stx16777_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16982_)
        (let ((_g1698717039_
               (lambda (_g1698817035_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1698817035_))))
          (let ((_g1698617168_
                 (lambda (_g1698817043_)
                   (if (gx#stx-pair? _g1698817043_)
                       (let ((_e1701017046_ (gx#syntax-e _g1698817043_)))
                         (let ((_hd1701117050_ (##car _e1701017046_))
                               (_tl1701217053_ (##cdr _e1701017046_)))
                           (if (gx#stx-pair? _tl1701217053_)
                               (let ((_e1701317056_
                                      (gx#syntax-e _tl1701217053_)))
                                 (let ((_hd1701417060_ (##car _e1701317056_))
                                       (_tl1701517063_ (##cdr _e1701317056_)))
                                   (if (gx#stx-pair? _tl1701517063_)
                                       (let ((_e1701617066_
                                              (gx#syntax-e _tl1701517063_)))
                                         (let ((_hd1701717070_
                                                (##car _e1701617066_))
                                               (_tl1701817073_
                                                (##cdr _e1701617066_)))
                                           (if (gx#stx-pair/null?
                                                _tl1701817073_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1701817073_)
                                                         '2)
                                                   (let ((_g30325_
                                                          (gx#syntax-split-splice
                                                           _tl1701817073_
                                                           '2)))
                                                     (begin
                                                       (let ((_g30326_
                                                              (values-count
                                                               _g30325_)))
                                                         (if (not (fx= _g30326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30326_)))
               (let ((_target1701917076_ (values-ref _g30325_ 0))
                     (_tl1702117079_ (values-ref _g30325_ 1)))
                 (if (gx#stx-pair? _tl1702117079_)
                     (let ((_e1702817082_ (gx#syntax-e _tl1702117079_)))
                       (let ((_hd1702917086_ (##car _e1702817082_))
                             (_tl1703017089_ (##cdr _e1702817082_)))
                         (if (gx#stx-pair? _tl1703017089_)
                             (let ((_e1703117092_
                                    (gx#syntax-e _tl1703017089_)))
                               (let ((_hd1703217096_ (##car _e1703117092_))
                                     (_tl1703317099_ (##cdr _e1703117092_)))
                                 (if (gx#stx-null? _tl1703317099_)
                                     (letrec ((_loop1702217102_
                                               (lambda (_hd1702017106_
                                                        _path1702617109_)
                                                 (if (gx#stx-pair?
                                                      _hd1702017106_)
                                                     (let ((_e1702317112_
                                                            (gx#syntax-e
                                                             _hd1702017106_)))
                                                       (let ((_lp-hd1702417116_
                                                              (##car _e1702317112_))
                                                             (_lp-tl1702517119_
                                                              (##cdr _e1702317112_)))
                                                         (_loop1702217102_
                                                          _lp-tl1702517119_
                                                          (cons _lp-hd1702417116_
                                                                _path1702617109_))))
                                                     (let ((_path1702717122_
                                                            (reverse _path1702617109_)))
                                                       ((lambda (_L17126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17128_
                         _L17129_
                         _L17130_
                         _L17131_
                         _L17132_)
                  (cons _L17132_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L17131_
                                          (cons _L17130_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1715917162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1716017165_)
                   (cons _g1715917162_ _g1716017165_))
                 '()
                 _L17129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L17128_ (cons _L17126_ '())))))
                _hd1703217096_
                _hd1702917086_
                _path1702717122_
                _hd1701717070_
                _hd1701417060_
                _hd1701117050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1702217102_
                                        _target1701917076_
                                        '()))
                                     (_g1698717039_ _g1698817043_))))
                             (_g1698717039_ _g1698817043_))))
                     (_g1698717039_ _g1698817043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1698717039_
                                                    _g1698817043_))
                                               (_g1698717039_ _g1698817043_))))
                                       (_g1698717039_ _g1698817043_))))
                               (_g1698717039_ _g1698817043_))))
                       (_g1698717039_ _g1698817043_)))))
            (let ((_g1698517236_
                   (lambda (_g1698817172_)
                     (if (gx#stx-pair? _g1698817172_)
                         (let ((_e1699217175_ (gx#syntax-e _g1698817172_)))
                           (let ((_hd1699317179_ (##car _e1699217175_))
                                 (_tl1699417182_ (##cdr _e1699217175_)))
                             (if (gx#stx-pair? _tl1699417182_)
                                 (let ((_e1699517185_
                                        (gx#syntax-e _tl1699417182_)))
                                   (let ((_hd1699617189_ (##car _e1699517185_))
                                         (_tl1699717192_
                                          (##cdr _e1699517185_)))
                                     (if (gx#stx-pair? _tl1699717192_)
                                         (let ((_e1699817195_
                                                (gx#syntax-e _tl1699717192_)))
                                           (let ((_hd1699917199_
                                                  (##car _e1699817195_))
                                                 (_tl1700017202_
                                                  (##cdr _e1699817195_)))
                                             (if (gx#stx-pair? _tl1700017202_)
                                                 (let ((_e1700117205_
                                                        (gx#syntax-e
                                                         _tl1700017202_)))
                                                   (let ((_hd1700217209_
                                                          (##car _e1700117205_))
                                                         (_tl1700317212_
                                                          (##cdr _e1700117205_)))
                                                     (if (gx#stx-null?
                                                          _tl1700317212_)
                                                         ((lambda (_L17215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17217_
                           _L17218_)
                    (if (gx#identifier? _L17217_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L17218_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17217_ '()))
                                          (cons _L17215_ '()))))
                        (_g1698617168_ _g1698817172_)))
                  _hd1700217209_
                  _hd1699917199_
                  _hd1699617189_)
                 (_g1698617168_ _g1698817172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1698617168_
                                                  _g1698817172_))))
                                         (_g1698617168_ _g1698817172_))))
                                 (_g1698617168_ _g1698817172_))))
                         (_g1698617168_ _g1698817172_)))))
              (_g1698517236_ _$stx16982_))))))))
