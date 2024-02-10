(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707556024)
  (begin
    (define type-id
      (lambda (_klass82448_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82448_))
            (let () (declare (not safe)) (##type-id _klass82448_))
            (if (let () (declare (not safe)) (not _klass82448_))
                '#f
                (error '"not a type descriptor" _klass82448_)))))
    (define type=?
      (lambda (_x82445_ _y82446_)
        (let ((__tmp86667 (let () (declare (not safe)) (type-id _x82445_)))
              (__tmp86666 (let () (declare (not safe)) (type-id _y82446_))))
          (declare (not safe))
          (eq? __tmp86667 __tmp86666))))
    (define type-descriptor?
      (lambda (_klass82443_)
        (if (let () (declare (not safe)) (##type? _klass82443_))
            (let ((__tmp86668
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass82443_))))
              (declare (not safe))
              (eq? __tmp86668 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass82441_)
        (let ((__tmp86669
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82441_))))
          (declare (not safe))
          (assgetq 'struct: __tmp86669))))
    (define type-final?
      (lambda (_klass82439_)
        (let ((__tmp86670
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82439_))))
          (declare (not safe))
          (assgetq 'final: __tmp86670))))
    (define struct-type?
      (lambda (_klass82437_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82437_))
            (let () (declare (not safe)) (type-struct? _klass82437_))
            '#f)))
    (define class-type?
      (lambda (_klass82435_)
        (let () (declare (not safe)) (type-descriptor? _klass82435_))))
    (define properties-form
      (lambda (_properties82401_)
        (map (lambda (_e8240282404_)
               (let* ((_g8240682413_ _e8240282404_)
                      (_E8240882417_
                       (lambda () (error '"No clause matching" _g8240682413_)))
                      (_K8240982423_
                       (lambda (_val82420_ _key82421_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key82421_ 'direct-supers:))
                             (let ((__tmp86671 (map type-id _val82420_)))
                               (declare (not safe))
                               (cons _key82421_ __tmp86671))
                             (let ()
                               (declare (not safe))
                               (cons _key82421_ _val82420_))))))
                 (if (let () (declare (not safe)) (##pair? _g8240682413_))
                     (let ((_hd8241082426_
                            (let ()
                              (declare (not safe))
                              (##car _g8240682413_)))
                           (_tl8241182428_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8240682413_))))
                       (let* ((_key82431_ _hd8241082426_)
                              (_val82433_ _tl8241182428_))
                         (declare (not safe))
                         (_K8240982423_ _val82433_ _key82431_)))
                     (let () (declare (not safe)) (_E8240882417_)))))
             _properties82401_)))
    (define make-type-descriptor
      (lambda (_type-id82314_
               _type-name82315_
               _type-super82316_
               _precedence-list82317_
               _all-slots82318_
               _properties82319_
               _constructor82320_
               _slot-table82321_
               _methods82322_)
        (letrec ((_make-props!82324_
                  (lambda (_key82370_)
                    (letrec* ((_ht82372_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!82373_
                               (lambda (_ht82394_ _slots82395_)
                                 (for-each
                                  (lambda (_g8239682398_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht82394_
                                       _g8239682398_
                                       '#t)))
                                  _slots82395_)))
                              (_put-alist!82374_
                               (lambda (_ht82383_ _key82384_ _alist82385_)
                                 (let ((_$e82387_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key82384_ _alist82385_))))
                                   (if _$e82387_
                                       ((lambda (_g8238982391_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!82373_
                                             _ht82383_
                                             _g8238982391_)))
                                        _$e82387_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!82374_
                         _ht82372_
                         _key82370_
                         _properties82319_))
                      (for-each
                       (lambda (_mixin82376_)
                         (let ((_alist82378_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin82376_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist82378_))
                                   (let ((__tmp86673
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key82370_
                                                     _alist82378_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp86673)))
                               (let ((__tmp86672
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin82376_))))))
                                 (declare (not safe))
                                 (_put-slots!82373_ _ht82372_ __tmp86672))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!82374_
                                  _ht82372_
                                  _key82370_
                                  _alist82378_)))))
                       _precedence-list82317_)
                      _ht82372_))))
          (let* ((_transparent?82326_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties82319_)))
                 (_all-slots-printable?82331_
                  (let ((_$e82328_ _transparent?82326_))
                    (if _$e82328_
                        _$e82328_
                        (let ((__tmp86674
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties82319_))))
                          (declare (not safe))
                          (eq? '#t __tmp86674)))))
                 (_printable82333_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?82331_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82324_ 'print:))
                      '#f))
                 (_all-slots-equalable?82338_
                  (let ((_$e82335_ _transparent?82326_))
                    (if _$e82335_
                        _$e82335_
                        (let ((__tmp86675
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties82319_))))
                          (declare (not safe))
                          (eq? '#t __tmp86675)))))
                 (_equalable82340_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?82338_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82324_ 'equal:))
                      '#f))
                 (_first-new-field82342_
                  (if _type-super82316_
                      (let ((__tmp86676
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super82316_))))
                        (declare (not safe))
                        (##vector-length __tmp86676))
                      '1))
                 (_field-info-length82344_
                  (let ((__tmp86677
                         (let ((__tmp86678
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots82318_))))
                           (declare (not safe))
                           (##fx- __tmp86678 _first-new-field82342_))))
                    (declare (not safe))
                    (##fx* '3 __tmp86677)))
                 (_field-info82346_ (make-vector _field-info-length82344_ '#f))
                 (_opaque?82351_
                  (let ((_$e82348_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?82338_))))
                    (if _$e82348_
                        _$e82348_
                        (if _type-super82316_
                            (let ((__tmp86679
                                   (let ((__tmp86680
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super82316_))))
                                     (declare (not safe))
                                     (##fxand __tmp86680 '1))))
                              (declare (not safe))
                              (##fx= __tmp86679 '1))
                            '#f)))))
            (let _loop82354_ ((_i82356_ _first-new-field82342_) (_j82357_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j82357_ _field-info-length82344_))
                  (let* ((_slot82359_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots82318_ _i82356_)))
                         (_flags82367_
                          (if _transparent?82326_
                              '0
                              (let ((__tmp86682
                                     (if (or _all-slots-printable?82331_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable82333_
                                                _slot82359_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp86681
                                     (if (or _all-slots-equalable?82338_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable82340_
                                                _slot82359_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp86682 __tmp86681)))))
                    (vector-set! _field-info82346_ _j82357_ _slot82359_)
                    (vector-set!
                     _field-info82346_
                     (let () (declare (not safe)) (##fx+ _j82357_ '1))
                     _flags82367_)
                    (let ((__tmp86684
                           (let () (declare (not safe)) (##fx+ _i82356_ '1)))
                          (__tmp86683
                           (let () (declare (not safe)) (##fx+ _j82357_ '3))))
                      (declare (not safe))
                      (_loop82354_ __tmp86684 __tmp86683)))
                  '#!void))
            (let ((__tmp86685 (if _opaque?82351_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id82314_
               _type-name82315_
               __tmp86685
               _type-super82316_
               _field-info82346_
               _precedence-list82317_
               _all-slots82318_
               _slot-table82321_
               _properties82319_
               _constructor82320_
               _methods82322_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass82312_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82312_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass82310_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82310_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass82308_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82308_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass82306_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82306_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass82304_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82304_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass82302_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82302_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass82299_ _ht82300_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass82299_
           _ht82300_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-fields
      (lambda (_klass82297_)
        (let ((__tmp86686
               (let ((__tmp86687
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass82297_))))
                 (declare (not safe))
                 (##vector-length __tmp86687))))
          (declare (not safe))
          (##fx- __tmp86686 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass82295_)
        (let ((__tmp86688
               (let () (declare (not safe)) (##type-flags _klass82295_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp86688))))
    (define type-descriptor-seal!
      (lambda (_klass82293_)
        (let ((__tmp86689
               (let ((__tmp86691
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp86690
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass82293_))))
                 (declare (not safe))
                 (##fxior __tmp86691 __tmp86690))))
          (declare (not safe))
          (##structure-set!
           _klass82293_
           __tmp86689
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id82274_
               _name82275_
               _super82276_
               _direct-slots82277_
               _properties82278_
               _constructor82279_)
        (if (and _super82276_
                 (let ((__tmp86692
                        (let ()
                          (declare (not safe))
                          (struct-type? _super82276_))))
                   (declare (not safe))
                   (not __tmp86692)))
            (error '"illegal super type; not a struct-type" _super82276_)
            '#!void)
        (let* ((_type82281_
                (let ((__tmp86695
                       (if _super82276_
                           (let ()
                             (declare (not safe))
                             (cons _super82276_ '()))
                           '()))
                      (__tmp86693
                       (if (let ()
                             (declare (not safe))
                             (assgetq 'struct: _properties82278_))
                           _properties82278_
                           (let ((__tmp86694
                                  (let ()
                                    (declare (not safe))
                                    (cons 'struct: '#t))))
                             (declare (not safe))
                             (cons __tmp86694 _properties82278_)))))
                  (declare (not safe))
                  (make-class-type
                   _id82274_
                   _name82275_
                   __tmp86695
                   _direct-slots82277_
                   __tmp86693
                   _constructor82279_)))
               (_all-slots82283_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type82281_)))
               (_len82285_ (length _direct-slots82277_))
               (_start82287_
                (let ((__tmp86696
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots82283_))))
                  (declare (not safe))
                  (##fx- __tmp86696 _len82285_))))
          (if (let ((__tmp86698
                     (lambda (_slot82290_ _i82291_)
                       (let ((__tmp86699
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots82283_ _i82291_))))
                         (declare (not safe))
                         (eq? _slot82290_ __tmp86699))))
                    (__tmp86697
                     (let ()
                       (declare (not safe))
                       (iota _len82285_ _start82287_))))
                (declare (not safe))
                (andmap2 __tmp86698 _direct-slots82277_ __tmp86697))
              '#!void
              (error '"non-unique slots in struct"
                     _name82275_
                     _direct-slots82277_))
          _type82281_)))
    (define make-struct-predicate
      (lambda (_klass82266_)
        (let ((_tid82268_
               (let () (declare (not safe)) (##type-id _klass82266_))))
          (if (let () (declare (not safe)) (type-final? _klass82266_))
              (lambda (_obj82270_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj82270_ _tid82268_)))
              (lambda (_obj82272_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj82272_ _tid82268_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass82254_ _slot82255_)
        (let ((_$e82257_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82254_ _slot82255_))))
          (if _$e82257_
              ((lambda (_off82260_)
                 (if (let () (declare (not safe)) (type-final? _klass82254_))
                     (lambda (_obj82262_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _obj82262_
                          _off82260_
                          _klass82254_
                          '#f)))
                     (lambda (_obj82264_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _obj82264_
                          _off82260_
                          _klass82254_
                          '#f)))))
               _$e82257_)
              (error '"unknown slot"
                     'class:
                     _klass82254_
                     'slot:
                     _slot82255_)))))
    (define make-struct-slot-mutator
      (lambda (_klass82240_ _slot82241_)
        (let ((_$e82243_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82240_ _slot82241_))))
          (if _$e82243_
              ((lambda (_off82246_)
                 (if (let () (declare (not safe)) (type-final? _klass82240_))
                     (lambda (_obj82248_ _val82249_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _obj82248_
                          _val82249_
                          _off82246_
                          _klass82240_
                          '#f)))
                     (lambda (_obj82251_ _val82252_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _obj82251_
                          _val82252_
                          _off82246_
                          _klass82240_
                          '#f)))))
               _$e82243_)
              (error '"unknown slot"
                     'class:
                     _klass82240_
                     'slot:
                     _slot82241_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass82230_ _slot82231_)
        (let ((_$e82233_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82230_ _slot82231_))))
          (if _$e82233_
              ((lambda (_off82236_)
                 (lambda (_obj82238_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _obj82238_
                      _off82236_
                      _klass82230_
                      '#f))))
               _$e82233_)
              (error '"unknown slot"
                     'class:
                     _klass82230_
                     'slot:
                     _slot82231_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass82219_ _slot82220_)
        (let ((_$e82222_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82219_ _slot82220_))))
          (if _$e82222_
              ((lambda (_off82225_)
                 (lambda (_obj82227_ _val82228_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj82227_
                      _val82228_
                      _off82225_
                      _klass82219_
                      '#f))))
               _$e82222_)
              (error '"unknown slot"
                     'class:
                     _klass82219_
                     'slot:
                     _slot82220_)))))
    (define make-final-field-accessor
      (lambda (_klass82213_ _slot82214_ _field82215_)
        (lambda (_obj82217_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj82217_
             _field82215_
             _klass82213_
             _slot82214_)))))
    (define make-struct-field-accessor
      (lambda (_klass82207_ _slot82208_ _field82209_)
        (lambda (_obj82211_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj82211_
             _field82209_
             _klass82207_
             _slot82208_)))))
    (define make-final-field-mutator
      (lambda (_klass82200_ _slot82201_ _field82202_)
        (lambda (_obj82204_ _val82205_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj82204_
             _val82205_
             _field82202_
             _klass82200_
             _slot82201_)))))
    (define make-struct-field-mutator
      (lambda (_klass82193_ _slot82194_ _field82195_)
        (lambda (_obj82197_ _val82198_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj82197_
             _val82198_
             _field82195_
             _klass82193_
             _slot82194_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass82187_ _slot82188_ _field82189_)
        (lambda (_obj82191_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj82191_
             _field82189_
             _klass82187_
             _slot82188_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass82180_ _slot82181_ _field82182_)
        (lambda (_obj82184_ _val82185_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj82184_
             _val82185_
             _field82182_
             _klass82180_
             _slot82181_)))))
    (define substruct?
      (lambda (_maybe-sub-struct82171_ _maybe-super-struct82172_)
        (let ((_maybe-super-struct-id82174_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct82172_))))
          (let _lp82176_ ((_super-struct82178_ _maybe-sub-struct82171_))
            (if (let () (declare (not safe)) (not _super-struct82178_))
                '#f
                (if (let ((__tmp86701
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct82178_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id82174_ __tmp86701))
                    '#t
                    (let ((__tmp86700
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct82178_))))
                      (declare (not safe))
                      (_lp82176_ __tmp86700))))))))
    (define base-struct/1
      (lambda (_klass82169_)
        (if (let () (declare (not safe)) (struct-type? _klass82169_))
            _klass82169_
            (if (let () (declare (not safe)) (class-type? _klass82169_))
                (let () (declare (not safe)) (##type-super _klass82169_))
                (if (let () (declare (not safe)) (not _klass82169_))
                    '#f
                    (error '"not a class or false" _klass82169_))))))
    (define base-struct/2
      (lambda (_klass182157_ _klass282158_)
        (let ((_s182160_
               (let () (declare (not safe)) (base-struct/1 _klass182157_)))
              (_s282161_
               (let () (declare (not safe)) (base-struct/1 _klass282158_))))
          (if (or (let () (declare (not safe)) (not _s182160_))
                  (and _s282161_
                       (let ()
                         (declare (not safe))
                         (substruct? _s182160_ _s282161_))))
              _s282161_
              (if (or (let () (declare (not safe)) (not _s282161_))
                      (and _s182160_
                           (let ()
                             (declare (not safe))
                             (substruct? _s282161_ _s182160_))))
                  _s182160_
                  (error '"bad mixin: incompatible struct bases"
                         _klass182157_
                         _klass282158_
                         _s182160_
                         _s282161_))))))
    (define base-struct/list
      (lambda (_all-supers82041_)
        (let* ((_all-supers8204282067_ _all-supers82041_)
               (_E8204782071_
                (lambda ()
                  (error '"No clause matching" _all-supers8204282067_))))
          (let ((_K8206582154_ (lambda () '#f))
                (_K8206282140_
                 (lambda (_x82138_)
                   (let () (declare (not safe)) (base-struct/1 _x82138_))))
                (_K8205782117_
                 (lambda (_y82114_ _x82115_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x82115_ _y82114_))))
                (_K8204882078_
                 (lambda (_y82075_ _x82076_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x82076_ _y82075_)))))
            (let* ((___match8666486665_
                    (lambda (_hd8204982081_ _tl8205082083_)
                      (let ((_x82086_ _hd8204982081_))
                        (letrec ((_splice-rest8205282088_
                                  (lambda (_rest8205682095_ _y82097_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8205682095_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8204882078_ _y82097_ _x82086_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8204782071_)))))
                                 (_splice-try8205482090_
                                  (lambda (_hd8205582099_
                                           _rest8205682101_
                                           _y8205182102_)
                                    (let ((_y82105_ _hd8205582099_))
                                      (let ((__tmp86703
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8205682101_)))
                                            (__tmp86702
                                             (let ()
                                               (declare (not safe))
                                               (cons _y82105_ _y8205182102_))))
                                        (declare (not safe))
                                        (_splice-loop8205382092_
                                         __tmp86703
                                         __tmp86702)))))
                                 (_splice-loop8205382092_
                                  (lambda (_rest8205682107_ _y8205182108_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8205682107_))
                                        (let ((__tmp86705
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8205682107_))))
                                          (declare (not safe))
                                          (_splice-try8205482090_
                                           __tmp86705
                                           _rest8205682107_
                                           _y8205182108_))
                                        (let ((__tmp86704
                                               (reverse _y8205182108_)))
                                          (declare (not safe))
                                          (_splice-rest8205282088_
                                           _rest8205682107_
                                           __tmp86704))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8205382092_ _tl8205082083_ '()))))))
                   (_try-match8204482150_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8204282067_))
                          (let ((_tl8206482145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8204282067_)))
                                (_hd8206382143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8204282067_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8206482145_))
                                (let ((_x82148_ _hd8206382143_))
                                  (declare (not safe))
                                  (base-struct/1 _x82148_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8206482145_))
                                    (let ((_tl8206182129_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8206482145_)))
                                          (_hd8206082127_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8206482145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8206182129_))
                                          (let ((_x82125_ _hd8206382143_)
                                                (_y82132_ _hd8206082127_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8205782117_
                                               _y82132_
                                               _x82125_)))
                                          (___match8666486665_
                                           _hd8206382143_
                                           _tl8206482145_)))
                                    (___match8666486665_
                                     _hd8206382143_
                                     _tl8206482145_))))
                          (let () (declare (not safe)) (_E8204782071_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8204282067_))
                  (let () (declare (not safe)) (_K8206582154_))
                  (let () (declare (not safe)) (_try-match8204482150_))))))))
    (define base-struct
      (lambda _all-supers82039_
        (let () (declare (not safe)) (base-struct/list _all-supers82039_))))
    (define find-super-ctor
      (lambda (_super82037_)
        (let () (declare (not safe)) (find-super-constructor _super82037_))))
    (define find-super-constructor
      (lambda (_super81989_)
        (let _lp81991_ ((_rest81993_ _super81989_) (_constructor81994_ '#f))
          (let* ((_rest8199582003_ _rest81993_)
                 (_else8199782011_ (lambda () _constructor81994_))
                 (_K8199982025_
                  (lambda (_rest82014_ _hd82015_)
                    (let ((_$e82017_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd82015_))))
                      (if _$e82017_
                          ((lambda (_xconstructor82020_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor81994_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor81994_
                                            _xconstructor82020_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp81991_ _rest82014_ _xconstructor82020_))
                                 (error '"conflicting implicit constructors"
                                        _constructor81994_
                                        _xconstructor82020_)))
                           _$e82017_)
                          (let ()
                            (declare (not safe))
                            (_lp81991_ _rest82014_ _constructor81994_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8199582003_))
                (let ((_hd8200082028_
                       (let () (declare (not safe)) (##car _rest8199582003_)))
                      (_tl8200182030_
                       (let () (declare (not safe)) (##cdr _rest8199582003_))))
                  (let* ((_hd82033_ _hd8200082028_)
                         (_rest82035_ _tl8200182030_))
                    (declare (not safe))
                    (_K8199982025_ _rest82035_ _hd82033_)))
                (let () (declare (not safe)) (_else8199782011_)))))))
    (define compute-class-slots
      (lambda (_super-struct81960_
               _class-precedence-list81961_
               _direct-slots81962_)
        (let* ((_previous-slots81964_
                (if _super-struct81960_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct81960_))
                    '#(#f)))
               (_next-slot81966_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots81964_)))
               (_slot-table81968_
                (if _super-struct81960_
                    (let ((__tmp86706
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct81960_))))
                      (declare (not safe))
                      (hash-copy __tmp86706))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots81970_ '())
               (_process-slot81974_
                (lambda (_slot81972_)
                  (if (let () (declare (not safe)) (symbol? _slot81972_))
                      '#!void
                      (error '"invalid slot name" _slot81972_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table81968_ _slot81972_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table81968_
                           _slot81972_
                           _next-slot81966_))
                        (let ((__tmp86707 (symbol->keyword _slot81972_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table81968_
                           __tmp86707
                           _next-slot81966_))
                        (set! _r-slots81970_
                              (let ()
                                (declare (not safe))
                                (cons _slot81972_ _r-slots81970_)))
                        (set! _next-slot81966_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot81966_ '1)))))))
               (_process-slots81980_
                (lambda (_g8197581977_)
                  (for-each _process-slot81974_ _g8197581977_))))
          (for-each
           (lambda (_mixin81983_)
             (if (let () (declare (not safe)) (type-struct? _mixin81983_))
                 '#!void
                 (let ((__tmp86708
                        (let ((__tmp86709
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin81983_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp86709 '()))))
                   (declare (not safe))
                   (_process-slots81980_ __tmp86708))))
           (reverse _class-precedence-list81961_))
          (let ()
            (declare (not safe))
            (_process-slots81980_ _direct-slots81962_))
          (let ((_all-slots81985_ (make-vector _next-slot81966_ '#f)))
            (vector-copy! _all-slots81985_ '0 _previous-slots81964_)
            (for-each
             (lambda (_slot81987_)
               (set! _next-slot81966_
                     (let () (declare (not safe)) (##fx- _next-slot81966_ '1)))
               (vector-set! _all-slots81985_ _next-slot81966_ _slot81987_))
             _r-slots81970_)
            (values _all-slots81985_ _slot-table81968_)))))
    (define make-class-type
      (lambda (_id81922_
               _name81923_
               _direct-supers81924_
               _direct-slots81925_
               _properties81926_
               _constructor81927_)
        (let ((_$e81931_
               (let ((__tmp86710
                      (lambda (_klass81929_)
                        (let ((__tmp86711
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass81929_))))
                          (declare (not safe))
                          (not __tmp86711)))))
                 (declare (not safe))
                 (find __tmp86710 _direct-supers81924_))))
          (if _$e81931_
              ((lambda (_g8193381935_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8193381935_))
               _$e81931_)
              (let ((_$e81938_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers81924_))))
                (if _$e81938_
                    ((lambda (_g8194081942_)
                       (error '"Cannot extend final class" _g8194081942_))
                     _$e81938_)
                    '#!void))))
        (let* ((_struct-super81945_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers81924_)))
               (_precedence-list81947_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers81924_)))
               (_g86712_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super81945_
                   _precedence-list81947_
                   _direct-slots81925_))))
          (begin
            (let ((_g86713_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g86712_) (##vector-length _g86712_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g86713_ 2)))
                  (error "Context expects 2 values" _g86713_)))
            (let ((_all-slots81949_
                   (let () (declare (not safe)) (##vector-ref _g86712_ 0)))
                  (_slot-table81950_
                   (let () (declare (not safe)) (##vector-ref _g86712_ 1))))
              (let* ((_properties81952_
                      (let ((__tmp86716
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots81925_)))
                            (__tmp86714
                             (let ((__tmp86715
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers81924_))))
                               (declare (not safe))
                               (cons __tmp86715 _properties81926_))))
                        (declare (not safe))
                        (cons __tmp86716 __tmp86714)))
                     (_constructor*81957_
                      (let ((_$e81954_ _constructor81927_))
                        (if _$e81954_
                            _$e81954_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers81924_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor
                   _id81922_
                   _name81923_
                   _struct-super81945_
                   _precedence-list81947_
                   _all-slots81949_
                   _properties81952_
                   _constructor*81957_
                   _slot-table81950_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass81920_)
        (let ((__tmp86717
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81920_))))
          (declare (not safe))
          (cons _klass81920_ __tmp86717))))
    (define struct-precedence-list
      (lambda (_strukt81915_)
        (let ((__tmp86718
               (let ((_$e81917_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt81915_))))
                 (if _$e81917_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e81917_))
                     '()))))
          (declare (not safe))
          (cons _strukt81915_ __tmp86718))))
    (define class-linearize-mixins
      (lambda (_klass-lst81913_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst81913_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass81903_)
        (if (let () (declare (not safe)) (type-final? _klass81903_))
            (lambda (_g8190481906_)
              (let ((__tmp86719
                     (let () (declare (not safe)) (##type-id _klass81903_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8190481906_ __tmp86719)))
            (lambda (_g8190881910_)
              (let ()
                (declare (not safe))
                (class-instance? _klass81903_ _g8190881910_))))))
    (define if-class-slot-field
      (lambda (_klass81892_
               _slot81893_
               _if-final81894_
               _if-struct81895_
               _if-struct-field81896_
               _if-class-slot81897_)
        (let ((_field81899_
               (let ((__tmp86720
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass81892_))))
                 (declare (not safe))
                 (table-ref __tmp86720 _slot81893_ '#f))))
          (if (let () (declare (not safe)) (not _field81899_))
              (error '"unknown slot" 'class: _klass81892_ 'slot: _slot81893_)
              (if (let () (declare (not safe)) (type-final? _klass81892_))
                  (_if-final81894_ _klass81892_ _slot81893_ _field81899_)
                  (if (let () (declare (not safe)) (type-struct? _klass81892_))
                      (_if-struct81895_ _klass81892_ _slot81893_ _field81899_)
                      (if (let ((_strukt81901_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass81892_))))
                            (and _strukt81901_
                                 (let ((__tmp86721
                                        (let ((__tmp86722
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt81901_))))
                                          (declare (not safe))
                                          (##vector-length __tmp86722))))
                                   (declare (not safe))
                                   (##fx< _field81899_ __tmp86721))))
                          (_if-struct-field81896_
                           _klass81892_
                           _slot81893_
                           _field81899_)
                          (_if-class-slot81897_
                           _klass81892_
                           _slot81893_
                           _field81899_))))))))
    (define make-class-slot-accessor
      (lambda (_klass81889_ _slot81890_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81889_
           _slot81890_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object81873_ _class81874_ _slot81875_)
        (apply error
               '"not an instance"
               'object:
               _object81873_
               'class:
               _class81874_
               (if _slot81875_
                   (let ((__tmp86723
                          (let ()
                            (declare (not safe))
                            (cons _slot81875_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp86723))
                   '()))))
    (define not-an-instance__0
      (lambda (_object81880_ _class81881_)
        (let ((_slot81883_ '#f))
          (declare (not safe))
          (not-an-instance__% _object81880_ _class81881_ _slot81883_))))
    (define not-an-instance
      (lambda _g86725_
        (let ((_g86724_ (let () (declare (not safe)) (##length _g86725_))))
          (cond ((let () (declare (not safe)) (##fx= _g86724_ 2))
                 (apply (lambda (_object81880_ _class81881_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object81880_ _class81881_)))
                        _g86725_))
                ((let () (declare (not safe)) (##fx= _g86724_ 3))
                 (apply (lambda (_object81885_ _class81886_ _slot81887_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object81885_
                             _class81886_
                             _slot81887_)))
                        _g86725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g86725_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass81866_ _slot81867_ _field81868_)
        (lambda (_obj81870_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81866_ _obj81870_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81870_ _field81868_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81870_ _klass81866_ _slot81867_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass81860_ _slot81861_ _field81862_)
        (lambda (_obj81864_)
          (if (let ((__tmp86726
                     (let () (declare (not safe)) (##type-id _klass81860_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81864_ __tmp86726))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81864_ _field81862_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81860_ _obj81864_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj81864_ _slot81861_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81864_
                     _klass81860_
                     _slot81861_)))))))
    (define make-class-slot-mutator
      (lambda (_klass81857_ _slot81858_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81857_
           _slot81858_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass81850_ _slot81851_ _field81852_)
        (lambda (_obj81854_ _val81855_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81850_ _obj81854_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81854_ _field81852_ _val81855_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81854_ _klass81850_ _slot81851_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass81843_ _slot81844_ _field81845_)
        (lambda (_obj81847_ _val81848_)
          (if (let ((__tmp86727
                     (let () (declare (not safe)) (##type-id _klass81843_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81847_ __tmp86727))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81847_ _field81845_ _val81848_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81843_ _obj81847_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj81847_ _slot81844_ _val81848_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81847_
                     _klass81843_
                     _slot81844_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass81840_ _slot81841_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81840_
           _slot81841_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass81834_ _slot81835_ _field81836_)
        (lambda (_obj81838_)
          (if (let ((__tmp86728
                     (let () (declare (not safe)) (##type-id _klass81834_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81838_ __tmp86728))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81838_ _field81836_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj81838_ _slot81835_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass81831_ _slot81832_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81831_
           _slot81832_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass81824_ _slot81825_ _field81826_)
        (lambda (_obj81828_ _val81829_)
          (if (let ((__tmp86729
                     (let () (declare (not safe)) (##type-id _klass81824_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81828_ __tmp86729))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81828_ _field81826_ _val81829_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj81828_ _slot81825_ _val81829_))))))
    (define class-slot-offset
      (lambda (_klass81821_ _slot81822_)
        (let ((__tmp86730
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass81821_))))
          (declare (not safe))
          (table-ref __tmp86730 _slot81822_ '#f))))
    (define class-slot-ref
      (lambda (_klass81815_ _obj81816_ _slot81817_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81815_ _obj81816_))
            (let ((_off81819_
                   (let ((__tmp86731
                          (let ()
                            (declare (not safe))
                            (object-type _obj81816_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86731 _slot81817_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj81816_
               _off81819_
               _klass81815_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81816_ _klass81815_)))))
    (define class-slot-set!
      (lambda (_klass81808_ _obj81809_ _slot81810_ _val81811_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81808_ _obj81809_))
            (let ((_off81813_
                   (let ((__tmp86732
                          (let ()
                            (declare (not safe))
                            (object-type _obj81809_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86732 _slot81810_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj81809_
               _val81811_
               _off81813_
               _klass81808_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81809_ _klass81808_)))))
    (define unchecked-field-ref
      (lambda (_obj81805_ _off81806_)
        (let ((__tmp86733
               (let () (declare (not safe)) (##structure-type _obj81805_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj81805_ _off81806_ __tmp86733 '#f))))
    (define unchecked-field-set!
      (lambda (_obj81801_ _off81802_ _val81803_)
        (let ((__tmp86734
               (let () (declare (not safe)) (##structure-type _obj81801_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj81801_
           _val81803_
           _off81802_
           __tmp86734
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj81798_ _slot81799_)
        (let ((__tmp86735
               (let ((__tmp86736
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81798_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86736 _slot81799_))))
          (declare (not safe))
          (unchecked-field-ref _obj81798_ __tmp86735))))
    (define unchecked-slot-set!
      (lambda (_obj81794_ _slot81795_ _val81796_)
        (let ((__tmp86737
               (let ((__tmp86738
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81794_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86738 _slot81795_))))
          (declare (not safe))
          (unchecked-field-set! _obj81794_ __tmp86737 _val81796_))))
    (define slot-ref__%
      (lambda (_obj81770_ _slot81771_ _E81772_)
        (if (let () (declare (not safe)) (object? _obj81770_))
            (let* ((_klass81774_
                    (let () (declare (not safe)) (object-type _obj81770_)))
                   (_$e81777_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81774_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81774_ _slot81771_))
                        '#f)))
              (if _$e81777_
                  ((lambda (_off81780_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj81770_ _off81780_)))
                   _$e81777_)
                  (_E81772_ _obj81770_ _slot81771_)))
            (_E81772_ _obj81770_ _slot81771_))))
    (define slot-ref__0
      (lambda (_obj81785_ _slot81786_)
        (let ((_E81788_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj81785_ _slot81786_ _E81788_))))
    (define slot-ref
      (lambda _g86740_
        (let ((_g86739_ (let () (declare (not safe)) (##length _g86740_))))
          (cond ((let () (declare (not safe)) (##fx= _g86739_ 2))
                 (apply (lambda (_obj81785_ _slot81786_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj81785_ _slot81786_)))
                        _g86740_))
                ((let () (declare (not safe)) (##fx= _g86739_ 3))
                 (apply (lambda (_obj81790_ _slot81791_ _E81792_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj81790_ _slot81791_ _E81792_)))
                        _g86740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g86740_))))))
    (define slot-set!__%
      (lambda (_obj81742_ _slot81743_ _val81744_ _E81745_)
        (if (let () (declare (not safe)) (object? _obj81742_))
            (let* ((_klass81747_
                    (let () (declare (not safe)) (object-type _obj81742_)))
                   (_$e81750_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81747_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81747_ _slot81743_))
                        '#f)))
              (if _$e81750_
                  ((lambda (_off81753_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj81742_
                        _off81753_
                        _val81744_)))
                   _$e81750_)
                  (_E81745_ _obj81742_ _slot81743_)))
            (_E81745_ _obj81742_ _slot81743_))))
    (define slot-set!__0
      (lambda (_obj81758_ _slot81759_ _val81760_)
        (let ((_E81762_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj81758_ _slot81759_ _val81760_ _E81762_))))
    (define slot-set!
      (lambda _g86742_
        (let ((_g86741_ (let () (declare (not safe)) (##length _g86742_))))
          (cond ((let () (declare (not safe)) (##fx= _g86741_ 3))
                 (apply (lambda (_obj81758_ _slot81759_ _val81760_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj81758_ _slot81759_ _val81760_)))
                        _g86742_))
                ((let () (declare (not safe)) (##fx= _g86741_ 4))
                 (apply (lambda (_obj81764_ _slot81765_ _val81766_ _E81767_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj81764_
                             _slot81765_
                             _val81766_
                             _E81767_)))
                        _g86742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g86742_))))))
    (define __slot-error
      (lambda (_obj81738_ _slot81739_)
        (error '"Cannot find slot" 'object: _obj81738_ 'slot: _slot81739_)))
    (define subclass?
      (lambda (_maybe-sub-class81728_ _maybe-super-class81729_)
        (let* ((_maybe-super-class-id81731_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class81729_)))
               (_$e81733_
                (let ((__tmp86743
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class81728_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id81731_ __tmp86743))))
          (if _$e81733_
              _$e81733_
              (let ((__tmp86745
                     (lambda (_super-class81736_)
                       (let ((__tmp86746
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class81736_))))
                         (declare (not safe))
                         (eq? __tmp86746 _maybe-super-class-id81731_))))
                    (__tmp86744
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class81728_))))
                (declare (not safe))
                (ormap1 __tmp86745 __tmp86744))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass81725_ _obj81726_)
        (let ((__tmp86747
               (let () (declare (not safe)) (##type-id _klass81725_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj81726_ __tmp86747))))
    (define struct-instance?
      (lambda (_klass81722_ _obj81723_)
        (let ((__tmp86748
               (let () (declare (not safe)) (##type-id _klass81722_))))
          (declare (not safe))
          (##structure-instance-of? _obj81723_ __tmp86748))))
    (define class-instance?
      (lambda (_klass81717_ _obj81718_)
        (if (let () (declare (not safe)) (object? _obj81718_))
            (let ((_type81720_
                   (let () (declare (not safe)) (object-type _obj81718_))))
              (if (let () (declare (not safe)) (type-descriptor? _type81720_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type81720_ _klass81717_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass81712_ _k81713_)
        (let ((_obj81715_
               (let () (declare (not safe)) (##make-vector _k81713_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj81715_ '0 _klass81712_))
          (let ((__tmp86749 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj81715_ __tmp86749))
          _obj81715_)))
    (define make-instance
      (lambda (_klass81710_)
        (let ((__tmp86750
               (let ((__tmp86751
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass81710_))))
                 (declare (not safe))
                 (##vector-length __tmp86751))))
          (declare (not safe))
          (make-object _klass81710_ __tmp86750))))
    (define make-struct-instance
      (lambda (_klass81697_ . _args81698_)
        (let* ((_all-slots81700_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass81697_)))
               (_size81702_
                (let ()
                  (declare (not safe))
                  (##vector-length _all-slots81700_))))
          (let ((_$e81705_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass81697_))))
            (if _$e81705_
                ((lambda (_kons-id81708_)
                   (let ((__tmp86754
                          (let ()
                            (declare (not safe))
                            (make-object _klass81697_ _size81702_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass81697_
                      _kons-id81708_
                      __tmp86754
                      _args81698_)))
                 _$e81705_)
                (if (let ((__tmp86753
                           (let ()
                             (declare (not safe))
                             (##fx- _size81702_ '1)))
                          (__tmp86752 (length _args81698_)))
                      (declare (not safe))
                      (##fx= __tmp86753 __tmp86752))
                    (apply ##structure _klass81697_ _args81698_)
                    (error '"arguments don't match object size"
                           'class:
                           _klass81697_
                           'slots:
                           (let () (declare (not safe)) (##fx- _size81702_ '1))
                           'args:
                           _args81698_)))))))
    (define make-class-instance
      (lambda (_klass81687_ . _args81688_)
        (let* ((_obj81690_
                (let () (declare (not safe)) (make-instance _klass81687_)))
               (_$e81692_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass81687_))))
          (if _$e81692_
              ((lambda (_kons-id81695_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass81687_
                    _kons-id81695_
                    _obj81690_
                    _args81688_)))
               _$e81692_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass81687_
                 _obj81690_
                 _args81688_))))))
    (define struct-instance-init!
      (lambda (_obj81684_ . _args81685_)
        (if (let ((__tmp86756 (length _args81685_))
                  (__tmp86755
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj81684_))))
              (declare (not safe))
              (##fx< __tmp86756 __tmp86755))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj81684_ _args81685_))
            (error '"too many arguments for struct"
                   'object:
                   _obj81684_
                   'args:
                   _args81685_))))
    (define __struct-instance-init!
      (lambda (_obj81643_ _args81644_)
        (let _lp81646_ ((_k81648_ '1) (_rest81649_ _args81644_))
          (let* ((_rest8165081658_ _rest81649_)
                 (_else8165281666_ (lambda () _obj81643_))
                 (_K8165481672_
                  (lambda (_rest81669_ _hd81670_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj81643_ _k81648_ _hd81670_))
                    (let ((__tmp86757
                           (let () (declare (not safe)) (##fx+ _k81648_ '1))))
                      (declare (not safe))
                      (_lp81646_ __tmp86757 _rest81669_)))))
            (if (let () (declare (not safe)) (##pair? _rest8165081658_))
                (let ((_hd8165581675_
                       (let () (declare (not safe)) (##car _rest8165081658_)))
                      (_tl8165681677_
                       (let () (declare (not safe)) (##cdr _rest8165081658_))))
                  (let* ((_hd81680_ _hd8165581675_)
                         (_rest81682_ _tl8165681677_))
                    (declare (not safe))
                    (_K8165481672_ _rest81682_ _hd81680_)))
                (let () (declare (not safe)) (_else8165281666_)))))))
    (define class-instance-init!
      (lambda (_obj81640_ . _args81641_)
        (let ((__tmp86758
               (let () (declare (not safe)) (object-type _obj81640_))))
          (declare (not safe))
          (__class-instance-init! __tmp86758 _obj81640_ _args81641_))))
    (define __class-instance-init!
      (lambda (_klass81584_ _obj81585_ _args81586_)
        (let _lp81588_ ((_rest81590_ _args81586_))
          (let* ((_rest8159181601_ _rest81590_)
                 (_else8159381609_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest81590_))
                        _obj81585_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass81584_
                               'rest:
                               _rest81590_))))
                 (_K8159581621_
                  (lambda (_rest81612_ _val81613_ _key81614_)
                    (let ((_$e81616_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass81584_ _key81614_))))
                      (if _$e81616_
                          ((lambda (_off81619_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj81585_
                                _off81619_
                                _val81613_))
                             (let ()
                               (declare (not safe))
                               (_lp81588_ _rest81612_)))
                           _$e81616_)
                          (error '"unknown slot"
                                 'class:
                                 _klass81584_
                                 'slot:
                                 _key81614_))))))
            (if (let () (declare (not safe)) (##pair? _rest8159181601_))
                (let ((_hd8159681624_
                       (let () (declare (not safe)) (##car _rest8159181601_)))
                      (_tl8159781626_
                       (let () (declare (not safe)) (##cdr _rest8159181601_))))
                  (let ((_key81629_ _hd8159681624_))
                    (if (let () (declare (not safe)) (##pair? _tl8159781626_))
                        (let ((_hd8159881631_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8159781626_)))
                              (_tl8159981633_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8159781626_))))
                          (let* ((_val81636_ _hd8159881631_)
                                 (_rest81638_ _tl8159981633_))
                            (declare (not safe))
                            (_K8159581621_ _rest81638_ _val81636_ _key81629_)))
                        (let () (declare (not safe)) (_else8159381609_)))))
                (let () (declare (not safe)) (_else8159381609_)))))))
    (define constructor-init!
      (lambda (_klass81579_ _kons-id81580_ _obj81581_ . _args81582_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass81579_
           _kons-id81580_
           _obj81581_
           _args81582_))))
    (define __constructor-init!
      (lambda (_klass81569_ _kons-id81570_ _obj81571_ _args81572_)
        (let ((_$e81574_
               (let ()
                 (declare (not safe))
                 (__find-method _klass81569_ _kons-id81570_))))
          (if _$e81574_
              ((lambda (_kons81577_)
                 (apply _kons81577_ _obj81571_ _args81572_)
                 _obj81571_)
               _$e81574_)
              (error '"missing constructor"
                     'class:
                     _klass81569_
                     'method:
                     _kons-id81570_)))))
    (define struct-copy
      (lambda (_struct81567_)
        (if (let () (declare (not safe)) (##structure? _struct81567_))
            '#!void
            (error '"not a structure" _struct81567_))
        (let () (declare (not safe)) (##structure-copy _struct81567_))))
    (define struct->list
      (lambda (_obj81565_)
        (if (let () (declare (not safe)) (object? _obj81565_))
            (let () (declare (not safe)) (##vector->list _obj81565_))
            (error '"not an object" _obj81565_))))
    (define class->list
      (lambda (_obj81552_)
        (if (let () (declare (not safe)) (object? _obj81552_))
            (let ((_klass81554_
                   (let () (declare (not safe)) (object-type _obj81552_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass81554_))
                  (let ((_all-slots81556_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass81554_))))
                    (let _loop81558_ ((_index81560_
                                       (let ((__tmp86764
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots81556_))))
                                         (declare (not safe))
                                         (##fx- __tmp86764 '1)))
                                      (_plist81561_ '()))
                      (if (let () (declare (not safe)) (##fx< _index81560_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass81554_ _plist81561_))
                          (let ((_slot81563_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots81556_
                                    _index81560_))))
                            (let ((__tmp86763
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index81560_ '1)))
                                  (__tmp86759
                                   (let ((__tmp86762
                                          (symbol->keyword _slot81563_))
                                         (__tmp86760
                                          (let ((__tmp86761
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj81552_
                                                    _index81560_))))
                                            (declare (not safe))
                                            (cons __tmp86761 _plist81561_))))
                                     (declare (not safe))
                                     (cons __tmp86762 __tmp86760))))
                              (declare (not safe))
                              (_loop81558_ __tmp86763 __tmp86759))))))
                  (error '"not a class type"
                         'object:
                         _obj81552_
                         'class:
                         _klass81554_)))
            (error '"not an object" _obj81552_))))
    (define call-method
      (lambda (_obj81543_ _id81544_ . _args81545_)
        (let ((_$e81547_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81543_ _id81544_))))
          (if _$e81547_
              ((lambda (_method81550_)
                 (apply _method81550_ _obj81543_ _args81545_))
               _$e81547_)
              (error '"cannot find method"
                     'object:
                     _obj81543_
                     'method:
                     _id81544_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj81540_ _id81541_)
        (if (let () (declare (not safe)) (object? _obj81540_))
            (let ((__tmp86765
                   (let () (declare (not safe)) (object-type _obj81540_))))
              (declare (not safe))
              (find-method __tmp86765 _id81541_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj81534_ _id81535_)
        (let ((_$e81537_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81534_ _id81535_))))
          (if _$e81537_
              _$e81537_
              (error '"missing method"
                     'object:
                     _obj81534_
                     'method:
                     _id81535_)))))
    (define bound-method-ref
      (lambda (_obj81524_ _id81525_)
        (let ((_$e81527_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81524_ _id81525_))))
          (if _$e81527_
              ((lambda (_method81530_)
                 (lambda _args81532_
                   (apply _method81530_ _obj81524_ _args81532_)))
               _$e81527_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj81517_ _id81518_)
        (let ((_method81520_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj81517_ _id81518_))))
          (lambda _args81522_ (apply _method81520_ _obj81517_ _args81522_)))))
    (define find-method
      (lambda (_klass81514_ _id81515_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81514_))
            (let ()
              (declare (not safe))
              (__find-method _klass81514_ _id81515_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass81514_ _id81515_)))))
    (define __find-method
      (lambda (_klass81508_ _id81509_)
        (let ((_$e81511_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass81508_ _id81509_))))
          (if _$e81511_
              _$e81511_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81508_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass81508_ _id81509_)))))))
    (define class-find-method
      (lambda (_klass81505_ _id81506_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81505_))
            (let ()
              (declare (not safe))
              (__find-method _klass81505_ _id81506_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins81498_ _id81499_)
        (let ((__tmp86766
               (lambda (_g8150081502_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8150081502_ _id81499_)))))
          (declare (not safe))
          (ormap1 __tmp86766 _mixins81498_))))
    (define builtin-find-method
      (lambda (_klass81492_ _id81493_)
        (if (let () (declare (not safe)) (##type? _klass81492_))
            (let ((_$e81495_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass81492_ _id81493_))))
              (if _$e81495_
                  _$e81495_
                  (let ((__tmp86767
                         (let ()
                           (declare (not safe))
                           (##type-super _klass81492_))))
                    (declare (not safe))
                    (builtin-find-method __tmp86767 _id81493_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass81484_ _id81485_)
        (let ((_$e81487_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass81484_))))
          (if _$e81487_
              ((lambda (_ht81490_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht81490_ _id81485_ '#f)))
               _$e81487_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass81481_ _id81482_)
        (let ((__tmp86768
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81481_))))
          (declare (not safe))
          (mixin-find-method __tmp86768 _id81482_))))
    (define builtin-method-ref
      (lambda (_klass81473_ _id81474_)
        (let ((_$e81476_
               (let ((__tmp86769
                      (let () (declare (not safe)) (##type-id _klass81473_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp86769 '#f))))
          (if _$e81476_
              ((lambda (_mtab81479_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab81479_ _id81474_ '#f)))
               _$e81476_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass81439_ _id81440_ _proc81441_ _rebind?81442_)
        (letrec ((_bind!81444_
                  (lambda (_ht81457_)
                    (if (and (let () (declare (not safe)) (not _rebind?81442_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht81457_ _id81440_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass81439_
                               'method:
                               _id81440_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht81457_ _id81440_ _proc81441_))))))
          (if (let () (declare (not safe)) (procedure? _proc81441_))
              '#!void
              (error '"bad method; expected procedure" _proc81441_))
          (if (let () (declare (not safe)) (type-descriptor? _klass81439_))
              (let ((_ht81446_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass81439_))))
                (if _ht81446_
                    (let () (declare (not safe)) (_bind!81444_ _ht81446_))
                    (let ((_ht81448_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass81439_ _ht81448_))
                      (let () (declare (not safe)) (_bind!81444_ _ht81448_)))))
              (if (let () (declare (not safe)) (##type? _klass81439_))
                  (let ((_ht81455_
                         (let ((_$e81450_
                                (let ((__tmp86770
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass81439_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp86770
                                   '#f))))
                           (if _$e81450_
                               _$e81450_
                               (let ((_ht81453_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp86771
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass81439_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp86771
                                    _ht81453_))
                                 _ht81453_)))))
                    (declare (not safe))
                    (_bind!81444_ _ht81455_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass81439_))))))
    (define bind-method!__0
      (lambda (_klass81462_ _id81463_ _proc81464_)
        (let ((_rebind?81466_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass81462_
           _id81463_
           _proc81464_
           _rebind?81466_))))
    (define bind-method!
      (lambda _g86773_
        (let ((_g86772_ (let () (declare (not safe)) (##length _g86773_))))
          (cond ((let () (declare (not safe)) (##fx= _g86772_ 3))
                 (apply (lambda (_klass81462_ _id81463_ _proc81464_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass81462_
                             _id81463_
                             _proc81464_)))
                        _g86773_))
                ((let () (declare (not safe)) (##fx= _g86772_ 4))
                 (apply (lambda (_klass81468_
                                 _id81469_
                                 _proc81470_
                                 _rebind?81471_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass81468_
                             _id81469_
                             _proc81470_
                             _rebind?81471_)))
                        _g86773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g86773_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc81435_ _specializer81436_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc81435_ _specializer81436_))))
    (define seal-class!
      (lambda (_klass81402_)
        (letrec ((_collect-methods!81404_
                  (lambda (_mtab81420_)
                    (letrec ((_merge!81422_
                              (lambda (_tab81430_)
                                (let ((__tmp86774
                                       (lambda (_id81432_ _proc81433_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab81420_
                                            _id81432_
                                            _proc81433_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp86774 _tab81430_))))
                             (_collect-direct-methods!81423_
                              (lambda (_klass81425_)
                                (let ((_$e81427_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass81425_))))
                                  (if _$e81427_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!81422_ _$e81427_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!81423_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass81402_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81402_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81402_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass81402_))
                        '#!void
                        (error '"cannot seal non-final class" _klass81402_))
                    (let ((_vtab81406_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab81407_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!81404_ _mtab81407_))
                      (let ((__tmp86775
                             (lambda (_id81409_ _proc81410_)
                               (let ((_$e81412_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc81410_
                                         '#f))))
                                 (if _$e81412_
                                     ((lambda (_specializer81415_)
                                        (let ((_proc81417_
                                               (_specializer81415_
                                                _klass81402_))
                                              (_gid81418_
                                               (let ((__tmp86776
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass81402_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp86776
                                                  '"::["
                                                  _id81409_
                                                  '"]"))))
                                          (eval (let ((__tmp86777
                                                       (let ((__tmp86778
                                                              (let ((__tmp86779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp86780
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc81417_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp86780))))
                        (declare (not safe))
                        (cons __tmp86779 '()))))
                 (declare (not safe))
                 (cons _gid81418_ __tmp86778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp86777)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab81406_
                                             _id81409_
                                             _proc81417_))))
                                      _$e81412_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab81406_
                                        _id81409_
                                        _proc81410_)))))))
                        (declare (not safe))
                        (table-for-each __tmp86775 _mtab81407_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass81402_
                         _vtab81406_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass81402_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass81351_ _obj81352_ _id81353_)
        (let ((_klass81355_
               (let () (declare (not safe)) (object-type _obj81352_)))
              (_type-id81356_
               (let () (declare (not safe)) (##type-id _subklass81351_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81355_))
              (let _lp81358_ ((_rest81360_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass81355_))))
                (let* ((_rest8136181369_ _rest81360_)
                       (_else8136381377_ (lambda () '#f))
                       (_K8136581383_
                        (lambda (_rest81380_ _klass81381_)
                          (if (let ((__tmp86783
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass81381_))))
                                (declare (not safe))
                                (eq? _type-id81356_ __tmp86783))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest81380_ _id81353_))
                              (let ()
                                (declare (not safe))
                                (_lp81358_ _rest81380_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8136181369_))
                      (let ((_hd8136681386_
                             (let ()
                               (declare (not safe))
                               (##car _rest8136181369_)))
                            (_tl8136781388_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8136181369_))))
                        (let* ((_klass81391_ _hd8136681386_)
                               (_rest81393_ _tl8136781388_))
                          (declare (not safe))
                          (_K8136581383_ _rest81393_ _klass81391_)))
                      (let () (declare (not safe)) (_else8136381377_)))))
              (if (let () (declare (not safe)) (##type? _klass81355_))
                  (let _lp81395_ ((_klass81397_ _klass81355_))
                    (if (let ((__tmp86782
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass81397_))))
                          (declare (not safe))
                          (eq? _type-id81356_ __tmp86782))
                        (let ((__tmp86781
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81397_))))
                          (declare (not safe))
                          (builtin-find-method __tmp86781 _id81353_))
                        (let ((_$e81399_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81397_))))
                          (if _$e81399_
                              (let ()
                                (declare (not safe))
                                (_lp81395_ _$e81399_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass81341_ _obj81342_ _id81343_ . _args81344_)
        (let ((_$e81346_
               (let ()
                 (declare (not safe))
                 (next-method _subklass81341_ _obj81342_ _id81343_))))
          (if _$e81346_
              ((lambda (_methodf81349_)
                 (apply _methodf81349_ _obj81342_ _args81344_))
               _$e81346_)
              (error '"cannot find next method"
                     'object:
                     _obj81342_
                     'method:
                     _id81343_)))))
    (define write-style (lambda (_we81339_) (macro-writeenv-style _we81339_)))
    (define write-object
      (lambda (_we81331_ _obj81332_)
        (let ((_$e81334_
               (let () (declare (not safe)) (method-ref _obj81332_ ':wr))))
          (if _$e81334_
              ((lambda (_method81337_) (_method81337_ _obj81332_ _we81331_))
               _$e81334_)
              (let ()
                (declare (not safe))
                (##default-wr _we81331_ _obj81332_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
