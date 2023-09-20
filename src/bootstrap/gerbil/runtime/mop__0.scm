(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1695206877)
  (begin
    (define type-descriptor?
      (lambda (_klass9790_)
        (if (let () (declare (not safe)) (##type? _klass9790_))
            (eq? (let () (declare (not safe)) (##structure-length _klass9790_))
                 '12)
            '#f)))
    (define struct-type?
      (lambda (_klass9788_)
        (if (type-descriptor? _klass9788_)
            (not (type-descriptor-mixin _klass9788_))
            '#f)))
    (define class-type?
      (lambda (_klass9786_)
        (if (type-descriptor? _klass9786_)
            (if (type-descriptor-mixin _klass9786_) '#t '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id9682_
               _type-name9683_
               _type-super9684_
               _rtd-mixin9685_
               _rtd-fields9686_
               _rtd-plist9687_
               _rtd-ctor9688_
               _rtd-slots9689_
               _rtd-methods9690_)
        (letrec ((_put-props!9692_
                  (lambda (_ht9766_ _key9767_)
                    (letrec ((_put-plist!9769_
                              (lambda (_ht9775_ _key9776_ _plist9777_)
                                (let ((_$e9779_
                                       (assgetq _key9776_ _plist9777_)))
                                  (if _$e9779_
                                      ((lambda (_lst9782_)
                                         (for-each
                                          (lambda (_id9784_)
                                            (table-set! _ht9775_ _id9784_ '#t))
                                          _lst9782_))
                                       _$e9779_)
                                      '#!void)))))
                      (_put-plist!9769_ _ht9766_ _key9767_ _rtd-plist9687_)
                      (if _rtd-mixin9685_
                          (for-each
                           (lambda (_klass9771_)
                             (if (type-descriptor-mixin _klass9771_)
                                 (let ((_plist9773_
                                        (type-descriptor-plist _klass9771_)))
                                   (if (assgetq 'transparent: _plist9773_)
                                       (_put-plist!9769_
                                        _ht9766_
                                        'slots:
                                        _plist9773_)
                                       (_put-plist!9769_
                                        _ht9766_
                                        _key9767_
                                        _plist9773_)))
                                 '#!void))
                           _rtd-mixin9685_)
                          '#!void)))))
          (let* ((_transparent?9694_ (assgetq 'transparent: _rtd-plist9687_))
                 (_field-names9699_
                  (let ((_$e9696_ (assq 'fields: _rtd-plist9687_)))
                    (if _$e9696_ (cdr _$e9696_) '())))
                 (_field-names9706_
                  (let ((_$e9701_ (assq 'slots: _rtd-plist9687_)))
                    (if _$e9701_
                        ((lambda (_slots9704_)
                           (append _field-names9699_ (cdr _slots9704_)))
                         _$e9701_)
                        _field-names9699_)))
                 (_g9800_ (if (fx= _rtd-fields9686_ (length _field-names9706_))
                              '#!void
                              (error '"Bad field descriptor; length mismatch"
                                     _type-id9682_
                                     _rtd-fields9686_
                                     _field-names9706_)))
                 (_canonical-fields9709_
                  (if _type-super9684_
                      (list-tail
                       _field-names9706_
                       (type-descriptor-fields _type-super9684_))
                      _field-names9706_))
                 (_printable9713_
                  (if _transparent?9694_
                      '#f
                      (let ((_ht9711_ (make-table 'test: eq?)))
                        (_put-props!9692_ _ht9711_ 'print:)
                        _ht9711_)))
                 (_equality9717_
                  (if _transparent?9694_
                      '#f
                      (let ((_ht9715_ (make-table 'test: eq?)))
                        (_put-props!9692_ _ht9715_ 'equal:)
                        _ht9715_)))
                 (_field-info9758_
                  (let _recur9719_ ((_rest9721_ _canonical-fields9709_))
                    (let* ((_rest97229730_ _rest9721_)
                           (_else97249738_ (lambda () '()))
                           (_K97269746_
                            (lambda (_rest9741_ _id9742_)
                              (let ((_flags9744_
                                     (if _transparent?9694_
                                         '0
                                         (let ((__tmp9802
                                                (if (table-ref
                                                     _printable9713_
                                                     _id9742_
                                                     '#f)
                                                    '0
                                                    '1))
                                               (__tmp9801
                                                (if (table-ref
                                                     _equality9717_
                                                     _id9742_
                                                     '#f)
                                                    '0
                                                    '4)))
                                           (declare (not safe))
                                           (##fxior __tmp9802 __tmp9801)))))
                                (cons _id9742_
                                      (cons _flags9744_
                                            (cons '#f
                                                  (_recur9719_
                                                   _rest9741_))))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest97229730_))
                          (let ((_hd97279749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest97229730_)))
                                (_tl97289751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest97229730_))))
                            (let* ((_id9754_ _hd97279749_)
                                   (_rest9756_ _tl97289751_))
                              (_K97269746_ _rest9756_ _id9754_)))
                          (_else97249738_)))))
                 (_opaque?9763_
                  (if (or _transparent?9694_ (assq 'equal: _rtd-plist9687_))
                      (if _type-super9684_
                          (let ((__tmp9803
                                 (let ((__tmp9804
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super9684_))))
                                   (declare (not safe))
                                   (##fxand __tmp9804 '1))))
                            (declare (not safe))
                            (##fx= __tmp9803 '1))
                          '#f)
                      '#t)))
            (let ((__tmp9806 (+ '24 (if _opaque?9763_ '1 '0)))
                  (__tmp9805 (list->vector _field-info9758_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id9682_
               _type-name9683_
               __tmp9806
               _type-super9684_
               __tmp9805
               _rtd-mixin9685_
               _rtd-fields9686_
               _rtd-plist9687_
               _rtd-ctor9688_
               _rtd-slots9689_
               _rtd-methods9690_))))))
    (define make-struct-type-descriptor
      (lambda (_id9675_
               _name9676_
               _super9677_
               _fields9678_
               _plist9679_
               _ctor9680_)
        (make-type-descriptor
         _id9675_
         _name9676_
         _super9677_
         '#f
         _fields9678_
         _plist9679_
         _ctor9680_
         '#f
         '#f)))
    (define make-class-type-descriptor
      (lambda (_id9666_
               _name9667_
               _super9668_
               _mixin9669_
               _fields9670_
               _plist9671_
               _ctor9672_
               _slots9673_)
        (make-type-descriptor
         _id9666_
         _name9667_
         _super9668_
         _mixin9669_
         _fields9670_
         _plist9671_
         _ctor9672_
         _slots9673_
         '#f)))
    (define type-descriptor-mixin
      (lambda (_klass9664_)
        (let () (declare (not safe)) (##vector-ref _klass9664_ '6))))
    (define type-descriptor-fields
      (lambda (_klass9662_)
        (let () (declare (not safe)) (##vector-ref _klass9662_ '7))))
    (define type-descriptor-plist
      (lambda (_klass9660_)
        (let () (declare (not safe)) (##vector-ref _klass9660_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass9658_)
        (let () (declare (not safe)) (##vector-ref _klass9658_ '9))))
    (define type-descriptor-slots
      (lambda (_klass9656_)
        (let () (declare (not safe)) (##vector-ref _klass9656_ '10))))
    (define type-descriptor-methods
      (lambda (_klass9654_)
        (let () (declare (not safe)) (##vector-ref _klass9654_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass9651_ _ht9652_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass9651_ '11 _ht9652_))))
    (define type-descriptor-sealed?
      (lambda (_klass9649_)
        (let ((__tmp9807
               (let () (declare (not safe)) (##type-flags _klass9649_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp9807))))
    (define type-descriptor-seal!
      (lambda (_klass9647_)
        (let ((__tmp9808
               (let ((__tmp9810
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp9809
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass9647_))))
                 (declare (not safe))
                 (##fxior __tmp9810 __tmp9809))))
          (declare (not safe))
          (##vector-set! _klass9647_ '3 __tmp9808))))
    (define make-struct-type__%
      (lambda (_id9596_
               _super9597_
               _fields9598_
               _name9599_
               _plist9600_
               _ctor9601_
               _field-names9602_)
        (if (and _super9597_ (not (struct-type? _super9597_)))
            (error '"Illegal super type; not a struct-type" _super9597_)
            '#!void)
        (if (and _super9597_
                 (assgetq 'final: (type-descriptor-plist _super9597_)))
            (error '"Cannot extend final struct" _super9597_)
            '#!void)
        (let* ((_super-fields9604_
                (if _super9597_ (type-descriptor-fields _super9597_) '0))
               (_std-fields9606_ (fx+ _fields9598_ _super-fields9604_))
               (_std-field-names9616_
                (let* ((_super-fields9608_
                        (if _super9597_
                            (assgetq 'fields:
                                     (type-descriptor-plist _super9597_))
                            '()))
                       (_field-names9613_
                        (let ((_$e9610_ _field-names9602_))
                          (if _$e9610_ _$e9610_ (make-list _fields9598_ ':)))))
                  (append _super-fields9608_ _field-names9613_)))
               (_g9811_ (if (let ((__tmp9812 (length _std-field-names9616_)))
                              (declare (not safe))
                              (##fx= _std-fields9606_ __tmp9812))
                            '#!void
                            (error '"Bad field specification; length mismatch"
                                   _id9596_
                                   _std-fields9606_
                                   _std-field-names9616_)))
               (_std-plist9619_
                (cons (cons 'fields: _std-field-names9616_) _plist9600_))
               (_ctor9624_
                (let ((_$e9621_ _ctor9601_))
                  (if _$e9621_
                      _$e9621_
                      (if _super9597_
                          (type-descriptor-ctor _super9597_)
                          '#f)))))
          (make-struct-type-descriptor
           _id9596_
           _name9599_
           _super9597_
           _std-fields9606_
           _std-plist9619_
           _ctor9624_))))
    (define make-struct-type__0
      (lambda (_id9630_
               _super9631_
               _fields9632_
               _name9633_
               _plist9634_
               _ctor9635_)
        (let ((_field-names9637_ '#f))
          (make-struct-type__%
           _id9630_
           _super9631_
           _fields9632_
           _name9633_
           _plist9634_
           _ctor9635_
           _field-names9637_))))
    (define make-struct-type
      (lambda _g9814_
        (let ((_g9813_ (let () (declare (not safe)) (##length _g9814_))))
          (cond ((let () (declare (not safe)) (##fx= _g9813_ 6))
                 (apply make-struct-type__0 _g9814_))
                ((let () (declare (not safe)) (##fx= _g9813_ 7))
                 (apply make-struct-type__% _g9814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g9814_))))))
    (define make-struct-predicate
      (lambda (_klass9587_)
        (let ((_tid9589_
               (let () (declare (not safe)) (##type-id _klass9587_))))
          (if (assgetq 'final: (type-descriptor-plist _klass9587_))
              (lambda (_obj9591_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj9591_ _tid9589_)))
              (lambda (_obj9593_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj9593_ _tid9589_)))))))
    (define make-struct-field-accessor
      (lambda (_klass9580_ _field9581_)
        (let ((_off9583_
               (let ((__tmp9815 (struct-field-offset _klass9580_ _field9581_)))
                 (declare (not safe))
                 (##fx+ __tmp9815 '1))))
          (lambda (_obj9585_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj9585_ _off9583_ _klass9580_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass9572_ _field9573_)
        (let ((_off9575_
               (let ((__tmp9816 (struct-field-offset _klass9572_ _field9573_)))
                 (declare (not safe))
                 (##fx+ __tmp9816 '1))))
          (lambda (_obj9577_ _val9578_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj9577_
               _val9578_
               _off9575_
               _klass9572_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass9565_ _field9566_)
        (let ((_off9568_
               (let ((__tmp9817 (struct-field-offset _klass9565_ _field9566_)))
                 (declare (not safe))
                 (##fx+ __tmp9817 '1))))
          (lambda (_obj9570_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj9570_
               _off9568_
               _klass9565_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass9557_ _field9558_)
        (let ((_off9560_
               (let ((__tmp9818 (struct-field-offset _klass9557_ _field9558_)))
                 (declare (not safe))
                 (##fx+ __tmp9818 '1))))
          (lambda (_obj9562_ _val9563_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9562_
               _val9563_
               _off9560_
               _klass9557_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass9551_ _field9552_)
        (let ((__tmp9819
               (let ((_$e9554_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass9551_))))
                 (if _$e9554_ (type-descriptor-fields _$e9554_) '0))))
          (declare (not safe))
          (##fx+ _field9552_ __tmp9819))))
    (define struct-field-ref
      (lambda (_klass9547_ _obj9548_ _off9549_)
        (let ((__tmp9820 (let () (declare (not safe)) (##fx+ _off9549_ '1))))
          (declare (not safe))
          (##structure-ref _obj9548_ __tmp9820 _klass9547_ '#f))))
    (define struct-field-set!
      (lambda (_klass9542_ _obj9543_ _off9544_ _val9545_)
        (let ((__tmp9821 (let () (declare (not safe)) (##fx+ _off9544_ '1))))
          (declare (not safe))
          (##structure-set! _obj9543_ _val9545_ __tmp9821 _klass9542_ '#f))))
    (define struct-subtype?
      (lambda (_klass9533_ _xklass9534_)
        (let ((_klass-t9536_
               (let () (declare (not safe)) (##type-id _klass9533_))))
          (let _lp9538_ ((_next9540_ _xklass9534_))
            (if (not _next9540_)
                '#f
                (if (eq? _klass-t9536_
                         (let () (declare (not safe)) (##type-id _next9540_)))
                    '#t
                    (_lp9538_
                     (let ()
                       (declare (not safe))
                       (##type-super _next9540_)))))))))
    (define make-class-type
      (lambda (_id9240_
               _super9241_
               _slots9242_
               _name9243_
               _plist9244_
               _ctor9245_)
        (letrec ((_class-slots9247_
                  (lambda (_klass9531_)
                    (assgetq 'slots: (type-descriptor-plist _klass9531_))))
                 (_make-slots9248_
                  (lambda (_off9482_)
                    (let ((_slot-table9484_ (make-table 'test: eq?)))
                      (let _lp9486_ ((_rest9488_ _super9241_)
                                     (_off9489_ _off9482_)
                                     (_slot-list9490_ '()))
                        (let* ((_rest94919499_ _rest9488_)
                               (_else94939510_
                                (lambda ()
                                  (_merge-slots9249_
                                   _slot-table9484_
                                   _slots9242_
                                   _off9489_
                                   _slot-list9490_
                                   (lambda (_off9507_ _slot-list9508_)
                                     (values _off9507_
                                             _slot-table9484_
                                             (reverse _slot-list9508_))))))
                               (_K94959519_
                                (lambda (_rest9513_ _hd9514_)
                                  (_merge-slots9249_
                                   _slot-table9484_
                                   (_class-slots9247_ _hd9514_)
                                   _off9489_
                                   _slot-list9490_
                                   (lambda (_off9516_ _slot-list9517_)
                                     (_lp9486_
                                      _rest9513_
                                      _off9516_
                                      _slot-list9517_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest94919499_))
                              (let ((_hd94969522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest94919499_)))
                                    (_tl94979524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest94919499_))))
                                (let* ((_hd9527_ _hd94969522_)
                                       (_rest9529_ _tl94979524_))
                                  (_K94959519_ _rest9529_ _hd9527_)))
                              (_else94939510_)))))))
                 (_merge-slots9249_
                  (lambda (_ht9437_ _lst9438_ _off9439_ _r9440_ _K9441_)
                    (let _lp9443_ ((_rest9445_ _lst9438_)
                                   (_off9446_ _off9439_)
                                   (_r9447_ _r9440_))
                      (let* ((_rest94489456_ _rest9445_)
                             (_else94509464_
                              (lambda () (_K9441_ _off9446_ _r9447_)))
                             (_K94529470_
                              (lambda (_rest9467_ _slot9468_)
                                (if (table-ref _ht9437_ _slot9468_ '#f)
                                    (_lp9443_ _rest9467_ _off9446_ _r9447_)
                                    (begin
                                      (table-set!
                                       _ht9437_
                                       _slot9468_
                                       _off9446_)
                                      (table-set!
                                       _ht9437_
                                       (symbol->keyword _slot9468_)
                                       _off9446_)
                                      (_lp9443_
                                       _rest9467_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _off9446_ '1))
                                       (cons _slot9468_ _r9447_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest94489456_))
                            (let ((_hd94539473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest94489456_)))
                                  (_tl94549475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest94489456_))))
                              (let* ((_slot9478_ _hd94539473_)
                                     (_rest9480_ _tl94549475_))
                                (_K94529470_ _rest9480_ _slot9478_)))
                            (_else94509464_))))))
                 (_find-super-ctor9250_
                  (lambda (_super9389_)
                    (let _lp9391_ ((_rest9393_ _super9389_) (_ctor9394_ '#f))
                      (let* ((_rest93959403_ _rest9393_)
                             (_else93979411_ (lambda () _ctor9394_))
                             (_K93999425_
                              (lambda (_rest9414_ _hd9415_)
                                (let ((_$e9417_
                                       (type-descriptor-ctor _hd9415_)))
                                  (if _$e9417_
                                      ((lambda (_xctor9420_)
                                         (if (or (not _ctor9394_)
                                                 (eq? _ctor9394_ _xctor9420_))
                                             (_lp9391_ _rest9414_ _xctor9420_)
                                             (error '"Conflicting implicit constructors"
                                                    _ctor9394_
                                                    _xctor9420_)))
                                       _$e9417_)
                                      (_lp9391_ _rest9414_ _ctor9394_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest93959403_))
                            (let ((_hd94009428_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest93959403_)))
                                  (_tl94019430_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest93959403_))))
                              (let* ((_hd9433_ _hd94009428_)
                                     (_rest9435_ _tl94019430_))
                                (_K93999425_ _rest9435_ _hd9433_)))
                            (_else93979411_))))))
                 (_find-super-struct9251_
                  (lambda (_super9336_)
                    (letrec ((_base-struct9338_
                              (lambda (_super-struct9378_ _klass9379_)
                                (if _super-struct9378_
                                    (if (struct-subtype?
                                         _super-struct9378_
                                         _klass9379_)
                                        (let _lp9381_ ((_klass9383_
                                                        _klass9379_))
                                          (if (struct-type? _klass9383_)
                                              _klass9383_
                                              (_lp9381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9383_)))))
                                        (if (struct-subtype?
                                             _klass9379_
                                             _super-struct9378_)
                                            _super-struct9378_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass9379_
                                                   _super-struct9378_)))
                                    (if (struct-type? _klass9379_)
                                        _klass9379_
                                        (if (class-type? _klass9379_)
                                            (let _lp9385_ ((_next9387_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##type-super
                                                               _klass9379_))))
                                              (if (not _next9387_)
                                                  '#f
                                                  (if (struct-type? _next9387_)
                                                      _next9387_
                                                      (if (class-type?
                                                           _next9387_)
                                                          (_lp9385_ _next9387_)
                                                          '#f))))
                                            '#f))))))
                      (let _lp9340_ ((_rest9342_ _super9336_)
                                     (_super-struct9343_ '#f))
                        (let* ((_rest93449352_ _rest9342_)
                               (_else93469360_ (lambda () _super-struct9343_))
                               (_K93489366_
                                (lambda (_rest9363_ _hd9364_)
                                  (_lp9340_
                                   _rest9363_
                                   (_base-struct9338_
                                    _super-struct9343_
                                    _hd9364_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest93449352_))
                              (let ((_hd93499369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest93449352_)))
                                    (_tl93509371_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest93449352_))))
                                (let* ((_hd9374_ _hd93499369_)
                                       (_rest9376_ _tl93509371_))
                                  (_K93489366_ _rest9376_ _hd9374_)))
                              (_else93469360_)))))))
                 (_expand-struct-mixin9252_
                  (lambda (_super9291_)
                    (let _lp9293_ ((_rest9295_ _super9291_) (_mixin9296_ '()))
                      (let* ((_rest92979305_ _rest9295_)
                             (_else92999313_ (lambda () (reverse _mixin9296_)))
                             (_K93019324_
                              (lambda (_rest9316_ _hd9317_)
                                (if (struct-type? _hd9317_)
                                    (let _lp29319_ ((_next9321_ _hd9317_)
                                                    (_mixin9322_ _mixin9296_))
                                      (if (not _next9321_)
                                          (_lp9293_ _rest9316_ _mixin9322_)
                                          (if (struct-type? _next9321_)
                                              (_lp29319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _next9321_))
                                               (cons _next9321_ _mixin9322_))
                                              (_lp9293_
                                               _rest9316_
                                               _mixin9322_))))
                                    (_lp9293_
                                     _rest9316_
                                     (cons _hd9317_ _mixin9296_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest92979305_))
                            (let ((_hd93029327_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest92979305_)))
                                  (_tl93039329_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest92979305_))))
                              (let* ((_hd9332_ _hd93029327_)
                                     (_rest9334_ _tl93039329_))
                                (_K93019324_ _rest9334_ _hd9332_)))
                            (_else92999313_)))))))
          (let ((_$e9256_
                 (find (lambda (_klass9254_)
                         (not (type-descriptor? _klass9254_)))
                       _super9241_)))
            (if _$e9256_
                ((lambda (_klass9259_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass9259_))
                 _$e9256_)
                (let ((_$e9263_
                       (find (lambda (_klass9261_)
                               (assgetq 'final:
                                        (type-descriptor-plist _klass9261_)))
                             _super9241_)))
                  (if _$e9263_
                      ((lambda (_klass9266_)
                         (error '"Cannot extend final class" _klass9266_))
                       _$e9263_)
                      '#!void))))
          (let* ((_std-super9268_ (_find-super-struct9251_ _super9241_))
                 (_mixin9270_
                  (if _std-super9268_
                      (_expand-struct-mixin9252_ _super9241_)
                      _super9241_)))
            (let ((_g9822_ (_make-slots9248_
                            (if _std-super9268_
                                (type-descriptor-fields _std-super9268_)
                                '0))))
              (begin
                (let ((_g9823_ (let ()
                                 (declare (not safe))
                                 (if (##values? _g9822_)
                                     (##vector-length _g9822_)
                                     1))))
                  (if (not (let () (declare (not safe)) (##fx= _g9823_ 3)))
                      (error "Context expects 3 values" _g9823_)))
                (let ((_std-fields9273_
                       (let () (declare (not safe)) (##vector-ref _g9822_ 0)))
                      (_std-slots9274_
                       (let () (declare (not safe)) (##vector-ref _g9822_ 1)))
                      (_std-slot-list9275_
                       (let () (declare (not safe)) (##vector-ref _g9822_ 2))))
                  (let* ((_std-mixin9277_ (class-linearize-mixins _mixin9270_))
                         (_std-plist9281_
                          (if _std-super9268_
                              (let ((_fields9279_
                                     (assgetq 'fields:
                                              (type-descriptor-plist
                                               _std-super9268_))))
                                (cons (cons 'fields: _fields9279_)
                                      _plist9244_))
                              _plist9244_))
                         (_std-plist9283_
                          (cons (cons 'slots: _std-slot-list9275_)
                                _std-plist9281_))
                         (_std-ctor9288_
                          (let ((_$e9285_ _ctor9245_))
                            (if _$e9285_
                                _$e9285_
                                (_find-super-ctor9250_ _super9241_)))))
                    (make-class-type-descriptor
                     _id9240_
                     _name9243_
                     _std-super9268_
                     _std-mixin9277_
                     _std-fields9273_
                     _std-plist9283_
                     _std-ctor9288_
                     _std-slots9274_)))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst9191_)
        (letrec ((_class->list9193_
                  (lambda (_klass9235_)
                    (cons _klass9235_
                          (let ((_$e9237_ (type-descriptor-mixin _klass9235_)))
                            (if _$e9237_ _$e9237_ '()))))))
          (let* ((_klass-lst91949204_ _klass-lst9191_)
                 (_else91979212_
                  (lambda ()
                    (__linearize-mixins
                     (map _class->list9193_ _klass-lst9191_)))))
            (let ((_K92029232_ (lambda () '()))
                  (_K91999218_
                   (lambda (_klass9216_) (_class->list9193_ _klass9216_))))
              (let ((_try-match91969228_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst91949204_))
                           (let ((_tl92019223_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst91949204_)))
                                 (_hd92009221_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst91949204_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl92019223_))
                                 (let ((_klass9226_ _hd92009221_))
                                   (_class->list9193_ _klass9226_))
                                 (_else91979212_)))
                           (_else91979212_)))))
                (if (let () (declare (not safe)) (##null? _klass-lst91949204_))
                    (_K92029232_)
                    (_try-match91969228_))))))))
    (define __linearize-mixins
      (lambda (_lst9032_)
        (letrec ((_K9034_ (lambda (_rest9155_ _r9156_)
                            (let* ((_rest91579165_ _rest9155_)
                                   (_else91599173_
                                    (lambda () (reverse _r9156_)))
                                   (_K91619179_
                                    (lambda (_rest9176_ _hd9177_)
                                      (_linearize19035_
                                       _hd9177_
                                       _rest9176_
                                       _r9156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest91579165_))
                                  (let ((_hd91629182_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest91579165_)))
                                        (_tl91639184_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest91579165_))))
                                    (let* ((_hd9187_ _hd91629182_)
                                           (_rest9189_ _tl91639184_))
                                      (_K91619179_ _rest9189_ _hd9187_)))
                                  (_else91599173_)))))
                 (_linearize19035_
                  (lambda (_hd9118_ _rest9119_ _r9120_)
                    (let* ((_hd91219129_ _hd9118_)
                           (_else91239137_
                            (lambda () (_K9034_ _rest9119_ _r9120_)))
                           (_K91259143_
                            (lambda (_hd-rest9140_ _hd-first9141_)
                              (if (_findq9038_ _hd-first9141_ _rest9119_)
                                  (_linearize29036_
                                   _rest9119_
                                   (list _hd9118_)
                                   _r9120_)
                                  (_K9034_ (cons _hd-rest9140_ _rest9119_)
                                           (_putq9037_
                                            _hd-first9141_
                                            _r9120_))))))
                      (if (let () (declare (not safe)) (##pair? _hd91219129_))
                          (let ((_hd91269146_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd91219129_)))
                                (_tl91279148_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd91219129_))))
                            (let* ((_hd-first9151_ _hd91269146_)
                                   (_hd-rest9153_ _tl91279148_))
                              (_K91259143_ _hd-rest9153_ _hd-first9151_)))
                          (_else91239137_)))))
                 (_linearize29036_
                  (lambda (_rest9048_ _pre9049_ _r9050_)
                    (let _lp9052_ ((_rest9054_ _rest9048_)
                                   (_pre9055_ _pre9049_))
                      (let* ((_rest90569063_ _rest9054_)
                             (_E90589067_
                              (lambda ()
                                (error '"No clause matching" _rest90569063_)))
                             (_K90599106_
                              (lambda (_rest9070_ _hd9071_)
                                (let* ((_hd90729080_ _hd9071_)
                                       (_else90749088_
                                        (lambda ()
                                          (_lp9052_ _rest9070_ _pre9055_)))
                                       (_K90769094_
                                        (lambda (_hd-rest9091_ _hd-first9092_)
                                          (if (_findq9038_
                                               _hd-first9092_
                                               _rest9070_)
                                              (_lp9052_
                                               _rest9070_
                                               (cons _hd9071_ _pre9055_))
                                              (_K9034_ (foldl1 cons
                                                               (cons _hd-rest9091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest9070_)
                       _pre9055_)
               (_putq9037_ _hd-first9092_ _r9050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd90729080_))
                                      (let ((_hd90779097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd90729080_)))
                                            (_tl90789099_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd90729080_))))
                                        (let* ((_hd-first9102_ _hd90779097_)
                                               (_hd-rest9104_ _tl90789099_))
                                          (_K90769094_
                                           _hd-rest9104_
                                           _hd-first9102_)))
                                      (_else90749088_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest90569063_))
                            (let ((_hd90609109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest90569063_)))
                                  (_tl90619111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest90569063_))))
                              (let* ((_hd9114_ _hd90609109_)
                                     (_rest9116_ _tl90619111_))
                                (_K90599106_ _rest9116_ _hd9114_)))
                            (_E90589067_))))))
                 (_putq9037_
                  (lambda (_hd9045_ _lst9046_)
                    (if (memq _hd9045_ _lst9046_)
                        _lst9046_
                        (cons _hd9045_ _lst9046_))))
                 (_findq9038_
                  (lambda (_hd9040_ _rest9041_)
                    (find (lambda (_lst9043_) (memq _hd9040_ _lst9043_))
                          _rest9041_))))
          (_K9034_ _lst9032_ '()))))
    (define make-class-predicate
      (lambda (_klass9026_)
        (if (assgetq 'final: (type-descriptor-plist _klass9026_))
            (lambda (_obj9028_)
              (let ((__tmp9824
                     (let () (declare (not safe)) (##type-id _klass9026_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9028_ __tmp9824)))
            (lambda (_obj9030_) (class-instance? _klass9026_ _obj9030_)))))
    (define make-class-slot-accessor
      (lambda (_klass9021_ _slot9022_)
        (lambda (_obj9024_) (slot-ref _obj9024_ _slot9022_))))
    (define make-class-slot-mutator
      (lambda (_klass9015_ _slot9016_)
        (lambda (_obj9018_ _val9019_)
          (slot-set! _obj9018_ _slot9016_ _val9019_))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9010_ _slot9011_)
        (lambda (_obj9013_) (unchecked-slot-ref _obj9013_ _slot9011_))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9004_ _slot9005_)
        (lambda (_obj9007_ _val9008_)
          (unchecked-slot-set! _obj9007_ _slot9005_ _val9008_))))
    (define class-slot-offset
      (lambda (_klass8996_ _slot8997_)
        (let ((_$e8999_ (type-descriptor-slots _klass8996_)))
          (if _$e8999_
              ((lambda (_slots9002_) (table-ref _slots9002_ _slot8997_ '#f))
               _$e8999_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass8990_ _obj8991_ _slot8992_)
        (if (class-instance? _klass8990_ _obj8991_)
            (let* ((_off8994_
                    (class-slot-offset (object-type _obj8991_) _slot8992_))
                   (__tmp9825
                    (let () (declare (not safe)) (##fx+ _off8994_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj8991_ __tmp9825 _klass8990_ '#f))
            (error '"not an instance" _klass8990_ _obj8991_))))
    (define class-slot-set!
      (lambda (_klass8983_ _obj8984_ _slot8985_ _val8986_)
        (if (class-instance? _klass8983_ _obj8984_)
            (let* ((_off8988_
                    (class-slot-offset (object-type _obj8984_) _slot8985_))
                   (__tmp9826
                    (let () (declare (not safe)) (##fx+ _off8988_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj8984_
               _val8986_
               __tmp9826
               _klass8983_
               '#f))
            (error '"not an instance" _klass8983_ _obj8984_))))
    (define class-subtype?
      (lambda (_klass8968_ _xklass8969_)
        (let* ((_klass-t8971_
                (let () (declare (not safe)) (##type-id _klass8968_)))
               (_$e8973_
                (eq? _klass-t8971_
                     (let () (declare (not safe)) (##type-id _xklass8969_)))))
          (if _$e8973_
              _$e8973_
              (let ((_$e8976_ (type-descriptor-mixin _xklass8969_)))
                (if _$e8976_
                    ((lambda (_mixin8979_)
                       (if (find (lambda (_xklass8981_)
                                   (eq? _klass-t8971_
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass8981_))))
                                 _mixin8979_)
                           '#t
                           '#f))
                     _$e8976_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass8965_ _obj8966_)
        (let ((__tmp9827
               (let () (declare (not safe)) (##type-id _klass8965_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj8966_ __tmp9827))))
    (define struct-instance?
      (lambda (_klass8962_ _obj8963_)
        (let ((__tmp9828
               (let () (declare (not safe)) (##type-id _klass8962_))))
          (declare (not safe))
          (##structure-instance-of? _obj8963_ __tmp9828))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass8946_ _obj8947_)
        (if (object? _obj8947_)
            (let ((_klass-id8949_
                   (let () (declare (not safe)) (##type-id _klass8946_)))
                  (_type8950_ (object-type _obj8947_)))
              (if (type-descriptor? _type8950_)
                  (let ((_$e8952_
                         (eq? (let ()
                                (declare (not safe))
                                (##type-id _type8950_))
                              _klass-id8949_)))
                    (if _$e8952_
                        _$e8952_
                        (let ((_$e8955_ (type-descriptor-mixin _type8950_)))
                          (if _$e8955_
                              ((lambda (_mixin8958_)
                                 (ormap1 (lambda (_type8960_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##type-id _type8960_))
                                                _klass-id8949_))
                                         _mixin8958_))
                               _$e8955_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass8941_ _k8942_)
        (let ((_obj8944_
               (let ((__tmp9829
                      (let () (declare (not safe)) (##fx+ _k8942_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp9829 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj8944_ '0 _klass8941_))
          (let ((__tmp9830 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj8944_ __tmp9830))
          _obj8944_)))
    (define make-struct-instance
      (lambda (_klass8931_ . _args8932_)
        (let* ((_fields8934_ (type-descriptor-fields _klass8931_))
               (_$e8936_ (type-descriptor-ctor _klass8931_)))
          (if _$e8936_
              ((lambda (_kons-id8939_)
                 (__constructor-init!
                  _klass8931_
                  _kons-id8939_
                  (make-object _klass8931_ _fields8934_)
                  _args8932_))
               _$e8936_)
              (if (let ((__tmp9831 (length _args8932_)))
                    (declare (not safe))
                    (##fx= _fields8934_ __tmp9831))
                  (apply ##structure _klass8931_ _args8932_)
                  (error '"Arguments don't match object size"
                         _klass8931_
                         _fields8934_
                         _args8932_))))))
    (define make-class-instance
      (lambda (_klass8921_ . _args8922_)
        (let* ((_obj8924_
                (make-object _klass8921_ (type-descriptor-fields _klass8921_)))
               (_$e8926_ (type-descriptor-ctor _klass8921_)))
          (if _$e8926_
              ((lambda (_kons-id8929_)
                 (__constructor-init!
                  _klass8921_
                  _kons-id8929_
                  _obj8924_
                  _args8922_))
               _$e8926_)
              (__class-instance-init! _klass8921_ _obj8924_ _args8922_)))))
    (define struct-instance-init!
      (lambda (_obj8918_ . _args8919_)
        (if (let ((__tmp9833 (length _args8919_))
                  (__tmp9832
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj8918_))))
              (declare (not safe))
              (##fx< __tmp9833 __tmp9832))
            (__struct-instance-init! _obj8918_ _args8919_)
            (error '"Too many arguments for struct" _obj8918_ _args8919_))))
    (define __struct-instance-init!
      (lambda (_obj8877_ _args8878_)
        (let _lp8880_ ((_k8882_ '1) (_rest8883_ _args8878_))
          (let* ((_rest88848892_ _rest8883_)
                 (_else88868900_ (lambda () _obj8877_))
                 (_K88888906_
                  (lambda (_rest8903_ _hd8904_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj8877_ _k8882_ _hd8904_))
                    (_lp8880_
                     (let () (declare (not safe)) (##fx+ _k8882_ '1))
                     _rest8903_))))
            (if (let () (declare (not safe)) (##pair? _rest88848892_))
                (let ((_hd88898909_
                       (let () (declare (not safe)) (##car _rest88848892_)))
                      (_tl88908911_
                       (let () (declare (not safe)) (##cdr _rest88848892_))))
                  (let* ((_hd8914_ _hd88898909_) (_rest8916_ _tl88908911_))
                    (_K88888906_ _rest8916_ _hd8914_)))
                (_else88868900_))))))
    (define class-instance-init!
      (lambda (_obj8874_ . _args8875_)
        (__class-instance-init! (object-type _obj8874_) _obj8874_ _args8875_)))
    (define __class-instance-init!
      (lambda (_klass8818_ _obj8819_ _args8820_)
        (let _lp8822_ ((_rest8824_ _args8820_))
          (let* ((_rest88258835_ _rest8824_)
                 (_else88278843_
                  (lambda ()
                    (if (null? _rest8824_)
                        _obj8819_
                        (error '"Unexpected class initializer arguments"
                               _rest8824_))))
                 (_K88298855_
                  (lambda (_rest8846_ _val8847_ _key8848_)
                    (let ((_$e8850_ (class-slot-offset _klass8818_ _key8848_)))
                      (if _$e8850_
                          ((lambda (_off8853_)
                             (let ((__tmp9834
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off8853_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj8819_ __tmp9834 _val8847_))
                             (_lp8822_ _rest8846_))
                           _$e8850_)
                          (error '"No slot for keyword initializer"
                                 _klass8818_
                                 _key8848_))))))
            (if (let () (declare (not safe)) (##pair? _rest88258835_))
                (let ((_hd88308858_
                       (let () (declare (not safe)) (##car _rest88258835_)))
                      (_tl88318860_
                       (let () (declare (not safe)) (##cdr _rest88258835_))))
                  (let ((_key8863_ _hd88308858_))
                    (if (let () (declare (not safe)) (##pair? _tl88318860_))
                        (let ((_hd88328865_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl88318860_)))
                              (_tl88338867_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl88318860_))))
                          (let* ((_val8870_ _hd88328865_)
                                 (_rest8872_ _tl88338867_))
                            (_K88298855_ _rest8872_ _val8870_ _key8863_)))
                        (_else88278843_))))
                (_else88278843_))))))
    (define constructor-init!
      (lambda (_klass8813_ _kons-id8814_ _obj8815_ . _args8816_)
        (__constructor-init! _klass8813_ _kons-id8814_ _obj8815_ _args8816_)))
    (define __constructor-init!
      (lambda (_klass8803_ _kons-id8804_ _obj8805_ _args8806_)
        (let ((_$e8808_ (__find-method _klass8803_ _kons-id8804_)))
          (if _$e8808_
              ((lambda (_kons8811_)
                 (apply _kons8811_ _obj8805_ _args8806_)
                 _obj8805_)
               _$e8808_)
              (error '"Missing constructor" _klass8803_ _kons-id8804_)))))
    (define struct-copy
      (lambda (_struct8801_)
        (if (let () (declare (not safe)) (##structure? _struct8801_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct8801_))
        (let () (declare (not safe)) (##structure-copy _struct8801_))))
    (define struct->list
      (lambda (_obj8799_)
        (if (object? _obj8799_)
            (let () (declare (not safe)) (##vector->list _obj8799_))
            (error '"Not an object" _obj8799_))))
    (define class->list
      (lambda (_obj8786_)
        (if (object? _obj8786_)
            (let ((_klass8788_ (object-type _obj8786_)))
              (if (type-descriptor? _klass8788_)
                  (let ((_$e8790_ (type-descriptor-slots _klass8788_)))
                    (if _$e8790_
                        ((lambda (_slots8793_)
                           (cons _klass8788_
                                 (hash-fold
                                  (lambda (_slot8795_ _off8796_ _r8797_)
                                    (if (keyword? _slot8795_)
                                        (cons _slot8795_
                                              (cons (unchecked-field-ref
                                                     _obj8786_
                                                     _off8796_)
                                                    _r8797_))
                                        _r8797_))
                                  '()
                                  _slots8793_)))
                         _$e8790_)
                        (list _klass8788_)))
                  (error '"Not a class type" _obj8786_ _klass8788_)))
            (error '"Not an object" _obj8786_))))
    (define unchecked-field-ref
      (lambda (_obj8783_ _off8784_)
        (let ((__tmp9835 (let () (declare (not safe)) (##fx+ _off8784_ '1))))
          (declare (not safe))
          (##vector-ref _obj8783_ __tmp9835))))
    (define unchecked-field-set!
      (lambda (_obj8779_ _off8780_ _val8781_)
        (let ((__tmp9836 (let () (declare (not safe)) (##fx+ _off8780_ '1))))
          (declare (not safe))
          (##vector-set! _obj8779_ __tmp9836 _val8781_))))
    (define unchecked-slot-ref
      (lambda (_obj8776_ _slot8777_)
        (unchecked-field-ref
         _obj8776_
         (class-slot-offset (object-type _obj8776_) _slot8777_))))
    (define unchecked-slot-set!
      (lambda (_obj8772_ _slot8773_ _val8774_)
        (unchecked-field-set!
         _obj8772_
         (class-slot-offset (object-type _obj8772_) _slot8773_)
         _val8774_)))
    (define slot-ref__%
      (lambda (_obj8748_ _slot8749_ _E8750_)
        (if (object? _obj8748_)
            (let* ((_klass8752_ (object-type _obj8748_))
                   (_$e8755_
                    (if (type-descriptor? _klass8752_)
                        (class-slot-offset _klass8752_ _slot8749_)
                        '#f)))
              (if _$e8755_
                  ((lambda (_off8758_)
                     (let ((__tmp9837
                            (let ()
                              (declare (not safe))
                              (##fx+ _off8758_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj8748_ __tmp9837)))
                   _$e8755_)
                  (_E8750_ _obj8748_ _slot8749_)))
            (_E8750_ _obj8748_ _slot8749_))))
    (define slot-ref__0
      (lambda (_obj8763_ _slot8764_)
        (let ((_E8766_ __slot-error))
          (slot-ref__% _obj8763_ _slot8764_ _E8766_))))
    (define slot-ref
      (lambda _g9839_
        (let ((_g9838_ (let () (declare (not safe)) (##length _g9839_))))
          (cond ((let () (declare (not safe)) (##fx= _g9838_ 2))
                 (apply slot-ref__0 _g9839_))
                ((let () (declare (not safe)) (##fx= _g9838_ 3))
                 (apply slot-ref__% _g9839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g9839_))))))
    (define slot-set!__%
      (lambda (_obj8720_ _slot8721_ _val8722_ _E8723_)
        (if (object? _obj8720_)
            (let* ((_klass8725_ (object-type _obj8720_))
                   (_$e8728_
                    (if (type-descriptor? _klass8725_)
                        (class-slot-offset _klass8725_ _slot8721_)
                        '#f)))
              (if _$e8728_
                  ((lambda (_off8731_)
                     (let ((__tmp9840
                            (let ()
                              (declare (not safe))
                              (##fx+ _off8731_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj8720_ __tmp9840 _val8722_)))
                   _$e8728_)
                  (_E8723_ _obj8720_ _slot8721_)))
            (_E8723_ _obj8720_ _slot8721_))))
    (define slot-set!__0
      (lambda (_obj8736_ _slot8737_ _val8738_)
        (let ((_E8740_ __slot-error))
          (slot-set!__% _obj8736_ _slot8737_ _val8738_ _E8740_))))
    (define slot-set!
      (lambda _g9842_
        (let ((_g9841_ (let () (declare (not safe)) (##length _g9842_))))
          (cond ((let () (declare (not safe)) (##fx= _g9841_ 3))
                 (apply slot-set!__0 _g9842_))
                ((let () (declare (not safe)) (##fx= _g9841_ 4))
                 (apply slot-set!__% _g9842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g9842_))))))
    (define __slot-error
      (lambda (_obj8716_ _slot8717_)
        (error '"Cannot find slot" _obj8716_ _slot8717_)))
    (define call-method
      (lambda (_obj8707_ _id8708_ . _args8709_)
        (let ((_$e8711_ (method-ref _obj8707_ _id8708_)))
          (if _$e8711_
              ((lambda (_method8714_)
                 (apply _method8714_ _obj8707_ _args8709_))
               _$e8711_)
              (error '"Cannot find method" _obj8707_ _id8708_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj8704_ _id8705_)
        (if (object? _obj8704_)
            (find-method (object-type _obj8704_) _id8705_)
            '#f)))
    (define checked-method-ref
      (lambda (_obj8698_ _id8699_)
        (let ((_$e8701_ (method-ref _obj8698_ _id8699_)))
          (if _$e8701_
              _$e8701_
              (error '"Missing method" _obj8698_ _id8699_)))))
    (define bound-method-ref
      (lambda (_obj8688_ _id8689_)
        (let ((_$e8691_ (method-ref _obj8688_ _id8689_)))
          (if _$e8691_
              ((lambda (_method8694_)
                 (lambda _args8696_ (apply _method8694_ _obj8688_ _args8696_)))
               _$e8691_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj8681_ _id8682_)
        (let ((_method8684_ (checked-method-ref _obj8681_ _id8682_)))
          (lambda _args8686_ (apply _method8684_ _obj8681_ _args8686_)))))
    (define find-method
      (lambda (_klass8675_ _id8676_)
        (if (type-descriptor? _klass8675_)
            (__find-method _klass8675_ _id8676_)
            (if (let () (declare (not safe)) (##type? _klass8675_))
                (let ((_$e8678_ (builtin-method-ref _klass8675_ _id8676_)))
                  (if _$e8678_
                      _$e8678_
                      (builtin-find-method
                       (let () (declare (not safe)) (##type-super _klass8675_))
                       _id8676_)))
                '#f))))
    (define __find-method
      (lambda (_klass8664_ _id8665_)
        (let ((_$e8667_ (direct-method-ref _klass8664_ _id8665_)))
          (if _$e8667_
              _$e8667_
              (if (type-descriptor-sealed? _klass8664_)
                  '#f
                  (let ((_$e8670_ (type-descriptor-mixin _klass8664_)))
                    (if _$e8670_
                        ((lambda (_mixin8673_)
                           (mixin-find-method _mixin8673_ _id8665_))
                         _$e8670_)
                        (struct-find-method
                         (let ()
                           (declare (not safe))
                           (##type-super _klass8664_))
                         _id8665_))))))))
    (define struct-find-method
      (lambda (_klass8655_ _id8656_)
        (if (type-descriptor? _klass8655_)
            (let ((_$e8658_ (direct-method-ref _klass8655_ _id8656_)))
              (if _$e8658_
                  _$e8658_
                  (struct-find-method
                   (let () (declare (not safe)) (##type-super _klass8655_))
                   _id8656_)))
            (if (let () (declare (not safe)) (##type? _klass8655_))
                (let ((_$e8661_ (builtin-method-ref _klass8655_ _id8656_)))
                  (if _$e8661_
                      _$e8661_
                      (builtin-find-method
                       (let () (declare (not safe)) (##type-super _klass8655_))
                       _id8656_)))
                '#f))))
    (define class-find-method
      (lambda (_klass8649_ _id8650_)
        (if (type-descriptor? _klass8649_)
            (let ((_$e8652_ (direct-method-ref _klass8649_ _id8650_)))
              (if _$e8652_ _$e8652_ (mixin-method-ref _klass8649_ _id8650_)))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin8606_ _id8607_)
        (let _lp8609_ ((_rest8611_ _mixin8606_))
          (let* ((_rest86128620_ _rest8611_)
                 (_else86148628_ (lambda () '#f))
                 (_K86168637_
                  (lambda (_rest8631_ _klass8632_)
                    (let ((_$e8634_ (direct-method-ref _klass8632_ _id8607_)))
                      (if _$e8634_ _$e8634_ (_lp8609_ _rest8631_))))))
            (if (let () (declare (not safe)) (##pair? _rest86128620_))
                (let ((_hd86178640_
                       (let () (declare (not safe)) (##car _rest86128620_)))
                      (_tl86188642_
                       (let () (declare (not safe)) (##cdr _rest86128620_))))
                  (let* ((_klass8645_ _hd86178640_) (_rest8647_ _tl86188642_))
                    (_K86168637_ _rest8647_ _klass8645_)))
                (_else86148628_))))))
    (define builtin-find-method
      (lambda (_klass8600_ _id8601_)
        (if (let () (declare (not safe)) (##type? _klass8600_))
            (let ((_$e8603_ (builtin-method-ref _klass8600_ _id8601_)))
              (if _$e8603_
                  _$e8603_
                  (builtin-find-method
                   (let () (declare (not safe)) (##type-super _klass8600_))
                   _id8601_)))
            '#f)))
    (define direct-method-ref
      (lambda (_klass8592_ _id8593_)
        (let ((_$e8595_ (type-descriptor-methods _klass8592_)))
          (if _$e8595_
              ((lambda (_ht8598_) (table-ref _ht8598_ _id8593_ '#f)) _$e8595_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass8584_ _id8585_)
        (let ((_$e8587_ (type-descriptor-mixin _klass8584_)))
          (if _$e8587_
              ((lambda (_mixin8590_) (mixin-find-method _mixin8590_ _id8585_))
               _$e8587_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass8576_ _id8577_)
        (let ((_$e8579_
               (table-ref
                __builtin-type-methods
                (let () (declare (not safe)) (##type-id _klass8576_))
                '#f)))
          (if _$e8579_
              ((lambda (_mtab8582_) (table-ref _mtab8582_ _id8577_ '#f))
               _$e8579_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass8542_ _id8543_ _proc8544_ _rebind?8545_)
        (letrec ((_bind!8547_
                  (lambda (_ht8560_)
                    (if (and (not _rebind?8545_)
                             (table-ref _ht8560_ _id8543_ '#f))
                        (error '"Method already bound" _klass8542_ _id8543_)
                        (table-set! _ht8560_ _id8543_ _proc8544_)))))
          (if (procedure? _proc8544_)
              '#!void
              (error '"Bad method; expected procedure" _proc8544_))
          (if (type-descriptor? _klass8542_)
              (let ((_ht8549_ (type-descriptor-methods _klass8542_)))
                (if _ht8549_
                    (_bind!8547_ _ht8549_)
                    (let ((_ht8551_ (make-table 'test: eq?)))
                      (type-descriptor-methods-set! _klass8542_ _ht8551_)
                      (_bind!8547_ _ht8551_))))
              (if (let () (declare (not safe)) (##type? _klass8542_))
                  (let ((_ht8558_
                         (let ((_$e8553_
                                (table-ref
                                 __builtin-type-methods
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass8542_))
                                 '#f)))
                           (if _$e8553_
                               _$e8553_
                               (let ((_ht8556_ (make-table 'test: eq?)))
                                 (table-set!
                                  __builtin-type-methods
                                  (let ()
                                    (declare (not safe))
                                    (##type-id _klass8542_))
                                  _ht8556_)
                                 _ht8556_)))))
                    (_bind!8547_ _ht8558_))
                  (error '"Bad class; expected type-descriptor"
                         _klass8542_))))))
    (define bind-method!__0
      (lambda (_klass8565_ _id8566_ _proc8567_)
        (let ((_rebind?8569_ '#t))
          (bind-method!__% _klass8565_ _id8566_ _proc8567_ _rebind?8569_))))
    (define bind-method!
      (lambda _g9844_
        (let ((_g9843_ (let () (declare (not safe)) (##length _g9844_))))
          (cond ((let () (declare (not safe)) (##fx= _g9843_ 3))
                 (apply bind-method!__0 _g9844_))
                ((let () (declare (not safe)) (##fx= _g9843_ 4))
                 (apply bind-method!__% _g9844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g9844_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc8538_ _specializer8539_)
        (table-set! __method-specializers _proc8538_ _specializer8539_)))
    (define seal-class!
      (lambda (_klass8453_)
        (letrec ((_collect-methods!8455_
                  (lambda (_mtab8471_)
                    (letrec ((_merge!8473_
                              (lambda (_tab8533_)
                                (table-for-each
                                 (lambda (_id8535_ _proc8536_)
                                   (table-set! _mtab8471_ _id8535_ _proc8536_))
                                 _tab8533_)))
                             (_collect-direct-methods!8474_
                              (lambda (_klass8528_)
                                (let ((_$e8530_
                                       (type-descriptor-methods _klass8528_)))
                                  (if _$e8530_
                                      (_merge!8473_ _$e8530_)
                                      '#!void)))))
                      (let ((_$e8476_ (type-descriptor-mixin _klass8453_)))
                        (if _$e8476_
                            ((lambda (_mixin8479_)
                               (let _recur8481_ ((_rest8483_ _mixin8479_))
                                 (let* ((_rest84848492_ _rest8483_)
                                        (_else84868500_ (lambda () '#!void))
                                        (_K84888509_
                                         (lambda (_rest8503_ _klass8504_)
                                           (_recur8481_ _rest8503_)
                                           (if (type-descriptor? _klass8504_)
                                               (_collect-direct-methods!8474_
                                                _klass8504_)
                                               (let ((_$e8506_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass8504_))
                                                          (table-ref
                                                           __builtin-type-methods
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##type-id
                                                              _klass8504_))
                                                           '#f)
                                                          '#f)))
                                                 (if _$e8506_
                                                     (_merge!8473_ _$e8506_)
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest84848492_))
                                       (let ((_hd84898512_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest84848492_)))
                                             (_tl84908514_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest84848492_))))
                                         (let* ((_klass8517_ _hd84898512_)
                                                (_rest8519_ _tl84908514_))
                                           (_K84888509_
                                            _rest8519_
                                            _klass8517_)))
                                       '#!void))))
                             _$e8476_)
                            (let _recur8521_ ((_klass8523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass8453_))))
                              (if (type-descriptor? _klass8523_)
                                  (begin
                                    (_recur8521_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _klass8523_)))
                                    (_collect-direct-methods!8474_
                                     _klass8523_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass8523_))
                                      (begin
                                        (_recur8521_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super _klass8523_)))
                                        (let ((_$e8525_
                                               (table-ref
                                                __builtin-type-methods
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass8523_))
                                                '#f)))
                                          (if _$e8525_
                                              (_merge!8473_ _$e8525_)
                                              '#!void)))
                                      '#!void)))))
                      (_collect-direct-methods!8474_ _klass8453_)))))
          (if (type-descriptor? _klass8453_)
              (if (type-descriptor-sealed? _klass8453_)
                  '#!void
                  (begin
                    (if (assgetq 'final: (type-descriptor-plist _klass8453_))
                        '#!void
                        (error '"Cannot seal non-final class" _klass8453_))
                    (let ((_vtab8457_ (make-table 'test: eq?))
                          (_mtab8458_ (make-table 'test: eq?)))
                      (_collect-methods!8455_ _mtab8458_)
                      (table-for-each
                       (lambda (_id8460_ _proc8461_)
                         (let ((_$e8463_
                                (table-ref
                                 __method-specializers
                                 _proc8461_
                                 '#f)))
                           (if _$e8463_
                               ((lambda (_specializer8466_)
                                  (let ((_proc8468_
                                         (_specializer8466_ _klass8453_))
                                        (_gid8469_
                                         (make-symbol
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _klass8453_))
                                          '"::["
                                          _id8460_
                                          '"]")))
                                    (eval (cons 'def
                                                (cons _gid8469_
                                                      (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _proc8468_ '()))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (table-set!
                                     _vtab8457_
                                     _id8460_
                                     _proc8468_)))
                                _$e8463_)
                               (table-set! _vtab8457_ _id8460_ _proc8461_))))
                       _mtab8458_)
                      (type-descriptor-methods-set! _klass8453_ _vtab8457_)
                      (type-descriptor-seal! _klass8453_))))
              '#!void))))
    (define next-method
      (lambda (_subklass8390_ _obj8391_ _id8392_)
        (let ((_klass8394_ (object-type _obj8391_))
              (_type-id8395_
               (let () (declare (not safe)) (##type-id _subklass8390_))))
          (if (type-descriptor? _klass8394_)
              (let ((_$e8397_ (type-descriptor-mixin _klass8394_)))
                (if _$e8397_
                    ((lambda (_mixin8400_)
                       (let _lp8402_ ((_rest8404_
                                       (cons _klass8394_ _mixin8400_)))
                         (let* ((_rest84058413_ _rest8404_)
                                (_else84078421_ (lambda () '#f))
                                (_K84098427_
                                 (lambda (_rest8424_ _klass8425_)
                                   (if (eq? _type-id8395_
                                            (let ()
                                              (declare (not safe))
                                              (##type-id _klass8425_)))
                                       (mixin-find-method _rest8424_ _id8392_)
                                       (_lp8402_ _rest8424_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest84058413_))
                               (let ((_hd84108430_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest84058413_)))
                                     (_tl84118432_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest84058413_))))
                                 (let* ((_klass8435_ _hd84108430_)
                                        (_rest8437_ _tl84118432_))
                                   (_K84098427_ _rest8437_ _klass8435_)))
                               (_else84078421_)))))
                     _$e8397_)
                    (let _lp8439_ ((_klass8441_ _klass8394_))
                      (if (eq? _type-id8395_
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass8441_)))
                          (struct-find-method
                           (let ()
                             (declare (not safe))
                             (##type-super _klass8441_))
                           _id8392_)
                          (let ((_$e8443_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass8441_))))
                            (if _$e8443_ (_lp8439_ _$e8443_) '#f))))))
              (if (let () (declare (not safe)) (##type? _klass8394_))
                  (let _lp8446_ ((_klass8448_ _klass8394_))
                    (if (eq? _type-id8395_
                             (let ()
                               (declare (not safe))
                               (##type-id _klass8448_)))
                        (builtin-find-method
                         (let ()
                           (declare (not safe))
                           (##type-super _klass8448_))
                         _id8392_)
                        (let ((_$e8450_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass8448_))))
                          (if _$e8450_ (_lp8446_ _$e8450_) '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass8380_ _obj8381_ _id8382_ . _args8383_)
        (let ((_$e8385_ (next-method _subklass8380_ _obj8381_ _id8382_)))
          (if _$e8385_
              ((lambda (_methodf8388_)
                 (apply _methodf8388_ _obj8381_ _args8383_))
               _$e8385_)
              (error '"Cannot find next method" _obj8381_ _id8382_)))))
    (define write-style (lambda (_we8378_) (macro-writeenv-style _we8378_)))
    (define write-object
      (lambda (_we8370_ _obj8371_)
        (let ((_$e8373_ (method-ref _obj8371_ ':wr)))
          (if _$e8373_
              ((lambda (_method8376_) (_method8376_ _obj8371_ _we8370_))
               _$e8373_)
              (let ()
                (declare (not safe))
                (##default-wr _we8370_ _obj8371_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
