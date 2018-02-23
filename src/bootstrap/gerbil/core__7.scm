(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g31676_|
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
      (lambda _$args16585_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args16585_)))
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
      (lambda _$args16581_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args16581_)))
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
      (lambda _$args16577_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args16577_)))
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
      (lambda _$args16573_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args16573_)))
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
      (lambda _$args16569_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args16569_)))
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
      (lambda _$args16565_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args16565_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1653716551_
             (lambda (_stx16539_ _is?16541_)
               (if (gx#identifier? _stx16539_)
                   (let ((_e1654216544_
                          (gx#syntax-local-value _stx16539_ false)))
                     (if _e1654216544_
                         (let ((_e16548_ _e1654216544_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e16548_)
                               (_is?16541_ _e16548_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g31662_
          (let ((_g31661_ (length _g31662_)))
            (cond ((fx= _g31661_ 1)
                   (apply (lambda (_stx16555_)
                            (let ((_is?16558_ true))
                              (_opt-lambda1653716551_ _stx16555_ _is?16558_)))
                          _g31662_))
                  ((fx= _g31661_ 2) (apply _opt-lambda1653716551_ _g31662_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g31662_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx16535_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16535_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx16532_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16532_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id16526_)
        (if _id16526_
            (let ((_info16529_ (gx#syntax-local-value _id16526_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info16529_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info16529_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self16291_ _stx16293_)
        (let* ((_g1629516315_
                (lambda (_g1629616311_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1629616311_)))
               (_g1629416522_
                (lambda (_g1629616319_)
                  (if (gx#stx-pair? _g1629616319_)
                      (let ((_e1629816322_ (gx#syntax-e _g1629616319_)))
                        (let ((_hd1629916326_ (##car _e1629816322_))
                              (_tl1630016329_ (##cdr _e1629816322_)))
                          (if (gx#stx-pair/null? _tl1630016329_)
                              (if (fx>= (gx#stx-length _tl1630016329_) '0)
                                  (let ((_g31663_
                                         (gx#syntax-split-splice
                                          _tl1630016329_
                                          '0)))
                                    (begin
                                      (let ((_g31664_ (values-count _g31663_)))
                                        (if (not (fx= _g31664_ 2))
                                            (error "Context expects 2 values"
                                                   _g31664_)))
                                      (let ((_target1630116332_
                                             (values-ref _g31663_ 0))
                                            (_tl1630316335_
                                             (values-ref _g31663_ 1)))
                                        (if (gx#stx-null? _tl1630316335_)
                                            (letrec ((_loop1630416338_
                                                      (lambda (_hd1630216342_
                                                               _arg1630816345_)
                                                        (if (gx#stx-pair?
                                                             _hd1630216342_)
                                                            (let ((_e1630516348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1630216342_)))
                      (let ((_lp-hd1630616352_ (##car _e1630516348_))
                            (_lp-tl1630716355_ (##cdr _e1630516348_)))
                        (_loop1630416338_
                         _lp-tl1630716355_
                         (cons _lp-hd1630616352_ _arg1630816345_))))
                    (let ((_arg1630916358_ (reverse _arg1630816345_)))
                      ((lambda (_L16362_)
                         (let* ((_g1637816409_
                                 (lambda (_g1637916405_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1637916405_)))
                                (_g1637716518_
                                 (lambda (_g1637916413_)
                                   (if (gx#stx-pair? _g1637916413_)
                                       (let ((_e1638616416_
                                              (gx#syntax-e _g1637916413_)))
                                         (let ((_hd1638716420_
                                                (##car _e1638616416_))
                                               (_tl1638816423_
                                                (##cdr _e1638616416_)))
                                           (if (gx#stx-pair? _tl1638816423_)
                                               (let ((_e1638916426_
                                                      (gx#syntax-e
                                                       _tl1638816423_)))
                                                 (let ((_hd1639016430_
                                                        (##car _e1638916426_))
                                                       (_tl1639116433_
                                                        (##cdr _e1638916426_)))
                                                   (if (gx#stx-pair?
                                                        _tl1639116433_)
                                                       (let ((_e1639216436_
                                                              (gx#syntax-e
                                                               _tl1639116433_)))
                                                         (let ((_hd1639316440_
                                                                (##car _e1639216436_))
                                                               (_tl1639416443_
                                                                (##cdr _e1639216436_)))
                                                           (if (gx#stx-pair?
                                                                _tl1639416443_)
                                                               (let ((_e1639516446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1639416443_)))
                         (let ((_hd1639616450_ (##car _e1639516446_))
                               (_tl1639716453_ (##cdr _e1639516446_)))
                           (if (gx#stx-pair? _tl1639716453_)
                               (let ((_e1639816456_
                                      (gx#syntax-e _tl1639716453_)))
                                 (let ((_hd1639916460_ (##car _e1639816456_))
                                       (_tl1640016463_ (##cdr _e1639816456_)))
                                   (if (gx#stx-pair? _tl1640016463_)
                                       (let ((_e1640116466_
                                              (gx#syntax-e _tl1640016463_)))
                                         (let ((_hd1640216470_
                                                (##car _e1640116466_))
                                               (_tl1640316473_
                                                (##cdr _e1640116466_)))
                                           (if (gx#stx-null? _tl1640316473_)
                                               ((lambda (_L16476_
                                                         _L16478_
                                                         _L16479_
                                                         _L16480_
                                                         _L16481_
                                                         _L16482_)
                                                  (let ()
                                                    (cons _L16480_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1650916512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1651016515_)
                             (cons _g1650916512_ _g1651016515_))
                           '()
                           _L16362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1640216470_
                                                _hd1639916460_
                                                _hd1639616450_
                                                _hd1639316440_
                                                _hd1639016430_
                                                _hd1638716420_)
                                               (_g1637816409_ _g1637916413_))))
                                       (_g1637816409_ _g1637916413_))))
                               (_g1637816409_ _g1637916413_))))
                       (_g1637816409_ _g1637916413_))))
               (_g1637816409_ _g1637916413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1637816409_ _g1637916413_))))
                                       (_g1637816409_ _g1637916413_)))))
                           (_g1637716518_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self16291_))))
                       _arg1630916358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1630416338_
                                               _target1630116332_
                                               '()))
                                            (_g1629516315_ _g1629616319_)))))
                                  (_g1629516315_ _g1629616319_))
                              (_g1629516315_ _g1629616319_))))
                      (_g1629516315_ _g1629616319_)))))
          (_g1629416522_ _stx16293_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx16282_)
        (letrec ((_body-opt?16285_
                  (lambda (_key16288_)
                    (memq (gx#stx-e _key16288_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:)))))
          (gx#stx-plist? _stx16282_ _body-opt?16285_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx15123_
               _id15125_
               _super-ref15126_
               _els15127_
               _body15128_
               _struct?15129_)
        (letrec* ((_wrap15131_
                   (lambda (_e-stx16279_)
                     (gx#stx-wrap-source
                      _e-stx16279_
                      (gx#stx-source _stx15123_))))
                  (_make-id15133_
                   (if (uninterned-symbol? (gx#stx-e _id15125_))
                       (lambda _g31665_ (gx#genident _id15125_))
                       (lambda _args16276_
                         (apply gx#stx-identifier _id15125_ _args16276_)))))
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
                   (_g1514016270_
                    (lambda (_g1514215153_)
                      ((lambda (_L15156_)
                         (let ()
                           (let* ((_g1517215180_
                                   (lambda (_g1517315176_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1517315176_)))
                                  (_g1517116266_
                                   (lambda (_g1517315184_)
                                     ((lambda (_L15187_)
                                        (let ()
                                          (let* ((_g1520015208_
                                                  (lambda (_g1520115204_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1520115204_)))
                                                 (_g1519916262_
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
                        (_g1522716258_
                         (lambda (_g1522915240_)
                           ((lambda (_L15243_)
                              (let ()
                                (let* ((_g1525615264_
                                        (lambda (_g1525715260_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1525715260_)))
                                       (_g1525516254_
                                        (lambda (_g1525715268_)
                                          ((lambda (_L15271_)
                                             (let ()
                                               (let* ((_g1528415292_
                                                       (lambda (_g1528515288_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1528515288_)))
                                                      (_g1528316250_
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
                             (_g1531116246_
                              (lambda (_g1531315333_)
                                (if (gx#stx-pair/null? _g1531315333_)
                                    (if (fx>= (gx#stx-length _g1531315333_) '0)
                                        (let ((_g31666_
                                               (gx#syntax-split-splice
                                                _g1531315333_
                                                '0)))
                                          (begin
                                            (let ((_g31667_
                                                   (values-count _g31666_)))
                                              (if (not (fx= _g31667_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31667_)))
                                            (let ((_target1531515336_
                                                   (values-ref _g31666_ 0))
                                                  (_tl1531715339_
                                                   (values-ref _g31666_ 1)))
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
                                        (_g1538216237_
                                         (lambda (_g1538415404_)
                                           (if (gx#stx-pair/null?
                                                _g1538415404_)
                                               (if (fx>= (gx#stx-length
                                                          _g1538415404_)
                                                         '0)
                                                   (let ((_g31668_
                                                          (gx#syntax-split-splice
                                                           _g1538415404_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31669_
                                                              (values-count
                                                               _g31668_)))
                                                         (if (not (fx= _g31669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31669_)))
               (let ((_target1538615407_ (values-ref _g31668_ 0))
                     (_tl1538815410_ (values-ref _g31668_ 1)))
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
                                                   (_g1545316228_
                                                    (lambda (_g1545515475_)
                                                      (if (gx#stx-pair/null?
                                                           _g1545515475_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1545515475_)
                            '0)
                      (let ((_g31670_
                             (gx#syntax-split-splice _g1545515475_ '0)))
                        (begin
                          (let ((_g31671_ (values-count _g31670_)))
                            (if (not (fx= _g31671_ 2))
                                (error "Context expects 2 values" _g31671_)))
                          (let ((_target1545715478_ (values-ref _g31670_ 0))
                                (_tl1545915481_ (values-ref _g31670_ 1)))
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
                      (_plist15621_
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
                                     _plist15603_))))
                         _plist15616_))
                      (_type-plist15661_
                       (if (null? _plist15621_)
                           _plist15621_
                           (let* ((_g1562415632_
                                   (lambda (_g1562515628_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1562515628_)))
                                  (_g1562315657_
                                   (lambda (_g1562515636_)
                                     ((lambda (_L15639_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L15639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1562515636_))))
                             (_g1562315657_ _plist15621_))))
                      (_type-unchecked15676_
                       (let ((_$e15672_
                              (let ((_e1566315665_
                                     (gx#stx-getq 'unchecked: _body15128_)))
                                (if _e1566315665_
                                    (let ((_e15669_ _e1566315665_))
                                      (cons 'unchecked: (cons _e15669_ '())))
                                    '#f))))
                         (if _$e15672_ _$e15672_ '())))
                      (_g1567915696_
                       (lambda (_g1568015692_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1568015692_)))
                      (_g1567816224_
                       (lambda (_g1568015700_)
                         (if (gx#stx-pair/null? _g1568015700_)
                             (if (fx>= (gx#stx-length _g1568015700_) '0)
                                 (let ((_g31672_
                                        (gx#syntax-split-splice
                                         _g1568015700_
                                         '0)))
                                   (begin
                                     (let ((_g31673_ (values-count _g31672_)))
                                       (if (not (fx= _g31673_ 2))
                                           (error "Context expects 2 values"
                                                  _g31673_)))
                                     (let ((_target1568215703_
                                            (values-ref _g31672_ 0))
                                           (_tl1568415706_
                                            (values-ref _g31672_ 1)))
                                       (if (gx#stx-null? _tl1568415706_)
                                           (letrec ((_loop1568515709_
                                                     (lambda (_hd1568315713_
                                                              _type-body1568915716_)
                                                       (if (gx#stx-pair?
                                                            _hd1568315713_)
                                                           (let ((_e1568615719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1568315713_)))
                     (let ((_lp-hd1568715723_ (##car _e1568615719_))
                           (_lp-tl1568815726_ (##cdr _e1568615719_)))
                       (_loop1568515709_
                        _lp-tl1568815726_
                        (cons _lp-hd1568715723_ _type-body1568915716_))))
                   (let ((_type-body1569015729_
                          (reverse _type-body1568915716_)))
                     ((lambda (_L15733_)
                        (let ()
                          (let* ((_g1575015758_
                                  (lambda (_g1575115754_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1575115754_)))
                                 (_g1574916212_
                                  (lambda (_g1575115762_)
                                    ((lambda (_L15765_)
                                       (let ()
                                         (let* ((_g1577815786_
                                                 (lambda (_g1577915782_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1577915782_)))
                                                (_g1577716208_
                                                 (lambda (_g1577915790_)
                                                   ((lambda (_L15793_)
                                                      (let ()
                                                        (let* ((_g1580615814_
                                                                (lambda (_g1580715810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1580715810_)))
                       (_g1580516122_
                        (lambda (_g1580715818_)
                          ((lambda (_L15821_)
                             (let ()
                               (let* ((_g1583415842_
                                       (lambda (_g1583515838_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1583515838_)))
                                      (_g1583316118_
                                       (lambda (_g1583515846_)
                                         ((lambda (_L15849_)
                                            (let ()
                                              (let* ((_g1586215870_
                                                      (lambda (_g1586315866_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1586315866_)))
                                                     (_g1586116114_
                                                      (lambda (_g1586315874_)
                                                        ((lambda (_L15877_)
                                                           (let ()
                                                             (let* ((_g1589015898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1589115894_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1589115894_)))
                            (_g1588916072_
                             (lambda (_g1589115902_)
                               ((lambda (_L15905_)
                                  (let ()
                                    (let* ((_g1591815926_
                                            (lambda (_g1591915922_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1591915922_)))
                                           (_g1591716068_
                                            (lambda (_g1591915930_)
                                              ((lambda (_L15933_)
                                                 (let ()
                                                   (let* ((_g1594615954_
                                                           (lambda (_g1594715950_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1594715950_)))
                                                          (_g1594516064_
                                                           (lambda (_g1594715958_)
                                                             ((lambda (_L15961_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1597415982_
                                  (lambda (_g1597515978_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1597515978_)))
                                 (_g1597316060_
                                  (lambda (_g1597515986_)
                                    ((lambda (_L15989_)
                                       (let ()
                                         (let* ((_g1600216010_
                                                 (lambda (_g1600316006_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1600316006_)))
                                                (_g1600116032_
                                                 (lambda (_g1600316014_)
                                                   ((lambda (_L16017_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap15131_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15765_ (cons _L16017_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1600316014_))))
                                           (_g1600116032_
                                            (_wrap15131_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L15187_
                                                         (cons (cons _L15793_
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
                                                           (cons _L15821_
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
                                                         (foldr (lambda (_g1603516042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1603616045_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1603516042_ '()))
                                _g1603616045_))
                        '()
                        _L15437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1603716048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1603816051_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1603716048_ '()))
                                      _g1603816051_))
                              '()
                              _L15508_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L15849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L15877_ '()))
                                     (cons _L15905_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L15933_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L15961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15989_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1603916054_
                                                         _g1604016057_)
                                                  (cons _g1603916054_
                                                        _g1604016057_))
                                                '()
                                                _L15366_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1597515986_))))
                            (_g1597316060_ _plist15621_))))
                      _g1594715958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594516064_
                                                      (if (not (null? _type-ctor15590_))
                                                          (cadr _type-ctor15590_)
                                                          '#f)))))
                                               _g1591915930_))))
                                      (_g1591716068_
                                       (cadr _type-name15560_)))))
                                _g1589115902_))))
                       (_g1588916072_
                        (let ((_quote-e16111_
                               (lambda (_x-ref16076_)
                                 (if _x-ref16076_
                                     (let* ((_g1607916087_
                                             (lambda (_g1608016083_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1608016083_)))
                                            (_g1607816107_
                                             (lambda (_g1608016091_)
                                               ((lambda (_L16094_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L16094_
                                                                '()))))
                                                _g1608016091_))))
                                       (_g1607816107_ _x-ref16076_))
                                     '#f))))
                          (if _struct?15129_
                              (_quote-e16111_ _super-ref15126_)
                              (cons 'list
                                    (map _quote-e16111_
                                         _super-ref15126_))))))))
                 _g1586315874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1586116114_
                                                 (if (not (null? _type-id15575_))
                                                     (cadr _type-id15575_)
                                                     '#f)))))
                                          _g1583515846_))))
                                 (_g1583316118_
                                  (if _struct?15129_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1580715818_))))
                  (_g1580516122_
                   (if _struct?15129_
                       (if _super15138_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L15299_ '()))
                           '#f)
                       (let* ((_g1612616143_
                               (lambda (_g1612716139_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1612716139_)))
                              (_g1612516204_
                               (lambda (_g1612716147_)
                                 (if (gx#stx-pair/null? _g1612716147_)
                                     (if (fx>= (gx#stx-length _g1612716147_)
                                               '0)
                                         (let ((_g31674_
                                                (gx#syntax-split-splice
                                                 _g1612716147_
                                                 '0)))
                                           (begin
                                             (let ((_g31675_
                                                    (values-count _g31674_)))
                                               (if (not (fx= _g31675_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31675_)))
                                             (let ((_target1612916150_
                                                    (values-ref _g31674_ 0))
                                                   (_tl1613116153_
                                                    (values-ref _g31674_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1613116153_)
                                                   (letrec ((_loop1613216156_
                                                             (lambda (_hd1613016160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1613616163_)
                       (if (gx#stx-pair? _hd1613016160_)
                           (let ((_e1613316166_ (gx#syntax-e _hd1613016160_)))
                             (let ((_lp-hd1613416170_ (##car _e1613316166_))
                                   (_lp-tl1613516173_ (##cdr _e1613316166_)))
                               (_loop1613216156_
                                _lp-tl1613516173_
                                (cons _lp-hd1613416170_
                                      _super-id1613616163_))))
                           (let ((_super-id1613716176_
                                  (reverse _super-id1613616163_)))
                             ((lambda (_L16180_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1619516198_
                                                          _g1619616201_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1619516198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1619616201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L16180_)))))
                              _super-id1613716176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1613216156_
                                                      _target1612916150_
                                                      '()))
                                                   (_g1612616143_
                                                    _g1612716147_)))))
                                         (_g1612616143_ _g1612716147_))
                                     (_g1612616143_ _g1612716147_)))))
                         (_g1612516204_ _L15299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1577915790_))))
                                           (_g1577716208_
                                            (if _struct?15129_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1575115762_))))
                            (_g1574916212_
                             (_wrap15131_
                              (cons _L15156_
                                    (cons _L15215_
                                          (cons _L15299_
                                                (cons _L15243_
                                                      (cons _L15271_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1621516218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1621616221_)
                               (cons _g1621516218_ _g1621616221_))
                             '()
                             _L15733_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1569015729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1568515709_
                                              _target1568215703_
                                              '()))
                                           (_g1567915696_ _g1568015700_)))))
                                 (_g1567915696_ _g1568015700_))
                             (_g1567915696_ _g1568015700_)))))
                 (_g1567816224_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked15676_
                                                     _type-plist15661_)
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
                                              (_g1545316228_
                                               (gx#stx-map
                                                (lambda (_g1623116233_)
                                                  (_make-id15133_
                                                   _name15135_
                                                   '"-"
                                                   _g1623116233_
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
                                   (_g1538216237_
                                    (gx#stx-map
                                     (lambda (_g1624016242_)
                                       (_make-id15133_
                                        _name15135_
                                        '"-"
                                        _g1624016242_))
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
                        (_g1531116246_ _els15127_))))
                  _g1528515296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1528316250_
                                                  (if _struct?15129_
                                                      (if _super15138_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super15138_))))))
                                           _g1525715268_))))
                                  (_g1525516254_
                                   (_make-id15133_ _name15135_ '"?")))))
                            _g1522915240_))))
                   (_g1522716258_ (_make-id15133_ '"make-" _name15135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1520115212_))))
                                            (_g1519916262_
                                             (_make-id15133_
                                              _name15135_
                                              '"::t")))))
                                      _g1517315184_))))
                             (_g1517116266_ _id15125_))))
                       _g1514215153_))))
              (_g1514016270_
               (if _struct?15129_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx16598_)
        (letrec ((_generate16601_
                  (lambda (_hd16685_ _fields16687_ _body16688_)
                    (let* ((_g1669116706_
                            (lambda (_g1669216702_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1669216702_)))
                           (_g1669016717_
                            (lambda (_g1669216710_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16685_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16598_
                                      _hd16685_
                                      '#f
                                      _fields16687_
                                      _body16688_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16598_
                                      _hd16685_))))))
                           (_g1668916761_
                            (lambda (_g1669216721_)
                              (if (gx#stx-pair? _g1669216721_)
                                  (let ((_e1669516724_
                                         (gx#syntax-e _g1669216721_)))
                                    (let ((_hd1669616728_
                                           (##car _e1669516724_))
                                          (_tl1669716731_
                                           (##cdr _e1669516724_)))
                                      (if (gx#stx-pair? _tl1669716731_)
                                          (let ((_e1669816734_
                                                 (gx#syntax-e _tl1669716731_)))
                                            (let ((_hd1669916738_
                                                   (##car _e1669816734_))
                                                  (_tl1670016741_
                                                   (##cdr _e1669816734_)))
                                              (if (gx#stx-null? _tl1670016741_)
                                                  ((lambda (_L16744_ _L16746_)
                                                     (if (if (gx#identifier?
                                                              _L16746_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16744_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx16598_
                                                          _L16746_
                                                          _L16744_
                                                          _fields16687_
                                                          _body16688_
                                                          '#t)
                                                         (_g1669016717_
                                                          _g1669216721_)))
                                                   _hd1669916738_
                                                   _hd1669616728_)
                                                  (_g1669016717_
                                                   _g1669216721_))))
                                          (_g1669016717_ _g1669216721_))))
                                  (_g1669016717_ _g1669216721_)))))
                      (_g1668916761_ _hd16685_)))))
          (let* ((_g1660416623_
                  (lambda (_g1660516619_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1660516619_)))
                 (_g1660316681_
                  (lambda (_g1660516627_)
                    (if (gx#stx-pair? _g1660516627_)
                        (let ((_e1660916630_ (gx#syntax-e _g1660516627_)))
                          (let ((_hd1661016634_ (##car _e1660916630_))
                                (_tl1661116637_ (##cdr _e1660916630_)))
                            (if (gx#stx-pair? _tl1661116637_)
                                (let ((_e1661216640_
                                       (gx#syntax-e _tl1661116637_)))
                                  (let ((_hd1661316644_ (##car _e1661216640_))
                                        (_tl1661416647_ (##cdr _e1661216640_)))
                                    (if (gx#stx-pair? _tl1661416647_)
                                        (let ((_e1661516650_
                                               (gx#syntax-e _tl1661416647_)))
                                          (let ((_hd1661616654_
                                                 (##car _e1661516650_))
                                                (_tl1661716657_
                                                 (##cdr _e1661516650_)))
                                            ((lambda (_L16660_
                                                      _L16662_
                                                      _L16663_)
                                               (if (if (gx#identifier-list?
                                                        _L16662_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16660_)
                                                       '#f)
                                                   (_generate16601_
                                                    _L16663_
                                                    _L16662_
                                                    _L16660_)
                                                   (_g1660416623_
                                                    _g1660516627_)))
                                             _tl1661716657_
                                             _hd1661616654_
                                             _hd1661316644_)))
                                        (_g1660416623_ _g1660516627_))))
                                (_g1660416623_ _g1660516627_))))
                        (_g1660416623_ _g1660516627_)))))
            (_g1660316681_ _stx16598_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx16765_)
        (letrec ((_generate16768_
                  (lambda (_hd16852_ _slots16854_ _body16855_)
                    (let* ((_g1685816870_
                            (lambda (_g1685916866_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1685916866_)))
                           (_g1685716881_
                            (lambda (_g1685916874_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16852_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16765_
                                      _hd16852_
                                      '()
                                      _slots16854_
                                      _body16855_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16765_
                                      _hd16852_))))))
                           (_g1685616913_
                            (lambda (_g1685916885_)
                              (if (gx#stx-pair? _g1685916885_)
                                  (let ((_e1686216888_
                                         (gx#syntax-e _g1685916885_)))
                                    (let ((_hd1686316892_
                                           (##car _e1686216888_))
                                          (_tl1686416895_
                                           (##cdr _e1686216888_)))
                                      ((lambda (_L16898_ _L16900_)
                                         (if (if (gx#stx-list? _L16898_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16898_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx16765_
                                              _L16900_
                                              (gx#syntax->list _L16898_)
                                              _slots16854_
                                              _body16855_
                                              '#f)
                                             (_g1685716881_ _g1685916885_)))
                                       _tl1686416895_
                                       _hd1686316892_)))
                                  (_g1685716881_ _g1685916885_)))))
                      (_g1685616913_ _hd16852_)))))
          (let* ((_g1677116790_
                  (lambda (_g1677216786_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1677216786_)))
                 (_g1677016848_
                  (lambda (_g1677216794_)
                    (if (gx#stx-pair? _g1677216794_)
                        (let ((_e1677616797_ (gx#syntax-e _g1677216794_)))
                          (let ((_hd1677716801_ (##car _e1677616797_))
                                (_tl1677816804_ (##cdr _e1677616797_)))
                            (if (gx#stx-pair? _tl1677816804_)
                                (let ((_e1677916807_
                                       (gx#syntax-e _tl1677816804_)))
                                  (let ((_hd1678016811_ (##car _e1677916807_))
                                        (_tl1678116814_ (##cdr _e1677916807_)))
                                    (if (gx#stx-pair? _tl1678116814_)
                                        (let ((_e1678216817_
                                               (gx#syntax-e _tl1678116814_)))
                                          (let ((_hd1678316821_
                                                 (##car _e1678216817_))
                                                (_tl1678416824_
                                                 (##cdr _e1678216817_)))
                                            ((lambda (_L16827_
                                                      _L16829_
                                                      _L16830_)
                                               (if (if (gx#identifier-list?
                                                        _L16829_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16827_)
                                                       '#f)
                                                   (_generate16768_
                                                    _L16830_
                                                    _L16829_
                                                    _L16827_)
                                                   (_g1677116790_
                                                    _g1677216794_)))
                                             _tl1678416824_
                                             _hd1678316821_
                                             _hd1678016811_)))
                                        (_g1677116790_ _g1677216794_))))
                                (_g1677116790_ _g1677216794_))))
                        (_g1677116790_ _g1677216794_)))))
            (_g1677016848_ _stx16765_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx16917_)
        (letrec ((_wrap16920_
                  (lambda (_e-stx17257_)
                    (gx#stx-wrap-source
                     _e-stx17257_
                     (gx#stx-source _stx16917_))))
                 (_method-opt?16922_
                  (lambda (_x17254_) (memq (gx#stx-e _x17254_) '(rebind:)))))
          (let* ((_g1692416953_
                  (lambda (_g1692516949_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1692516949_)))
                 (_g1692317250_
                  (lambda (_g1692516957_)
                    (if (gx#stx-pair? _g1692516957_)
                        (let ((_e1693016960_ (gx#syntax-e _g1692516957_)))
                          (let ((_hd1693116964_ (##car _e1693016960_))
                                (_tl1693216967_ (##cdr _e1693016960_)))
                            (if (gx#stx-pair? _tl1693216967_)
                                (let ((_e1693316970_
                                       (gx#syntax-e _tl1693216967_)))
                                  (let ((_hd1693416974_ (##car _e1693316970_))
                                        (_tl1693516977_ (##cdr _e1693316970_)))
                                    (if (gx#stx-pair? _hd1693416974_)
                                        (let ((_e1693616980_
                                               (gx#syntax-e _hd1693416974_)))
                                          (let ((_hd1693716984_
                                                 (##car _e1693616980_))
                                                (_tl1693816987_
                                                 (##cdr _e1693616980_)))
                                            (if (gx#identifier? _hd1693716984_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g31676_|
                                                     _hd1693716984_)
                                                    (if (gx#stx-pair?
                                                         _tl1693816987_)
                                                        (let ((_e1693916990_
                                                               (gx#syntax-e
                                                                _tl1693816987_)))
                                                          (let ((_hd1694016994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1693916990_))
                        (_tl1694116997_ (##cdr _e1693916990_)))
                    (if (gx#stx-pair? _tl1694116997_)
                        (let ((_e1694217000_ (gx#syntax-e _tl1694116997_)))
                          (let ((_hd1694317004_ (##car _e1694217000_))
                                (_tl1694417007_ (##cdr _e1694217000_)))
                            (if (gx#stx-null? _tl1694417007_)
                                (if (gx#stx-pair? _tl1693516977_)
                                    (let ((_e1694517010_
                                           (gx#syntax-e _tl1693516977_)))
                                      (let ((_hd1694617014_
                                             (##car _e1694517010_))
                                            (_tl1694717017_
                                             (##cdr _e1694517010_)))
                                        ((lambda (_L17020_
                                                  _L17022_
                                                  _L17023_
                                                  _L17024_)
                                           (if (if (gx#identifier? _L17024_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L17023_)
                                                       (gx#stx-plist?
                                                        _L17020_
                                                        _method-opt?16922_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass17049_
                                                       (gx#syntax-local-value
                                                        _L17023_))
                                                      (_rebind?17052_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L17020_))
                                                           '#t
                                                           '#f))
                                                      (_g1705517063_
                                                       (lambda (_g1705617059_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1705617059_)))
                                                      (_g1705417246_
                                                       (lambda (_g1705617067_)
                                                         ((lambda (_L17070_)
                                                            (let ()
                                                              (let* ((_g1708417092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1708517088_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1708517088_)))
                             (_g1708317242_
                              (lambda (_g1708517096_)
                                ((lambda (_L17099_)
                                   (let ()
                                     (let* ((_g1711217120_
                                             (lambda (_g1711317116_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1711317116_)))
                                            (_g1711117238_
                                             (lambda (_g1711317124_)
                                               ((lambda (_L17127_)
                                                  (let ()
                                                    (let* ((_g1714017148_
                                                            (lambda (_g1714117144_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1714117144_)))
                                                           (_g1713917234_
                                                            (lambda (_g1714117152_)
                                                              ((lambda (_L17155_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1716817176_
                                   (lambda (_g1716917172_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1716917172_)))
                                  (_g1716717230_
                                   (lambda (_g1716917180_)
                                     ((lambda (_L17183_)
                                        (let ()
                                          (let* ((_g1719617204_
                                                  (lambda (_g1719717200_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1719717200_)))
                                                 (_g1719517226_
                                                  (lambda (_g1719717208_)
                                                    ((lambda (_L17211_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap16920_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L17155_ (cons _L17211_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1719717208_))))
                                            (_g1719517226_
                                             (_wrap16920_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L17070_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L17024_ '()))
                        (cons _L17099_ (cons _L17183_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1716917180_))))
                             (_g1716717230_ _rebind?17052_))))
                       _g1714117152_))))
              (_g1713917234_
               (_wrap16920_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L17099_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L17127_
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
                                                            (cons _L17070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17024_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L17022_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1711317124_))))
                                       (_g1711117238_
                                        (gx#stx-identifier
                                         _L17024_
                                         '@next-method)))))
                                 _g1708517096_))))
                        (_g1708317242_
                         (gx#stx-identifier
                          _L17024_
                          _L17023_
                          '"::"
                          _L17024_)))))
                  _g1705617067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1705417246_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass17049_)))
                                               (if (not (gx#identifier?
                                                         _L17024_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx16917_
                                                    _L17024_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L17023_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx16917_
                                                        _L17023_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx16917_)))))
                                         _tl1694717017_
                                         _hd1694617014_
                                         _hd1694317004_
                                         _hd1694016994_)))
                                    (_g1692416953_ _g1692516957_))
                                (_g1692416953_ _g1692516957_))))
                        (_g1692416953_ _g1692516957_))))
                (_g1692416953_ _g1692516957_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1692416953_
                                                     _g1692516957_))
                                                (_g1692416953_
                                                 _g1692516957_))))
                                        (_g1692416953_ _g1692516957_))))
                                (_g1692416953_ _g1692516957_))))
                        (_g1692416953_ _g1692516957_)))))
            (_g1692317250_ _stx16917_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx17260_)
        (let* ((_g1726517314_
                (lambda (_g1726617310_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1726617310_)))
               (_g1726417413_
                (lambda (_g1726617318_)
                  (if (gx#stx-pair? _g1726617318_)
                      (let ((_e1729117321_ (gx#syntax-e _g1726617318_)))
                        (let ((_hd1729217325_ (##car _e1729117321_))
                              (_tl1729317328_ (##cdr _e1729117321_)))
                          (if (gx#stx-pair? _tl1729317328_)
                              (let ((_e1729417331_
                                     (gx#syntax-e _tl1729317328_)))
                                (let ((_hd1729517335_ (##car _e1729417331_))
                                      (_tl1729617338_ (##cdr _e1729417331_)))
                                  (if (gx#stx-pair? _tl1729617338_)
                                      (let ((_e1729717341_
                                             (gx#syntax-e _tl1729617338_)))
                                        (let ((_hd1729817345_
                                               (##car _e1729717341_))
                                              (_tl1729917348_
                                               (##cdr _e1729717341_)))
                                          (if (gx#stx-pair/null?
                                               _tl1729917348_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1729917348_)
                                                        '0)
                                                  (let ((_g31677_
                                                         (gx#syntax-split-splice
                                                          _tl1729917348_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31678_
                                                             (values-count
                                                              _g31677_)))
                                                        (if (not (fx= _g31678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31678_)))
              (let ((_target1730017351_ (values-ref _g31677_ 0))
                    (_tl1730217354_ (values-ref _g31677_ 1)))
                (if (gx#stx-null? _tl1730217354_)
                    (letrec ((_loop1730317357_
                              (lambda (_hd1730117361_ _arg1730717364_)
                                (if (gx#stx-pair? _hd1730117361_)
                                    (let ((_e1730417367_
                                           (gx#syntax-e _hd1730117361_)))
                                      (let ((_lp-hd1730517371_
                                             (##car _e1730417367_))
                                            (_lp-tl1730617374_
                                             (##cdr _e1730417367_)))
                                        (_loop1730317357_
                                         _lp-tl1730617374_
                                         (cons _lp-hd1730517371_
                                               _arg1730717364_))))
                                    (let ((_arg1730817377_
                                           (reverse _arg1730717364_)))
                                      ((lambda (_L17381_ _L17383_ _L17384_)
                                         (if (gx#identifier? _L17384_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L17383_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L17384_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g1740417407_ _g1740517410_)
                                  (cons _g1740417407_ _g1740517410_))
                                '()
                                _L17381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1726517314_ _g1726617318_)))
                                       _arg1730817377_
                                       _hd1729817345_
                                       _hd1729517335_))))))
                      (_loop1730317357_ _target1730017351_ '()))
                    (_g1726517314_ _g1726617318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1726517314_
                                                   _g1726617318_))
                                              (_g1726517314_ _g1726617318_))))
                                      (_g1726517314_ _g1726617318_))))
                              (_g1726517314_ _g1726617318_))))
                      (_g1726517314_ _g1726617318_))))
               (_g1726317519_
                (lambda (_g1726617417_)
                  (if (gx#stx-pair? _g1726617417_)
                      (let ((_e1727017420_ (gx#syntax-e _g1726617417_)))
                        (let ((_hd1727117424_ (##car _e1727017420_))
                              (_tl1727217427_ (##cdr _e1727017420_)))
                          (if (gx#stx-pair? _tl1727217427_)
                              (let ((_e1727317430_
                                     (gx#syntax-e _tl1727217427_)))
                                (let ((_hd1727417434_ (##car _e1727317430_))
                                      (_tl1727517437_ (##cdr _e1727317430_)))
                                  (if (gx#stx-pair? _tl1727517437_)
                                      (let ((_e1727617440_
                                             (gx#syntax-e _tl1727517437_)))
                                        (let ((_hd1727717444_
                                               (##car _e1727617440_))
                                              (_tl1727817447_
                                               (##cdr _e1727617440_)))
                                          (if (gx#stx-pair/null?
                                               _tl1727817447_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1727817447_)
                                                        '0)
                                                  (let ((_g31679_
                                                         (gx#syntax-split-splice
                                                          _tl1727817447_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31680_
                                                             (values-count
                                                              _g31679_)))
                                                        (if (not (fx= _g31680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31680_)))
              (let ((_target1727917450_ (values-ref _g31679_ 0))
                    (_tl1728117453_ (values-ref _g31679_ 1)))
                (if (gx#stx-null? _tl1728117453_)
                    (letrec ((_loop1728217456_
                              (lambda (_hd1728017460_ _arg1728617463_)
                                (if (gx#stx-pair? _hd1728017460_)
                                    (let ((_e1728317466_
                                           (gx#syntax-e _hd1728017460_)))
                                      (let ((_lp-hd1728417470_
                                             (##car _e1728317466_))
                                            (_lp-tl1728517473_
                                             (##cdr _e1728317466_)))
                                        (_loop1728217456_
                                         _lp-tl1728517473_
                                         (cons _lp-hd1728417470_
                                               _arg1728617463_))))
                                    (let ((_arg1728717476_
                                           (reverse _arg1728617463_)))
                                      ((lambda (_L17480_ _L17482_ _L17483_)
                                         (if (if (gx#identifier? _L17483_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1750217505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1750317508_)
                     (cons _g1750217505_ _g1750317508_))
                   '()
                   _L17480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L17482_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L17483_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1751017513_
                                                           _g1751117516_)
                                                    (cons _g1751017513_
                                                          _g1751117516_))
                                                  '()
                                                  _L17480_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1726417413_ _g1726617417_)))
                                       _arg1728717476_
                                       _hd1727717444_
                                       _hd1727417434_))))))
                      (_loop1728217456_ _target1727917450_ '()))
                    (_g1726417413_ _g1726617417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1726417413_
                                                   _g1726617417_))
                                              (_g1726417413_ _g1726617417_))))
                                      (_g1726417413_ _g1726617417_))))
                              (_g1726417413_ _g1726617417_))))
                      (_g1726417413_ _g1726617417_)))))
          (_g1726317519_ _$stx17260_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx17525_)
        (let* ((_g1753017570_
                (lambda (_g1753117566_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1753117566_)))
               (_g1752917671_
                (lambda (_g1753117574_)
                  (if (gx#stx-pair? _g1753117574_)
                      (let ((_e1754717577_ (gx#syntax-e _g1753117574_)))
                        (let ((_hd1754817581_ (##car _e1754717577_))
                              (_tl1754917584_ (##cdr _e1754717577_)))
                          (if (gx#stx-pair? _tl1754917584_)
                              (let ((_e1755017587_
                                     (gx#syntax-e _tl1754917584_)))
                                (let ((_hd1755117591_ (##car _e1755017587_))
                                      (_tl1755217594_ (##cdr _e1755017587_)))
                                  (if (gx#stx-pair? _tl1755217594_)
                                      (let ((_e1755317597_
                                             (gx#syntax-e _tl1755217594_)))
                                        (let ((_hd1755417601_
                                               (##car _e1755317597_))
                                              (_tl1755517604_
                                               (##cdr _e1755317597_)))
                                          (if (gx#stx-pair/null?
                                               _tl1755517604_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1755517604_)
                                                        '0)
                                                  (let ((_g31681_
                                                         (gx#syntax-split-splice
                                                          _tl1755517604_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31682_
                                                             (values-count
                                                              _g31681_)))
                                                        (if (not (fx= _g31682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31682_)))
              (let ((_target1755617607_ (values-ref _g31681_ 0))
                    (_tl1755817610_ (values-ref _g31681_ 1)))
                (if (gx#stx-null? _tl1755817610_)
                    (letrec ((_loop1755917613_
                              (lambda (_hd1755717617_ _rest1756317620_)
                                (if (gx#stx-pair? _hd1755717617_)
                                    (let ((_e1756017623_
                                           (gx#syntax-e _hd1755717617_)))
                                      (let ((_lp-hd1756117627_
                                             (##car _e1756017623_))
                                            (_lp-tl1756217630_
                                             (##cdr _e1756017623_)))
                                        (_loop1755917613_
                                         _lp-tl1756217630_
                                         (cons _lp-hd1756117627_
                                               _rest1756317620_))))
                                    (let ((_rest1756417633_
                                           (reverse _rest1756317620_)))
                                      ((lambda (_L17637_
                                                _L17639_
                                                _L17640_
                                                _L17641_)
                                         (cons _L17641_
                                               (cons (cons _L17641_
                                                           (cons _L17640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17639_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1766217665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1766317668_)
                        (cons _g1766217665_ _g1766317668_))
                      '()
                      _L17637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest1756417633_
                                       _hd1755417601_
                                       _hd1755117591_
                                       _hd1754817581_))))))
                      (_loop1755917613_ _target1755617607_ '()))
                    (_g1753017570_ _g1753117574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1753017570_
                                                   _g1753117574_))
                                              (_g1753017570_ _g1753117574_))))
                                      (_g1753017570_ _g1753117574_))))
                              (_g1753017570_ _g1753117574_))))
                      (_g1753017570_ _g1753117574_))))
               (_g1752817725_
                (lambda (_g1753117675_)
                  (if (gx#stx-pair? _g1753117675_)
                      (let ((_e1753417678_ (gx#syntax-e _g1753117675_)))
                        (let ((_hd1753517682_ (##car _e1753417678_))
                              (_tl1753617685_ (##cdr _e1753417678_)))
                          (if (gx#stx-pair? _tl1753617685_)
                              (let ((_e1753717688_
                                     (gx#syntax-e _tl1753617685_)))
                                (let ((_hd1753817692_ (##car _e1753717688_))
                                      (_tl1753917695_ (##cdr _e1753717688_)))
                                  (if (gx#stx-pair? _tl1753917695_)
                                      (let ((_e1754017698_
                                             (gx#syntax-e _tl1753917695_)))
                                        (let ((_hd1754117702_
                                               (##car _e1754017698_))
                                              (_tl1754217705_
                                               (##cdr _e1754017698_)))
                                          (if (gx#stx-null? _tl1754217705_)
                                              ((lambda (_L17708_ _L17710_)
                                                 (if (gx#identifier? _L17708_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L17710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17708_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1752917671_
                                                      _g1753117675_)))
                                               _hd1754117702_
                                               _hd1753817692_)
                                              (_g1752917671_ _g1753117675_))))
                                      (_g1752917671_ _g1753117675_))))
                              (_g1752917671_ _g1753117675_))))
                      (_g1752917671_ _g1753117675_)))))
          (_g1752817725_ _$stx17525_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx17730_)
        (let* ((_g1773517787_
                (lambda (_g1773617783_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1773617783_)))
               (_g1773417916_
                (lambda (_g1773617791_)
                  (if (gx#stx-pair? _g1773617791_)
                      (let ((_e1775817794_ (gx#syntax-e _g1773617791_)))
                        (let ((_hd1775917798_ (##car _e1775817794_))
                              (_tl1776017801_ (##cdr _e1775817794_)))
                          (if (gx#stx-pair? _tl1776017801_)
                              (let ((_e1776117804_
                                     (gx#syntax-e _tl1776017801_)))
                                (let ((_hd1776217808_ (##car _e1776117804_))
                                      (_tl1776317811_ (##cdr _e1776117804_)))
                                  (if (gx#stx-pair? _tl1776317811_)
                                      (let ((_e1776417814_
                                             (gx#syntax-e _tl1776317811_)))
                                        (let ((_hd1776517818_
                                               (##car _e1776417814_))
                                              (_tl1776617821_
                                               (##cdr _e1776417814_)))
                                          (if (gx#stx-pair/null?
                                               _tl1776617821_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1776617821_)
                                                        '2)
                                                  (let ((_g31683_
                                                         (gx#syntax-split-splice
                                                          _tl1776617821_
                                                          '2)))
                                                    (begin
                                                      (let ((_g31684_
                                                             (values-count
                                                              _g31683_)))
                                                        (if (not (fx= _g31684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31684_)))
              (let ((_target1776717824_ (values-ref _g31683_ 0))
                    (_tl1776917827_ (values-ref _g31683_ 1)))
                (if (gx#stx-pair? _tl1776917827_)
                    (let ((_e1777617830_ (gx#syntax-e _tl1776917827_)))
                      (let ((_hd1777717834_ (##car _e1777617830_))
                            (_tl1777817837_ (##cdr _e1777617830_)))
                        (if (gx#stx-pair? _tl1777817837_)
                            (let ((_e1777917840_ (gx#syntax-e _tl1777817837_)))
                              (let ((_hd1778017844_ (##car _e1777917840_))
                                    (_tl1778117847_ (##cdr _e1777917840_)))
                                (if (gx#stx-null? _tl1778117847_)
                                    (letrec ((_loop1777017850_
                                              (lambda (_hd1776817854_
                                                       _path1777417857_)
                                                (if (gx#stx-pair?
                                                     _hd1776817854_)
                                                    (let ((_e1777117860_
                                                           (gx#syntax-e
                                                            _hd1776817854_)))
                                                      (let ((_lp-hd1777217864_
                                                             (##car _e1777117860_))
                                                            (_lp-tl1777317867_
                                                             (##cdr _e1777117860_)))
                                                        (_loop1777017850_
                                                         _lp-tl1777317867_
                                                         (cons _lp-hd1777217864_
                                                               _path1777417857_))))
                                                    (let ((_path1777517870_
                                                           (reverse _path1777417857_)))
                                                      ((lambda (_L17874_
                                                                _L17876_
                                                                _L17877_
                                                                _L17878_
                                                                _L17879_
                                                                _L17880_)
                                                         (cons _L17880_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L17879_
                                         (cons _L17878_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1790717910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1790817913_)
                  (cons _g1790717910_ _g1790817913_))
                '()
                _L17877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L17876_ (cons _L17874_ '())))))
               _hd1778017844_
               _hd1777717834_
               _path1777517870_
               _hd1776517818_
               _hd1776217808_
               _hd1775917798_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1777017850_
                                       _target1776717824_
                                       '()))
                                    (_g1773517787_ _g1773617791_))))
                            (_g1773517787_ _g1773617791_))))
                    (_g1773517787_ _g1773617791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1773517787_
                                                   _g1773617791_))
                                              (_g1773517787_ _g1773617791_))))
                                      (_g1773517787_ _g1773617791_))))
                              (_g1773517787_ _g1773617791_))))
                      (_g1773517787_ _g1773617791_))))
               (_g1773317984_
                (lambda (_g1773617920_)
                  (if (gx#stx-pair? _g1773617920_)
                      (let ((_e1774017923_ (gx#syntax-e _g1773617920_)))
                        (let ((_hd1774117927_ (##car _e1774017923_))
                              (_tl1774217930_ (##cdr _e1774017923_)))
                          (if (gx#stx-pair? _tl1774217930_)
                              (let ((_e1774317933_
                                     (gx#syntax-e _tl1774217930_)))
                                (let ((_hd1774417937_ (##car _e1774317933_))
                                      (_tl1774517940_ (##cdr _e1774317933_)))
                                  (if (gx#stx-pair? _tl1774517940_)
                                      (let ((_e1774617943_
                                             (gx#syntax-e _tl1774517940_)))
                                        (let ((_hd1774717947_
                                               (##car _e1774617943_))
                                              (_tl1774817950_
                                               (##cdr _e1774617943_)))
                                          (if (gx#stx-pair? _tl1774817950_)
                                              (let ((_e1774917953_
                                                     (gx#syntax-e
                                                      _tl1774817950_)))
                                                (let ((_hd1775017957_
                                                       (##car _e1774917953_))
                                                      (_tl1775117960_
                                                       (##cdr _e1774917953_)))
                                                  (if (gx#stx-null?
                                                       _tl1775117960_)
                                                      ((lambda (_L17963_
                                                                _L17965_
                                                                _L17966_)
                                                         (if (gx#identifier?
                                                              _L17965_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L17966_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L17965_ '()))
                                       (cons _L17963_ '()))))
                     (_g1773417916_ _g1773617920_)))
               _hd1775017957_
               _hd1774717947_
               _hd1774417937_)
              (_g1773417916_ _g1773617920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1773417916_ _g1773617920_))))
                                      (_g1773417916_ _g1773617920_))))
                              (_g1773417916_ _g1773617920_))))
                      (_g1773417916_ _g1773617920_)))))
          (_g1773317984_ _$stx17730_))))))
