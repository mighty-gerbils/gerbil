(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707620169)
  (begin
    (define type-id
      (lambda (_klass84600_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84600_))
            (let () (declare (not safe)) (##type-id _klass84600_))
            (if (let () (declare (not safe)) (not _klass84600_))
                '#f
                (error '"not a type descriptor" _klass84600_)))))
    (define type=?
      (lambda (_x84597_ _y84598_)
        (let ((__tmp89094 (let () (declare (not safe)) (type-id _x84597_)))
              (__tmp89093 (let () (declare (not safe)) (type-id _y84598_))))
          (declare (not safe))
          (eq? __tmp89094 __tmp89093))))
    (define type-descriptor?
      (lambda (_klass84595_)
        (if (let () (declare (not safe)) (##type? _klass84595_))
            (let ((__tmp89095
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84595_))))
              (declare (not safe))
              (eq? __tmp89095 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84593_)
        (let ((__tmp89096
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84593_))))
          (declare (not safe))
          (assgetq 'struct: __tmp89096))))
    (define type-final?
      (lambda (_klass84591_)
        (let ((__tmp89097
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84591_))))
          (declare (not safe))
          (assgetq 'final: __tmp89097))))
    (define struct-type?
      (lambda (_klass84589_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84589_))
            (let () (declare (not safe)) (type-struct? _klass84589_))
            '#f)))
    (define class-type?
      (lambda (_klass84587_)
        (let () (declare (not safe)) (type-descriptor? _klass84587_))))
    (define properties-form
      (lambda (_properties84553_)
        (map (lambda (_e8455484556_)
               (let* ((_g8455884565_ _e8455484556_)
                      (_E8456084569_
                       (lambda () (error '"No clause matching" _g8455884565_)))
                      (_K8456184575_
                       (lambda (_val84572_ _key84573_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84573_ 'direct-supers:))
                             (let ((__tmp89098 (map type-id _val84572_)))
                               (declare (not safe))
                               (cons _key84573_ __tmp89098))
                             (let ()
                               (declare (not safe))
                               (cons _key84573_ _val84572_))))))
                 (if (let () (declare (not safe)) (##pair? _g8455884565_))
                     (let ((_hd8456284578_
                            (let ()
                              (declare (not safe))
                              (##car _g8455884565_)))
                           (_tl8456384580_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8455884565_))))
                       (let* ((_key84583_ _hd8456284578_)
                              (_val84585_ _tl8456384580_))
                         (declare (not safe))
                         (_K8456184575_ _val84585_ _key84583_)))
                     (let () (declare (not safe)) (_E8456084569_)))))
             _properties84553_)))
    (define make-type-descriptor
      (lambda (_type-id84466_
               _type-name84467_
               _type-super84468_
               _precedence-list84469_
               _all-slots84470_
               _properties84471_
               _constructor84472_
               _slot-table84473_
               _methods84474_)
        (letrec ((_make-props!84476_
                  (lambda (_key84522_)
                    (letrec* ((_ht84524_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84525_
                               (lambda (_ht84546_ _slots84547_)
                                 (for-each
                                  (lambda (_g8454884550_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84546_
                                       _g8454884550_
                                       '#t)))
                                  _slots84547_)))
                              (_put-alist!84526_
                               (lambda (_ht84535_ _key84536_ _alist84537_)
                                 (let ((_$e84539_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84536_ _alist84537_))))
                                   (if _$e84539_
                                       ((lambda (_g8454184543_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84525_
                                             _ht84535_
                                             _g8454184543_)))
                                        _$e84539_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84526_
                         _ht84524_
                         _key84522_
                         _properties84471_))
                      (for-each
                       (lambda (_mixin84528_)
                         (let ((_alist84530_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84528_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84530_))
                                   (let ((__tmp89100
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84522_
                                                     _alist84530_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89100)))
                               (let ((__tmp89099
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84528_))))
                                 (declare (not safe))
                                 (_put-slots!84525_ _ht84524_ __tmp89099))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84526_
                                  _ht84524_
                                  _key84522_
                                  _alist84530_)))))
                       _precedence-list84469_)
                      _ht84524_))))
          (let* ((_transparent?84478_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84471_)))
                 (_all-slots-printable?84483_
                  (let ((_$e84480_ _transparent?84478_))
                    (if _$e84480_
                        _$e84480_
                        (let ((__tmp89101
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84471_))))
                          (declare (not safe))
                          (eq? '#t __tmp89101)))))
                 (_printable84485_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84483_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84476_ 'print:))
                      '#f))
                 (_all-slots-equalable?84490_
                  (let ((_$e84487_ _transparent?84478_))
                    (if _$e84487_
                        _$e84487_
                        (let ((__tmp89102
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84471_))))
                          (declare (not safe))
                          (eq? '#t __tmp89102)))))
                 (_equalable84492_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84490_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84476_ 'equal:))
                      '#f))
                 (_first-new-field84494_
                  (if _type-super84468_
                      (let ((__tmp89103
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84468_))))
                        (declare (not safe))
                        (##vector-length __tmp89103))
                      '1))
                 (_field-info-length84496_
                  (let ((__tmp89104
                         (let ((__tmp89105
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84470_))))
                           (declare (not safe))
                           (##fx- __tmp89105 _first-new-field84494_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89104)))
                 (_field-info84498_ (make-vector _field-info-length84496_ '#f))
                 (_opaque?84503_
                  (let ((_$e84500_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84490_))))
                    (if _$e84500_
                        _$e84500_
                        (if _type-super84468_
                            (let ((__tmp89106
                                   (let ((__tmp89107
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84468_))))
                                     (declare (not safe))
                                     (##fxand __tmp89107 '1))))
                              (declare (not safe))
                              (##fx= __tmp89106 '1))
                            '#f)))))
            (let _loop84506_ ((_i84508_ _first-new-field84494_) (_j84509_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84509_ _field-info-length84496_))
                  (let* ((_slot84511_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84470_ _i84508_)))
                         (_flags84519_
                          (if _transparent?84478_
                              '0
                              (let ((__tmp89109
                                     (if (or _all-slots-printable?84483_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84485_
                                                _slot84511_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89108
                                     (if (or _all-slots-equalable?84490_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84492_
                                                _slot84511_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89109 __tmp89108)))))
                    (vector-set! _field-info84498_ _j84509_ _slot84511_)
                    (vector-set!
                     _field-info84498_
                     (let () (declare (not safe)) (##fx+ _j84509_ '1))
                     _flags84519_)
                    (let ((__tmp89111
                           (let () (declare (not safe)) (##fx+ _i84508_ '1)))
                          (__tmp89110
                           (let () (declare (not safe)) (##fx+ _j84509_ '3))))
                      (declare (not safe))
                      (_loop84506_ __tmp89111 __tmp89110)))
                  '#!void))
            (let ((__tmp89112 (if _opaque?84503_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84466_
               _type-name84467_
               __tmp89112
               _type-super84468_
               _field-info84498_
               _precedence-list84469_
               _all-slots84470_
               _slot-table84473_
               _properties84471_
               _constructor84472_
               _methods84474_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84464_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84464_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84462_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84462_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84460_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84460_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84458_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84458_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84456_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84456_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84454_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84454_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84451_ _ht84452_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84451_
           _ht84452_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84449_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84449_))))))
    (define type-descriptor-fields
      (lambda (_klass84447_)
        (let ((__tmp89113
               (let ((__tmp89114
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84447_))))
                 (declare (not safe))
                 (##vector-length __tmp89114))))
          (declare (not safe))
          (##fx- __tmp89113 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84445_)
        (let ((__tmp89115
               (let () (declare (not safe)) (##type-flags _klass84445_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89115))))
    (define type-descriptor-seal!
      (lambda (_klass84443_)
        (let ((__tmp89116
               (let ((__tmp89118
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89117
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84443_))))
                 (declare (not safe))
                 (##fxior __tmp89118 __tmp89117))))
          (declare (not safe))
          (##structure-set!
           _klass84443_
           __tmp89116
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84436_
               _name84437_
               _super84438_
               _direct-slots84439_
               _properties84440_
               _constructor84441_)
        (let ((__tmp89121
               (if _super84438_
                   (let () (declare (not safe)) (cons _super84438_ '()))
                   '()))
              (__tmp89119
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84440_))
                   _properties84440_
                   (let ((__tmp89120
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp89120 _properties84440_)))))
          (declare (not safe))
          (make-class-type
           _id84436_
           _name84437_
           __tmp89121
           _direct-slots84439_
           __tmp89119
           _constructor84441_))))
    (define make-struct-predicate
      (lambda (_klass84424_)
        (let ((_tid84426_
               (let () (declare (not safe)) (##type-id _klass84424_))))
          (if (let () (declare (not safe)) (type-final? _klass84424_))
              (lambda (_g8442784429_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8442784429_ _tid84426_)))
              (lambda (_g8443184433_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8443184433_ _tid84426_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84408_ _slot84409_)
        (let ((_$e84411_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84408_ _slot84409_))))
          (if _$e84411_
              ((lambda (_off84414_)
                 (if (let () (declare (not safe)) (type-final? _klass84408_))
                     (lambda (_g8441584417_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _g8441584417_
                          _off84414_
                          _klass84408_
                          '#f)))
                     (lambda (_g8441984421_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _g8441984421_
                          _off84414_
                          _klass84408_
                          '#f)))))
               _$e84411_)
              (error '"unknown slot"
                     'class:
                     _klass84408_
                     'slot:
                     _slot84409_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84386_ _slot84387_)
        (let ((_$e84389_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84386_ _slot84387_))))
          (if _$e84389_
              ((lambda (_off84392_)
                 (if (let () (declare (not safe)) (type-final? _klass84386_))
                     (lambda (_g8439384396_ _g8439484398_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _g8439384396_
                          _g8439484398_
                          _off84392_
                          _klass84386_
                          '#f)))
                     (lambda (_g8440084403_ _g8440184405_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _g8440084403_
                          _g8440184405_
                          _off84392_
                          _klass84386_
                          '#f)))))
               _$e84389_)
              (error '"unknown slot"
                     'class:
                     _klass84386_
                     'slot:
                     _slot84387_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84374_ _slot84375_)
        (let ((_$e84377_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84374_ _slot84375_))))
          (if _$e84377_
              ((lambda (_off84380_)
                 (lambda (_g8438184383_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _g8438184383_
                      _off84380_
                      _klass84374_
                      '#f))))
               _$e84377_)
              (error '"unknown slot"
                     'class:
                     _klass84374_
                     'slot:
                     _slot84375_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84363_ _slot84364_)
        (let ((_$e84366_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84363_ _slot84364_))))
          (if _$e84366_
              ((lambda (_off84369_)
                 (lambda (_obj84371_ _val84372_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84371_
                      _val84372_
                      _off84369_
                      _klass84363_
                      '#f))))
               _$e84366_)
              (error '"unknown slot"
                     'class:
                     _klass84363_
                     'slot:
                     _slot84364_)))))
    (define make-final-field-accessor
      (lambda (_klass84357_ _slot84358_ _field84359_)
        (lambda (_obj84361_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84361_
             _field84359_
             _klass84357_
             _slot84358_)))))
    (define make-struct-field-accessor
      (lambda (_klass84351_ _slot84352_ _field84353_)
        (lambda (_obj84355_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84355_
             _field84353_
             _klass84351_
             _slot84352_)))))
    (define make-final-field-mutator
      (lambda (_klass84344_ _slot84345_ _field84346_)
        (lambda (_obj84348_ _val84349_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84348_
             _val84349_
             _field84346_
             _klass84344_
             _slot84345_)))))
    (define make-struct-field-mutator
      (lambda (_klass84337_ _slot84338_ _field84339_)
        (lambda (_obj84341_ _val84342_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84341_
             _val84342_
             _field84339_
             _klass84337_
             _slot84338_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84331_ _slot84332_ _field84333_)
        (lambda (_obj84335_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84335_
             _field84333_
             _klass84331_
             _slot84332_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84324_ _slot84325_ _field84326_)
        (lambda (_obj84328_ _val84329_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84328_
             _val84329_
             _field84326_
             _klass84324_
             _slot84325_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84315_ _maybe-super-struct84316_)
        (let ((_maybe-super-struct-id84318_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84316_))))
          (let _lp84320_ ((_super-struct84322_ _maybe-sub-struct84315_))
            (if (let () (declare (not safe)) (not _super-struct84322_))
                '#f
                (if (let ((__tmp89123
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84322_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84318_ __tmp89123))
                    '#t
                    (let ((__tmp89122
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84322_))))
                      (declare (not safe))
                      (_lp84320_ __tmp89122))))))))
    (define base-struct/1
      (lambda (_klass84313_)
        (if (let () (declare (not safe)) (struct-type? _klass84313_))
            _klass84313_
            (if (let () (declare (not safe)) (class-type? _klass84313_))
                (let () (declare (not safe)) (##type-super _klass84313_))
                (if (let () (declare (not safe)) (not _klass84313_))
                    '#f
                    (error '"not a class or false" _klass84313_))))))
    (define base-struct/2
      (lambda (_klass184301_ _klass284302_)
        (let ((_s184304_
               (let () (declare (not safe)) (base-struct/1 _klass184301_)))
              (_s284305_
               (let () (declare (not safe)) (base-struct/1 _klass284302_))))
          (if (or (let () (declare (not safe)) (not _s184304_))
                  (and _s284305_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184304_ _s284305_))))
              _s284305_
              (if (or (let () (declare (not safe)) (not _s284305_))
                      (and _s184304_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284305_ _s184304_))))
                  _s184304_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184301_
                         _klass284302_
                         _s184304_
                         _s284305_))))))
    (define base-struct/list
      (lambda (_all-supers84185_)
        (let* ((_all-supers8418684211_ _all-supers84185_)
               (_E8419184215_
                (lambda ()
                  (error '"No clause matching" _all-supers8418684211_))))
          (let ((_K8420984298_ (lambda () '#f))
                (_K8420684284_
                 (lambda (_x84282_)
                   (let () (declare (not safe)) (base-struct/1 _x84282_))))
                (_K8420184261_
                 (lambda (_y84258_ _x84259_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84259_ _y84258_))))
                (_K8419284222_
                 (lambda (_y84219_ _x84220_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84220_ _y84219_)))))
            (let* ((___match8909089091_
                    (lambda (_hd8419384225_ _tl8419484227_)
                      (let ((_x84230_ _hd8419384225_))
                        (letrec ((_splice-rest8419684232_
                                  (lambda (_rest8420084239_ _y84241_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8420084239_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8419284222_ _y84241_ _x84230_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8419184215_)))))
                                 (_splice-try8419884234_
                                  (lambda (_hd8419984243_
                                           _rest8420084245_
                                           _y8419584246_)
                                    (let ((_y84249_ _hd8419984243_))
                                      (let ((__tmp89125
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8420084245_)))
                                            (__tmp89124
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84249_ _y8419584246_))))
                                        (declare (not safe))
                                        (_splice-loop8419784236_
                                         __tmp89125
                                         __tmp89124)))))
                                 (_splice-loop8419784236_
                                  (lambda (_rest8420084251_ _y8419584252_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8420084251_))
                                        (let ((__tmp89127
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8420084251_))))
                                          (declare (not safe))
                                          (_splice-try8419884234_
                                           __tmp89127
                                           _rest8420084251_
                                           _y8419584252_))
                                        (let ((__tmp89126
                                               (reverse _y8419584252_)))
                                          (declare (not safe))
                                          (_splice-rest8419684232_
                                           _rest8420084251_
                                           __tmp89126))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8419784236_ _tl8419484227_ '()))))))
                   (_try-match8418884294_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8418684211_))
                          (let ((_tl8420884289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8418684211_)))
                                (_hd8420784287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8418684211_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8420884289_))
                                (let ((_x84292_ _hd8420784287_))
                                  (declare (not safe))
                                  (base-struct/1 _x84292_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8420884289_))
                                    (let ((_tl8420584273_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8420884289_)))
                                          (_hd8420484271_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8420884289_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8420584273_))
                                          (let ((_x84269_ _hd8420784287_)
                                                (_y84276_ _hd8420484271_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8420184261_
                                               _y84276_
                                               _x84269_)))
                                          (___match8909089091_
                                           _hd8420784287_
                                           _tl8420884289_)))
                                    (___match8909089091_
                                     _hd8420784287_
                                     _tl8420884289_))))
                          (let () (declare (not safe)) (_E8419184215_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8418684211_))
                  (let () (declare (not safe)) (_K8420984298_))
                  (let () (declare (not safe)) (_try-match8418884294_))))))))
    (define base-struct
      (lambda _all-supers84183_
        (let () (declare (not safe)) (base-struct/list _all-supers84183_))))
    (define find-super-ctor
      (lambda (_super84181_)
        (let () (declare (not safe)) (find-super-constructor _super84181_))))
    (define find-super-constructor
      (lambda (_super84133_)
        (let _lp84135_ ((_rest84137_ _super84133_) (_constructor84138_ '#f))
          (let* ((_rest8413984147_ _rest84137_)
                 (_else8414184155_ (lambda () _constructor84138_))
                 (_K8414384169_
                  (lambda (_rest84158_ _hd84159_)
                    (let ((_$e84161_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84159_))))
                      (if _$e84161_
                          ((lambda (_xconstructor84164_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84138_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84138_
                                            _xconstructor84164_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84135_ _rest84158_ _xconstructor84164_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84138_
                                        _xconstructor84164_)))
                           _$e84161_)
                          (let ()
                            (declare (not safe))
                            (_lp84135_ _rest84158_ _constructor84138_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8413984147_))
                (let ((_hd8414484172_
                       (let () (declare (not safe)) (##car _rest8413984147_)))
                      (_tl8414584174_
                       (let () (declare (not safe)) (##cdr _rest8413984147_))))
                  (let* ((_hd84177_ _hd8414484172_)
                         (_rest84179_ _tl8414584174_))
                    (declare (not safe))
                    (_K8414384169_ _rest84179_ _hd84177_)))
                (let () (declare (not safe)) (_else8414184155_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84109_ _direct-slots84110_)
        (let* ((_next-slot84112_ '1)
               (_slot-table84114_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84116_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84120_
                (lambda (_slot84118_)
                  (if (let () (declare (not safe)) (symbol? _slot84118_))
                      '#!void
                      (error '"invalid slot name" _slot84118_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84114_ _slot84118_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84114_
                           _slot84118_
                           _next-slot84112_))
                        (let ((__tmp89128 (symbol->keyword _slot84118_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84114_
                           __tmp89128
                           _next-slot84112_))
                        (set! _r-slots84116_
                              (let ()
                                (declare (not safe))
                                (cons _slot84118_ _r-slots84116_)))
                        (set! _next-slot84112_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84112_ '1)))))))
               (_process-slots84126_
                (lambda (_g8412184123_)
                  (for-each _process-slot84120_ _g8412184123_))))
          (for-each
           (lambda (_mixin84129_)
             (let ((__tmp89129
                    (let ((__tmp89130
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84129_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89130 '()))))
               (declare (not safe))
               (_process-slots84126_ __tmp89129)))
           (reverse _class-precedence-list84109_))
          (let ()
            (declare (not safe))
            (_process-slots84126_ _direct-slots84110_))
          (let ((_all-slots84131_ (list->vector (reverse _r-slots84116_))))
            (values _all-slots84131_ _slot-table84114_)))))
    (define make-class-type
      (lambda (_id84072_
               _name84073_
               _direct-supers84074_
               _direct-slots84075_
               _properties84076_
               _constructor84077_)
        (let ((_$e84081_
               (let ((__tmp89131
                      (lambda (_klass84079_)
                        (let ((__tmp89132
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84079_))))
                          (declare (not safe))
                          (not __tmp89132)))))
                 (declare (not safe))
                 (find __tmp89131 _direct-supers84074_))))
          (if _$e84081_
              ((lambda (_g8408384085_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8408384085_))
               _$e84081_)
              (let ((_$e84088_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84074_))))
                (if _$e84088_
                    ((lambda (_g8409084092_)
                       (error '"Cannot extend final class" _g8409084092_))
                     _$e84088_)
                    '#!void))))
        (let ((_g89133_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84074_))))
          (begin
            (let ((_g89134_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89133_) (##vector-length _g89133_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89134_ 2)))
                  (error "Context expects 2 values" _g89134_)))
            (let ((_precedence-list84095_
                   (let () (declare (not safe)) (##vector-ref _g89133_ 0)))
                  (_struct-super84096_
                   (let () (declare (not safe)) (##vector-ref _g89133_ 1))))
              (let ((_g89135_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84095_
                        _direct-slots84075_))))
                (begin
                  (let ((_g89136_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89135_)
                               (##vector-length _g89135_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89136_ 2)))
                        (error "Context expects 2 values" _g89136_)))
                  (let ((_all-slots84098_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89135_ 0)))
                        (_slot-table84099_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89135_ 1))))
                    (let* ((_properties84101_
                            (let ((__tmp89139
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84075_)))
                                  (__tmp89137
                                   (let ((__tmp89138
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84074_))))
                                     (declare (not safe))
                                     (cons __tmp89138 _properties84076_))))
                              (declare (not safe))
                              (cons __tmp89139 __tmp89137)))
                           (_constructor*84106_
                            (let ((_$e84103_ _constructor84077_))
                              (if _$e84103_
                                  _$e84103_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84074_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84072_
                         _name84073_
                         _struct-super84096_
                         _precedence-list84095_
                         _all-slots84098_
                         _properties84101_
                         _constructor*84106_
                         _slot-table84099_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84070_)
        (let ((__tmp89140
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84070_))))
          (declare (not safe))
          (cons _klass84070_ __tmp89140))))
    (define compute-precedence-list
      (lambda (_direct-supers84068_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84068_))))
    (define make-class-predicate
      (lambda (_klass84058_)
        (if (let () (declare (not safe)) (type-final? _klass84058_))
            (lambda (_g8405984061_)
              (let ((__tmp89141
                     (let () (declare (not safe)) (##type-id _klass84058_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8405984061_ __tmp89141)))
            (lambda (_g8406384065_)
              (let ()
                (declare (not safe))
                (class-instance? _klass84058_ _g8406384065_))))))
    (define if-class-slot-field
      (lambda (_klass84047_
               _slot84048_
               _if-final84049_
               _if-struct84050_
               _if-struct-field84051_
               _if-class-slot84052_)
        (let ((_field84054_
               (let ((__tmp89142
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84047_))))
                 (declare (not safe))
                 (table-ref __tmp89142 _slot84048_ '#f))))
          (if (let () (declare (not safe)) (not _field84054_))
              (error '"unknown slot" 'class: _klass84047_ 'slot: _slot84048_)
              (if (let () (declare (not safe)) (type-final? _klass84047_))
                  (_if-final84049_ _klass84047_ _slot84048_ _field84054_)
                  (if (let () (declare (not safe)) (type-struct? _klass84047_))
                      (_if-struct84050_ _klass84047_ _slot84048_ _field84054_)
                      (if (let ((_strukt84056_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84047_))))
                            (and _strukt84056_
                                 (let ((__tmp89143
                                        (let ((__tmp89144
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84056_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89144))))
                                   (declare (not safe))
                                   (##fx< _field84054_ __tmp89143))))
                          (_if-struct-field84051_
                           _klass84047_
                           _slot84048_
                           _field84054_)
                          (_if-class-slot84052_
                           _klass84047_
                           _slot84048_
                           _field84054_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84044_ _slot84045_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84044_
           _slot84045_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object84028_ _class84029_ _slot84030_)
        (apply error
               '"not an instance"
               'object:
               _object84028_
               'class:
               _class84029_
               (if _slot84030_
                   (let ((__tmp89145
                          (let ()
                            (declare (not safe))
                            (cons _slot84030_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89145))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84035_ _class84036_)
        (let ((_slot84038_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84035_ _class84036_ _slot84038_))))
    (define not-an-instance
      (lambda _g89147_
        (let ((_g89146_ (let () (declare (not safe)) (##length _g89147_))))
          (cond ((let () (declare (not safe)) (##fx= _g89146_ 2))
                 (apply (lambda (_object84035_ _class84036_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84035_ _class84036_)))
                        _g89147_))
                ((let () (declare (not safe)) (##fx= _g89146_ 3))
                 (apply (lambda (_object84040_ _class84041_ _slot84042_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84040_
                             _class84041_
                             _slot84042_)))
                        _g89147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89147_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass84021_ _slot84022_ _field84023_)
        (lambda (_obj84025_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84021_ _obj84025_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84025_ _field84023_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84025_ _klass84021_ _slot84022_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84015_ _slot84016_ _field84017_)
        (lambda (_obj84019_)
          (if (let ((__tmp89148
                     (let () (declare (not safe)) (##type-id _klass84015_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84019_ __tmp89148))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84019_ _field84017_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84015_ _obj84019_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84019_ _slot84016_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84019_
                     _klass84015_
                     _slot84016_)))))))
    (define make-class-slot-mutator
      (lambda (_klass84012_ _slot84013_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84012_
           _slot84013_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass84005_ _slot84006_ _field84007_)
        (lambda (_obj84009_ _val84010_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84005_ _obj84009_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84009_ _field84007_ _val84010_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84009_ _klass84005_ _slot84006_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83998_ _slot83999_ _field84000_)
        (lambda (_obj84002_ _val84003_)
          (if (let ((__tmp89149
                     (let () (declare (not safe)) (##type-id _klass83998_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84002_ __tmp89149))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84002_ _field84000_ _val84003_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83998_ _obj84002_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84002_ _slot83999_ _val84003_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84002_
                     _klass83998_
                     _slot83999_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83995_ _slot83996_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83995_
           _slot83996_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83989_ _slot83990_ _field83991_)
        (lambda (_obj83993_)
          (if (let ((__tmp89150
                     (let () (declare (not safe)) (##type-id _klass83989_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83993_ __tmp89150))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83993_ _field83991_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83993_ _slot83990_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83986_ _slot83987_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83986_
           _slot83987_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83979_ _slot83980_ _field83981_)
        (lambda (_obj83983_ _val83984_)
          (if (let ((__tmp89151
                     (let () (declare (not safe)) (##type-id _klass83979_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83983_ __tmp89151))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83983_ _field83981_ _val83984_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83983_ _slot83980_ _val83984_))))))
    (define class-slot-offset
      (lambda (_klass83976_ _slot83977_)
        (let ((__tmp89152
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83976_))))
          (declare (not safe))
          (table-ref __tmp89152 _slot83977_ '#f))))
    (define class-slot-ref
      (lambda (_klass83970_ _obj83971_ _slot83972_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83970_ _obj83971_))
            (let ((_off83974_
                   (let ((__tmp89153
                          (let ()
                            (declare (not safe))
                            (object-type _obj83971_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89153 _slot83972_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83971_
               _off83974_
               _klass83970_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83971_ _klass83970_)))))
    (define class-slot-set!
      (lambda (_klass83963_ _obj83964_ _slot83965_ _val83966_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83963_ _obj83964_))
            (let ((_off83968_
                   (let ((__tmp89154
                          (let ()
                            (declare (not safe))
                            (object-type _obj83964_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89154 _slot83965_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83964_
               _val83966_
               _off83968_
               _klass83963_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83964_ _klass83963_)))))
    (define unchecked-field-ref
      (lambda (_obj83960_ _off83961_)
        (let ((__tmp89155
               (let () (declare (not safe)) (##structure-type _obj83960_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83960_ _off83961_ __tmp89155 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83956_ _off83957_ _val83958_)
        (let ((__tmp89156
               (let () (declare (not safe)) (##structure-type _obj83956_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83956_
           _val83958_
           _off83957_
           __tmp89156
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83953_ _slot83954_)
        (let ((__tmp89157
               (let ((__tmp89158
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83953_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89158 _slot83954_))))
          (declare (not safe))
          (unchecked-field-ref _obj83953_ __tmp89157))))
    (define unchecked-slot-set!
      (lambda (_obj83949_ _slot83950_ _val83951_)
        (let ((__tmp89159
               (let ((__tmp89160
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83949_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89160 _slot83950_))))
          (declare (not safe))
          (unchecked-field-set! _obj83949_ __tmp89159 _val83951_))))
    (define slot-ref__%
      (lambda (_obj83925_ _slot83926_ _E83927_)
        (if (let () (declare (not safe)) (object? _obj83925_))
            (let* ((_klass83929_
                    (let () (declare (not safe)) (object-type _obj83925_)))
                   (_$e83932_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83929_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83929_ _slot83926_))
                        '#f)))
              (if _$e83932_
                  ((lambda (_off83935_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83925_ _off83935_)))
                   _$e83932_)
                  (_E83927_ _obj83925_ _slot83926_)))
            (_E83927_ _obj83925_ _slot83926_))))
    (define slot-ref__0
      (lambda (_obj83940_ _slot83941_)
        (let ((_E83943_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83940_ _slot83941_ _E83943_))))
    (define slot-ref
      (lambda _g89162_
        (let ((_g89161_ (let () (declare (not safe)) (##length _g89162_))))
          (cond ((let () (declare (not safe)) (##fx= _g89161_ 2))
                 (apply (lambda (_obj83940_ _slot83941_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83940_ _slot83941_)))
                        _g89162_))
                ((let () (declare (not safe)) (##fx= _g89161_ 3))
                 (apply (lambda (_obj83945_ _slot83946_ _E83947_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83945_ _slot83946_ _E83947_)))
                        _g89162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89162_))))))
    (define slot-set!__%
      (lambda (_obj83897_ _slot83898_ _val83899_ _E83900_)
        (if (let () (declare (not safe)) (object? _obj83897_))
            (let* ((_klass83902_
                    (let () (declare (not safe)) (object-type _obj83897_)))
                   (_$e83905_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83902_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83902_ _slot83898_))
                        '#f)))
              (if _$e83905_
                  ((lambda (_off83908_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83897_
                        _off83908_
                        _val83899_)))
                   _$e83905_)
                  (_E83900_ _obj83897_ _slot83898_)))
            (_E83900_ _obj83897_ _slot83898_))))
    (define slot-set!__0
      (lambda (_obj83913_ _slot83914_ _val83915_)
        (let ((_E83917_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83913_ _slot83914_ _val83915_ _E83917_))))
    (define slot-set!
      (lambda _g89164_
        (let ((_g89163_ (let () (declare (not safe)) (##length _g89164_))))
          (cond ((let () (declare (not safe)) (##fx= _g89163_ 3))
                 (apply (lambda (_obj83913_ _slot83914_ _val83915_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83913_ _slot83914_ _val83915_)))
                        _g89164_))
                ((let () (declare (not safe)) (##fx= _g89163_ 4))
                 (apply (lambda (_obj83919_ _slot83920_ _val83921_ _E83922_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83919_
                             _slot83920_
                             _val83921_
                             _E83922_)))
                        _g89164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89164_))))))
    (define __slot-error
      (lambda (_obj83893_ _slot83894_)
        (error '"Cannot find slot" 'object: _obj83893_ 'slot: _slot83894_)))
    (define subclass?
      (lambda (_maybe-sub-class83883_ _maybe-super-class83884_)
        (let* ((_maybe-super-class-id83886_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83884_)))
               (_$e83888_
                (let ((__tmp89165
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83883_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83886_ __tmp89165))))
          (if _$e83888_
              _$e83888_
              (let ((__tmp89167
                     (lambda (_super-class83891_)
                       (let ((__tmp89168
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83891_))))
                         (declare (not safe))
                         (eq? __tmp89168 _maybe-super-class-id83886_))))
                    (__tmp89166
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83883_))))
                (declare (not safe))
                (ormap1 __tmp89167 __tmp89166))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83880_ _obj83881_)
        (let ((__tmp89169
               (let () (declare (not safe)) (##type-id _klass83880_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83881_ __tmp89169))))
    (define struct-instance?
      (lambda (_klass83877_ _obj83878_)
        (let ((__tmp89170
               (let () (declare (not safe)) (##type-id _klass83877_))))
          (declare (not safe))
          (##structure-instance-of? _obj83878_ __tmp89170))))
    (define class-instance?
      (lambda (_klass83872_ _obj83873_)
        (if (let () (declare (not safe)) (object? _obj83873_))
            (let ((_type83875_
                   (let () (declare (not safe)) (object-type _obj83873_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83875_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83875_ _klass83872_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83867_ _k83868_)
        (let ((_obj83870_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83867_ _k83868_))))
          (let () (declare (not safe)) (object-fill! _obj83870_ '#f))
          _obj83870_)))
    (define object-fill!
      (lambda (_obj83860_ _fill83861_)
        (let _loop83863_ ((_i83865_
                           (let ((__tmp89172
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83860_))))
                             (declare (not safe))
                             (##fx- __tmp89172 '1))))
          (if (let () (declare (not safe)) (##fx> _i83865_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83860_
                   _fill83861_
                   _i83865_
                   '#f
                   '#f))
                (let ((__tmp89171
                       (let () (declare (not safe)) (##fx- _i83865_ '1))))
                  (declare (not safe))
                  (_loop83863_ __tmp89171)))
              _obj83860_))))
    (define make-instance
      (lambda (_klass83858_)
        (let ((__obj89092
               (let ((__tmp89173
                      (let ((__tmp89174
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83858_))))
                        (declare (not safe))
                        (##vector-length __tmp89174))))
                 (declare (not safe))
                 (##make-structure _klass83858_ __tmp89173))))
          (let () (declare (not safe)) (object-fill! __obj89092 '#f))
          __obj89092)))
    (define make-struct-instance
      (lambda (_klass83848_ . _args83849_)
        (let* ((_obj83851_
                (let () (declare (not safe)) (make-instance _klass83848_)))
               (_$e83853_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83848_))))
          (if _$e83853_
              ((lambda (_kons-id83856_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83848_
                    _kons-id83856_
                    _obj83851_
                    _args83849_)))
               _$e83853_)
              (if (let ((__tmp89176
                         (let ((__tmp89177
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83851_))))
                           (declare (not safe))
                           (##fx- __tmp89177 '1)))
                        (__tmp89175 (length _args83849_)))
                    (declare (not safe))
                    (##fx= __tmp89176 __tmp89175))
                  (apply ##structure _klass83848_ _args83849_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83848_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83848_))
                         'args:
                         _args83849_))))))
    (define make-class-instance
      (lambda (_klass83838_ . _args83839_)
        (let* ((_obj83841_
                (let () (declare (not safe)) (make-instance _klass83838_)))
               (_$e83843_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83838_))))
          (if _$e83843_
              ((lambda (_kons-id83846_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83838_
                    _kons-id83846_
                    _obj83841_
                    _args83839_)))
               _$e83843_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83838_
                 _obj83841_
                 _args83839_))))))
    (define struct-instance-init!
      (lambda (_obj83835_ . _args83836_)
        (if (let ((__tmp89179 (length _args83836_))
                  (__tmp89178
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83835_))))
              (declare (not safe))
              (##fx< __tmp89179 __tmp89178))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83835_ _args83836_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83835_
                   'args:
                   _args83836_))))
    (define __struct-instance-init!
      (lambda (_obj83794_ _args83795_)
        (let _lp83797_ ((_k83799_ '1) (_rest83800_ _args83795_))
          (let* ((_rest8380183809_ _rest83800_)
                 (_else8380383817_ (lambda () _obj83794_))
                 (_K8380583823_
                  (lambda (_rest83820_ _hd83821_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83794_ _k83799_ _hd83821_))
                    (let ((__tmp89180
                           (let () (declare (not safe)) (##fx+ _k83799_ '1))))
                      (declare (not safe))
                      (_lp83797_ __tmp89180 _rest83820_)))))
            (if (let () (declare (not safe)) (##pair? _rest8380183809_))
                (let ((_hd8380683826_
                       (let () (declare (not safe)) (##car _rest8380183809_)))
                      (_tl8380783828_
                       (let () (declare (not safe)) (##cdr _rest8380183809_))))
                  (let* ((_hd83831_ _hd8380683826_)
                         (_rest83833_ _tl8380783828_))
                    (declare (not safe))
                    (_K8380583823_ _rest83833_ _hd83831_)))
                (let () (declare (not safe)) (_else8380383817_)))))))
    (define class-instance-init!
      (lambda (_obj83791_ . _args83792_)
        (let ((__tmp89181
               (let () (declare (not safe)) (object-type _obj83791_))))
          (declare (not safe))
          (__class-instance-init! __tmp89181 _obj83791_ _args83792_))))
    (define __class-instance-init!
      (lambda (_klass83735_ _obj83736_ _args83737_)
        (let _lp83739_ ((_rest83741_ _args83737_))
          (let* ((_rest8374283752_ _rest83741_)
                 (_else8374483760_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83741_))
                        _obj83736_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83735_
                               'rest:
                               _rest83741_))))
                 (_K8374683772_
                  (lambda (_rest83763_ _val83764_ _key83765_)
                    (let ((_$e83767_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83735_ _key83765_))))
                      (if _$e83767_
                          ((lambda (_off83770_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83736_
                                _off83770_
                                _val83764_))
                             (let ()
                               (declare (not safe))
                               (_lp83739_ _rest83763_)))
                           _$e83767_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83735_
                                 'slot:
                                 _key83765_))))))
            (if (let () (declare (not safe)) (##pair? _rest8374283752_))
                (let ((_hd8374783775_
                       (let () (declare (not safe)) (##car _rest8374283752_)))
                      (_tl8374883777_
                       (let () (declare (not safe)) (##cdr _rest8374283752_))))
                  (let ((_key83780_ _hd8374783775_))
                    (if (let () (declare (not safe)) (##pair? _tl8374883777_))
                        (let ((_hd8374983782_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8374883777_)))
                              (_tl8375083784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8374883777_))))
                          (let* ((_val83787_ _hd8374983782_)
                                 (_rest83789_ _tl8375083784_))
                            (declare (not safe))
                            (_K8374683772_ _rest83789_ _val83787_ _key83780_)))
                        (let () (declare (not safe)) (_else8374483760_)))))
                (let () (declare (not safe)) (_else8374483760_)))))))
    (define constructor-init!
      (lambda (_klass83730_ _kons-id83731_ _obj83732_ . _args83733_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83730_
           _kons-id83731_
           _obj83732_
           _args83733_))))
    (define __constructor-init!
      (lambda (_klass83720_ _kons-id83721_ _obj83722_ _args83723_)
        (let ((_$e83725_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83720_ _kons-id83721_))))
          (if _$e83725_
              ((lambda (_kons83728_)
                 (apply _kons83728_ _obj83722_ _args83723_)
                 _obj83722_)
               _$e83725_)
              (error '"missing constructor"
                     'class:
                     _klass83720_
                     'method:
                     _kons-id83721_)))))
    (define struct-copy
      (lambda (_struct83718_)
        (if (let () (declare (not safe)) (##structure? _struct83718_))
            '#!void
            (error '"not a structure" _struct83718_))
        (let () (declare (not safe)) (##structure-copy _struct83718_))))
    (define struct->list
      (lambda (_obj83716_)
        (if (let () (declare (not safe)) (object? _obj83716_))
            (let () (declare (not safe)) (##vector->list _obj83716_))
            (error '"not an object" _obj83716_))))
    (define class->list
      (lambda (_obj83703_)
        (if (let () (declare (not safe)) (object? _obj83703_))
            (let ((_klass83705_
                   (let () (declare (not safe)) (object-type _obj83703_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83705_))
                  (let ((_all-slots83707_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83705_))))
                    (let _loop83709_ ((_index83711_
                                       (let ((__tmp89187
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83707_))))
                                         (declare (not safe))
                                         (##fx- __tmp89187 '1)))
                                      (_plist83712_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83711_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83705_ _plist83712_))
                          (let ((_slot83714_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83707_
                                    _index83711_))))
                            (let ((__tmp89186
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83711_ '1)))
                                  (__tmp89182
                                   (let ((__tmp89185
                                          (symbol->keyword _slot83714_))
                                         (__tmp89183
                                          (let ((__tmp89184
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83703_
                                                    _index83711_))))
                                            (declare (not safe))
                                            (cons __tmp89184 _plist83712_))))
                                     (declare (not safe))
                                     (cons __tmp89185 __tmp89183))))
                              (declare (not safe))
                              (_loop83709_ __tmp89186 __tmp89182))))))
                  (error '"not a class type"
                         'object:
                         _obj83703_
                         'class:
                         _klass83705_)))
            (error '"not an object" _obj83703_))))
    (define call-method
      (lambda (_obj83694_ _id83695_ . _args83696_)
        (let ((_$e83698_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83694_ _id83695_))))
          (if _$e83698_
              ((lambda (_method83701_)
                 (apply _method83701_ _obj83694_ _args83696_))
               _$e83698_)
              (error '"cannot find method"
                     'object:
                     _obj83694_
                     'method:
                     _id83695_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83691_ _id83692_)
        (if (let () (declare (not safe)) (object? _obj83691_))
            (let ((__tmp89188
                   (let () (declare (not safe)) (object-type _obj83691_))))
              (declare (not safe))
              (find-method __tmp89188 _id83692_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83685_ _id83686_)
        (let ((_$e83688_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83685_ _id83686_))))
          (if _$e83688_
              _$e83688_
              (error '"missing method"
                     'object:
                     _obj83685_
                     'method:
                     _id83686_)))))
    (define bound-method-ref
      (lambda (_obj83675_ _id83676_)
        (let ((_$e83678_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83675_ _id83676_))))
          (if _$e83678_
              ((lambda (_method83681_)
                 (lambda _args83683_
                   (apply _method83681_ _obj83675_ _args83683_)))
               _$e83678_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83668_ _id83669_)
        (let ((_method83671_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83668_ _id83669_))))
          (lambda _args83673_ (apply _method83671_ _obj83668_ _args83673_)))))
    (define find-method
      (lambda (_klass83665_ _id83666_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83665_))
            (let ()
              (declare (not safe))
              (__find-method _klass83665_ _id83666_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83665_ _id83666_)))))
    (define __find-method
      (lambda (_klass83659_ _id83660_)
        (let ((_$e83662_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83659_ _id83660_))))
          (if _$e83662_
              _$e83662_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83659_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83659_ _id83660_)))))))
    (define class-find-method
      (lambda (_klass83656_ _id83657_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83656_))
            (let ()
              (declare (not safe))
              (__find-method _klass83656_ _id83657_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83649_ _id83650_)
        (let ((__tmp89189
               (lambda (_g8365183653_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8365183653_ _id83650_)))))
          (declare (not safe))
          (ormap1 __tmp89189 _mixins83649_))))
    (define builtin-find-method
      (lambda (_klass83643_ _id83644_)
        (if (let () (declare (not safe)) (##type? _klass83643_))
            (let ((_$e83646_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83643_ _id83644_))))
              (if _$e83646_
                  _$e83646_
                  (let ((__tmp89190
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83643_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89190 _id83644_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83635_ _id83636_)
        (let ((_$e83638_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83635_))))
          (if _$e83638_
              ((lambda (_ht83641_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83641_ _id83636_ '#f)))
               _$e83638_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83632_ _id83633_)
        (let ((__tmp89191
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83632_))))
          (declare (not safe))
          (mixin-find-method __tmp89191 _id83633_))))
    (define builtin-method-ref
      (lambda (_klass83624_ _id83625_)
        (let ((_$e83627_
               (let ((__tmp89192
                      (let () (declare (not safe)) (##type-id _klass83624_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89192 '#f))))
          (if _$e83627_
              ((lambda (_mtab83630_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83630_ _id83625_ '#f)))
               _$e83627_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83590_ _id83591_ _proc83592_ _rebind?83593_)
        (letrec ((_bind!83595_
                  (lambda (_ht83608_)
                    (if (and (let () (declare (not safe)) (not _rebind?83593_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83608_ _id83591_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83590_
                               'method:
                               _id83591_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83608_ _id83591_ _proc83592_))))))
          (if (let () (declare (not safe)) (procedure? _proc83592_))
              '#!void
              (error '"bad method; expected procedure" _proc83592_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83590_))
              (let ((_ht83597_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83590_))))
                (if _ht83597_
                    (let () (declare (not safe)) (_bind!83595_ _ht83597_))
                    (let ((_ht83599_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83590_ _ht83599_))
                      (let () (declare (not safe)) (_bind!83595_ _ht83599_)))))
              (if (let () (declare (not safe)) (##type? _klass83590_))
                  (let ((_ht83606_
                         (let ((_$e83601_
                                (let ((__tmp89193
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83590_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89193
                                   '#f))))
                           (if _$e83601_
                               _$e83601_
                               (let ((_ht83604_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89194
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83590_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89194
                                    _ht83604_))
                                 _ht83604_)))))
                    (declare (not safe))
                    (_bind!83595_ _ht83606_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83590_))))))
    (define bind-method!__0
      (lambda (_klass83613_ _id83614_ _proc83615_)
        (let ((_rebind?83617_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83613_
           _id83614_
           _proc83615_
           _rebind?83617_))))
    (define bind-method!
      (lambda _g89196_
        (let ((_g89195_ (let () (declare (not safe)) (##length _g89196_))))
          (cond ((let () (declare (not safe)) (##fx= _g89195_ 3))
                 (apply (lambda (_klass83613_ _id83614_ _proc83615_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83613_
                             _id83614_
                             _proc83615_)))
                        _g89196_))
                ((let () (declare (not safe)) (##fx= _g89195_ 4))
                 (apply (lambda (_klass83619_
                                 _id83620_
                                 _proc83621_
                                 _rebind?83622_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83619_
                             _id83620_
                             _proc83621_
                             _rebind?83622_)))
                        _g89196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89196_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83586_ _specializer83587_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83586_ _specializer83587_))))
    (define seal-class!
      (lambda (_klass83553_)
        (letrec ((_collect-methods!83555_
                  (lambda (_mtab83571_)
                    (letrec ((_merge!83573_
                              (lambda (_tab83581_)
                                (let ((__tmp89197
                                       (lambda (_id83583_ _proc83584_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83571_
                                            _id83583_
                                            _proc83584_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89197 _tab83581_))))
                             (_collect-direct-methods!83574_
                              (lambda (_klass83576_)
                                (let ((_$e83578_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83576_))))
                                  (if _$e83578_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83573_ _$e83578_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83574_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83553_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83553_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83553_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83553_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83553_))
                    (let ((_vtab83557_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83558_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83555_ _mtab83558_))
                      (let ((__tmp89198
                             (lambda (_id83560_ _proc83561_)
                               (let ((_$e83563_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83561_
                                         '#f))))
                                 (if _$e83563_
                                     ((lambda (_specializer83566_)
                                        (let ((_proc83568_
                                               (_specializer83566_
                                                _klass83553_))
                                              (_gid83569_
                                               (let ((__tmp89199
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83553_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89199
                                                  '"::["
                                                  _id83560_
                                                  '"]"))))
                                          (eval (let ((__tmp89200
                                                       (let ((__tmp89201
                                                              (let ((__tmp89202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89203
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83568_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89203))))
                        (declare (not safe))
                        (cons __tmp89202 '()))))
                 (declare (not safe))
                 (cons _gid83569_ __tmp89201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89200)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83557_
                                             _id83560_
                                             _proc83568_))))
                                      _$e83563_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83557_
                                        _id83560_
                                        _proc83561_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89198 _mtab83558_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83553_
                         _vtab83557_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83553_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83502_ _obj83503_ _id83504_)
        (let ((_klass83506_
               (let () (declare (not safe)) (object-type _obj83503_)))
              (_type-id83507_
               (let () (declare (not safe)) (##type-id _subklass83502_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83506_))
              (let _lp83509_ ((_rest83511_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83506_))))
                (let* ((_rest8351283520_ _rest83511_)
                       (_else8351483528_ (lambda () '#f))
                       (_K8351683534_
                        (lambda (_rest83531_ _klass83532_)
                          (if (let ((__tmp89206
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83532_))))
                                (declare (not safe))
                                (eq? _type-id83507_ __tmp89206))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83531_ _id83504_))
                              (let ()
                                (declare (not safe))
                                (_lp83509_ _rest83531_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8351283520_))
                      (let ((_hd8351783537_
                             (let ()
                               (declare (not safe))
                               (##car _rest8351283520_)))
                            (_tl8351883539_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8351283520_))))
                        (let* ((_klass83542_ _hd8351783537_)
                               (_rest83544_ _tl8351883539_))
                          (declare (not safe))
                          (_K8351683534_ _rest83544_ _klass83542_)))
                      (let () (declare (not safe)) (_else8351483528_)))))
              (if (let () (declare (not safe)) (##type? _klass83506_))
                  (let _lp83546_ ((_klass83548_ _klass83506_))
                    (if (let ((__tmp89205
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83548_))))
                          (declare (not safe))
                          (eq? _type-id83507_ __tmp89205))
                        (let ((__tmp89204
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83548_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89204 _id83504_))
                        (let ((_$e83550_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83548_))))
                          (if _$e83550_
                              (let ()
                                (declare (not safe))
                                (_lp83546_ _$e83550_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83492_ _obj83493_ _id83494_ . _args83495_)
        (let ((_$e83497_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83492_ _obj83493_ _id83494_))))
          (if _$e83497_
              ((lambda (_methodf83500_)
                 (apply _methodf83500_ _obj83493_ _args83495_))
               _$e83497_)
              (error '"cannot find next method"
                     'object:
                     _obj83493_
                     'method:
                     _id83494_)))))
    (define write-style (lambda (_we83490_) (macro-writeenv-style _we83490_)))
    (define write-object
      (lambda (_we83482_ _obj83483_)
        (let ((_$e83485_
               (let () (declare (not safe)) (method-ref _obj83483_ ':wr))))
          (if _$e83485_
              ((lambda (_method83488_) (_method83488_ _obj83483_ _we83482_))
               _$e83485_)
              (let ()
                (declare (not safe))
                (##default-wr _we83482_ _obj83483_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
