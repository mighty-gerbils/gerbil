(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g31689_|
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
      (lambda _$args16598_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args16598_)))
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
      (lambda _$args16594_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args16594_)))
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
      (lambda _$args16590_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args16590_)))
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
      (lambda _$args16586_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args16586_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
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
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args16582_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args16582_)))
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
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args16578_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args16578_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1655016564_
             (lambda (_stx16552_ _is?16554_)
               (if (gx#identifier? _stx16552_)
                   (let ((_e1655516557_
                          (gx#syntax-local-value _stx16552_ false)))
                     (if _e1655516557_
                         (let ((_e16561_ _e1655516557_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e16561_)
                               (_is?16554_ _e16561_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g31675_
          (let ((_g31674_ (length _g31675_)))
            (cond ((fx= _g31674_ 1)
                   (apply (lambda (_stx16568_)
                            (let ((_is?16571_ true))
                              (_opt-lambda1655016564_ _stx16568_ _is?16571_)))
                          _g31675_))
                  ((fx= _g31674_ 2) (apply _opt-lambda1655016564_ _g31675_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g31675_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx16548_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16548_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx16545_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16545_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id16539_)
        (if _id16539_
            (let ((_info16542_ (gx#syntax-local-value _id16539_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info16542_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info16542_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self16304_ _stx16306_)
        (let* ((_g1630816328_
                (lambda (_g1630916324_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1630916324_)))
               (_g1630716535_
                (lambda (_g1630916332_)
                  (if (gx#stx-pair? _g1630916332_)
                      (let ((_e1631116335_ (gx#syntax-e _g1630916332_)))
                        (let ((_hd1631216339_ (##car _e1631116335_))
                              (_tl1631316342_ (##cdr _e1631116335_)))
                          (if (gx#stx-pair/null? _tl1631316342_)
                              (if (fx>= (gx#stx-length _tl1631316342_) '0)
                                  (let ((_g31676_
                                         (gx#syntax-split-splice
                                          _tl1631316342_
                                          '0)))
                                    (begin
                                      (let ((_g31677_ (values-count _g31676_)))
                                        (if (not (fx= _g31677_ 2))
                                            (error "Context expects 2 values"
                                                   _g31677_)))
                                      (let ((_target1631416345_
                                             (values-ref _g31676_ 0))
                                            (_tl1631616348_
                                             (values-ref _g31676_ 1)))
                                        (if (gx#stx-null? _tl1631616348_)
                                            (letrec ((_loop1631716351_
                                                      (lambda (_hd1631516355_
                                                               _arg1632116358_)
                                                        (if (gx#stx-pair?
                                                             _hd1631516355_)
                                                            (let ((_e1631816361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1631516355_)))
                      (let ((_lp-hd1631916365_ (##car _e1631816361_))
                            (_lp-tl1632016368_ (##cdr _e1631816361_)))
                        (_loop1631716351_
                         _lp-tl1632016368_
                         (cons _lp-hd1631916365_ _arg1632116358_))))
                    (let ((_arg1632216371_ (reverse _arg1632116358_)))
                      ((lambda (_L16375_)
                         (let* ((_g1639116422_
                                 (lambda (_g1639216418_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1639216418_)))
                                (_g1639016531_
                                 (lambda (_g1639216426_)
                                   (if (gx#stx-pair? _g1639216426_)
                                       (let ((_e1639916429_
                                              (gx#syntax-e _g1639216426_)))
                                         (let ((_hd1640016433_
                                                (##car _e1639916429_))
                                               (_tl1640116436_
                                                (##cdr _e1639916429_)))
                                           (if (gx#stx-pair? _tl1640116436_)
                                               (let ((_e1640216439_
                                                      (gx#syntax-e
                                                       _tl1640116436_)))
                                                 (let ((_hd1640316443_
                                                        (##car _e1640216439_))
                                                       (_tl1640416446_
                                                        (##cdr _e1640216439_)))
                                                   (if (gx#stx-pair?
                                                        _tl1640416446_)
                                                       (let ((_e1640516449_
                                                              (gx#syntax-e
                                                               _tl1640416446_)))
                                                         (let ((_hd1640616453_
                                                                (##car _e1640516449_))
                                                               (_tl1640716456_
                                                                (##cdr _e1640516449_)))
                                                           (if (gx#stx-pair?
                                                                _tl1640716456_)
                                                               (let ((_e1640816459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1640716456_)))
                         (let ((_hd1640916463_ (##car _e1640816459_))
                               (_tl1641016466_ (##cdr _e1640816459_)))
                           (if (gx#stx-pair? _tl1641016466_)
                               (let ((_e1641116469_
                                      (gx#syntax-e _tl1641016466_)))
                                 (let ((_hd1641216473_ (##car _e1641116469_))
                                       (_tl1641316476_ (##cdr _e1641116469_)))
                                   (if (gx#stx-pair? _tl1641316476_)
                                       (let ((_e1641416479_
                                              (gx#syntax-e _tl1641316476_)))
                                         (let ((_hd1641516483_
                                                (##car _e1641416479_))
                                               (_tl1641616486_
                                                (##cdr _e1641416479_)))
                                           (if (gx#stx-null? _tl1641616486_)
                                               ((lambda (_L16489_
                                                         _L16491_
                                                         _L16492_
                                                         _L16493_
                                                         _L16494_
                                                         _L16495_)
                                                  (let ()
                                                    (cons _L16493_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1652216525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1652316528_)
                             (cons _g1652216525_ _g1652316528_))
                           '()
                           _L16375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1641516483_
                                                _hd1641216473_
                                                _hd1640916463_
                                                _hd1640616453_
                                                _hd1640316443_
                                                _hd1640016433_)
                                               (_g1639116422_ _g1639216426_))))
                                       (_g1639116422_ _g1639216426_))))
                               (_g1639116422_ _g1639216426_))))
                       (_g1639116422_ _g1639216426_))))
               (_g1639116422_ _g1639216426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1639116422_ _g1639216426_))))
                                       (_g1639116422_ _g1639216426_)))))
                           (_g1639016531_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self16304_))))
                       _arg1632216371_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1631716351_
                                               _target1631416345_
                                               '()))
                                            (_g1630816328_ _g1630916332_)))))
                                  (_g1630816328_ _g1630916332_))
                              (_g1630816328_ _g1630916332_))))
                      (_g1630816328_ _g1630916332_)))))
          (_g1630716535_ _stx16306_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx16295_)
        (letrec ((_body-opt?16298_
                  (lambda (_key16301_)
                    (memq (gx#stx-e _key16301_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx16295_ _body-opt?16298_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx15123_
               _id15125_
               _super-ref15126_
               _els15127_
               _body15128_
               _struct?15129_)
        (letrec* ((_wrap15131_
                   (lambda (_e-stx16292_)
                     (gx#stx-wrap-source
                      _e-stx16292_
                      (gx#stx-source _stx15123_))))
                  (_make-id15133_
                   (if (uninterned-symbol? (gx#stx-e _id15125_))
                       (lambda _g31678_ (gx#genident _id15125_))
                       (lambda _args16289_
                         (apply gx#stx-identifier _id15125_ _args16289_)))))
          (begin
            (gx#check-duplicate-identifiers _els15127_ _stx15123_)
            (let* ((_name15135_ (symbol->string (gx#stx-e _id15125_)))
                   (_super15138_
                    (if _struct?15129_
                        (if _super-ref15126_
                            (gx#syntax-local-value _super-ref15126_)
                            '#f)
                        (map gx#syntax-local-value _super-ref15126_)))
                   (_g1514115149_
                    (lambda (_g1514215145_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1514215145_)))
                   (_g1514016283_
                    (lambda (_g1514215153_)
                      ((lambda (_L15156_)
                         (let ()
                           (let* ((_g1517215180_
                                   (lambda (_g1517315176_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1517315176_)))
                                  (_g1517116279_
                                   (lambda (_g1517315184_)
                                     ((lambda (_L15187_)
                                        (let ()
                                          (let* ((_g1520015208_
                                                  (lambda (_g1520115204_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1520115204_)))
                                                 (_g1519916275_
                                                  (lambda (_g1520115212_)
                                                    ((lambda (_L15215_)
                                                       (let ()
                                                         (let* ((_g1522815236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1522915232_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1522915232_)))
                        (_g1522716271_
                         (lambda (_g1522915240_)
                           ((lambda (_L15243_)
                              (let ()
                                (let* ((_g1525615264_
                                        (lambda (_g1525715260_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1525715260_)))
                                       (_g1525516267_
                                        (lambda (_g1525715268_)
                                          ((lambda (_L15271_)
                                             (let ()
                                               (let* ((_g1528415292_
                                                       (lambda (_g1528515288_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1528515288_)))
                                                      (_g1528316263_
                                                       (lambda (_g1528515296_)
                                                         ((lambda (_L15299_)
                                                            (let ()
                                                              (let* ((_g1531215329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1531315325_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1531315325_)))
                             (_g1531116259_
                              (lambda (_g1531315333_)
                                (if (gx#stx-pair/null? _g1531315333_)
                                    (if (fx>= (gx#stx-length _g1531315333_) '0)
                                        (let ((_g31679_
                                               (gx#syntax-split-splice
                                                _g1531315333_
                                                '0)))
                                          (begin
                                            (let ((_g31680_
                                                   (values-count _g31679_)))
                                              (if (not (fx= _g31680_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31680_)))
                                            (let ((_target1531515336_
                                                   (values-ref _g31679_ 0))
                                                  (_tl1531715339_
                                                   (values-ref _g31679_ 1)))
                                              (if (gx#stx-null? _tl1531715339_)
                                                  (letrec ((_loop1531815342_
                                                            (lambda (_hd1531615346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1532215349_)
                      (if (gx#stx-pair? _hd1531615346_)
                          (let ((_e1531915352_ (gx#syntax-e _hd1531615346_)))
                            (let ((_lp-hd1532015356_ (##car _e1531915352_))
                                  (_lp-tl1532115359_ (##cdr _e1531915352_)))
                              (_loop1531815342_
                               _lp-tl1532115359_
                               (cons _lp-hd1532015356_ _attr1532215349_))))
                          (let ((_attr1532315362_ (reverse _attr1532215349_)))
                            ((lambda (_L15366_)
                               (let ()
                                 (let* ((_g1538315400_
                                         (lambda (_g1538415396_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1538415396_)))
                                        (_g1538216250_
                                         (lambda (_g1538415404_)
                                           (if (gx#stx-pair/null?
                                                _g1538415404_)
                                               (if (fx>= (gx#stx-length
                                                          _g1538415404_)
                                                         '0)
                                                   (let ((_g31681_
                                                          (gx#syntax-split-splice
                                                           _g1538415404_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31682_
                                                              (values-count
                                                               _g31681_)))
                                                         (if (not (fx= _g31682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31682_)))
               (let ((_target1538615407_ (values-ref _g31681_ 0))
                     (_tl1538815410_ (values-ref _g31681_ 1)))
                 (if (gx#stx-null? _tl1538815410_)
                     (letrec ((_loop1538915413_
                               (lambda (_hd1538715417_ _getf1539315420_)
                                 (if (gx#stx-pair? _hd1538715417_)
                                     (let ((_e1539015423_
                                            (gx#syntax-e _hd1538715417_)))
                                       (let ((_lp-hd1539115427_
                                              (##car _e1539015423_))
                                             (_lp-tl1539215430_
                                              (##cdr _e1539015423_)))
                                         (_loop1538915413_
                                          _lp-tl1539215430_
                                          (cons _lp-hd1539115427_
                                                _getf1539315420_))))
                                     (let ((_getf1539415433_
                                            (reverse _getf1539315420_)))
                                       ((lambda (_L15437_)
                                          (let ()
                                            (let* ((_g1545415471_
                                                    (lambda (_g1545515467_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1545515467_)))
                                                   (_g1545316241_
                                                    (lambda (_g1545515475_)
                                                      (if (gx#stx-pair/null?
                                                           _g1545515475_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1545515475_)
                            '0)
                      (let ((_g31683_
                             (gx#syntax-split-splice _g1545515475_ '0)))
                        (begin
                          (let ((_g31684_ (values-count _g31683_)))
                            (if (not (fx= _g31684_ 2))
                                (error "Context expects 2 values" _g31684_)))
                          (let ((_target1545715478_ (values-ref _g31683_ 0))
                                (_tl1545915481_ (values-ref _g31683_ 1)))
                            (if (gx#stx-null? _tl1545915481_)
                                (letrec ((_loop1546015484_
                                          (lambda (_hd1545815488_
                                                   _setf1546415491_)
                                            (if (gx#stx-pair? _hd1545815488_)
                                                (let ((_e1546115494_
                                                       (gx#syntax-e
                                                        _hd1545815488_)))
                                                  (let ((_lp-hd1546215498_
                                                         (##car _e1546115494_))
                                                        (_lp-tl1546315501_
                                                         (##cdr _e1546115494_)))
                                                    (_loop1546015484_
                                                     _lp-tl1546315501_
                                                     (cons _lp-hd1546215498_
                                                           _setf1546415491_))))
                                                (let ((_setf1546515504_
                                                       (reverse _setf1546415491_)))
                                                  ((lambda (_L15508_)
                                                     (let ()
                                                       (let* ((_type-attr15553_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els15127_)
                           '()
                           (if _struct?15129_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15508_
                                              _L15437_
                                              _L15366_)
                                             (foldr (lambda (_g1552415529_
                                                             _g1552515532_
                                                             _g1552615534_
                                                             _g1552715536_)
                                                      (cons (cons _g1552615534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1552515532_ (cons _g1552415529_ '())))
                    _g1552715536_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15508_
                                                    _L15437_
                                                    _L15366_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15508_
                                              _L15437_
                                              _L15366_)
                                             (foldr (lambda (_g1553815543_
                                                             _g1553915546_
                                                             _g1554015548_
                                                             _g1554115550_)
                                                      (cons (cons _g1554015548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1553915546_ (cons _g1553815543_ '())))
                    _g1554115550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15508_
                                                    _L15437_
                                                    _L15366_))
                                           '())))))
                      (_type-name15560_
                       (cons 'name:
                             (cons (let ((_$e15556_
                                          (gx#stx-getq 'name: _body15128_)))
                                     (if _$e15556_ _$e15556_ _id15125_))
                                   '())))
                      (_type-id15575_
                       (let ((_$e15571_
                              (let ((_e1556215564_
                                     (gx#stx-getq 'id: _body15128_)))
                                (if _e1556215564_
                                    (let ((_e15568_ _e1556215564_))
                                      (cons 'id: (cons _e15568_ '())))
                                    '#f))))
                         (if _$e15571_ _$e15571_ '())))
                      (_type-ctor15590_
                       (let ((_$e15586_
                              (let ((_e1557715579_
                                     (gx#stx-getq 'constructor: _body15128_)))
                                (if _e1557715579_
                                    (let ((_e15583_ _e1557715579_))
                                      (cons 'constructor: (cons _e15583_ '())))
                                    '#f))))
                         (if _$e15586_ _$e15586_ '())))
                      (_plist15634_
                       (let* ((_plist15597_
                               (let ((_$e15593_
                                      (gx#stx-getq 'plist: _body15128_)))
                                 (if _$e15593_ _$e15593_ '())))
                              (_plist15600_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body15128_))
                                   (cons (cons 'transparent: '#t) _plist15597_)
                                   _plist15597_))
                              (_plist15603_
                               (if (gx#stx-e (gx#stx-getq 'final: _body15128_))
                                   (cons (cons 'final: '#t) _plist15600_)
                                   _plist15600_))
                              (_plist15616_
                               (let ((_$e15606_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body15128_))))
                                 (if _$e15606_
                                     ((lambda (_print15610_)
                                        (let ((_print15613_
                                               (if (eq? _print15610_ '#t)
                                                   _els15127_
                                                   _print15610_)))
                                          (cons (cons 'print: _print15613_)
                                                _plist15603_)))
                                      _$e15606_)
                                     _plist15603_)))
                              (_plist15629_
                               (let ((_$e15619_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body15128_))))
                                 (if _$e15619_
                                     ((lambda (_equal15623_)
                                        (let ((_equal15626_
                                               (if (eq? _equal15623_ '#t)
                                                   _els15127_
                                                   _equal15623_)))
                                          (cons (cons 'equal: _equal15626_)
                                                _plist15616_)))
                                      _$e15619_)
                                     _plist15616_))))
                         _plist15629_))
                      (_type-plist15674_
                       (if (null? _plist15634_)
                           _plist15634_
                           (let* ((_g1563715645_
                                   (lambda (_g1563815641_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1563815641_)))
                                  (_g1563615670_
                                   (lambda (_g1563815649_)
                                     ((lambda (_L15652_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L15652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1563815649_))))
                             (_g1563615670_ _plist15634_))))
                      (_type-unchecked15689_
                       (let ((_$e15685_
                              (let ((_e1567615678_
                                     (gx#stx-getq 'unchecked: _body15128_)))
                                (if _e1567615678_
                                    (let ((_e15682_ _e1567615678_))
                                      (cons 'unchecked: (cons _e15682_ '())))
                                    '#f))))
                         (if _$e15685_ _$e15685_ '())))
                      (_g1569215709_
                       (lambda (_g1569315705_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1569315705_)))
                      (_g1569116237_
                       (lambda (_g1569315713_)
                         (if (gx#stx-pair/null? _g1569315713_)
                             (if (fx>= (gx#stx-length _g1569315713_) '0)
                                 (let ((_g31685_
                                        (gx#syntax-split-splice
                                         _g1569315713_
                                         '0)))
                                   (begin
                                     (let ((_g31686_ (values-count _g31685_)))
                                       (if (not (fx= _g31686_ 2))
                                           (error "Context expects 2 values"
                                                  _g31686_)))
                                     (let ((_target1569515716_
                                            (values-ref _g31685_ 0))
                                           (_tl1569715719_
                                            (values-ref _g31685_ 1)))
                                       (if (gx#stx-null? _tl1569715719_)
                                           (letrec ((_loop1569815722_
                                                     (lambda (_hd1569615726_
                                                              _type-body1570215729_)
                                                       (if (gx#stx-pair?
                                                            _hd1569615726_)
                                                           (let ((_e1569915732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1569615726_)))
                     (let ((_lp-hd1570015736_ (##car _e1569915732_))
                           (_lp-tl1570115739_ (##cdr _e1569915732_)))
                       (_loop1569815722_
                        _lp-tl1570115739_
                        (cons _lp-hd1570015736_ _type-body1570215729_))))
                   (let ((_type-body1570315742_
                          (reverse _type-body1570215729_)))
                     ((lambda (_L15746_)
                        (let ()
                          (let* ((_g1576315771_
                                  (lambda (_g1576415767_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1576415767_)))
                                 (_g1576216225_
                                  (lambda (_g1576415775_)
                                    ((lambda (_L15778_)
                                       (let ()
                                         (let* ((_g1579115799_
                                                 (lambda (_g1579215795_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1579215795_)))
                                                (_g1579016221_
                                                 (lambda (_g1579215803_)
                                                   ((lambda (_L15806_)
                                                      (let ()
                                                        (let* ((_g1581915827_
                                                                (lambda (_g1582015823_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1582015823_)))
                       (_g1581816135_
                        (lambda (_g1582015831_)
                          ((lambda (_L15834_)
                             (let ()
                               (let* ((_g1584715855_
                                       (lambda (_g1584815851_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1584815851_)))
                                      (_g1584616131_
                                       (lambda (_g1584815859_)
                                         ((lambda (_L15862_)
                                            (let ()
                                              (let* ((_g1587515883_
                                                      (lambda (_g1587615879_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1587615879_)))
                                                     (_g1587416127_
                                                      (lambda (_g1587615887_)
                                                        ((lambda (_L15890_)
                                                           (let ()
                                                             (let* ((_g1590315911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1590415907_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1590415907_)))
                            (_g1590216085_
                             (lambda (_g1590415915_)
                               ((lambda (_L15918_)
                                  (let ()
                                    (let* ((_g1593115939_
                                            (lambda (_g1593215935_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1593215935_)))
                                           (_g1593016081_
                                            (lambda (_g1593215943_)
                                              ((lambda (_L15946_)
                                                 (let ()
                                                   (let* ((_g1595915967_
                                                           (lambda (_g1596015963_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1596015963_)))
                                                          (_g1595816077_
                                                           (lambda (_g1596015971_)
                                                             ((lambda (_L15974_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1598715995_
                                  (lambda (_g1598815991_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1598815991_)))
                                 (_g1598616073_
                                  (lambda (_g1598815999_)
                                    ((lambda (_L16002_)
                                       (let ()
                                         (let* ((_g1601516023_
                                                 (lambda (_g1601616019_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1601616019_)))
                                                (_g1601416045_
                                                 (lambda (_g1601616027_)
                                                   ((lambda (_L16030_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap15131_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15778_ (cons _L16030_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1601616027_))))
                                           (_g1601416045_
                                            (_wrap15131_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L15187_
                                                         (cons (cons _L15806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L15215_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L15834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L15215_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L15243_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L15271_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1604816055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1604916058_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1604816055_ '()))
                                _g1604916058_))
                        '()
                        _L15437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1605016061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1605116064_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1605016061_ '()))
                                      _g1605116064_))
                              '()
                              _L15508_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L15862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L15890_ '()))
                                     (cons _L15918_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L15946_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L15974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L16002_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1605216067_
                                                         _g1605316070_)
                                                  (cons _g1605216067_
                                                        _g1605316070_))
                                                '()
                                                _L15366_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1598815999_))))
                            (_g1598616073_ _plist15634_))))
                      _g1596015971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1595816077_
                                                      (if (not (null? _type-ctor15590_))
                                                          (cadr _type-ctor15590_)
                                                          '#f)))))
                                               _g1593215943_))))
                                      (_g1593016081_
                                       (cadr _type-name15560_)))))
                                _g1590415915_))))
                       (_g1590216085_
                        (let ((_quote-e16124_
                               (lambda (_x-ref16089_)
                                 (if _x-ref16089_
                                     (let* ((_g1609216100_
                                             (lambda (_g1609316096_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1609316096_)))
                                            (_g1609116120_
                                             (lambda (_g1609316104_)
                                               ((lambda (_L16107_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L16107_
                                                                '()))))
                                                _g1609316104_))))
                                       (_g1609116120_ _x-ref16089_))
                                     '#f))))
                          (if _struct?15129_
                              (_quote-e16124_ _super-ref15126_)
                              (cons 'list
                                    (map _quote-e16124_
                                         _super-ref15126_))))))))
                 _g1587615887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1587416127_
                                                 (if (not (null? _type-id15575_))
                                                     (cadr _type-id15575_)
                                                     '#f)))))
                                          _g1584815859_))))
                                 (_g1584616131_
                                  (if _struct?15129_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1582015831_))))
                  (_g1581816135_
                   (if _struct?15129_
                       (if _super15138_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L15299_ '()))
                           '#f)
                       (let* ((_g1613916156_
                               (lambda (_g1614016152_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1614016152_)))
                              (_g1613816217_
                               (lambda (_g1614016160_)
                                 (if (gx#stx-pair/null? _g1614016160_)
                                     (if (fx>= (gx#stx-length _g1614016160_)
                                               '0)
                                         (let ((_g31687_
                                                (gx#syntax-split-splice
                                                 _g1614016160_
                                                 '0)))
                                           (begin
                                             (let ((_g31688_
                                                    (values-count _g31687_)))
                                               (if (not (fx= _g31688_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31688_)))
                                             (let ((_target1614216163_
                                                    (values-ref _g31687_ 0))
                                                   (_tl1614416166_
                                                    (values-ref _g31687_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1614416166_)
                                                   (letrec ((_loop1614516169_
                                                             (lambda (_hd1614316173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1614916176_)
                       (if (gx#stx-pair? _hd1614316173_)
                           (let ((_e1614616179_ (gx#syntax-e _hd1614316173_)))
                             (let ((_lp-hd1614716183_ (##car _e1614616179_))
                                   (_lp-tl1614816186_ (##cdr _e1614616179_)))
                               (_loop1614516169_
                                _lp-tl1614816186_
                                (cons _lp-hd1614716183_
                                      _super-id1614916176_))))
                           (let ((_super-id1615016189_
                                  (reverse _super-id1614916176_)))
                             ((lambda (_L16193_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1620816211_
                                                          _g1620916214_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1620816211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1620916214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L16193_)))))
                              _super-id1615016189_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1614516169_
                                                      _target1614216163_
                                                      '()))
                                                   (_g1613916156_
                                                    _g1614016160_)))))
                                         (_g1613916156_ _g1614016160_))
                                     (_g1613916156_ _g1614016160_)))))
                         (_g1613816217_ _L15299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1579215803_))))
                                           (_g1579016221_
                                            (if _struct?15129_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1576415775_))))
                            (_g1576216225_
                             (_wrap15131_
                              (cons _L15156_
                                    (cons _L15215_
                                          (cons _L15299_
                                                (cons _L15243_
                                                      (cons _L15271_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1622816231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1622916234_)
                               (cons _g1622816231_ _g1622916234_))
                             '()
                             _L15746_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1570315742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1569815722_
                                              _target1569515716_
                                              '()))
                                           (_g1569215709_ _g1569315713_)))))
                                 (_g1569215709_ _g1569315713_))
                             (_g1569215709_ _g1569315713_)))))
                 (_g1569116237_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked15689_
                                                     _type-plist15674_)
                                              _type-ctor15590_)
                                       _type-name15560_)
                                _type-id15575_)
                         _type-attr15553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1546515504_))))))
                                  (_loop1546015484_ _target1545715478_ '()))
                                (_g1545415471_ _g1545515475_)))))
                      (_g1545415471_ _g1545515475_))
                  (_g1545415471_ _g1545515475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1545316241_
                                               (gx#stx-map
                                                (lambda (_g1624416246_)
                                                  (_make-id15133_
                                                   _name15135_
                                                   '"-"
                                                   _g1624416246_
                                                   '"-set!"))
                                                _els15127_)))))
                                        _getf1539415433_))))))
                       (_loop1538915413_ _target1538615407_ '()))
                     (_g1538315400_ _g1538415404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1538315400_
                                                    _g1538415404_))
                                               (_g1538315400_
                                                _g1538415404_)))))
                                   (_g1538216250_
                                    (gx#stx-map
                                     (lambda (_g1625316255_)
                                       (_make-id15133_
                                        _name15135_
                                        '"-"
                                        _g1625316255_))
                                     _els15127_)))))
                             _attr1532315362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1531815342_
                                                     _target1531515336_
                                                     '()))
                                                  (_g1531215329_
                                                   _g1531315333_)))))
                                        (_g1531215329_ _g1531315333_))
                                    (_g1531215329_ _g1531315333_)))))
                        (_g1531116259_ _els15127_))))
                  _g1528515296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1528316263_
                                                  (if _struct?15129_
                                                      (if _super15138_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_))))))
                                           _g1525715268_))))
                                  (_g1525516267_
                                   (_make-id15133_ _name15135_ '"?")))))
                            _g1522915240_))))
                   (_g1522716271_ (_make-id15133_ '"make-" _name15135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1520115212_))))
                                            (_g1519916275_
                                             (_make-id15133_
                                              _name15135_
                                              '"::t")))))
                                      _g1517315184_))))
                             (_g1517116279_ _id15125_))))
                       _g1514215153_))))
              (_g1514016283_
               (if _struct?15129_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx16611_)
        (letrec ((_generate16614_
                  (lambda (_hd16698_ _fields16700_ _body16701_)
                    (let* ((_g1670416719_
                            (lambda (_g1670516715_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1670516715_)))
                           (_g1670316730_
                            (lambda (_g1670516723_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16698_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16611_
                                      _hd16698_
                                      '#f
                                      _fields16700_
                                      _body16701_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16611_
                                      _hd16698_))))))
                           (_g1670216774_
                            (lambda (_g1670516734_)
                              (if (gx#stx-pair? _g1670516734_)
                                  (let ((_e1670816737_
                                         (gx#syntax-e _g1670516734_)))
                                    (let ((_hd1670916741_
                                           (##car _e1670816737_))
                                          (_tl1671016744_
                                           (##cdr _e1670816737_)))
                                      (if (gx#stx-pair? _tl1671016744_)
                                          (let ((_e1671116747_
                                                 (gx#syntax-e _tl1671016744_)))
                                            (let ((_hd1671216751_
                                                   (##car _e1671116747_))
                                                  (_tl1671316754_
                                                   (##cdr _e1671116747_)))
                                              (if (gx#stx-null? _tl1671316754_)
                                                  ((lambda (_L16757_ _L16759_)
                                                     (if (if (gx#identifier?
                                                              _L16759_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16757_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx16611_
                                                          _L16759_
                                                          _L16757_
                                                          _fields16700_
                                                          _body16701_
                                                          '#t)
                                                         (_g1670316730_
                                                          _g1670516734_)))
                                                   _hd1671216751_
                                                   _hd1670916741_)
                                                  (_g1670316730_
                                                   _g1670516734_))))
                                          (_g1670316730_ _g1670516734_))))
                                  (_g1670316730_ _g1670516734_)))))
                      (_g1670216774_ _hd16698_)))))
          (let* ((_g1661716636_
                  (lambda (_g1661816632_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1661816632_)))
                 (_g1661616694_
                  (lambda (_g1661816640_)
                    (if (gx#stx-pair? _g1661816640_)
                        (let ((_e1662216643_ (gx#syntax-e _g1661816640_)))
                          (let ((_hd1662316647_ (##car _e1662216643_))
                                (_tl1662416650_ (##cdr _e1662216643_)))
                            (if (gx#stx-pair? _tl1662416650_)
                                (let ((_e1662516653_
                                       (gx#syntax-e _tl1662416650_)))
                                  (let ((_hd1662616657_ (##car _e1662516653_))
                                        (_tl1662716660_ (##cdr _e1662516653_)))
                                    (if (gx#stx-pair? _tl1662716660_)
                                        (let ((_e1662816663_
                                               (gx#syntax-e _tl1662716660_)))
                                          (let ((_hd1662916667_
                                                 (##car _e1662816663_))
                                                (_tl1663016670_
                                                 (##cdr _e1662816663_)))
                                            ((lambda (_L16673_
                                                      _L16675_
                                                      _L16676_)
                                               (if (if (gx#identifier-list?
                                                        _L16675_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16673_)
                                                       '#f)
                                                   (_generate16614_
                                                    _L16676_
                                                    _L16675_
                                                    _L16673_)
                                                   (_g1661716636_
                                                    _g1661816640_)))
                                             _tl1663016670_
                                             _hd1662916667_
                                             _hd1662616657_)))
                                        (_g1661716636_ _g1661816640_))))
                                (_g1661716636_ _g1661816640_))))
                        (_g1661716636_ _g1661816640_)))))
            (_g1661616694_ _stx16611_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx16778_)
        (letrec ((_generate16781_
                  (lambda (_hd16865_ _slots16867_ _body16868_)
                    (let* ((_g1687116883_
                            (lambda (_g1687216879_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1687216879_)))
                           (_g1687016894_
                            (lambda (_g1687216887_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16865_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16778_
                                      _hd16865_
                                      '()
                                      _slots16867_
                                      _body16868_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16778_
                                      _hd16865_))))))
                           (_g1686916926_
                            (lambda (_g1687216898_)
                              (if (gx#stx-pair? _g1687216898_)
                                  (let ((_e1687516901_
                                         (gx#syntax-e _g1687216898_)))
                                    (let ((_hd1687616905_
                                           (##car _e1687516901_))
                                          (_tl1687716908_
                                           (##cdr _e1687516901_)))
                                      ((lambda (_L16911_ _L16913_)
                                         (if (if (gx#stx-list? _L16911_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16911_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx16778_
                                              _L16913_
                                              (gx#syntax->list _L16911_)
                                              _slots16867_
                                              _body16868_
                                              '#f)
                                             (_g1687016894_ _g1687216898_)))
                                       _tl1687716908_
                                       _hd1687616905_)))
                                  (_g1687016894_ _g1687216898_)))))
                      (_g1686916926_ _hd16865_)))))
          (let* ((_g1678416803_
                  (lambda (_g1678516799_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1678516799_)))
                 (_g1678316861_
                  (lambda (_g1678516807_)
                    (if (gx#stx-pair? _g1678516807_)
                        (let ((_e1678916810_ (gx#syntax-e _g1678516807_)))
                          (let ((_hd1679016814_ (##car _e1678916810_))
                                (_tl1679116817_ (##cdr _e1678916810_)))
                            (if (gx#stx-pair? _tl1679116817_)
                                (let ((_e1679216820_
                                       (gx#syntax-e _tl1679116817_)))
                                  (let ((_hd1679316824_ (##car _e1679216820_))
                                        (_tl1679416827_ (##cdr _e1679216820_)))
                                    (if (gx#stx-pair? _tl1679416827_)
                                        (let ((_e1679516830_
                                               (gx#syntax-e _tl1679416827_)))
                                          (let ((_hd1679616834_
                                                 (##car _e1679516830_))
                                                (_tl1679716837_
                                                 (##cdr _e1679516830_)))
                                            ((lambda (_L16840_
                                                      _L16842_
                                                      _L16843_)
                                               (if (if (gx#identifier-list?
                                                        _L16842_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16840_)
                                                       '#f)
                                                   (_generate16781_
                                                    _L16843_
                                                    _L16842_
                                                    _L16840_)
                                                   (_g1678416803_
                                                    _g1678516807_)))
                                             _tl1679716837_
                                             _hd1679616834_
                                             _hd1679316824_)))
                                        (_g1678416803_ _g1678516807_))))
                                (_g1678416803_ _g1678516807_))))
                        (_g1678416803_ _g1678516807_)))))
            (_g1678316861_ _stx16778_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx16930_)
        (letrec ((_wrap16933_
                  (lambda (_e-stx17270_)
                    (gx#stx-wrap-source
                     _e-stx17270_
                     (gx#stx-source _stx16930_))))
                 (_method-opt?16935_
                  (lambda (_x17267_) (memq (gx#stx-e _x17267_) '(rebind:)))))
          (let* ((_g1693716966_
                  (lambda (_g1693816962_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1693816962_)))
                 (_g1693617263_
                  (lambda (_g1693816970_)
                    (if (gx#stx-pair? _g1693816970_)
                        (let ((_e1694316973_ (gx#syntax-e _g1693816970_)))
                          (let ((_hd1694416977_ (##car _e1694316973_))
                                (_tl1694516980_ (##cdr _e1694316973_)))
                            (if (gx#stx-pair? _tl1694516980_)
                                (let ((_e1694616983_
                                       (gx#syntax-e _tl1694516980_)))
                                  (let ((_hd1694716987_ (##car _e1694616983_))
                                        (_tl1694816990_ (##cdr _e1694616983_)))
                                    (if (gx#stx-pair? _hd1694716987_)
                                        (let ((_e1694916993_
                                               (gx#syntax-e _hd1694716987_)))
                                          (let ((_hd1695016997_
                                                 (##car _e1694916993_))
                                                (_tl1695117000_
                                                 (##cdr _e1694916993_)))
                                            (if (gx#identifier? _hd1695016997_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g31689_|
                                                     _hd1695016997_)
                                                    (if (gx#stx-pair?
                                                         _tl1695117000_)
                                                        (let ((_e1695217003_
                                                               (gx#syntax-e
                                                                _tl1695117000_)))
                                                          (let ((_hd1695317007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1695217003_))
                        (_tl1695417010_ (##cdr _e1695217003_)))
                    (if (gx#stx-pair? _tl1695417010_)
                        (let ((_e1695517013_ (gx#syntax-e _tl1695417010_)))
                          (let ((_hd1695617017_ (##car _e1695517013_))
                                (_tl1695717020_ (##cdr _e1695517013_)))
                            (if (gx#stx-null? _tl1695717020_)
                                (if (gx#stx-pair? _tl1694816990_)
                                    (let ((_e1695817023_
                                           (gx#syntax-e _tl1694816990_)))
                                      (let ((_hd1695917027_
                                             (##car _e1695817023_))
                                            (_tl1696017030_
                                             (##cdr _e1695817023_)))
                                        ((lambda (_L17033_
                                                  _L17035_
                                                  _L17036_
                                                  _L17037_)
                                           (if (if (gx#identifier? _L17037_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L17036_)
                                                       (gx#stx-plist?
                                                        _L17033_
                                                        _method-opt?16935_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass17062_
                                                       (gx#syntax-local-value
                                                        _L17036_))
                                                      (_rebind?17065_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L17033_))
                                                           '#t
                                                           '#f))
                                                      (_g1706817076_
                                                       (lambda (_g1706917072_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1706917072_)))
                                                      (_g1706717259_
                                                       (lambda (_g1706917080_)
                                                         ((lambda (_L17083_)
                                                            (let ()
                                                              (let* ((_g1709717105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1709817101_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1709817101_)))
                             (_g1709617255_
                              (lambda (_g1709817109_)
                                ((lambda (_L17112_)
                                   (let ()
                                     (let* ((_g1712517133_
                                             (lambda (_g1712617129_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1712617129_)))
                                            (_g1712417251_
                                             (lambda (_g1712617137_)
                                               ((lambda (_L17140_)
                                                  (let ()
                                                    (let* ((_g1715317161_
                                                            (lambda (_g1715417157_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1715417157_)))
                                                           (_g1715217247_
                                                            (lambda (_g1715417165_)
                                                              ((lambda (_L17168_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1718117189_
                                   (lambda (_g1718217185_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1718217185_)))
                                  (_g1718017243_
                                   (lambda (_g1718217193_)
                                     ((lambda (_L17196_)
                                        (let ()
                                          (let* ((_g1720917217_
                                                  (lambda (_g1721017213_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1721017213_)))
                                                 (_g1720817239_
                                                  (lambda (_g1721017221_)
                                                    ((lambda (_L17224_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap16933_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L17168_ (cons _L17224_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1721017221_))))
                                            (_g1720817239_
                                             (_wrap16933_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L17083_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L17037_ '()))
                        (cons _L17112_ (cons _L17196_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1718217193_))))
                             (_g1718017243_ _rebind?17065_))))
                       _g1715417165_))))
              (_g1715217247_
               (_wrap16933_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L17112_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L17140_
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
                                                            (cons _L17083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17037_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L17035_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1712617137_))))
                                       (_g1712417251_
                                        (gx#stx-identifier
                                         _L17037_
                                         '@next-method)))))
                                 _g1709817109_))))
                        (_g1709617255_
                         (gx#stx-identifier
                          _L17037_
                          _L17036_
                          '"::"
                          _L17037_)))))
                  _g1706917080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1706717259_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass17062_)))
                                               (if (not (gx#identifier?
                                                         _L17037_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx16930_
                                                    _L17037_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L17036_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx16930_
                                                        _L17036_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx16930_)))))
                                         _tl1696017030_
                                         _hd1695917027_
                                         _hd1695617017_
                                         _hd1695317007_)))
                                    (_g1693716966_ _g1693816970_))
                                (_g1693716966_ _g1693816970_))))
                        (_g1693716966_ _g1693816970_))))
                (_g1693716966_ _g1693816970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693716966_
                                                     _g1693816970_))
                                                (_g1693716966_
                                                 _g1693816970_))))
                                        (_g1693716966_ _g1693816970_))))
                                (_g1693716966_ _g1693816970_))))
                        (_g1693716966_ _g1693816970_)))))
            (_g1693617263_ _stx16930_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx17273_)
        (let* ((_g1727817327_
                (lambda (_g1727917323_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1727917323_)))
               (_g1727717426_
                (lambda (_g1727917331_)
                  (if (gx#stx-pair? _g1727917331_)
                      (let ((_e1730417334_ (gx#syntax-e _g1727917331_)))
                        (let ((_hd1730517338_ (##car _e1730417334_))
                              (_tl1730617341_ (##cdr _e1730417334_)))
                          (if (gx#stx-pair? _tl1730617341_)
                              (let ((_e1730717344_
                                     (gx#syntax-e _tl1730617341_)))
                                (let ((_hd1730817348_ (##car _e1730717344_))
                                      (_tl1730917351_ (##cdr _e1730717344_)))
                                  (if (gx#stx-pair? _tl1730917351_)
                                      (let ((_e1731017354_
                                             (gx#syntax-e _tl1730917351_)))
                                        (let ((_hd1731117358_
                                               (##car _e1731017354_))
                                              (_tl1731217361_
                                               (##cdr _e1731017354_)))
                                          (if (gx#stx-pair/null?
                                               _tl1731217361_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1731217361_)
                                                        '0)
                                                  (let ((_g31690_
                                                         (gx#syntax-split-splice
                                                          _tl1731217361_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31691_
                                                             (values-count
                                                              _g31690_)))
                                                        (if (not (fx= _g31691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31691_)))
              (let ((_target1731317364_ (values-ref _g31690_ 0))
                    (_tl1731517367_ (values-ref _g31690_ 1)))
                (if (gx#stx-null? _tl1731517367_)
                    (letrec ((_loop1731617370_
                              (lambda (_hd1731417374_ _arg1732017377_)
                                (if (gx#stx-pair? _hd1731417374_)
                                    (let ((_e1731717380_
                                           (gx#syntax-e _hd1731417374_)))
                                      (let ((_lp-hd1731817384_
                                             (##car _e1731717380_))
                                            (_lp-tl1731917387_
                                             (##cdr _e1731717380_)))
                                        (_loop1731617370_
                                         _lp-tl1731917387_
                                         (cons _lp-hd1731817384_
                                               _arg1732017377_))))
                                    (let ((_arg1732117390_
                                           (reverse _arg1732017377_)))
                                      ((lambda (_L17394_ _L17396_ _L17397_)
                                         (if (gx#identifier? _L17397_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L17396_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L17397_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g1741717420_ _g1741817423_)
                                  (cons _g1741717420_ _g1741817423_))
                                '()
                                _L17394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1727817327_ _g1727917331_)))
                                       _arg1732117390_
                                       _hd1731117358_
                                       _hd1730817348_))))))
                      (_loop1731617370_ _target1731317364_ '()))
                    (_g1727817327_ _g1727917331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1727817327_
                                                   _g1727917331_))
                                              (_g1727817327_ _g1727917331_))))
                                      (_g1727817327_ _g1727917331_))))
                              (_g1727817327_ _g1727917331_))))
                      (_g1727817327_ _g1727917331_))))
               (_g1727617532_
                (lambda (_g1727917430_)
                  (if (gx#stx-pair? _g1727917430_)
                      (let ((_e1728317433_ (gx#syntax-e _g1727917430_)))
                        (let ((_hd1728417437_ (##car _e1728317433_))
                              (_tl1728517440_ (##cdr _e1728317433_)))
                          (if (gx#stx-pair? _tl1728517440_)
                              (let ((_e1728617443_
                                     (gx#syntax-e _tl1728517440_)))
                                (let ((_hd1728717447_ (##car _e1728617443_))
                                      (_tl1728817450_ (##cdr _e1728617443_)))
                                  (if (gx#stx-pair? _tl1728817450_)
                                      (let ((_e1728917453_
                                             (gx#syntax-e _tl1728817450_)))
                                        (let ((_hd1729017457_
                                               (##car _e1728917453_))
                                              (_tl1729117460_
                                               (##cdr _e1728917453_)))
                                          (if (gx#stx-pair/null?
                                               _tl1729117460_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1729117460_)
                                                        '0)
                                                  (let ((_g31692_
                                                         (gx#syntax-split-splice
                                                          _tl1729117460_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31693_
                                                             (values-count
                                                              _g31692_)))
                                                        (if (not (fx= _g31693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31693_)))
              (let ((_target1729217463_ (values-ref _g31692_ 0))
                    (_tl1729417466_ (values-ref _g31692_ 1)))
                (if (gx#stx-null? _tl1729417466_)
                    (letrec ((_loop1729517469_
                              (lambda (_hd1729317473_ _arg1729917476_)
                                (if (gx#stx-pair? _hd1729317473_)
                                    (let ((_e1729617479_
                                           (gx#syntax-e _hd1729317473_)))
                                      (let ((_lp-hd1729717483_
                                             (##car _e1729617479_))
                                            (_lp-tl1729817486_
                                             (##cdr _e1729617479_)))
                                        (_loop1729517469_
                                         _lp-tl1729817486_
                                         (cons _lp-hd1729717483_
                                               _arg1729917476_))))
                                    (let ((_arg1730017489_
                                           (reverse _arg1729917476_)))
                                      ((lambda (_L17493_ _L17495_ _L17496_)
                                         (if (if (gx#identifier? _L17496_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1751517518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1751617521_)
                     (cons _g1751517518_ _g1751617521_))
                   '()
                   _L17493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L17495_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L17496_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1752317526_
                                                           _g1752417529_)
                                                    (cons _g1752317526_
                                                          _g1752417529_))
                                                  '()
                                                  _L17493_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1727717426_ _g1727917430_)))
                                       _arg1730017489_
                                       _hd1729017457_
                                       _hd1728717447_))))))
                      (_loop1729517469_ _target1729217463_ '()))
                    (_g1727717426_ _g1727917430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1727717426_
                                                   _g1727917430_))
                                              (_g1727717426_ _g1727917430_))))
                                      (_g1727717426_ _g1727917430_))))
                              (_g1727717426_ _g1727917430_))))
                      (_g1727717426_ _g1727917430_)))))
          (_g1727617532_ _$stx17273_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx17538_)
        (let* ((_g1754317583_
                (lambda (_g1754417579_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1754417579_)))
               (_g1754217684_
                (lambda (_g1754417587_)
                  (if (gx#stx-pair? _g1754417587_)
                      (let ((_e1756017590_ (gx#syntax-e _g1754417587_)))
                        (let ((_hd1756117594_ (##car _e1756017590_))
                              (_tl1756217597_ (##cdr _e1756017590_)))
                          (if (gx#stx-pair? _tl1756217597_)
                              (let ((_e1756317600_
                                     (gx#syntax-e _tl1756217597_)))
                                (let ((_hd1756417604_ (##car _e1756317600_))
                                      (_tl1756517607_ (##cdr _e1756317600_)))
                                  (if (gx#stx-pair? _tl1756517607_)
                                      (let ((_e1756617610_
                                             (gx#syntax-e _tl1756517607_)))
                                        (let ((_hd1756717614_
                                               (##car _e1756617610_))
                                              (_tl1756817617_
                                               (##cdr _e1756617610_)))
                                          (if (gx#stx-pair/null?
                                               _tl1756817617_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1756817617_)
                                                        '0)
                                                  (let ((_g31694_
                                                         (gx#syntax-split-splice
                                                          _tl1756817617_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31695_
                                                             (values-count
                                                              _g31694_)))
                                                        (if (not (fx= _g31695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31695_)))
              (let ((_target1756917620_ (values-ref _g31694_ 0))
                    (_tl1757117623_ (values-ref _g31694_ 1)))
                (if (gx#stx-null? _tl1757117623_)
                    (letrec ((_loop1757217626_
                              (lambda (_hd1757017630_ _rest1757617633_)
                                (if (gx#stx-pair? _hd1757017630_)
                                    (let ((_e1757317636_
                                           (gx#syntax-e _hd1757017630_)))
                                      (let ((_lp-hd1757417640_
                                             (##car _e1757317636_))
                                            (_lp-tl1757517643_
                                             (##cdr _e1757317636_)))
                                        (_loop1757217626_
                                         _lp-tl1757517643_
                                         (cons _lp-hd1757417640_
                                               _rest1757617633_))))
                                    (let ((_rest1757717646_
                                           (reverse _rest1757617633_)))
                                      ((lambda (_L17650_
                                                _L17652_
                                                _L17653_
                                                _L17654_)
                                         (cons _L17654_
                                               (cons (cons _L17654_
                                                           (cons _L17653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17652_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1767517678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1767617681_)
                        (cons _g1767517678_ _g1767617681_))
                      '()
                      _L17650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest1757717646_
                                       _hd1756717614_
                                       _hd1756417604_
                                       _hd1756117594_))))))
                      (_loop1757217626_ _target1756917620_ '()))
                    (_g1754317583_ _g1754417587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1754317583_
                                                   _g1754417587_))
                                              (_g1754317583_ _g1754417587_))))
                                      (_g1754317583_ _g1754417587_))))
                              (_g1754317583_ _g1754417587_))))
                      (_g1754317583_ _g1754417587_))))
               (_g1754117738_
                (lambda (_g1754417688_)
                  (if (gx#stx-pair? _g1754417688_)
                      (let ((_e1754717691_ (gx#syntax-e _g1754417688_)))
                        (let ((_hd1754817695_ (##car _e1754717691_))
                              (_tl1754917698_ (##cdr _e1754717691_)))
                          (if (gx#stx-pair? _tl1754917698_)
                              (let ((_e1755017701_
                                     (gx#syntax-e _tl1754917698_)))
                                (let ((_hd1755117705_ (##car _e1755017701_))
                                      (_tl1755217708_ (##cdr _e1755017701_)))
                                  (if (gx#stx-pair? _tl1755217708_)
                                      (let ((_e1755317711_
                                             (gx#syntax-e _tl1755217708_)))
                                        (let ((_hd1755417715_
                                               (##car _e1755317711_))
                                              (_tl1755517718_
                                               (##cdr _e1755317711_)))
                                          (if (gx#stx-null? _tl1755517718_)
                                              ((lambda (_L17721_ _L17723_)
                                                 (if (gx#identifier? _L17721_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L17723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17721_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1754217684_
                                                      _g1754417688_)))
                                               _hd1755417715_
                                               _hd1755117705_)
                                              (_g1754217684_ _g1754417688_))))
                                      (_g1754217684_ _g1754417688_))))
                              (_g1754217684_ _g1754417688_))))
                      (_g1754217684_ _g1754417688_)))))
          (_g1754117738_ _$stx17538_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx17743_)
        (let* ((_g1774817800_
                (lambda (_g1774917796_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1774917796_)))
               (_g1774717929_
                (lambda (_g1774917804_)
                  (if (gx#stx-pair? _g1774917804_)
                      (let ((_e1777117807_ (gx#syntax-e _g1774917804_)))
                        (let ((_hd1777217811_ (##car _e1777117807_))
                              (_tl1777317814_ (##cdr _e1777117807_)))
                          (if (gx#stx-pair? _tl1777317814_)
                              (let ((_e1777417817_
                                     (gx#syntax-e _tl1777317814_)))
                                (let ((_hd1777517821_ (##car _e1777417817_))
                                      (_tl1777617824_ (##cdr _e1777417817_)))
                                  (if (gx#stx-pair? _tl1777617824_)
                                      (let ((_e1777717827_
                                             (gx#syntax-e _tl1777617824_)))
                                        (let ((_hd1777817831_
                                               (##car _e1777717827_))
                                              (_tl1777917834_
                                               (##cdr _e1777717827_)))
                                          (if (gx#stx-pair/null?
                                               _tl1777917834_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1777917834_)
                                                        '2)
                                                  (let ((_g31696_
                                                         (gx#syntax-split-splice
                                                          _tl1777917834_
                                                          '2)))
                                                    (begin
                                                      (let ((_g31697_
                                                             (values-count
                                                              _g31696_)))
                                                        (if (not (fx= _g31697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31697_)))
              (let ((_target1778017837_ (values-ref _g31696_ 0))
                    (_tl1778217840_ (values-ref _g31696_ 1)))
                (if (gx#stx-pair? _tl1778217840_)
                    (let ((_e1778917843_ (gx#syntax-e _tl1778217840_)))
                      (let ((_hd1779017847_ (##car _e1778917843_))
                            (_tl1779117850_ (##cdr _e1778917843_)))
                        (if (gx#stx-pair? _tl1779117850_)
                            (let ((_e1779217853_ (gx#syntax-e _tl1779117850_)))
                              (let ((_hd1779317857_ (##car _e1779217853_))
                                    (_tl1779417860_ (##cdr _e1779217853_)))
                                (if (gx#stx-null? _tl1779417860_)
                                    (letrec ((_loop1778317863_
                                              (lambda (_hd1778117867_
                                                       _path1778717870_)
                                                (if (gx#stx-pair?
                                                     _hd1778117867_)
                                                    (let ((_e1778417873_
                                                           (gx#syntax-e
                                                            _hd1778117867_)))
                                                      (let ((_lp-hd1778517877_
                                                             (##car _e1778417873_))
                                                            (_lp-tl1778617880_
                                                             (##cdr _e1778417873_)))
                                                        (_loop1778317863_
                                                         _lp-tl1778617880_
                                                         (cons _lp-hd1778517877_
                                                               _path1778717870_))))
                                                    (let ((_path1778817883_
                                                           (reverse _path1778717870_)))
                                                      ((lambda (_L17887_
                                                                _L17889_
                                                                _L17890_
                                                                _L17891_
                                                                _L17892_
                                                                _L17893_)
                                                         (cons _L17893_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L17892_
                                         (cons _L17891_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1792017923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1792117926_)
                  (cons _g1792017923_ _g1792117926_))
                '()
                _L17890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L17889_ (cons _L17887_ '())))))
               _hd1779317857_
               _hd1779017847_
               _path1778817883_
               _hd1777817831_
               _hd1777517821_
               _hd1777217811_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1778317863_
                                       _target1778017837_
                                       '()))
                                    (_g1774817800_ _g1774917804_))))
                            (_g1774817800_ _g1774917804_))))
                    (_g1774817800_ _g1774917804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1774817800_
                                                   _g1774917804_))
                                              (_g1774817800_ _g1774917804_))))
                                      (_g1774817800_ _g1774917804_))))
                              (_g1774817800_ _g1774917804_))))
                      (_g1774817800_ _g1774917804_))))
               (_g1774617997_
                (lambda (_g1774917933_)
                  (if (gx#stx-pair? _g1774917933_)
                      (let ((_e1775317936_ (gx#syntax-e _g1774917933_)))
                        (let ((_hd1775417940_ (##car _e1775317936_))
                              (_tl1775517943_ (##cdr _e1775317936_)))
                          (if (gx#stx-pair? _tl1775517943_)
                              (let ((_e1775617946_
                                     (gx#syntax-e _tl1775517943_)))
                                (let ((_hd1775717950_ (##car _e1775617946_))
                                      (_tl1775817953_ (##cdr _e1775617946_)))
                                  (if (gx#stx-pair? _tl1775817953_)
                                      (let ((_e1775917956_
                                             (gx#syntax-e _tl1775817953_)))
                                        (let ((_hd1776017960_
                                               (##car _e1775917956_))
                                              (_tl1776117963_
                                               (##cdr _e1775917956_)))
                                          (if (gx#stx-pair? _tl1776117963_)
                                              (let ((_e1776217966_
                                                     (gx#syntax-e
                                                      _tl1776117963_)))
                                                (let ((_hd1776317970_
                                                       (##car _e1776217966_))
                                                      (_tl1776417973_
                                                       (##cdr _e1776217966_)))
                                                  (if (gx#stx-null?
                                                       _tl1776417973_)
                                                      ((lambda (_L17976_
                                                                _L17978_
                                                                _L17979_)
                                                         (if (gx#identifier?
                                                              _L17978_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L17979_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L17978_ '()))
                                       (cons _L17976_ '()))))
                     (_g1774717929_ _g1774917933_)))
               _hd1776317970_
               _hd1776017960_
               _hd1775717950_)
              (_g1774717929_ _g1774917933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1774717929_ _g1774917933_))))
                                      (_g1774717929_ _g1774917933_))))
                              (_g1774717929_ _g1774917933_))))
                      (_g1774717929_ _g1774917933_)))))
          (_g1774617997_ _$stx17743_))))))
