(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g30317_|
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
      (lambda _$args15868_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args15868_)))
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
      (lambda _$args15864_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args15864_)))
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
      (lambda _$args15860_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args15860_)))
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
      (lambda _$args15856_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args15856_)))
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
      (lambda _$args15852_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args15852_)))
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
      (lambda _$args15848_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args15848_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1582015834_
             (lambda (_stx15822_ _is?15824_)
               (if (gx#identifier? _stx15822_)
                   (let ((_e1582515827_
                          (gx#syntax-local-value _stx15822_ false)))
                     (if _e1582515827_
                         (let ((_e15831_ _e1582515827_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e15831_)
                               (_is?15824_ _e15831_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g30303_
          (let ((_g30302_ (length _g30303_)))
            (cond ((fx= _g30302_ 1)
                   (apply (lambda (_stx15838_)
                            (let ((_is?15841_ true))
                              (_opt-lambda1582015834_ _stx15838_ _is?15841_)))
                          _g30303_))
                  ((fx= _g30302_ 2) (apply _opt-lambda1582015834_ _g30303_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                    _g30303_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx15818_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15818_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx15815_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx15815_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id15809_)
        (if _id15809_
            (let ((_info15812_ (gx#syntax-local-value _id15809_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info15812_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info15812_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self15574_ _stx15576_)
        (let ((_g1557815598_
               (lambda (_g1557915594_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1557915594_))))
          (let ((_g1557715805_
                 (lambda (_g1557915602_)
                   (if (gx#stx-pair? _g1557915602_)
                       (let ((_e1558115605_ (gx#syntax-e _g1557915602_)))
                         (let ((_hd1558215609_ (##car _e1558115605_))
                               (_tl1558315612_ (##cdr _e1558115605_)))
                           (if (gx#stx-pair/null? _tl1558315612_)
                               (if (fx>= (gx#stx-length _tl1558315612_) '0)
                                   (let ((_g30304_
                                          (gx#syntax-split-splice
                                           _tl1558315612_
                                           '0)))
                                     (begin
                                       (let ((_g30305_
                                              (values-count _g30304_)))
                                         (if (not (fx= _g30305_ 2))
                                             (error "Context expects 2 values"
                                                    _g30305_)))
                                       (let ((_target1558415615_
                                              (values-ref _g30304_ 0))
                                             (_tl1558615618_
                                              (values-ref _g30304_ 1)))
                                         (if (gx#stx-null? _tl1558615618_)
                                             (letrec ((_loop1558715621_
                                                       (lambda (_hd1558515625_
                                                                _arg1559115628_)
                                                         (if (gx#stx-pair?
                                                              _hd1558515625_)
                                                             (let ((_e1558815631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1558515625_)))
                       (let ((_lp-hd1558915635_ (##car _e1558815631_))
                             (_lp-tl1559015638_ (##cdr _e1558815631_)))
                         (_loop1558715621_
                          _lp-tl1559015638_
                          (cons _lp-hd1558915635_ _arg1559115628_))))
                     (let ((_arg1559215641_ (reverse _arg1559115628_)))
                       ((lambda (_L15645_)
                          (let ((_g1566115692_
                                 (lambda (_g1566215688_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1566215688_))))
                            (let ((_g1566015801_
                                   (lambda (_g1566215696_)
                                     (if (gx#stx-pair? _g1566215696_)
                                         (let ((_e1566915699_
                                                (gx#syntax-e _g1566215696_)))
                                           (let ((_hd1567015703_
                                                  (##car _e1566915699_))
                                                 (_tl1567115706_
                                                  (##cdr _e1566915699_)))
                                             (if (gx#stx-pair? _tl1567115706_)
                                                 (let ((_e1567215709_
                                                        (gx#syntax-e
                                                         _tl1567115706_)))
                                                   (let ((_hd1567315713_
                                                          (##car _e1567215709_))
                                                         (_tl1567415716_
                                                          (##cdr _e1567215709_)))
                                                     (if (gx#stx-pair?
                                                          _tl1567415716_)
                                                         (let ((_e1567515719_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1567415716_)))
                   (let ((_hd1567615723_ (##car _e1567515719_))
                         (_tl1567715726_ (##cdr _e1567515719_)))
                     (if (gx#stx-pair? _tl1567715726_)
                         (let ((_e1567815729_ (gx#syntax-e _tl1567715726_)))
                           (let ((_hd1567915733_ (##car _e1567815729_))
                                 (_tl1568015736_ (##cdr _e1567815729_)))
                             (if (gx#stx-pair? _tl1568015736_)
                                 (let ((_e1568115739_
                                        (gx#syntax-e _tl1568015736_)))
                                   (let ((_hd1568215743_ (##car _e1568115739_))
                                         (_tl1568315746_
                                          (##cdr _e1568115739_)))
                                     (if (gx#stx-pair? _tl1568315746_)
                                         (let ((_e1568415749_
                                                (gx#syntax-e _tl1568315746_)))
                                           (let ((_hd1568515753_
                                                  (##car _e1568415749_))
                                                 (_tl1568615756_
                                                  (##cdr _e1568415749_)))
                                             (if (gx#stx-null? _tl1568615756_)
                                                 ((lambda (_L15759_
                                                           _L15761_
                                                           _L15762_
                                                           _L15763_
                                                           _L15764_
                                                           _L15765_)
                                                    (let ()
                                                      (cons _L15763_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1579215795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1579315798_)
                               (cons _g1579215795_ _g1579315798_))
                             '()
                             _L15645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1568515753_
                                                  _hd1568215743_
                                                  _hd1567915733_
                                                  _hd1567615723_
                                                  _hd1567315713_
                                                  _hd1567015703_)
                                                 (_g1566115692_
                                                  _g1566215696_))))
                                         (_g1566115692_ _g1566215696_))))
                                 (_g1566115692_ _g1566215696_))))
                         (_g1566115692_ _g1566215696_))))
                 (_g1566115692_ _g1566215696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1566115692_
                                                  _g1566215696_))))
                                         (_g1566115692_ _g1566215696_)))))
                              (_g1566015801_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers|
                                _self15574_)))))
                        _arg1559215641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1558715621_
                                                _target1558415615_
                                                '()))
                                             (_g1557815598_ _g1557915602_)))))
                                   (_g1557815598_ _g1557915602_))
                               (_g1557815598_ _g1557915602_))))
                       (_g1557815598_ _g1557915602_)))))
            (_g1557715805_ _stx15576_)))))
    (bind-method!
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx15565_)
        (let ((_body-opt?15568_
               (lambda (_key15571_)
                 (memq (gx#stx-e _key15571_)
                       '(id:
                         name:
                         constructor:
                         transparent:
                         final:
                         plist:
                         unchecked:)))))
          (gx#stx-plist? _stx15565_ _body-opt?15568_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx14422_
               _id14424_
               _super-ref14425_
               _els14426_
               _body14427_
               _struct?14428_)
        (let ((_wrap14430_
               (lambda (_e-stx15562_)
                 (gx#stx-wrap-source
                  _e-stx15562_
                  (gx#stx-source _stx14422_)))))
          (let ((_make-id14432_
                 (if (uninterned-symbol? (gx#stx-e _id14424_))
                     (lambda _g30316_ (gx#genident _id14424_))
                     (lambda _args15559_
                       (apply gx#stx-identifier _id14424_ _args15559_)))))
            (begin
              (gx#check-duplicate-identifiers _els14426_ _stx14422_)
              (let ((_name14434_ (symbol->string (gx#stx-e _id14424_))))
                (let ((_super14437_
                       (if _struct?14428_
                           (if _super-ref14425_
                               (gx#syntax-local-value _super-ref14425_)
                               '#f)
                           (map gx#syntax-local-value _super-ref14425_))))
                  (let ((_g1444014448_
                         (lambda (_g1444114444_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1444114444_))))
                    (let ((_g1443915553_
                           (lambda (_g1444114452_)
                             ((lambda (_L14455_)
                                (let ()
                                  (let ((_g1447114479_
                                         (lambda (_g1447214475_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1447214475_))))
                                    (let ((_g1447015549_
                                           (lambda (_g1447214483_)
                                             ((lambda (_L14486_)
                                                (let ()
                                                  (let ((_g1449914507_
                                                         (lambda (_g1450014503_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1450014503_))))
                                                    (let ((_g1449815545_
                                                           (lambda (_g1450014511_)
                                                             ((lambda (_L14514_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g1452714535_
                                 (lambda (_g1452814531_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1452814531_))))
                            (let ((_g1452615541_
                                   (lambda (_g1452814539_)
                                     ((lambda (_L14542_)
                                        (let ()
                                          (let ((_g1455514563_
                                                 (lambda (_g1455614559_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1455614559_))))
                                            (let ((_g1455415537_
                                                   (lambda (_g1455614567_)
                                                     ((lambda (_L14570_)
                                                        (let ()
                                                          (let ((_g1458314591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1458414587_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1458414587_))))
                    (let ((_g1458215533_
                           (lambda (_g1458414595_)
                             ((lambda (_L14598_)
                                (let ()
                                  (let ((_g1461114628_
                                         (lambda (_g1461214624_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1461214624_))))
                                    (let ((_g1461015529_
                                           (lambda (_g1461214632_)
                                             (if (gx#stx-pair/null?
                                                  _g1461214632_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1461214632_)
                                                           '0)
                                                     (let ((_g30306_
                                                            (gx#syntax-split-splice
                                                             _g1461214632_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30307_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30306_)))
                   (if (not (fx= _g30307_ 2))
                       (error "Context expects 2 values" _g30307_)))
                 (let ((_target1461414635_ (values-ref _g30306_ 0))
                       (_tl1461614638_ (values-ref _g30306_ 1)))
                   (if (gx#stx-null? _tl1461614638_)
                       (letrec ((_loop1461714641_
                                 (lambda (_hd1461514645_ _attr1462114648_)
                                   (if (gx#stx-pair? _hd1461514645_)
                                       (let ((_e1461814651_
                                              (gx#syntax-e _hd1461514645_)))
                                         (let ((_lp-hd1461914655_
                                                (##car _e1461814651_))
                                               (_lp-tl1462014658_
                                                (##cdr _e1461814651_)))
                                           (_loop1461714641_
                                            _lp-tl1462014658_
                                            (cons _lp-hd1461914655_
                                                  _attr1462114648_))))
                                       (let ((_attr1462214661_
                                              (reverse _attr1462114648_)))
                                         ((lambda (_L14665_)
                                            (let ()
                                              (let ((_g1468214699_
                                                     (lambda (_g1468314695_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1468314695_))))
                                                (let ((_g1468115520_
                                                       (lambda (_g1468314703_)
                                                         (if (gx#stx-pair/null?
                                                              _g1468314703_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1468314703_)
                               '0)
                         (let ((_g30308_
                                (gx#syntax-split-splice _g1468314703_ '0)))
                           (begin
                             (let ((_g30309_ (values-count _g30308_)))
                               (if (not (fx= _g30309_ 2))
                                   (error "Context expects 2 values"
                                          _g30309_)))
                             (let ((_target1468514706_ (values-ref _g30308_ 0))
                                   (_tl1468714709_ (values-ref _g30308_ 1)))
                               (if (gx#stx-null? _tl1468714709_)
                                   (letrec ((_loop1468814712_
                                             (lambda (_hd1468614716_
                                                      _getf1469214719_)
                                               (if (gx#stx-pair?
                                                    _hd1468614716_)
                                                   (let ((_e1468914722_
                                                          (gx#syntax-e
                                                           _hd1468614716_)))
                                                     (let ((_lp-hd1469014726_
                                                            (##car _e1468914722_))
                                                           (_lp-tl1469114729_
                                                            (##cdr _e1468914722_)))
                                                       (_loop1468814712_
                                                        _lp-tl1469114729_
                                                        (cons _lp-hd1469014726_
                                                              _getf1469214719_))))
                                                   (let ((_getf1469314732_
                                                          (reverse _getf1469214719_)))
                                                     ((lambda (_L14736_)
                                                        (let ()
                                                          (let ((_g1475314770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1475414766_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1475414766_))))
                    (let ((_g1475215511_
                           (lambda (_g1475414774_)
                             (if (gx#stx-pair/null? _g1475414774_)
                                 (if (fx>= (gx#stx-length _g1475414774_) '0)
                                     (let ((_g30310_
                                            (gx#syntax-split-splice
                                             _g1475414774_
                                             '0)))
                                       (begin
                                         (let ((_g30311_
                                                (values-count _g30310_)))
                                           (if (not (fx= _g30311_ 2))
                                               (error "Context expects 2 values"
                                                      _g30311_)))
                                         (let ((_target1475614777_
                                                (values-ref _g30310_ 0))
                                               (_tl1475814780_
                                                (values-ref _g30310_ 1)))
                                           (if (gx#stx-null? _tl1475814780_)
                                               (letrec ((_loop1475914783_
                                                         (lambda (_hd1475714787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf1476314790_)
                   (if (gx#stx-pair? _hd1475714787_)
                       (let ((_e1476014793_ (gx#syntax-e _hd1475714787_)))
                         (let ((_lp-hd1476114797_ (##car _e1476014793_))
                               (_lp-tl1476214800_ (##cdr _e1476014793_)))
                           (_loop1475914783_
                            _lp-tl1476214800_
                            (cons _lp-hd1476114797_ _setf1476314790_))))
                       (let ((_setf1476414803_ (reverse _setf1476314790_)))
                         ((lambda (_L14807_)
                            (let ()
                              (let ((_type-attr14849_
                                     (if (gx#stx-null? _els14426_)
                                         '()
                                         (if _struct?14428_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14807_
                                                            _L14736_)
                                                           (foldr (lambda (_g1482314827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1482414830_
                                   _g1482514832_)
                            (cons (cons _g1482414830_ (cons _g1482314827_ '()))
                                  _g1482514832_))
                          '()
                          _L14807_
                          _L14736_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L14807_
                                                            _L14736_
                                                            _L14665_)
                                                           (foldr (lambda (_g1483414839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1483514842_
                                   _g1483614844_
                                   _g1483714846_)
                            (cons (cons _g1483614844_
                                        (cons _g1483514842_
                                              (cons _g1483414839_ '())))
                                  _g1483714846_))
                          '()
                          _L14807_
                          _L14736_
                          _L14665_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name14856_
                                       (cons 'name:
                                             (cons (let ((_$e14852_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body14427_)))
                                                     (if _$e14852_
                                                         _$e14852_
                                                         _id14424_))
                                                   '()))))
                                  (let ((_type-id14871_
                                         (let ((_$e14867_
                                                (let ((_e1485814860_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body14427_)))
                                                  (if _e1485814860_
                                                      (let ((_e14864_
                                                             _e1485814860_))
                                                        (cons 'id:
                                                              (cons _e14864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e14867_ _$e14867_ '()))))
                                    (let ((_type-ctor14886_
                                           (let ((_$e14882_
                                                  (let ((_e1487314875_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body14427_)))
                                                    (if _e1487314875_
                                                        (let ((_e14879_
                                                               _e1487314875_))
                                                          (cons 'constructor:
                                                                (cons _e14879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e14882_ _$e14882_ '()))))
                                      (let ((_plist14904_
                                             (let ((_plist14893_
                                                    (let ((_$e14889_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body14427_)))
                                                      (if _$e14889_
                                                          _$e14889_
                                                          '()))))
                                               (let ((_plist14896_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body14427_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist14893_)
                  _plist14893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist14899_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body14427_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist14896_)
                    _plist14896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist14899_))))))
                                        (let ((_type-plist14944_
                                               (if (null? _plist14904_)
                                                   _plist14904_
                                                   (let ((_g1490714915_
                                                          (lambda (_g1490814911_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1490814911_))))
                                                     (let ((_g1490614940_
                                                            (lambda (_g1490814919_)
                                                              ((lambda (_L14922_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L14922_ '()))
                                       '()))))
                       _g1490814919_))))
               (_g1490614940_ _plist14904_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_type-unchecked14959_
                                                 (let ((_$e14955_
                                                        (let ((_e1494614948_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body14427_)))
                                                          (if _e1494614948_
                                                              (let ((_e14952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1494614948_))
                        (cons 'unchecked: (cons _e14952_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e14955_
                                                       _$e14955_
                                                       '()))))
                                            (let ((_g1496214979_
                                                   (lambda (_g1496314975_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1496314975_))))
                                              (let ((_g1496115507_
                                                     (lambda (_g1496314983_)
                                                       (if (gx#stx-pair/null?
                                                            _g1496314983_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1496314983_)
                             '0)
                       (let ((_g30312_
                              (gx#syntax-split-splice _g1496314983_ '0)))
                         (begin
                           (let ((_g30313_ (values-count _g30312_)))
                             (if (not (fx= _g30313_ 2))
                                 (error "Context expects 2 values" _g30313_)))
                           (let ((_target1496514986_ (values-ref _g30312_ 0))
                                 (_tl1496714989_ (values-ref _g30312_ 1)))
                             (if (gx#stx-null? _tl1496714989_)
                                 (letrec ((_loop1496814992_
                                           (lambda (_hd1496614996_
                                                    _type-body1497214999_)
                                             (if (gx#stx-pair? _hd1496614996_)
                                                 (let ((_e1496915002_
                                                        (gx#syntax-e
                                                         _hd1496614996_)))
                                                   (let ((_lp-hd1497015006_
                                                          (##car _e1496915002_))
                                                         (_lp-tl1497115009_
                                                          (##cdr _e1496915002_)))
                                                     (_loop1496814992_
                                                      _lp-tl1497115009_
                                                      (cons _lp-hd1497015006_
                                                            _type-body1497214999_))))
                                                 (let ((_type-body1497315012_
                                                        (reverse _type-body1497214999_)))
                                                   ((lambda (_L15016_)
                                                      (let ()
                                                        (let ((_g1503315041_
                                                               (lambda (_g1503415037_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1503415037_))))
                  (let ((_g1503215495_
                         (lambda (_g1503415045_)
                           ((lambda (_L15048_)
                              (let ()
                                (let ((_g1506115069_
                                       (lambda (_g1506215065_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1506215065_))))
                                  (let ((_g1506015491_
                                         (lambda (_g1506215073_)
                                           ((lambda (_L15076_)
                                              (let ()
                                                (let ((_g1508915097_
                                                       (lambda (_g1509015093_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1509015093_))))
                                                  (let ((_g1508815405_
                                                         (lambda (_g1509015101_)
                                                           ((lambda (_L15104_)
                                                              (let ()
                                                                (let ((_g1511715125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1511815121_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1511815121_))))
                          (let ((_g1511615401_
                                 (lambda (_g1511815129_)
                                   ((lambda (_L15132_)
                                      (let ()
                                        (let ((_g1514515153_
                                               (lambda (_g1514615149_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1514615149_))))
                                          (let ((_g1514415397_
                                                 (lambda (_g1514615157_)
                                                   ((lambda (_L15160_)
                                                      (let ()
                                                        (let ((_g1517315181_
                                                               (lambda (_g1517415177_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1517415177_))))
                  (let ((_g1517215355_
                         (lambda (_g1517415185_)
                           ((lambda (_L15188_)
                              (let ()
                                (let ((_g1520115209_
                                       (lambda (_g1520215205_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1520215205_))))
                                  (let ((_g1520015351_
                                         (lambda (_g1520215213_)
                                           ((lambda (_L15216_)
                                              (let ()
                                                (let ((_g1522915237_
                                                       (lambda (_g1523015233_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1523015233_))))
                                                  (let ((_g1522815347_
                                                         (lambda (_g1523015241_)
                                                           ((lambda (_L15244_)
                                                              (let ()
                                                                (let ((_g1525715265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1525815261_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1525815261_))))
                          (let ((_g1525615343_
                                 (lambda (_g1525815269_)
                                   ((lambda (_L15272_)
                                      (let ()
                                        (let ((_g1528515293_
                                               (lambda (_g1528615289_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1528615289_))))
                                          (let ((_g1528415315_
                                                 (lambda (_g1528615297_)
                                                   ((lambda (_L15300_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap14430_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15048_ (cons _L15300_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1528615297_))))
                                            (_g1528415315_
                                             (_wrap14430_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'defsyntax)
                                                    (cons _L14486_
                                                          (cons (cons _L15076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'runtime-identifier:
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L14514_ '()))
                                          (cons 'expander-identifiers:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons _L15104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _L14514_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _L14542_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _L14570_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1531815325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1531915328_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g1531815325_ '()))
                                 _g1531915328_))
                         '()
                         _L14736_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1532015331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1532115334_)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _g1532015331_ '()))
                                       _g1532115334_))
                               '()
                               _L14807_)))
                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (cons 'type-exhibitor:
                    (cons (cons _L15132_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L15160_ '()))
                                      (cons _L15188_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L15216_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L15244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15272_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons (begin
                                          '#!void
                                          (foldr (lambda (_g1532215337_
                                                          _g1532315340_)
                                                   (cons _g1532215337_
                                                         _g1532315340_))
                                                 '()
                                                 _L14665_))
                                        '()))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1525815269_))))
                            (_g1525615343_ _plist14904_)))))
                    _g1523015241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1522815347_
                                                     (if (not (null? _type-ctor14886_))
                                                         (cadr _type-ctor14886_)
                                                         '#f))))))
                                            _g1520215213_))))
                                    (_g1520015351_ (cadr _type-name14856_))))))
                            _g1517415185_))))
                    (_g1517215355_
                     (let ((_quote-e15394_
                            (lambda (_x-ref15359_)
                              (if _x-ref15359_
                                  (let ((_g1536215370_
                                         (lambda (_g1536315366_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1536315366_))))
                                    (let ((_g1536115390_
                                           (lambda (_g1536315374_)
                                             ((lambda (_L15377_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _L15377_ '()))))
                                              _g1536315374_))))
                                      (_g1536115390_ _x-ref15359_)))
                                  '#f))))
                       (if _struct?14428_
                           (_quote-e15394_ _super-ref14425_)
                           (cons 'list
                                 (map _quote-e15394_ _super-ref14425_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1514615157_))))
                                            (_g1514415397_
                                             (if (not (null? _type-id14871_))
                                                 (cadr _type-id14871_)
                                                 '#f))))))
                                    _g1511815129_))))
                            (_g1511615401_
                             (if _struct?14428_
                                 (gx#datum->syntax
                                  '#f
                                  'make-runtime-struct-exhibitor)
                                 (gx#datum->syntax
                                  '#f
                                  'make-runtime-class-exhibitor)))))))
                    _g1509015101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1508815405_
                                                     (if _struct?14428_
                                                         (if _super14437_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _L14598_ '()))
                     '#f)
                 (let ((_g1540915426_
                        (lambda (_g1541015422_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1541015422_))))
                   (let ((_g1540815487_
                          (lambda (_g1541015430_)
                            (if (gx#stx-pair/null? _g1541015430_)
                                (if (fx>= (gx#stx-length _g1541015430_) '0)
                                    (let ((_g30314_
                                           (gx#syntax-split-splice
                                            _g1541015430_
                                            '0)))
                                      (begin
                                        (let ((_g30315_
                                               (values-count _g30314_)))
                                          (if (not (fx= _g30315_ 2))
                                              (error "Context expects 2 values"
                                                     _g30315_)))
                                        (let ((_target1541215433_
                                               (values-ref _g30314_ 0))
                                              (_tl1541415436_
                                               (values-ref _g30314_ 1)))
                                          (if (gx#stx-null? _tl1541415436_)
                                              (letrec ((_loop1541515439_
                                                        (lambda (_hd1541315443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-id1541915446_)
                  (if (gx#stx-pair? _hd1541315443_)
                      (let ((_e1541615449_ (gx#syntax-e _hd1541315443_)))
                        (let ((_lp-hd1541715453_ (##car _e1541615449_))
                              (_lp-tl1541815456_ (##cdr _e1541615449_)))
                          (_loop1541515439_
                           _lp-tl1541815456_
                           (cons _lp-hd1541715453_ _super-id1541915446_))))
                      (let ((_super-id1542015459_
                             (reverse _super-id1541915446_)))
                        ((lambda (_L15463_)
                           (let ()
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1547815481_
                                                     _g1547915484_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g1547815481_
                                                                '()))
                                                    _g1547915484_))
                                            '()
                                            _L15463_)))))
                         _super-id1542015459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1541515439_
                                                 _target1541215433_
                                                 '()))
                                              (_g1540915426_ _g1541015430_)))))
                                    (_g1540915426_ _g1541015430_))
                                (_g1540915426_ _g1541015430_)))))
                     (_g1540815487_ _L14598_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1506215073_))))
                                    (_g1506015491_
                                     (if _struct?14428_
                                         (gx#datum->syntax
                                          '#f
                                          'make-extended-struct-info)
                                         (gx#datum->syntax
                                          '#f
                                          'make-extended-class-info)))))))
                            _g1503415045_))))
                    (_g1503215495_
                     (_wrap14430_
                      (cons _L14455_
                            (cons _L14514_
                                  (cons _L14598_
                                        (cons _L14542_
                                              (cons _L14570_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1549815501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1549915504_)
                       (cons _g1549815501_ _g1549915504_))
                     '()
                     _L15016_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _type-body1497315012_))))))
                                   (_loop1496814992_ _target1496514986_ '()))
                                 (_g1496214979_ _g1496314983_)))))
                       (_g1496214979_ _g1496314983_))
                   (_g1496214979_ _g1496314983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1496115507_
                                                 (foldr cons
                                                        (foldr cons
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr cons
                                     (foldr cons
                                            _type-unchecked14959_
                                            _type-plist14944_)
                                     _type-ctor14886_)
                              _type-name14856_)
                       _type-id14871_)
                _type-attr14849_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf1476414803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1475914783_
                                                  _target1475614777_
                                                  '()))
                                               (_g1475314770_
                                                _g1475414774_)))))
                                     (_g1475314770_ _g1475414774_))
                                 (_g1475314770_ _g1475414774_)))))
                      (_g1475215511_
                       (gx#stx-map
                        (lambda (_g1551415516_)
                          (_make-id14432_
                           _name14434_
                           '"-"
                           _g1551415516_
                           '"-set!"))
                        _els14426_))))))
              _getf1469314732_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1468814712_ _target1468514706_ '()))
                                   (_g1468214699_ _g1468314703_)))))
                         (_g1468214699_ _g1468314703_))
                     (_g1468214699_ _g1468314703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1468115520_
                                                   (gx#stx-map
                                                    (lambda (_g1552315525_)
                                                      (_make-id14432_
                                                       _name14434_
                                                       '"-"
                                                       _g1552315525_))
                                                    _els14426_))))))
                                          _attr1462214661_))))))
                         (_loop1461714641_ _target1461414635_ '()))
                       (_g1461114628_ _g1461214632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1461114628_
                                                      _g1461214632_))
                                                 (_g1461114628_
                                                  _g1461214632_)))))
                                      (_g1461015529_ _els14426_)))))
                              _g1458414595_))))
                      (_g1458215533_
                       (if _struct?14428_
                           (if _super14437_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14437_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super14437_)))))))
              _g1455614567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1455415537_
                                               (_make-id14432_
                                                _name14434_
                                                '"?"))))))
                                      _g1452814539_))))
                              (_g1452615541_
                               (_make-id14432_ '"make-" _name14434_))))))
                      _g1450014511_))))
              (_g1449815545_ (_make-id14432_ _name14434_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1447214483_))))
                                      (_g1447015549_ _id14424_)))))
                              _g1444114452_))))
                      (_g1443915553_
                       (if _struct?14428_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx15881_)
        (let ((_generate15884_
               (lambda (_hd15968_ _fields15970_ _body15971_)
                 (let ((_g1597415989_
                        (lambda (_g1597515985_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1597515985_))))
                   (let ((_g1597316000_
                          (lambda (_g1597515993_)
                            ((lambda ()
                               (if (gx#identifier? _hd15968_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx15881_
                                    _hd15968_
                                    '#f
                                    _fields15970_
                                    _body15971_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx15881_
                                    _hd15968_)))))))
                     (let ((_g1597216044_
                            (lambda (_g1597516004_)
                              (if (gx#stx-pair? _g1597516004_)
                                  (let ((_e1597816007_
                                         (gx#syntax-e _g1597516004_)))
                                    (let ((_hd1597916011_
                                           (##car _e1597816007_))
                                          (_tl1598016014_
                                           (##cdr _e1597816007_)))
                                      (if (gx#stx-pair? _tl1598016014_)
                                          (let ((_e1598116017_
                                                 (gx#syntax-e _tl1598016014_)))
                                            (let ((_hd1598216021_
                                                   (##car _e1598116017_))
                                                  (_tl1598316024_
                                                   (##cdr _e1598116017_)))
                                              (if (gx#stx-null? _tl1598316024_)
                                                  ((lambda (_L16027_ _L16029_)
                                                     (if (if (gx#identifier?
                                                              _L16029_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16027_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx15881_
                                                          _L16029_
                                                          _L16027_
                                                          _fields15970_
                                                          _body15971_
                                                          '#t)
                                                         (_g1597316000_
                                                          _g1597516004_)))
                                                   _hd1598216021_
                                                   _hd1597916011_)
                                                  (_g1597316000_
                                                   _g1597516004_))))
                                          (_g1597316000_ _g1597516004_))))
                                  (_g1597316000_ _g1597516004_)))))
                       (_g1597216044_ _hd15968_)))))))
          (let ((_g1588715906_
                 (lambda (_g1588815902_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1588815902_))))
            (let ((_g1588615964_
                   (lambda (_g1588815910_)
                     (if (gx#stx-pair? _g1588815910_)
                         (let ((_e1589215913_ (gx#syntax-e _g1588815910_)))
                           (let ((_hd1589315917_ (##car _e1589215913_))
                                 (_tl1589415920_ (##cdr _e1589215913_)))
                             (if (gx#stx-pair? _tl1589415920_)
                                 (let ((_e1589515923_
                                        (gx#syntax-e _tl1589415920_)))
                                   (let ((_hd1589615927_ (##car _e1589515923_))
                                         (_tl1589715930_
                                          (##cdr _e1589515923_)))
                                     (if (gx#stx-pair? _tl1589715930_)
                                         (let ((_e1589815933_
                                                (gx#syntax-e _tl1589715930_)))
                                           (let ((_hd1589915937_
                                                  (##car _e1589815933_))
                                                 (_tl1590015940_
                                                  (##cdr _e1589815933_)))
                                             ((lambda (_L15943_
                                                       _L15945_
                                                       _L15946_)
                                                (if (if (gx#identifier-list?
                                                         _L15945_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L15943_)
                                                        '#f)
                                                    (_generate15884_
                                                     _L15946_
                                                     _L15945_
                                                     _L15943_)
                                                    (_g1588715906_
                                                     _g1588815910_)))
                                              _tl1590015940_
                                              _hd1589915937_
                                              _hd1589615927_)))
                                         (_g1588715906_ _g1588815910_))))
                                 (_g1588715906_ _g1588815910_))))
                         (_g1588715906_ _g1588815910_)))))
              (_g1588615964_ _stx15881_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx16048_)
        (let ((_generate16051_
               (lambda (_hd16135_ _slots16137_ _body16138_)
                 (let ((_g1614116153_
                        (lambda (_g1614216149_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1614216149_))))
                   (let ((_g1614016164_
                          (lambda (_g1614216157_)
                            ((lambda ()
                               (if (gx#identifier? _hd16135_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx16048_
                                    _hd16135_
                                    '()
                                    _slots16137_
                                    _body16138_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx16048_
                                    _hd16135_)))))))
                     (let ((_g1613916196_
                            (lambda (_g1614216168_)
                              (if (gx#stx-pair? _g1614216168_)
                                  (let ((_e1614516171_
                                         (gx#syntax-e _g1614216168_)))
                                    (let ((_hd1614616175_
                                           (##car _e1614516171_))
                                          (_tl1614716178_
                                           (##cdr _e1614516171_)))
                                      ((lambda (_L16181_ _L16183_)
                                         (if (if (gx#stx-list? _L16181_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16181_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx16048_
                                              _L16183_
                                              (gx#syntax->list _L16181_)
                                              _slots16137_
                                              _body16138_
                                              '#f)
                                             (_g1614016164_ _g1614216168_)))
                                       _tl1614716178_
                                       _hd1614616175_)))
                                  (_g1614016164_ _g1614216168_)))))
                       (_g1613916196_ _hd16135_)))))))
          (let ((_g1605416073_
                 (lambda (_g1605516069_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1605516069_))))
            (let ((_g1605316131_
                   (lambda (_g1605516077_)
                     (if (gx#stx-pair? _g1605516077_)
                         (let ((_e1605916080_ (gx#syntax-e _g1605516077_)))
                           (let ((_hd1606016084_ (##car _e1605916080_))
                                 (_tl1606116087_ (##cdr _e1605916080_)))
                             (if (gx#stx-pair? _tl1606116087_)
                                 (let ((_e1606216090_
                                        (gx#syntax-e _tl1606116087_)))
                                   (let ((_hd1606316094_ (##car _e1606216090_))
                                         (_tl1606416097_
                                          (##cdr _e1606216090_)))
                                     (if (gx#stx-pair? _tl1606416097_)
                                         (let ((_e1606516100_
                                                (gx#syntax-e _tl1606416097_)))
                                           (let ((_hd1606616104_
                                                  (##car _e1606516100_))
                                                 (_tl1606716107_
                                                  (##cdr _e1606516100_)))
                                             ((lambda (_L16110_
                                                       _L16112_
                                                       _L16113_)
                                                (if (if (gx#identifier-list?
                                                         _L16112_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L16110_)
                                                        '#f)
                                                    (_generate16051_
                                                     _L16113_
                                                     _L16112_
                                                     _L16110_)
                                                    (_g1605416073_
                                                     _g1605516077_)))
                                              _tl1606716107_
                                              _hd1606616104_
                                              _hd1606316094_)))
                                         (_g1605416073_ _g1605516077_))))
                                 (_g1605416073_ _g1605516077_))))
                         (_g1605416073_ _g1605516077_)))))
              (_g1605316131_ _stx16048_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx16200_)
        (let ((_wrap16203_
               (lambda (_e-stx16508_)
                 (gx#stx-wrap-source
                  _e-stx16508_
                  (gx#stx-source _stx16200_)))))
          (let ((_method-opt?16205_
                 (lambda (_x16505_) (memq (gx#stx-e _x16505_) '(rebind:)))))
            (let ((_g1620716236_
                   (lambda (_g1620816232_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1620816232_))))
              (let ((_g1620616501_
                     (lambda (_g1620816240_)
                       (if (gx#stx-pair? _g1620816240_)
                           (let ((_e1621316243_ (gx#syntax-e _g1620816240_)))
                             (let ((_hd1621416247_ (##car _e1621316243_))
                                   (_tl1621516250_ (##cdr _e1621316243_)))
                               (if (gx#stx-pair? _tl1621516250_)
                                   (let ((_e1621616253_
                                          (gx#syntax-e _tl1621516250_)))
                                     (let ((_hd1621716257_
                                            (##car _e1621616253_))
                                           (_tl1621816260_
                                            (##cdr _e1621616253_)))
                                       (if (gx#stx-pair? _hd1621716257_)
                                           (let ((_e1621916263_
                                                  (gx#syntax-e
                                                   _hd1621716257_)))
                                             (let ((_hd1622016267_
                                                    (##car _e1621916263_))
                                                   (_tl1622116270_
                                                    (##cdr _e1621916263_)))
                                               (if (gx#identifier?
                                                    _hd1622016267_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g30317_|
                                                        _hd1622016267_)
                                                       (if (gx#stx-pair?
                                                            _tl1622116270_)
                                                           (let ((_e1622216273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1622116270_)))
                     (let ((_hd1622316277_ (##car _e1622216273_))
                           (_tl1622416280_ (##cdr _e1622216273_)))
                       (if (gx#stx-pair? _tl1622416280_)
                           (let ((_e1622516283_ (gx#syntax-e _tl1622416280_)))
                             (let ((_hd1622616287_ (##car _e1622516283_))
                                   (_tl1622716290_ (##cdr _e1622516283_)))
                               (if (gx#stx-null? _tl1622716290_)
                                   (if (gx#stx-pair? _tl1621816260_)
                                       (let ((_e1622816293_
                                              (gx#syntax-e _tl1621816260_)))
                                         (let ((_hd1622916297_
                                                (##car _e1622816293_))
                                               (_tl1623016300_
                                                (##cdr _e1622816293_)))
                                           ((lambda (_L16303_
                                                     _L16305_
                                                     _L16306_
                                                     _L16307_)
                                              (if (if (gx#identifier? _L16307_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L16306_)
                                                          (gx#stx-plist?
                                                           _L16303_
                                                           _method-opt?16205_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass16332_
                                                         (gx#syntax-local-value
                                                          _L16306_)))
                                                    (let ((_rebind?16335_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L16303_))
                       '#t
                       '#f)))
              (let ((_g1633816346_
                     (lambda (_g1633916342_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1633916342_))))
                (let ((_g1633716497_
                       (lambda (_g1633916350_)
                         ((lambda (_L16353_)
                            (let ()
                              (let ((_g1636716375_
                                     (lambda (_g1636816371_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1636816371_))))
                                (let ((_g1636616493_
                                       (lambda (_g1636816379_)
                                         ((lambda (_L16382_)
                                            (let ()
                                              (let ((_g1639516403_
                                                     (lambda (_g1639616399_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1639616399_))))
                                                (let ((_g1639416489_
                                                       (lambda (_g1639616407_)
                                                         ((lambda (_L16410_)
                                                            (let ()
                                                              (let ((_g1642316431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1642416427_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1642416427_))))
                        (let ((_g1642216485_
                               (lambda (_g1642416435_)
                                 ((lambda (_L16438_)
                                    (let ()
                                      (let ((_g1645116459_
                                             (lambda (_g1645216455_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1645216455_))))
                                        (let ((_g1645016481_
                                               (lambda (_g1645216463_)
                                                 ((lambda (_L16466_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap16203_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L16410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L16466_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1645216463_))))
                                          (_g1645016481_
                                           (_wrap16203_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'bind-method!)
                                                  (cons _L16353_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L16307_ '()))
                      (cons _L16382_ (cons _L16438_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g1642416435_))))
                          (_g1642216485_ _rebind?16335_)))))
                  _g1639616407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1639416489_
                                                   (_wrap16203_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L16382_
                                                                (cons _L16305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1636816379_))))
                                  (_g1636616493_
                                   (gx#stx-identifier
                                    _L16307_
                                    _L16306_
                                    '"::"
                                    _L16307_))))))
                          _g1633916350_))))
                  (_g1633716497_
                   (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                    _klass16332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1620716236_
                                                   _g1620816240_)))
                                            _tl1623016300_
                                            _hd1622916297_
                                            _hd1622616287_
                                            _hd1622316277_)))
                                       (_g1620716236_ _g1620816240_))
                                   (_g1620716236_ _g1620816240_))))
                           (_g1620716236_ _g1620816240_))))
                   (_g1620716236_ _g1620816240_))
               (_g1620716236_ _g1620816240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1620716236_
                                                    _g1620816240_))))
                                           (_g1620716236_ _g1620816240_))))
                                   (_g1620716236_ _g1620816240_))))
                           (_g1620716236_ _g1620816240_)))))
                (_g1620616501_ _stx16200_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx16511_)
        (let ((_g1651616565_
               (lambda (_g1651716561_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1651716561_))))
          (let ((_g1651516664_
                 (lambda (_g1651716569_)
                   (if (gx#stx-pair? _g1651716569_)
                       (let ((_e1654216572_ (gx#syntax-e _g1651716569_)))
                         (let ((_hd1654316576_ (##car _e1654216572_))
                               (_tl1654416579_ (##cdr _e1654216572_)))
                           (if (gx#stx-pair? _tl1654416579_)
                               (let ((_e1654516582_
                                      (gx#syntax-e _tl1654416579_)))
                                 (let ((_hd1654616586_ (##car _e1654516582_))
                                       (_tl1654716589_ (##cdr _e1654516582_)))
                                   (if (gx#stx-pair? _tl1654716589_)
                                       (let ((_e1654816592_
                                              (gx#syntax-e _tl1654716589_)))
                                         (let ((_hd1654916596_
                                                (##car _e1654816592_))
                                               (_tl1655016599_
                                                (##cdr _e1654816592_)))
                                           (if (gx#stx-pair/null?
                                                _tl1655016599_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1655016599_)
                                                         '0)
                                                   (let ((_g30318_
                                                          (gx#syntax-split-splice
                                                           _tl1655016599_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30319_
                                                              (values-count
                                                               _g30318_)))
                                                         (if (not (fx= _g30319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30319_)))
               (let ((_target1655116602_ (values-ref _g30318_ 0))
                     (_tl1655316605_ (values-ref _g30318_ 1)))
                 (if (gx#stx-null? _tl1655316605_)
                     (letrec ((_loop1655416608_
                               (lambda (_hd1655216612_ _arg1655816615_)
                                 (if (gx#stx-pair? _hd1655216612_)
                                     (let ((_e1655516618_
                                            (gx#syntax-e _hd1655216612_)))
                                       (let ((_lp-hd1655616622_
                                              (##car _e1655516618_))
                                             (_lp-tl1655716625_
                                              (##cdr _e1655516618_)))
                                         (_loop1655416608_
                                          _lp-tl1655716625_
                                          (cons _lp-hd1655616622_
                                                _arg1655816615_))))
                                     (let ((_arg1655916628_
                                            (reverse _arg1655816615_)))
                                       ((lambda (_L16632_ _L16634_ _L16635_)
                                          (if (gx#identifier? _L16635_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L16634_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L16635_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g1665516658_ _g1665616661_)
                                   (cons _g1665516658_ _g1665616661_))
                                 '()
                                 _L16632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1651616565_ _g1651716569_)))
                                        _arg1655916628_
                                        _hd1654916596_
                                        _hd1654616586_))))))
                       (_loop1655416608_ _target1655116602_ '()))
                     (_g1651616565_ _g1651716569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1651616565_
                                                    _g1651716569_))
                                               (_g1651616565_ _g1651716569_))))
                                       (_g1651616565_ _g1651716569_))))
                               (_g1651616565_ _g1651716569_))))
                       (_g1651616565_ _g1651716569_)))))
            (let ((_g1651416770_
                   (lambda (_g1651716668_)
                     (if (gx#stx-pair? _g1651716668_)
                         (let ((_e1652116671_ (gx#syntax-e _g1651716668_)))
                           (let ((_hd1652216675_ (##car _e1652116671_))
                                 (_tl1652316678_ (##cdr _e1652116671_)))
                             (if (gx#stx-pair? _tl1652316678_)
                                 (let ((_e1652416681_
                                        (gx#syntax-e _tl1652316678_)))
                                   (let ((_hd1652516685_ (##car _e1652416681_))
                                         (_tl1652616688_
                                          (##cdr _e1652416681_)))
                                     (if (gx#stx-pair? _tl1652616688_)
                                         (let ((_e1652716691_
                                                (gx#syntax-e _tl1652616688_)))
                                           (let ((_hd1652816695_
                                                  (##car _e1652716691_))
                                                 (_tl1652916698_
                                                  (##cdr _e1652716691_)))
                                             (if (gx#stx-pair/null?
                                                  _tl1652916698_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1652916698_)
                                                           '0)
                                                     (let ((_g30320_
                                                            (gx#syntax-split-splice
                                                             _tl1652916698_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30321_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30320_)))
                   (if (not (fx= _g30321_ 2))
                       (error "Context expects 2 values" _g30321_)))
                 (let ((_target1653016701_ (values-ref _g30320_ 0))
                       (_tl1653216704_ (values-ref _g30320_ 1)))
                   (if (gx#stx-null? _tl1653216704_)
                       (letrec ((_loop1653316707_
                                 (lambda (_hd1653116711_ _arg1653716714_)
                                   (if (gx#stx-pair? _hd1653116711_)
                                       (let ((_e1653416717_
                                              (gx#syntax-e _hd1653116711_)))
                                         (let ((_lp-hd1653516721_
                                                (##car _e1653416717_))
                                               (_lp-tl1653616724_
                                                (##cdr _e1653416717_)))
                                           (_loop1653316707_
                                            _lp-tl1653616724_
                                            (cons _lp-hd1653516721_
                                                  _arg1653716714_))))
                                       (let ((_arg1653816727_
                                              (reverse _arg1653716714_)))
                                         ((lambda (_L16731_ _L16733_ _L16734_)
                                            (if (if (gx#identifier? _L16734_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1675316756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1675416759_)
                        (cons _g1675316756_ _g1675416759_))
                      '()
                      _L16731_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L16733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16734_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1676116764_
                                                              _g1676216767_)
                                                       (cons _g1676116764_
                                                             _g1676216767_))
                                                     '()
                                                     _L16731_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1651516664_ _g1651716668_)))
                                          _arg1653816727_
                                          _hd1652816695_
                                          _hd1652516685_))))))
                         (_loop1653316707_ _target1653016701_ '()))
                       (_g1651516664_ _g1651716668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1651516664_
                                                      _g1651716668_))
                                                 (_g1651516664_
                                                  _g1651716668_))))
                                         (_g1651516664_ _g1651716668_))))
                                 (_g1651516664_ _g1651716668_))))
                         (_g1651516664_ _g1651716668_)))))
              (_g1651416770_ _$stx16511_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx16776_)
        (let ((_g1678116821_
               (lambda (_g1678216817_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1678216817_))))
          (let ((_g1678016922_
                 (lambda (_g1678216825_)
                   (if (gx#stx-pair? _g1678216825_)
                       (let ((_e1679816828_ (gx#syntax-e _g1678216825_)))
                         (let ((_hd1679916832_ (##car _e1679816828_))
                               (_tl1680016835_ (##cdr _e1679816828_)))
                           (if (gx#stx-pair? _tl1680016835_)
                               (let ((_e1680116838_
                                      (gx#syntax-e _tl1680016835_)))
                                 (let ((_hd1680216842_ (##car _e1680116838_))
                                       (_tl1680316845_ (##cdr _e1680116838_)))
                                   (if (gx#stx-pair? _tl1680316845_)
                                       (let ((_e1680416848_
                                              (gx#syntax-e _tl1680316845_)))
                                         (let ((_hd1680516852_
                                                (##car _e1680416848_))
                                               (_tl1680616855_
                                                (##cdr _e1680416848_)))
                                           (if (gx#stx-pair/null?
                                                _tl1680616855_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1680616855_)
                                                         '0)
                                                   (let ((_g30322_
                                                          (gx#syntax-split-splice
                                                           _tl1680616855_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30323_
                                                              (values-count
                                                               _g30322_)))
                                                         (if (not (fx= _g30323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30323_)))
               (let ((_target1680716858_ (values-ref _g30322_ 0))
                     (_tl1680916861_ (values-ref _g30322_ 1)))
                 (if (gx#stx-null? _tl1680916861_)
                     (letrec ((_loop1681016864_
                               (lambda (_hd1680816868_ _rest1681416871_)
                                 (if (gx#stx-pair? _hd1680816868_)
                                     (let ((_e1681116874_
                                            (gx#syntax-e _hd1680816868_)))
                                       (let ((_lp-hd1681216878_
                                              (##car _e1681116874_))
                                             (_lp-tl1681316881_
                                              (##cdr _e1681116874_)))
                                         (_loop1681016864_
                                          _lp-tl1681316881_
                                          (cons _lp-hd1681216878_
                                                _rest1681416871_))))
                                     (let ((_rest1681516884_
                                            (reverse _rest1681416871_)))
                                       ((lambda (_L16888_
                                                 _L16890_
                                                 _L16891_
                                                 _L16892_)
                                          (cons _L16892_
                                                (cons (cons _L16892_
                                                            (cons _L16891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16890_ '())))
              (begin
                '#!void
                (foldr (lambda (_g1691316916_ _g1691416919_)
                         (cons _g1691316916_ _g1691416919_))
                       '()
                       _L16888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest1681516884_
                                        _hd1680516852_
                                        _hd1680216842_
                                        _hd1679916832_))))))
                       (_loop1681016864_ _target1680716858_ '()))
                     (_g1678116821_ _g1678216825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1678116821_
                                                    _g1678216825_))
                                               (_g1678116821_ _g1678216825_))))
                                       (_g1678116821_ _g1678216825_))))
                               (_g1678116821_ _g1678216825_))))
                       (_g1678116821_ _g1678216825_)))))
            (let ((_g1677916976_
                   (lambda (_g1678216926_)
                     (if (gx#stx-pair? _g1678216926_)
                         (let ((_e1678516929_ (gx#syntax-e _g1678216926_)))
                           (let ((_hd1678616933_ (##car _e1678516929_))
                                 (_tl1678716936_ (##cdr _e1678516929_)))
                             (if (gx#stx-pair? _tl1678716936_)
                                 (let ((_e1678816939_
                                        (gx#syntax-e _tl1678716936_)))
                                   (let ((_hd1678916943_ (##car _e1678816939_))
                                         (_tl1679016946_
                                          (##cdr _e1678816939_)))
                                     (if (gx#stx-pair? _tl1679016946_)
                                         (let ((_e1679116949_
                                                (gx#syntax-e _tl1679016946_)))
                                           (let ((_hd1679216953_
                                                  (##car _e1679116949_))
                                                 (_tl1679316956_
                                                  (##cdr _e1679116949_)))
                                             (if (gx#stx-null? _tl1679316956_)
                                                 ((lambda (_L16959_ _L16961_)
                                                    (if (gx#identifier?
                                                         _L16959_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L16961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L16959_ '()))
                                  '())))
                (_g1678016922_ _g1678216926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1679216953_
                                                  _hd1678916943_)
                                                 (_g1678016922_
                                                  _g1678216926_))))
                                         (_g1678016922_ _g1678216926_))))
                                 (_g1678016922_ _g1678216926_))))
                         (_g1678016922_ _g1678216926_)))))
              (_g1677916976_ _$stx16776_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx16981_)
        (let ((_g1698617038_
               (lambda (_g1698717034_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1698717034_))))
          (let ((_g1698517167_
                 (lambda (_g1698717042_)
                   (if (gx#stx-pair? _g1698717042_)
                       (let ((_e1700917045_ (gx#syntax-e _g1698717042_)))
                         (let ((_hd1701017049_ (##car _e1700917045_))
                               (_tl1701117052_ (##cdr _e1700917045_)))
                           (if (gx#stx-pair? _tl1701117052_)
                               (let ((_e1701217055_
                                      (gx#syntax-e _tl1701117052_)))
                                 (let ((_hd1701317059_ (##car _e1701217055_))
                                       (_tl1701417062_ (##cdr _e1701217055_)))
                                   (if (gx#stx-pair? _tl1701417062_)
                                       (let ((_e1701517065_
                                              (gx#syntax-e _tl1701417062_)))
                                         (let ((_hd1701617069_
                                                (##car _e1701517065_))
                                               (_tl1701717072_
                                                (##cdr _e1701517065_)))
                                           (if (gx#stx-pair/null?
                                                _tl1701717072_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1701717072_)
                                                         '2)
                                                   (let ((_g30324_
                                                          (gx#syntax-split-splice
                                                           _tl1701717072_
                                                           '2)))
                                                     (begin
                                                       (let ((_g30325_
                                                              (values-count
                                                               _g30324_)))
                                                         (if (not (fx= _g30325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30325_)))
               (let ((_target1701817075_ (values-ref _g30324_ 0))
                     (_tl1702017078_ (values-ref _g30324_ 1)))
                 (if (gx#stx-pair? _tl1702017078_)
                     (let ((_e1702717081_ (gx#syntax-e _tl1702017078_)))
                       (let ((_hd1702817085_ (##car _e1702717081_))
                             (_tl1702917088_ (##cdr _e1702717081_)))
                         (if (gx#stx-pair? _tl1702917088_)
                             (let ((_e1703017091_
                                    (gx#syntax-e _tl1702917088_)))
                               (let ((_hd1703117095_ (##car _e1703017091_))
                                     (_tl1703217098_ (##cdr _e1703017091_)))
                                 (if (gx#stx-null? _tl1703217098_)
                                     (letrec ((_loop1702117101_
                                               (lambda (_hd1701917105_
                                                        _path1702517108_)
                                                 (if (gx#stx-pair?
                                                      _hd1701917105_)
                                                     (let ((_e1702217111_
                                                            (gx#syntax-e
                                                             _hd1701917105_)))
                                                       (let ((_lp-hd1702317115_
                                                              (##car _e1702217111_))
                                                             (_lp-tl1702417118_
                                                              (##cdr _e1702217111_)))
                                                         (_loop1702117101_
                                                          _lp-tl1702417118_
                                                          (cons _lp-hd1702317115_
                                                                _path1702517108_))))
                                                     (let ((_path1702617121_
                                                            (reverse _path1702517108_)))
                                                       ((lambda (_L17125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17127_
                         _L17128_
                         _L17129_
                         _L17130_
                         _L17131_)
                  (cons _L17131_
                        (cons (cons (gx#datum->syntax '#f '@)
                                    (cons _L17130_
                                          (cons _L17129_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1715817161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1715917164_)
                   (cons _g1715817161_ _g1715917164_))
                 '()
                 _L17128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons _L17127_ (cons _L17125_ '())))))
                _hd1703117095_
                _hd1702817085_
                _path1702617121_
                _hd1701617069_
                _hd1701317059_
                _hd1701017049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1702117101_
                                        _target1701817075_
                                        '()))
                                     (_g1698617038_ _g1698717042_))))
                             (_g1698617038_ _g1698717042_))))
                     (_g1698617038_ _g1698717042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1698617038_
                                                    _g1698717042_))
                                               (_g1698617038_ _g1698717042_))))
                                       (_g1698617038_ _g1698717042_))))
                               (_g1698617038_ _g1698717042_))))
                       (_g1698617038_ _g1698717042_)))))
            (let ((_g1698417235_
                   (lambda (_g1698717171_)
                     (if (gx#stx-pair? _g1698717171_)
                         (let ((_e1699117174_ (gx#syntax-e _g1698717171_)))
                           (let ((_hd1699217178_ (##car _e1699117174_))
                                 (_tl1699317181_ (##cdr _e1699117174_)))
                             (if (gx#stx-pair? _tl1699317181_)
                                 (let ((_e1699417184_
                                        (gx#syntax-e _tl1699317181_)))
                                   (let ((_hd1699517188_ (##car _e1699417184_))
                                         (_tl1699617191_
                                          (##cdr _e1699417184_)))
                                     (if (gx#stx-pair? _tl1699617191_)
                                         (let ((_e1699717194_
                                                (gx#syntax-e _tl1699617191_)))
                                           (let ((_hd1699817198_
                                                  (##car _e1699717194_))
                                                 (_tl1699917201_
                                                  (##cdr _e1699717194_)))
                                             (if (gx#stx-pair? _tl1699917201_)
                                                 (let ((_e1700017204_
                                                        (gx#syntax-e
                                                         _tl1699917201_)))
                                                   (let ((_hd1700117208_
                                                          (##car _e1700017204_))
                                                         (_tl1700217211_
                                                          (##cdr _e1700017204_)))
                                                     (if (gx#stx-null?
                                                          _tl1700217211_)
                                                         ((lambda (_L17214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17216_
                           _L17217_)
                    (if (gx#identifier? _L17216_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L17217_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17216_ '()))
                                          (cons _L17214_ '()))))
                        (_g1698517167_ _g1698717171_)))
                  _hd1700117208_
                  _hd1699817198_
                  _hd1699517188_)
                 (_g1698517167_ _g1698717171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1698517167_
                                                  _g1698717171_))))
                                         (_g1698517167_ _g1698717171_))))
                                 (_g1698517167_ _g1698717171_))))
                         (_g1698517167_ _g1698717171_)))))
              (_g1698417235_ _$stx16981_))))))))
