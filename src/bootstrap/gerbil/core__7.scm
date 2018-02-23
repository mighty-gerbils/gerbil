(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g31673_|
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
      (lambda _$args16582_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args16582_)))
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
      (lambda _$args16578_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args16578_)))
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
      (lambda _$args16574_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args16574_)))
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
      (lambda _$args16570_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args16570_)))
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
      (lambda _$args16566_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args16566_)))
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
      (lambda _$args16562_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args16562_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1653416548_
             (lambda (_stx16536_ _is?16538_)
               (if (gx#identifier? _stx16536_)
                   (let ((_e1653916541_
                          (gx#syntax-local-value _stx16536_ false)))
                     (if _e1653916541_
                         (let ((_e16545_ _e1653916541_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e16545_)
                               (_is?16538_ _e16545_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g31659_
          (let ((_g31658_ (length _g31659_)))
            (cond ((fx= _g31658_ 1)
                   (apply (lambda (_stx16552_)
                            (let ((_is?16555_ true))
                              (_opt-lambda1653416548_ _stx16552_ _is?16555_)))
                          _g31659_))
                  ((fx= _g31658_ 2) (apply _opt-lambda1653416548_ _g31659_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g31659_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx16532_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16532_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx16529_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16529_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id16523_)
        (if _id16523_
            (let ((_info16526_ (gx#syntax-local-value _id16523_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info16526_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info16526_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self16288_ _stx16290_)
        (let* ((_g1629216312_
                (lambda (_g1629316308_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1629316308_)))
               (_g1629116519_
                (lambda (_g1629316316_)
                  (if (gx#stx-pair? _g1629316316_)
                      (let ((_e1629516319_ (gx#syntax-e _g1629316316_)))
                        (let ((_hd1629616323_ (##car _e1629516319_))
                              (_tl1629716326_ (##cdr _e1629516319_)))
                          (if (gx#stx-pair/null? _tl1629716326_)
                              (if (fx>= (gx#stx-length _tl1629716326_) '0)
                                  (let ((_g31660_
                                         (gx#syntax-split-splice
                                          _tl1629716326_
                                          '0)))
                                    (begin
                                      (let ((_g31661_ (values-count _g31660_)))
                                        (if (not (fx= _g31661_ 2))
                                            (error "Context expects 2 values"
                                                   _g31661_)))
                                      (let ((_target1629816329_
                                             (values-ref _g31660_ 0))
                                            (_tl1630016332_
                                             (values-ref _g31660_ 1)))
                                        (if (gx#stx-null? _tl1630016332_)
                                            (letrec ((_loop1630116335_
                                                      (lambda (_hd1629916339_
                                                               _arg1630516342_)
                                                        (if (gx#stx-pair?
                                                             _hd1629916339_)
                                                            (let ((_e1630216345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1629916339_)))
                      (let ((_lp-hd1630316349_ (##car _e1630216345_))
                            (_lp-tl1630416352_ (##cdr _e1630216345_)))
                        (_loop1630116335_
                         _lp-tl1630416352_
                         (cons _lp-hd1630316349_ _arg1630516342_))))
                    (let ((_arg1630616355_ (reverse _arg1630516342_)))
                      ((lambda (_L16359_)
                         (let* ((_g1637516406_
                                 (lambda (_g1637616402_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1637616402_)))
                                (_g1637416515_
                                 (lambda (_g1637616410_)
                                   (if (gx#stx-pair? _g1637616410_)
                                       (let ((_e1638316413_
                                              (gx#syntax-e _g1637616410_)))
                                         (let ((_hd1638416417_
                                                (##car _e1638316413_))
                                               (_tl1638516420_
                                                (##cdr _e1638316413_)))
                                           (if (gx#stx-pair? _tl1638516420_)
                                               (let ((_e1638616423_
                                                      (gx#syntax-e
                                                       _tl1638516420_)))
                                                 (let ((_hd1638716427_
                                                        (##car _e1638616423_))
                                                       (_tl1638816430_
                                                        (##cdr _e1638616423_)))
                                                   (if (gx#stx-pair?
                                                        _tl1638816430_)
                                                       (let ((_e1638916433_
                                                              (gx#syntax-e
                                                               _tl1638816430_)))
                                                         (let ((_hd1639016437_
                                                                (##car _e1638916433_))
                                                               (_tl1639116440_
                                                                (##cdr _e1638916433_)))
                                                           (if (gx#stx-pair?
                                                                _tl1639116440_)
                                                               (let ((_e1639216443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1639116440_)))
                         (let ((_hd1639316447_ (##car _e1639216443_))
                               (_tl1639416450_ (##cdr _e1639216443_)))
                           (if (gx#stx-pair? _tl1639416450_)
                               (let ((_e1639516453_
                                      (gx#syntax-e _tl1639416450_)))
                                 (let ((_hd1639616457_ (##car _e1639516453_))
                                       (_tl1639716460_ (##cdr _e1639516453_)))
                                   (if (gx#stx-pair? _tl1639716460_)
                                       (let ((_e1639816463_
                                              (gx#syntax-e _tl1639716460_)))
                                         (let ((_hd1639916467_
                                                (##car _e1639816463_))
                                               (_tl1640016470_
                                                (##cdr _e1639816463_)))
                                           (if (gx#stx-null? _tl1640016470_)
                                               ((lambda (_L16473_
                                                         _L16475_
                                                         _L16476_
                                                         _L16477_
                                                         _L16478_
                                                         _L16479_)
                                                  (let ()
                                                    (cons _L16477_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1650616509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1650716512_)
                             (cons _g1650616509_ _g1650716512_))
                           '()
                           _L16359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1639916467_
                                                _hd1639616457_
                                                _hd1639316447_
                                                _hd1639016437_
                                                _hd1638716427_
                                                _hd1638416417_)
                                               (_g1637516406_ _g1637616410_))))
                                       (_g1637516406_ _g1637616410_))))
                               (_g1637516406_ _g1637616410_))))
                       (_g1637516406_ _g1637616410_))))
               (_g1637516406_ _g1637616410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1637516406_ _g1637616410_))))
                                       (_g1637516406_ _g1637616410_)))))
                           (_g1637416515_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self16288_))))
                       _arg1630616355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1630116335_
                                               _target1629816329_
                                               '()))
                                            (_g1629216312_ _g1629316316_)))))
                                  (_g1629216312_ _g1629316316_))
                              (_g1629216312_ _g1629316316_))))
                      (_g1629216312_ _g1629316316_)))))
          (_g1629116519_ _stx16290_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx16279_)
        (letrec ((_body-opt?16282_
                  (lambda (_key16285_)
                    (memq (gx#stx-e _key16285_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:)))))
          (gx#stx-plist? _stx16279_ _body-opt?16282_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx15123_
               _id15125_
               _super-ref15126_
               _els15127_
               _body15128_
               _struct?15129_)
        (letrec* ((_wrap15131_
                   (lambda (_e-stx16276_)
                     (gx#stx-wrap-source
                      _e-stx16276_
                      (gx#stx-source _stx15123_))))
                  (_make-id15133_
                   (if (uninterned-symbol? (gx#stx-e _id15125_))
                       (lambda _g31662_ (gx#genident _id15125_))
                       (lambda _args16273_
                         (apply gx#stx-identifier _id15125_ _args16273_)))))
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
                   (_g1514016267_
                    (lambda (_g1514215153_)
                      ((lambda (_L15156_)
                         (let ()
                           (let* ((_g1517215180_
                                   (lambda (_g1517315176_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1517315176_)))
                                  (_g1517116263_
                                   (lambda (_g1517315184_)
                                     ((lambda (_L15187_)
                                        (let ()
                                          (let* ((_g1520015208_
                                                  (lambda (_g1520115204_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1520115204_)))
                                                 (_g1519916259_
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
                        (_g1522716255_
                         (lambda (_g1522915240_)
                           ((lambda (_L15243_)
                              (let ()
                                (let* ((_g1525615264_
                                        (lambda (_g1525715260_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1525715260_)))
                                       (_g1525516251_
                                        (lambda (_g1525715268_)
                                          ((lambda (_L15271_)
                                             (let ()
                                               (let* ((_g1528415292_
                                                       (lambda (_g1528515288_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1528515288_)))
                                                      (_g1528316247_
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
                             (_g1531116243_
                              (lambda (_g1531315333_)
                                (if (gx#stx-pair/null? _g1531315333_)
                                    (if (fx>= (gx#stx-length _g1531315333_) '0)
                                        (let ((_g31663_
                                               (gx#syntax-split-splice
                                                _g1531315333_
                                                '0)))
                                          (begin
                                            (let ((_g31664_
                                                   (values-count _g31663_)))
                                              (if (not (fx= _g31664_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31664_)))
                                            (let ((_target1531515336_
                                                   (values-ref _g31663_ 0))
                                                  (_tl1531715339_
                                                   (values-ref _g31663_ 1)))
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
                                        (_g1538216234_
                                         (lambda (_g1538415404_)
                                           (if (gx#stx-pair/null?
                                                _g1538415404_)
                                               (if (fx>= (gx#stx-length
                                                          _g1538415404_)
                                                         '0)
                                                   (let ((_g31665_
                                                          (gx#syntax-split-splice
                                                           _g1538415404_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31666_
                                                              (values-count
                                                               _g31665_)))
                                                         (if (not (fx= _g31666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31666_)))
               (let ((_target1538615407_ (values-ref _g31665_ 0))
                     (_tl1538815410_ (values-ref _g31665_ 1)))
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
                                                   (_g1545316225_
                                                    (lambda (_g1545515475_)
                                                      (if (gx#stx-pair/null?
                                                           _g1545515475_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1545515475_)
                            '0)
                      (let ((_g31667_
                             (gx#syntax-split-splice _g1545515475_ '0)))
                        (begin
                          (let ((_g31668_ (values-count _g31667_)))
                            (if (not (fx= _g31668_ 2))
                                (error "Context expects 2 values" _g31668_)))
                          (let ((_target1545715478_ (values-ref _g31667_ 0))
                                (_tl1545915481_ (values-ref _g31667_ 1)))
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
                      (_plist15618_
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
                              (_plist15613_
                               (let ((_$e15606_
                                      (gx#stx-getq 'print: _body15128_)))
                                 (if _$e15606_
                                     ((lambda (_print15610_)
                                        (cons (cons 'print: _print15610_)
                                              _plist15603_))
                                      _$e15606_)
                                     _plist15603_))))
                         _plist15613_))
                      (_type-plist15658_
                       (if (null? _plist15618_)
                           _plist15618_
                           (let* ((_g1562115629_
                                   (lambda (_g1562215625_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1562215625_)))
                                  (_g1562015654_
                                   (lambda (_g1562215633_)
                                     ((lambda (_L15636_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L15636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1562215633_))))
                             (_g1562015654_ _plist15618_))))
                      (_type-unchecked15673_
                       (let ((_$e15669_
                              (let ((_e1566015662_
                                     (gx#stx-getq 'unchecked: _body15128_)))
                                (if _e1566015662_
                                    (let ((_e15666_ _e1566015662_))
                                      (cons 'unchecked: (cons _e15666_ '())))
                                    '#f))))
                         (if _$e15669_ _$e15669_ '())))
                      (_g1567615693_
                       (lambda (_g1567715689_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1567715689_)))
                      (_g1567516221_
                       (lambda (_g1567715697_)
                         (if (gx#stx-pair/null? _g1567715697_)
                             (if (fx>= (gx#stx-length _g1567715697_) '0)
                                 (let ((_g31669_
                                        (gx#syntax-split-splice
                                         _g1567715697_
                                         '0)))
                                   (begin
                                     (let ((_g31670_ (values-count _g31669_)))
                                       (if (not (fx= _g31670_ 2))
                                           (error "Context expects 2 values"
                                                  _g31670_)))
                                     (let ((_target1567915700_
                                            (values-ref _g31669_ 0))
                                           (_tl1568115703_
                                            (values-ref _g31669_ 1)))
                                       (if (gx#stx-null? _tl1568115703_)
                                           (letrec ((_loop1568215706_
                                                     (lambda (_hd1568015710_
                                                              _type-body1568615713_)
                                                       (if (gx#stx-pair?
                                                            _hd1568015710_)
                                                           (let ((_e1568315716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1568015710_)))
                     (let ((_lp-hd1568415720_ (##car _e1568315716_))
                           (_lp-tl1568515723_ (##cdr _e1568315716_)))
                       (_loop1568215706_
                        _lp-tl1568515723_
                        (cons _lp-hd1568415720_ _type-body1568615713_))))
                   (let ((_type-body1568715726_
                          (reverse _type-body1568615713_)))
                     ((lambda (_L15730_)
                        (let ()
                          (let* ((_g1574715755_
                                  (lambda (_g1574815751_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1574815751_)))
                                 (_g1574616209_
                                  (lambda (_g1574815759_)
                                    ((lambda (_L15762_)
                                       (let ()
                                         (let* ((_g1577515783_
                                                 (lambda (_g1577615779_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1577615779_)))
                                                (_g1577416205_
                                                 (lambda (_g1577615787_)
                                                   ((lambda (_L15790_)
                                                      (let ()
                                                        (let* ((_g1580315811_
                                                                (lambda (_g1580415807_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1580415807_)))
                       (_g1580216119_
                        (lambda (_g1580415815_)
                          ((lambda (_L15818_)
                             (let ()
                               (let* ((_g1583115839_
                                       (lambda (_g1583215835_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1583215835_)))
                                      (_g1583016115_
                                       (lambda (_g1583215843_)
                                         ((lambda (_L15846_)
                                            (let ()
                                              (let* ((_g1585915867_
                                                      (lambda (_g1586015863_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1586015863_)))
                                                     (_g1585816111_
                                                      (lambda (_g1586015871_)
                                                        ((lambda (_L15874_)
                                                           (let ()
                                                             (let* ((_g1588715895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1588815891_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1588815891_)))
                            (_g1588616069_
                             (lambda (_g1588815899_)
                               ((lambda (_L15902_)
                                  (let ()
                                    (let* ((_g1591515923_
                                            (lambda (_g1591615919_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1591615919_)))
                                           (_g1591416065_
                                            (lambda (_g1591615927_)
                                              ((lambda (_L15930_)
                                                 (let ()
                                                   (let* ((_g1594315951_
                                                           (lambda (_g1594415947_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1594415947_)))
                                                          (_g1594216061_
                                                           (lambda (_g1594415955_)
                                                             ((lambda (_L15958_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1597115979_
                                  (lambda (_g1597215975_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1597215975_)))
                                 (_g1597016057_
                                  (lambda (_g1597215983_)
                                    ((lambda (_L15986_)
                                       (let ()
                                         (let* ((_g1599916007_
                                                 (lambda (_g1600016003_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1600016003_)))
                                                (_g1599816029_
                                                 (lambda (_g1600016011_)
                                                   ((lambda (_L16014_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap15131_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15762_ (cons _L16014_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1600016011_))))
                                           (_g1599816029_
                                            (_wrap15131_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L15187_
                                                         (cons (cons _L15790_
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
                                                           (cons _L15818_
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
                                                         (foldr (lambda (_g1603216039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1603316042_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1603216039_ '()))
                                _g1603316042_))
                        '()
                        _L15437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1603416045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1603516048_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1603416045_ '()))
                                      _g1603516048_))
                              '()
                              _L15508_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L15846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L15874_ '()))
                                     (cons _L15902_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L15930_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L15958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15986_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1603616051_
                                                         _g1603716054_)
                                                  (cons _g1603616051_
                                                        _g1603716054_))
                                                '()
                                                _L15366_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1597215983_))))
                            (_g1597016057_ _plist15618_))))
                      _g1594415955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594216061_
                                                      (if (not (null? _type-ctor15590_))
                                                          (cadr _type-ctor15590_)
                                                          '#f)))))
                                               _g1591615927_))))
                                      (_g1591416065_
                                       (cadr _type-name15560_)))))
                                _g1588815899_))))
                       (_g1588616069_
                        (let ((_quote-e16108_
                               (lambda (_x-ref16073_)
                                 (if _x-ref16073_
                                     (let* ((_g1607616084_
                                             (lambda (_g1607716080_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1607716080_)))
                                            (_g1607516104_
                                             (lambda (_g1607716088_)
                                               ((lambda (_L16091_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L16091_
                                                                '()))))
                                                _g1607716088_))))
                                       (_g1607516104_ _x-ref16073_))
                                     '#f))))
                          (if _struct?15129_
                              (_quote-e16108_ _super-ref15126_)
                              (cons 'list
                                    (map _quote-e16108_
                                         _super-ref15126_))))))))
                 _g1586015871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1585816111_
                                                 (if (not (null? _type-id15575_))
                                                     (cadr _type-id15575_)
                                                     '#f)))))
                                          _g1583215843_))))
                                 (_g1583016115_
                                  (if _struct?15129_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1580415815_))))
                  (_g1580216119_
                   (if _struct?15129_
                       (if _super15138_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L15299_ '()))
                           '#f)
                       (let* ((_g1612316140_
                               (lambda (_g1612416136_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1612416136_)))
                              (_g1612216201_
                               (lambda (_g1612416144_)
                                 (if (gx#stx-pair/null? _g1612416144_)
                                     (if (fx>= (gx#stx-length _g1612416144_)
                                               '0)
                                         (let ((_g31671_
                                                (gx#syntax-split-splice
                                                 _g1612416144_
                                                 '0)))
                                           (begin
                                             (let ((_g31672_
                                                    (values-count _g31671_)))
                                               (if (not (fx= _g31672_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31672_)))
                                             (let ((_target1612616147_
                                                    (values-ref _g31671_ 0))
                                                   (_tl1612816150_
                                                    (values-ref _g31671_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1612816150_)
                                                   (letrec ((_loop1612916153_
                                                             (lambda (_hd1612716157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1613316160_)
                       (if (gx#stx-pair? _hd1612716157_)
                           (let ((_e1613016163_ (gx#syntax-e _hd1612716157_)))
                             (let ((_lp-hd1613116167_ (##car _e1613016163_))
                                   (_lp-tl1613216170_ (##cdr _e1613016163_)))
                               (_loop1612916153_
                                _lp-tl1613216170_
                                (cons _lp-hd1613116167_
                                      _super-id1613316160_))))
                           (let ((_super-id1613416173_
                                  (reverse _super-id1613316160_)))
                             ((lambda (_L16177_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1619216195_
                                                          _g1619316198_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1619216195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1619316198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L16177_)))))
                              _super-id1613416173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1612916153_
                                                      _target1612616147_
                                                      '()))
                                                   (_g1612316140_
                                                    _g1612416144_)))))
                                         (_g1612316140_ _g1612416144_))
                                     (_g1612316140_ _g1612416144_)))))
                         (_g1612216201_ _L15299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1577615787_))))
                                           (_g1577416205_
                                            (if _struct?15129_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1574815759_))))
                            (_g1574616209_
                             (_wrap15131_
                              (cons _L15156_
                                    (cons _L15215_
                                          (cons _L15299_
                                                (cons _L15243_
                                                      (cons _L15271_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1621216215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1621316218_)
                               (cons _g1621216215_ _g1621316218_))
                             '()
                             _L15730_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1568715726_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1568215706_
                                              _target1567915700_
                                              '()))
                                           (_g1567615693_ _g1567715697_)))))
                                 (_g1567615693_ _g1567715697_))
                             (_g1567615693_ _g1567715697_)))))
                 (_g1567516221_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked15673_
                                                     _type-plist15658_)
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
                                              (_g1545316225_
                                               (gx#stx-map
                                                (lambda (_g1622816230_)
                                                  (_make-id15133_
                                                   _name15135_
                                                   '"-"
                                                   _g1622816230_
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
                                   (_g1538216234_
                                    (gx#stx-map
                                     (lambda (_g1623716239_)
                                       (_make-id15133_
                                        _name15135_
                                        '"-"
                                        _g1623716239_))
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
                        (_g1531116243_ _els15127_))))
                  _g1528515296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1528316247_
                                                  (if _struct?15129_
                                                      (if _super15138_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_))))))
                                           _g1525715268_))))
                                  (_g1525516251_
                                   (_make-id15133_ _name15135_ '"?")))))
                            _g1522915240_))))
                   (_g1522716255_ (_make-id15133_ '"make-" _name15135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1520115212_))))
                                            (_g1519916259_
                                             (_make-id15133_
                                              _name15135_
                                              '"::t")))))
                                      _g1517315184_))))
                             (_g1517116263_ _id15125_))))
                       _g1514215153_))))
              (_g1514016267_
               (if _struct?15129_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx16595_)
        (letrec ((_generate16598_
                  (lambda (_hd16682_ _fields16684_ _body16685_)
                    (let* ((_g1668816703_
                            (lambda (_g1668916699_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1668916699_)))
                           (_g1668716714_
                            (lambda (_g1668916707_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16682_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16595_
                                      _hd16682_
                                      '#f
                                      _fields16684_
                                      _body16685_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16595_
                                      _hd16682_))))))
                           (_g1668616758_
                            (lambda (_g1668916718_)
                              (if (gx#stx-pair? _g1668916718_)
                                  (let ((_e1669216721_
                                         (gx#syntax-e _g1668916718_)))
                                    (let ((_hd1669316725_
                                           (##car _e1669216721_))
                                          (_tl1669416728_
                                           (##cdr _e1669216721_)))
                                      (if (gx#stx-pair? _tl1669416728_)
                                          (let ((_e1669516731_
                                                 (gx#syntax-e _tl1669416728_)))
                                            (let ((_hd1669616735_
                                                   (##car _e1669516731_))
                                                  (_tl1669716738_
                                                   (##cdr _e1669516731_)))
                                              (if (gx#stx-null? _tl1669716738_)
                                                  ((lambda (_L16741_ _L16743_)
                                                     (if (if (gx#identifier?
                                                              _L16743_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16741_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx16595_
                                                          _L16743_
                                                          _L16741_
                                                          _fields16684_
                                                          _body16685_
                                                          '#t)
                                                         (_g1668716714_
                                                          _g1668916718_)))
                                                   _hd1669616735_
                                                   _hd1669316725_)
                                                  (_g1668716714_
                                                   _g1668916718_))))
                                          (_g1668716714_ _g1668916718_))))
                                  (_g1668716714_ _g1668916718_)))))
                      (_g1668616758_ _hd16682_)))))
          (let* ((_g1660116620_
                  (lambda (_g1660216616_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1660216616_)))
                 (_g1660016678_
                  (lambda (_g1660216624_)
                    (if (gx#stx-pair? _g1660216624_)
                        (let ((_e1660616627_ (gx#syntax-e _g1660216624_)))
                          (let ((_hd1660716631_ (##car _e1660616627_))
                                (_tl1660816634_ (##cdr _e1660616627_)))
                            (if (gx#stx-pair? _tl1660816634_)
                                (let ((_e1660916637_
                                       (gx#syntax-e _tl1660816634_)))
                                  (let ((_hd1661016641_ (##car _e1660916637_))
                                        (_tl1661116644_ (##cdr _e1660916637_)))
                                    (if (gx#stx-pair? _tl1661116644_)
                                        (let ((_e1661216647_
                                               (gx#syntax-e _tl1661116644_)))
                                          (let ((_hd1661316651_
                                                 (##car _e1661216647_))
                                                (_tl1661416654_
                                                 (##cdr _e1661216647_)))
                                            ((lambda (_L16657_
                                                      _L16659_
                                                      _L16660_)
                                               (if (if (gx#identifier-list?
                                                        _L16659_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16657_)
                                                       '#f)
                                                   (_generate16598_
                                                    _L16660_
                                                    _L16659_
                                                    _L16657_)
                                                   (_g1660116620_
                                                    _g1660216624_)))
                                             _tl1661416654_
                                             _hd1661316651_
                                             _hd1661016641_)))
                                        (_g1660116620_ _g1660216624_))))
                                (_g1660116620_ _g1660216624_))))
                        (_g1660116620_ _g1660216624_)))))
            (_g1660016678_ _stx16595_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx16762_)
        (letrec ((_generate16765_
                  (lambda (_hd16849_ _slots16851_ _body16852_)
                    (let* ((_g1685516867_
                            (lambda (_g1685616863_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1685616863_)))
                           (_g1685416878_
                            (lambda (_g1685616871_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16849_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16762_
                                      _hd16849_
                                      '()
                                      _slots16851_
                                      _body16852_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16762_
                                      _hd16849_))))))
                           (_g1685316910_
                            (lambda (_g1685616882_)
                              (if (gx#stx-pair? _g1685616882_)
                                  (let ((_e1685916885_
                                         (gx#syntax-e _g1685616882_)))
                                    (let ((_hd1686016889_
                                           (##car _e1685916885_))
                                          (_tl1686116892_
                                           (##cdr _e1685916885_)))
                                      ((lambda (_L16895_ _L16897_)
                                         (if (if (gx#stx-list? _L16895_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16895_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx16762_
                                              _L16897_
                                              (gx#syntax->list _L16895_)
                                              _slots16851_
                                              _body16852_
                                              '#f)
                                             (_g1685416878_ _g1685616882_)))
                                       _tl1686116892_
                                       _hd1686016889_)))
                                  (_g1685416878_ _g1685616882_)))))
                      (_g1685316910_ _hd16849_)))))
          (let* ((_g1676816787_
                  (lambda (_g1676916783_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1676916783_)))
                 (_g1676716845_
                  (lambda (_g1676916791_)
                    (if (gx#stx-pair? _g1676916791_)
                        (let ((_e1677316794_ (gx#syntax-e _g1676916791_)))
                          (let ((_hd1677416798_ (##car _e1677316794_))
                                (_tl1677516801_ (##cdr _e1677316794_)))
                            (if (gx#stx-pair? _tl1677516801_)
                                (let ((_e1677616804_
                                       (gx#syntax-e _tl1677516801_)))
                                  (let ((_hd1677716808_ (##car _e1677616804_))
                                        (_tl1677816811_ (##cdr _e1677616804_)))
                                    (if (gx#stx-pair? _tl1677816811_)
                                        (let ((_e1677916814_
                                               (gx#syntax-e _tl1677816811_)))
                                          (let ((_hd1678016818_
                                                 (##car _e1677916814_))
                                                (_tl1678116821_
                                                 (##cdr _e1677916814_)))
                                            ((lambda (_L16824_
                                                      _L16826_
                                                      _L16827_)
                                               (if (if (gx#identifier-list?
                                                        _L16826_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16824_)
                                                       '#f)
                                                   (_generate16765_
                                                    _L16827_
                                                    _L16826_
                                                    _L16824_)
                                                   (_g1676816787_
                                                    _g1676916791_)))
                                             _tl1678116821_
                                             _hd1678016818_
                                             _hd1677716808_)))
                                        (_g1676816787_ _g1676916791_))))
                                (_g1676816787_ _g1676916791_))))
                        (_g1676816787_ _g1676916791_)))))
            (_g1676716845_ _stx16762_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx16914_)
        (letrec ((_wrap16917_
                  (lambda (_e-stx17254_)
                    (gx#stx-wrap-source
                     _e-stx17254_
                     (gx#stx-source _stx16914_))))
                 (_method-opt?16919_
                  (lambda (_x17251_) (memq (gx#stx-e _x17251_) '(rebind:)))))
          (let* ((_g1692116950_
                  (lambda (_g1692216946_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1692216946_)))
                 (_g1692017247_
                  (lambda (_g1692216954_)
                    (if (gx#stx-pair? _g1692216954_)
                        (let ((_e1692716957_ (gx#syntax-e _g1692216954_)))
                          (let ((_hd1692816961_ (##car _e1692716957_))
                                (_tl1692916964_ (##cdr _e1692716957_)))
                            (if (gx#stx-pair? _tl1692916964_)
                                (let ((_e1693016967_
                                       (gx#syntax-e _tl1692916964_)))
                                  (let ((_hd1693116971_ (##car _e1693016967_))
                                        (_tl1693216974_ (##cdr _e1693016967_)))
                                    (if (gx#stx-pair? _hd1693116971_)
                                        (let ((_e1693316977_
                                               (gx#syntax-e _hd1693116971_)))
                                          (let ((_hd1693416981_
                                                 (##car _e1693316977_))
                                                (_tl1693516984_
                                                 (##cdr _e1693316977_)))
                                            (if (gx#identifier? _hd1693416981_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g31673_|
                                                     _hd1693416981_)
                                                    (if (gx#stx-pair?
                                                         _tl1693516984_)
                                                        (let ((_e1693616987_
                                                               (gx#syntax-e
                                                                _tl1693516984_)))
                                                          (let ((_hd1693716991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1693616987_))
                        (_tl1693816994_ (##cdr _e1693616987_)))
                    (if (gx#stx-pair? _tl1693816994_)
                        (let ((_e1693916997_ (gx#syntax-e _tl1693816994_)))
                          (let ((_hd1694017001_ (##car _e1693916997_))
                                (_tl1694117004_ (##cdr _e1693916997_)))
                            (if (gx#stx-null? _tl1694117004_)
                                (if (gx#stx-pair? _tl1693216974_)
                                    (let ((_e1694217007_
                                           (gx#syntax-e _tl1693216974_)))
                                      (let ((_hd1694317011_
                                             (##car _e1694217007_))
                                            (_tl1694417014_
                                             (##cdr _e1694217007_)))
                                        ((lambda (_L17017_
                                                  _L17019_
                                                  _L17020_
                                                  _L17021_)
                                           (if (if (gx#identifier? _L17021_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L17020_)
                                                       (gx#stx-plist?
                                                        _L17017_
                                                        _method-opt?16919_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass17046_
                                                       (gx#syntax-local-value
                                                        _L17020_))
                                                      (_rebind?17049_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L17017_))
                                                           '#t
                                                           '#f))
                                                      (_g1705217060_
                                                       (lambda (_g1705317056_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1705317056_)))
                                                      (_g1705117243_
                                                       (lambda (_g1705317064_)
                                                         ((lambda (_L17067_)
                                                            (let ()
                                                              (let* ((_g1708117089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1708217085_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1708217085_)))
                             (_g1708017239_
                              (lambda (_g1708217093_)
                                ((lambda (_L17096_)
                                   (let ()
                                     (let* ((_g1710917117_
                                             (lambda (_g1711017113_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1711017113_)))
                                            (_g1710817235_
                                             (lambda (_g1711017121_)
                                               ((lambda (_L17124_)
                                                  (let ()
                                                    (let* ((_g1713717145_
                                                            (lambda (_g1713817141_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1713817141_)))
                                                           (_g1713617231_
                                                            (lambda (_g1713817149_)
                                                              ((lambda (_L17152_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1716517173_
                                   (lambda (_g1716617169_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1716617169_)))
                                  (_g1716417227_
                                   (lambda (_g1716617177_)
                                     ((lambda (_L17180_)
                                        (let ()
                                          (let* ((_g1719317201_
                                                  (lambda (_g1719417197_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1719417197_)))
                                                 (_g1719217223_
                                                  (lambda (_g1719417205_)
                                                    ((lambda (_L17208_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap16917_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L17152_ (cons _L17208_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1719417205_))))
                                            (_g1719217223_
                                             (_wrap16917_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L17067_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L17021_ '()))
                        (cons _L17096_ (cons _L17180_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1716617177_))))
                             (_g1716417227_ _rebind?17049_))))
                       _g1713817149_))))
              (_g1713617231_
               (_wrap16917_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L17096_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L17124_
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
                                                            (cons _L17067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17021_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L17019_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1711017121_))))
                                       (_g1710817235_
                                        (gx#stx-identifier
                                         _L17021_
                                         '@next-method)))))
                                 _g1708217093_))))
                        (_g1708017239_
                         (gx#stx-identifier
                          _L17021_
                          _L17020_
                          '"::"
                          _L17021_)))))
                  _g1705317064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1705117243_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass17046_)))
                                               (if (not (gx#identifier?
                                                         _L17021_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx16914_
                                                    _L17021_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L17020_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx16914_
                                                        _L17020_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx16914_)))))
                                         _tl1694417014_
                                         _hd1694317011_
                                         _hd1694017001_
                                         _hd1693716991_)))
                                    (_g1692116950_ _g1692216954_))
                                (_g1692116950_ _g1692216954_))))
                        (_g1692116950_ _g1692216954_))))
                (_g1692116950_ _g1692216954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1692116950_
                                                     _g1692216954_))
                                                (_g1692116950_
                                                 _g1692216954_))))
                                        (_g1692116950_ _g1692216954_))))
                                (_g1692116950_ _g1692216954_))))
                        (_g1692116950_ _g1692216954_)))))
            (_g1692017247_ _stx16914_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx17257_)
        (let* ((_g1726217311_
                (lambda (_g1726317307_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1726317307_)))
               (_g1726117410_
                (lambda (_g1726317315_)
                  (if (gx#stx-pair? _g1726317315_)
                      (let ((_e1728817318_ (gx#syntax-e _g1726317315_)))
                        (let ((_hd1728917322_ (##car _e1728817318_))
                              (_tl1729017325_ (##cdr _e1728817318_)))
                          (if (gx#stx-pair? _tl1729017325_)
                              (let ((_e1729117328_
                                     (gx#syntax-e _tl1729017325_)))
                                (let ((_hd1729217332_ (##car _e1729117328_))
                                      (_tl1729317335_ (##cdr _e1729117328_)))
                                  (if (gx#stx-pair? _tl1729317335_)
                                      (let ((_e1729417338_
                                             (gx#syntax-e _tl1729317335_)))
                                        (let ((_hd1729517342_
                                               (##car _e1729417338_))
                                              (_tl1729617345_
                                               (##cdr _e1729417338_)))
                                          (if (gx#stx-pair/null?
                                               _tl1729617345_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1729617345_)
                                                        '0)
                                                  (let ((_g31674_
                                                         (gx#syntax-split-splice
                                                          _tl1729617345_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31675_
                                                             (values-count
                                                              _g31674_)))
                                                        (if (not (fx= _g31675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31675_)))
              (let ((_target1729717348_ (values-ref _g31674_ 0))
                    (_tl1729917351_ (values-ref _g31674_ 1)))
                (if (gx#stx-null? _tl1729917351_)
                    (letrec ((_loop1730017354_
                              (lambda (_hd1729817358_ _arg1730417361_)
                                (if (gx#stx-pair? _hd1729817358_)
                                    (let ((_e1730117364_
                                           (gx#syntax-e _hd1729817358_)))
                                      (let ((_lp-hd1730217368_
                                             (##car _e1730117364_))
                                            (_lp-tl1730317371_
                                             (##cdr _e1730117364_)))
                                        (_loop1730017354_
                                         _lp-tl1730317371_
                                         (cons _lp-hd1730217368_
                                               _arg1730417361_))))
                                    (let ((_arg1730517374_
                                           (reverse _arg1730417361_)))
                                      ((lambda (_L17378_ _L17380_ _L17381_)
                                         (if (gx#identifier? _L17381_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L17380_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L17381_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g1740117404_ _g1740217407_)
                                  (cons _g1740117404_ _g1740217407_))
                                '()
                                _L17378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1726217311_ _g1726317315_)))
                                       _arg1730517374_
                                       _hd1729517342_
                                       _hd1729217332_))))))
                      (_loop1730017354_ _target1729717348_ '()))
                    (_g1726217311_ _g1726317315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1726217311_
                                                   _g1726317315_))
                                              (_g1726217311_ _g1726317315_))))
                                      (_g1726217311_ _g1726317315_))))
                              (_g1726217311_ _g1726317315_))))
                      (_g1726217311_ _g1726317315_))))
               (_g1726017516_
                (lambda (_g1726317414_)
                  (if (gx#stx-pair? _g1726317414_)
                      (let ((_e1726717417_ (gx#syntax-e _g1726317414_)))
                        (let ((_hd1726817421_ (##car _e1726717417_))
                              (_tl1726917424_ (##cdr _e1726717417_)))
                          (if (gx#stx-pair? _tl1726917424_)
                              (let ((_e1727017427_
                                     (gx#syntax-e _tl1726917424_)))
                                (let ((_hd1727117431_ (##car _e1727017427_))
                                      (_tl1727217434_ (##cdr _e1727017427_)))
                                  (if (gx#stx-pair? _tl1727217434_)
                                      (let ((_e1727317437_
                                             (gx#syntax-e _tl1727217434_)))
                                        (let ((_hd1727417441_
                                               (##car _e1727317437_))
                                              (_tl1727517444_
                                               (##cdr _e1727317437_)))
                                          (if (gx#stx-pair/null?
                                               _tl1727517444_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1727517444_)
                                                        '0)
                                                  (let ((_g31676_
                                                         (gx#syntax-split-splice
                                                          _tl1727517444_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31677_
                                                             (values-count
                                                              _g31676_)))
                                                        (if (not (fx= _g31677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31677_)))
              (let ((_target1727617447_ (values-ref _g31676_ 0))
                    (_tl1727817450_ (values-ref _g31676_ 1)))
                (if (gx#stx-null? _tl1727817450_)
                    (letrec ((_loop1727917453_
                              (lambda (_hd1727717457_ _arg1728317460_)
                                (if (gx#stx-pair? _hd1727717457_)
                                    (let ((_e1728017463_
                                           (gx#syntax-e _hd1727717457_)))
                                      (let ((_lp-hd1728117467_
                                             (##car _e1728017463_))
                                            (_lp-tl1728217470_
                                             (##cdr _e1728017463_)))
                                        (_loop1727917453_
                                         _lp-tl1728217470_
                                         (cons _lp-hd1728117467_
                                               _arg1728317460_))))
                                    (let ((_arg1728417473_
                                           (reverse _arg1728317460_)))
                                      ((lambda (_L17477_ _L17479_ _L17480_)
                                         (if (if (gx#identifier? _L17480_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1749917502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1750017505_)
                     (cons _g1749917502_ _g1750017505_))
                   '()
                   _L17477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L17479_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L17480_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1750717510_
                                                           _g1750817513_)
                                                    (cons _g1750717510_
                                                          _g1750817513_))
                                                  '()
                                                  _L17477_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1726117410_ _g1726317414_)))
                                       _arg1728417473_
                                       _hd1727417441_
                                       _hd1727117431_))))))
                      (_loop1727917453_ _target1727617447_ '()))
                    (_g1726117410_ _g1726317414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1726117410_
                                                   _g1726317414_))
                                              (_g1726117410_ _g1726317414_))))
                                      (_g1726117410_ _g1726317414_))))
                              (_g1726117410_ _g1726317414_))))
                      (_g1726117410_ _g1726317414_)))))
          (_g1726017516_ _$stx17257_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx17522_)
        (let* ((_g1752717567_
                (lambda (_g1752817563_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1752817563_)))
               (_g1752617668_
                (lambda (_g1752817571_)
                  (if (gx#stx-pair? _g1752817571_)
                      (let ((_e1754417574_ (gx#syntax-e _g1752817571_)))
                        (let ((_hd1754517578_ (##car _e1754417574_))
                              (_tl1754617581_ (##cdr _e1754417574_)))
                          (if (gx#stx-pair? _tl1754617581_)
                              (let ((_e1754717584_
                                     (gx#syntax-e _tl1754617581_)))
                                (let ((_hd1754817588_ (##car _e1754717584_))
                                      (_tl1754917591_ (##cdr _e1754717584_)))
                                  (if (gx#stx-pair? _tl1754917591_)
                                      (let ((_e1755017594_
                                             (gx#syntax-e _tl1754917591_)))
                                        (let ((_hd1755117598_
                                               (##car _e1755017594_))
                                              (_tl1755217601_
                                               (##cdr _e1755017594_)))
                                          (if (gx#stx-pair/null?
                                               _tl1755217601_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1755217601_)
                                                        '0)
                                                  (let ((_g31678_
                                                         (gx#syntax-split-splice
                                                          _tl1755217601_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31679_
                                                             (values-count
                                                              _g31678_)))
                                                        (if (not (fx= _g31679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31679_)))
              (let ((_target1755317604_ (values-ref _g31678_ 0))
                    (_tl1755517607_ (values-ref _g31678_ 1)))
                (if (gx#stx-null? _tl1755517607_)
                    (letrec ((_loop1755617610_
                              (lambda (_hd1755417614_ _rest1756017617_)
                                (if (gx#stx-pair? _hd1755417614_)
                                    (let ((_e1755717620_
                                           (gx#syntax-e _hd1755417614_)))
                                      (let ((_lp-hd1755817624_
                                             (##car _e1755717620_))
                                            (_lp-tl1755917627_
                                             (##cdr _e1755717620_)))
                                        (_loop1755617610_
                                         _lp-tl1755917627_
                                         (cons _lp-hd1755817624_
                                               _rest1756017617_))))
                                    (let ((_rest1756117630_
                                           (reverse _rest1756017617_)))
                                      ((lambda (_L17634_
                                                _L17636_
                                                _L17637_
                                                _L17638_)
                                         (cons _L17638_
                                               (cons (cons _L17638_
                                                           (cons _L17637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17636_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1765917662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1766017665_)
                        (cons _g1765917662_ _g1766017665_))
                      '()
                      _L17634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest1756117630_
                                       _hd1755117598_
                                       _hd1754817588_
                                       _hd1754517578_))))))
                      (_loop1755617610_ _target1755317604_ '()))
                    (_g1752717567_ _g1752817571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1752717567_
                                                   _g1752817571_))
                                              (_g1752717567_ _g1752817571_))))
                                      (_g1752717567_ _g1752817571_))))
                              (_g1752717567_ _g1752817571_))))
                      (_g1752717567_ _g1752817571_))))
               (_g1752517722_
                (lambda (_g1752817672_)
                  (if (gx#stx-pair? _g1752817672_)
                      (let ((_e1753117675_ (gx#syntax-e _g1752817672_)))
                        (let ((_hd1753217679_ (##car _e1753117675_))
                              (_tl1753317682_ (##cdr _e1753117675_)))
                          (if (gx#stx-pair? _tl1753317682_)
                              (let ((_e1753417685_
                                     (gx#syntax-e _tl1753317682_)))
                                (let ((_hd1753517689_ (##car _e1753417685_))
                                      (_tl1753617692_ (##cdr _e1753417685_)))
                                  (if (gx#stx-pair? _tl1753617692_)
                                      (let ((_e1753717695_
                                             (gx#syntax-e _tl1753617692_)))
                                        (let ((_hd1753817699_
                                               (##car _e1753717695_))
                                              (_tl1753917702_
                                               (##cdr _e1753717695_)))
                                          (if (gx#stx-null? _tl1753917702_)
                                              ((lambda (_L17705_ _L17707_)
                                                 (if (gx#identifier? _L17705_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L17707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17705_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1752617668_
                                                      _g1752817672_)))
                                               _hd1753817699_
                                               _hd1753517689_)
                                              (_g1752617668_ _g1752817672_))))
                                      (_g1752617668_ _g1752817672_))))
                              (_g1752617668_ _g1752817672_))))
                      (_g1752617668_ _g1752817672_)))))
          (_g1752517722_ _$stx17522_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx17727_)
        (let* ((_g1773217784_
                (lambda (_g1773317780_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1773317780_)))
               (_g1773117913_
                (lambda (_g1773317788_)
                  (if (gx#stx-pair? _g1773317788_)
                      (let ((_e1775517791_ (gx#syntax-e _g1773317788_)))
                        (let ((_hd1775617795_ (##car _e1775517791_))
                              (_tl1775717798_ (##cdr _e1775517791_)))
                          (if (gx#stx-pair? _tl1775717798_)
                              (let ((_e1775817801_
                                     (gx#syntax-e _tl1775717798_)))
                                (let ((_hd1775917805_ (##car _e1775817801_))
                                      (_tl1776017808_ (##cdr _e1775817801_)))
                                  (if (gx#stx-pair? _tl1776017808_)
                                      (let ((_e1776117811_
                                             (gx#syntax-e _tl1776017808_)))
                                        (let ((_hd1776217815_
                                               (##car _e1776117811_))
                                              (_tl1776317818_
                                               (##cdr _e1776117811_)))
                                          (if (gx#stx-pair/null?
                                               _tl1776317818_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1776317818_)
                                                        '2)
                                                  (let ((_g31680_
                                                         (gx#syntax-split-splice
                                                          _tl1776317818_
                                                          '2)))
                                                    (begin
                                                      (let ((_g31681_
                                                             (values-count
                                                              _g31680_)))
                                                        (if (not (fx= _g31681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31681_)))
              (let ((_target1776417821_ (values-ref _g31680_ 0))
                    (_tl1776617824_ (values-ref _g31680_ 1)))
                (if (gx#stx-pair? _tl1776617824_)
                    (let ((_e1777317827_ (gx#syntax-e _tl1776617824_)))
                      (let ((_hd1777417831_ (##car _e1777317827_))
                            (_tl1777517834_ (##cdr _e1777317827_)))
                        (if (gx#stx-pair? _tl1777517834_)
                            (let ((_e1777617837_ (gx#syntax-e _tl1777517834_)))
                              (let ((_hd1777717841_ (##car _e1777617837_))
                                    (_tl1777817844_ (##cdr _e1777617837_)))
                                (if (gx#stx-null? _tl1777817844_)
                                    (letrec ((_loop1776717847_
                                              (lambda (_hd1776517851_
                                                       _path1777117854_)
                                                (if (gx#stx-pair?
                                                     _hd1776517851_)
                                                    (let ((_e1776817857_
                                                           (gx#syntax-e
                                                            _hd1776517851_)))
                                                      (let ((_lp-hd1776917861_
                                                             (##car _e1776817857_))
                                                            (_lp-tl1777017864_
                                                             (##cdr _e1776817857_)))
                                                        (_loop1776717847_
                                                         _lp-tl1777017864_
                                                         (cons _lp-hd1776917861_
                                                               _path1777117854_))))
                                                    (let ((_path1777217867_
                                                           (reverse _path1777117854_)))
                                                      ((lambda (_L17871_
                                                                _L17873_
                                                                _L17874_
                                                                _L17875_
                                                                _L17876_
                                                                _L17877_)
                                                         (cons _L17877_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L17876_
                                         (cons _L17875_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1790417907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1790517910_)
                  (cons _g1790417907_ _g1790517910_))
                '()
                _L17874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L17873_ (cons _L17871_ '())))))
               _hd1777717841_
               _hd1777417831_
               _path1777217867_
               _hd1776217815_
               _hd1775917805_
               _hd1775617795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1776717847_
                                       _target1776417821_
                                       '()))
                                    (_g1773217784_ _g1773317788_))))
                            (_g1773217784_ _g1773317788_))))
                    (_g1773217784_ _g1773317788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1773217784_
                                                   _g1773317788_))
                                              (_g1773217784_ _g1773317788_))))
                                      (_g1773217784_ _g1773317788_))))
                              (_g1773217784_ _g1773317788_))))
                      (_g1773217784_ _g1773317788_))))
               (_g1773017981_
                (lambda (_g1773317917_)
                  (if (gx#stx-pair? _g1773317917_)
                      (let ((_e1773717920_ (gx#syntax-e _g1773317917_)))
                        (let ((_hd1773817924_ (##car _e1773717920_))
                              (_tl1773917927_ (##cdr _e1773717920_)))
                          (if (gx#stx-pair? _tl1773917927_)
                              (let ((_e1774017930_
                                     (gx#syntax-e _tl1773917927_)))
                                (let ((_hd1774117934_ (##car _e1774017930_))
                                      (_tl1774217937_ (##cdr _e1774017930_)))
                                  (if (gx#stx-pair? _tl1774217937_)
                                      (let ((_e1774317940_
                                             (gx#syntax-e _tl1774217937_)))
                                        (let ((_hd1774417944_
                                               (##car _e1774317940_))
                                              (_tl1774517947_
                                               (##cdr _e1774317940_)))
                                          (if (gx#stx-pair? _tl1774517947_)
                                              (let ((_e1774617950_
                                                     (gx#syntax-e
                                                      _tl1774517947_)))
                                                (let ((_hd1774717954_
                                                       (##car _e1774617950_))
                                                      (_tl1774817957_
                                                       (##cdr _e1774617950_)))
                                                  (if (gx#stx-null?
                                                       _tl1774817957_)
                                                      ((lambda (_L17960_
                                                                _L17962_
                                                                _L17963_)
                                                         (if (gx#identifier?
                                                              _L17962_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L17963_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L17962_ '()))
                                       (cons _L17960_ '()))))
                     (_g1773117913_ _g1773317917_)))
               _hd1774717954_
               _hd1774417944_
               _hd1774117934_)
              (_g1773117913_ _g1773317917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1773117913_ _g1773317917_))))
                                      (_g1773117913_ _g1773317917_))))
                              (_g1773117913_ _g1773317917_))))
                      (_g1773117913_ _g1773317917_)))))
          (_g1773017981_ _$stx17727_))))))
