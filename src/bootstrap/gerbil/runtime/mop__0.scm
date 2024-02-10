(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707555131)
  (begin
    (define type-id
      (lambda (_klass82454_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82454_))
            (let () (declare (not safe)) (##type-id _klass82454_))
            (if (let () (declare (not safe)) (not _klass82454_))
                '#f
                (error '"not a type descriptor" _klass82454_)))))
    (define type=?
      (lambda (_x82451_ _y82452_)
        (let ((__tmp86673 (let () (declare (not safe)) (type-id _x82451_)))
              (__tmp86672 (let () (declare (not safe)) (type-id _y82452_))))
          (declare (not safe))
          (eq? __tmp86673 __tmp86672))))
    (define type-descriptor?
      (lambda (_klass82449_)
        (if (let () (declare (not safe)) (##type? _klass82449_))
            (let ((__tmp86674
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass82449_))))
              (declare (not safe))
              (eq? __tmp86674 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass82447_)
        (let ((__tmp86675
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82447_))))
          (declare (not safe))
          (assgetq 'struct: __tmp86675))))
    (define type-final?
      (lambda (_klass82445_)
        (let ((__tmp86676
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82445_))))
          (declare (not safe))
          (assgetq 'final: __tmp86676))))
    (define struct-type?
      (lambda (_klass82443_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82443_))
            (let () (declare (not safe)) (type-struct? _klass82443_))
            '#f)))
    (define class-type?
      (lambda (_klass82441_)
        (let () (declare (not safe)) (type-descriptor? _klass82441_))))
    (define properties-form
      (lambda (_properties82407_)
        (map (lambda (_e8240882410_)
               (let* ((_g8241282419_ _e8240882410_)
                      (_E8241482423_
                       (lambda () (error '"No clause matching" _g8241282419_)))
                      (_K8241582429_
                       (lambda (_val82426_ _key82427_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key82427_ 'direct-supers:))
                             (let ((__tmp86677 (map type-id _val82426_)))
                               (declare (not safe))
                               (cons _key82427_ __tmp86677))
                             (let ()
                               (declare (not safe))
                               (cons _key82427_ _val82426_))))))
                 (if (let () (declare (not safe)) (##pair? _g8241282419_))
                     (let ((_hd8241682432_
                            (let ()
                              (declare (not safe))
                              (##car _g8241282419_)))
                           (_tl8241782434_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8241282419_))))
                       (let* ((_key82437_ _hd8241682432_)
                              (_val82439_ _tl8241782434_))
                         (declare (not safe))
                         (_K8241582429_ _val82439_ _key82437_)))
                     (let () (declare (not safe)) (_E8241482423_)))))
             _properties82407_)))
    (define make-type-descriptor
      (lambda (_type-id82320_
               _type-name82321_
               _type-super82322_
               _precedence-list82323_
               _all-slots82324_
               _properties82325_
               _constructor82326_
               _slot-table82327_
               _methods82328_)
        (letrec ((_make-props!82330_
                  (lambda (_key82376_)
                    (letrec* ((_ht82378_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!82379_
                               (lambda (_ht82400_ _slots82401_)
                                 (for-each
                                  (lambda (_g8240282404_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht82400_
                                       _g8240282404_
                                       '#t)))
                                  _slots82401_)))
                              (_put-alist!82380_
                               (lambda (_ht82389_ _key82390_ _alist82391_)
                                 (let ((_$e82393_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key82390_ _alist82391_))))
                                   (if _$e82393_
                                       ((lambda (_g8239582397_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!82379_
                                             _ht82389_
                                             _g8239582397_)))
                                        _$e82393_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!82380_
                         _ht82378_
                         _key82376_
                         _properties82325_))
                      (for-each
                       (lambda (_mixin82382_)
                         (let ((_alist82384_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin82382_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist82384_))
                                   (let ((__tmp86679
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key82376_
                                                     _alist82384_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp86679)))
                               (let ((__tmp86678
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin82382_))))))
                                 (declare (not safe))
                                 (_put-slots!82379_ _ht82378_ __tmp86678))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!82380_
                                  _ht82378_
                                  _key82376_
                                  _alist82384_)))))
                       _precedence-list82323_)
                      _ht82378_))))
          (let* ((_transparent?82332_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties82325_)))
                 (_all-slots-printable?82337_
                  (let ((_$e82334_ _transparent?82332_))
                    (if _$e82334_
                        _$e82334_
                        (let ((__tmp86680
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties82325_))))
                          (declare (not safe))
                          (eq? '#t __tmp86680)))))
                 (_printable82339_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?82337_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82330_ 'print:))
                      '#f))
                 (_all-slots-equalable?82344_
                  (let ((_$e82341_ _transparent?82332_))
                    (if _$e82341_
                        _$e82341_
                        (let ((__tmp86681
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties82325_))))
                          (declare (not safe))
                          (eq? '#t __tmp86681)))))
                 (_equalable82346_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?82344_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82330_ 'equal:))
                      '#f))
                 (_first-new-field82348_
                  (if _type-super82322_
                      (let ((__tmp86682
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super82322_))))
                        (declare (not safe))
                        (##vector-length __tmp86682))
                      '1))
                 (_field-info-length82350_
                  (let ((__tmp86683
                         (let ((__tmp86684
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots82324_))))
                           (declare (not safe))
                           (##fx- __tmp86684 _first-new-field82348_))))
                    (declare (not safe))
                    (##fx* '3 __tmp86683)))
                 (_field-info82352_ (make-vector _field-info-length82350_ '#f))
                 (_opaque?82357_
                  (let ((_$e82354_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?82344_))))
                    (if _$e82354_
                        _$e82354_
                        (if _type-super82322_
                            (let ((__tmp86685
                                   (let ((__tmp86686
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super82322_))))
                                     (declare (not safe))
                                     (##fxand __tmp86686 '1))))
                              (declare (not safe))
                              (##fx= __tmp86685 '1))
                            '#f)))))
            (let _loop82360_ ((_i82362_ _first-new-field82348_) (_j82363_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j82363_ _field-info-length82350_))
                  (let* ((_slot82365_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots82324_ _i82362_)))
                         (_flags82373_
                          (if _transparent?82332_
                              '0
                              (let ((__tmp86688
                                     (if (or _all-slots-printable?82337_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable82339_
                                                _slot82365_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp86687
                                     (if (or _all-slots-equalable?82344_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable82346_
                                                _slot82365_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp86688 __tmp86687)))))
                    (vector-set! _field-info82352_ _j82363_ _slot82365_)
                    (vector-set!
                     _field-info82352_
                     (let () (declare (not safe)) (##fx+ _j82363_ '1))
                     _flags82373_)
                    (let ((__tmp86690
                           (let () (declare (not safe)) (##fx+ _i82362_ '1)))
                          (__tmp86689
                           (let () (declare (not safe)) (##fx+ _j82363_ '3))))
                      (declare (not safe))
                      (_loop82360_ __tmp86690 __tmp86689)))
                  '#!void))
            (let ((__tmp86691 (if _opaque?82357_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id82320_
               _type-name82321_
               __tmp86691
               _type-super82322_
               _field-info82352_
               _precedence-list82323_
               _all-slots82324_
               _slot-table82327_
               _properties82325_
               _constructor82326_
               _methods82328_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass82318_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82318_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass82316_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82316_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass82314_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82314_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass82312_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82312_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass82310_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82310_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass82308_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82308_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass82305_ _ht82306_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass82305_
           _ht82306_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-fields
      (lambda (_klass82303_)
        (let ((__tmp86692
               (let ((__tmp86693
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass82303_))))
                 (declare (not safe))
                 (##vector-length __tmp86693))))
          (declare (not safe))
          (##fx- __tmp86692 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass82301_)
        (let ((__tmp86694
               (let () (declare (not safe)) (##type-flags _klass82301_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp86694))))
    (define type-descriptor-seal!
      (lambda (_klass82299_)
        (let ((__tmp86695
               (let ((__tmp86697
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp86696
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass82299_))))
                 (declare (not safe))
                 (##fxior __tmp86697 __tmp86696))))
          (declare (not safe))
          (##structure-set!
           _klass82299_
           __tmp86695
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id82280_
               _name82281_
               _super82282_
               _direct-slots82283_
               _properties82284_
               _constructor82285_)
        (if (and _super82282_
                 (let ((__tmp86698
                        (let ()
                          (declare (not safe))
                          (struct-type? _super82282_))))
                   (declare (not safe))
                   (not __tmp86698)))
            (error '"illegal super type; not a struct-type" _super82282_)
            '#!void)
        (let* ((_type82287_
                (let ((__tmp86701
                       (if _super82282_
                           (let ()
                             (declare (not safe))
                             (cons _super82282_ '()))
                           '()))
                      (__tmp86699
                       (if (let ()
                             (declare (not safe))
                             (assgetq 'struct: _properties82284_))
                           _properties82284_
                           (let ((__tmp86700
                                  (let ()
                                    (declare (not safe))
                                    (cons 'struct: '#t))))
                             (declare (not safe))
                             (cons __tmp86700 _properties82284_)))))
                  (declare (not safe))
                  (make-class-type
                   _id82280_
                   _name82281_
                   __tmp86701
                   _direct-slots82283_
                   __tmp86699
                   _constructor82285_)))
               (_all-slots82289_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type82287_)))
               (_len82291_ (length _direct-slots82283_))
               (_start82293_
                (let ((__tmp86702
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots82289_))))
                  (declare (not safe))
                  (##fx- __tmp86702 _len82291_))))
          (if (let ((__tmp86704
                     (lambda (_slot82296_ _i82297_)
                       (let ((__tmp86705
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots82289_ _i82297_))))
                         (declare (not safe))
                         (eq? _slot82296_ __tmp86705))))
                    (__tmp86703
                     (let ()
                       (declare (not safe))
                       (iota _len82291_ _start82293_))))
                (declare (not safe))
                (andmap2 __tmp86704 _direct-slots82283_ __tmp86703))
              '#!void
              (error '"non-unique slots in struct"
                     _name82281_
                     _direct-slots82283_))
          _type82287_)))
    (define make-struct-predicate
      (lambda (_klass82272_)
        (let ((_tid82274_
               (let () (declare (not safe)) (##type-id _klass82272_))))
          (if (let () (declare (not safe)) (type-final? _klass82272_))
              (lambda (_obj82276_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj82276_ _tid82274_)))
              (lambda (_obj82278_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj82278_ _tid82274_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass82260_ _slot82261_)
        (let ((_$e82263_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82260_ _slot82261_))))
          (if _$e82263_
              ((lambda (_off82266_)
                 (if (let () (declare (not safe)) (type-final? _klass82260_))
                     (lambda (_obj82268_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _obj82268_
                          _off82266_
                          _klass82260_
                          '#f)))
                     (lambda (_obj82270_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _obj82270_
                          _off82266_
                          _klass82260_
                          '#f)))))
               _$e82263_)
              (error '"unknown slot"
                     'class:
                     _klass82260_
                     'slot:
                     _slot82261_)))))
    (define make-struct-slot-mutator
      (lambda (_klass82246_ _slot82247_)
        (let ((_$e82249_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82246_ _slot82247_))))
          (if _$e82249_
              ((lambda (_off82252_)
                 (if (let () (declare (not safe)) (type-final? _klass82246_))
                     (lambda (_obj82254_ _val82255_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _obj82254_
                          _val82255_
                          _off82252_
                          _klass82246_
                          '#f)))
                     (lambda (_obj82257_ _val82258_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _obj82257_
                          _val82258_
                          _off82252_
                          _klass82246_
                          '#f)))))
               _$e82249_)
              (error '"unknown slot"
                     'class:
                     _klass82246_
                     'slot:
                     _slot82247_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass82236_ _slot82237_)
        (let ((_$e82239_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82236_ _slot82237_))))
          (if _$e82239_
              ((lambda (_off82242_)
                 (lambda (_obj82244_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _obj82244_
                      _off82242_
                      _klass82236_
                      '#f))))
               _$e82239_)
              (error '"unknown slot"
                     'class:
                     _klass82236_
                     'slot:
                     _slot82237_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass82225_ _slot82226_)
        (let ((_$e82228_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82225_ _slot82226_))))
          (if _$e82228_
              ((lambda (_off82231_)
                 (lambda (_obj82233_ _val82234_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj82233_
                      _val82234_
                      _off82231_
                      _klass82225_
                      '#f))))
               _$e82228_)
              (error '"unknown slot"
                     'class:
                     _klass82225_
                     'slot:
                     _slot82226_)))))
    (define make-final-field-accessor
      (lambda (_klass82219_ _slot82220_ _field82221_)
        (lambda (_obj82223_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj82223_
             _field82221_
             _klass82219_
             _slot82220_)))))
    (define make-struct-field-accessor
      (lambda (_klass82213_ _slot82214_ _field82215_)
        (lambda (_obj82217_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj82217_
             _field82215_
             _klass82213_
             _slot82214_)))))
    (define make-final-field-mutator
      (lambda (_klass82206_ _slot82207_ _field82208_)
        (lambda (_obj82210_ _val82211_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj82210_
             _val82211_
             _field82208_
             _klass82206_
             _slot82207_)))))
    (define make-struct-field-mutator
      (lambda (_klass82199_ _slot82200_ _field82201_)
        (lambda (_obj82203_ _val82204_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj82203_
             _val82204_
             _field82201_
             _klass82199_
             _slot82200_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass82193_ _slot82194_ _field82195_)
        (lambda (_obj82197_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj82197_
             _field82195_
             _klass82193_
             _slot82194_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass82186_ _slot82187_ _field82188_)
        (lambda (_obj82190_ _val82191_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj82190_
             _val82191_
             _field82188_
             _klass82186_
             _slot82187_)))))
    (define substruct?
      (lambda (_maybe-sub-struct82177_ _maybe-super-struct82178_)
        (let ((_maybe-super-struct-id82180_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct82178_))))
          (let _lp82182_ ((_super-struct82184_ _maybe-sub-struct82177_))
            (if (let () (declare (not safe)) (not _super-struct82184_))
                '#f
                (if (let ((__tmp86707
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct82184_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id82180_ __tmp86707))
                    '#t
                    (let ((__tmp86706
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct82184_))))
                      (declare (not safe))
                      (_lp82182_ __tmp86706))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct82174_ _maybe-sub-struct82175_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct82175_ _maybe-super-struct82174_))))
    (define base-struct/1
      (lambda (_klass82172_)
        (if (let () (declare (not safe)) (struct-type? _klass82172_))
            _klass82172_
            (if (let () (declare (not safe)) (class-type? _klass82172_))
                (let () (declare (not safe)) (##type-super _klass82172_))
                (if (let () (declare (not safe)) (not _klass82172_))
                    '#f
                    (error '"not a class or false" _klass82172_))))))
    (define base-struct/2
      (lambda (_klass182160_ _klass282161_)
        (let ((_s182163_
               (let () (declare (not safe)) (base-struct/1 _klass182160_)))
              (_s282164_
               (let () (declare (not safe)) (base-struct/1 _klass282161_))))
          (if (or (let () (declare (not safe)) (not _s182163_))
                  (and _s282164_
                       (let ()
                         (declare (not safe))
                         (substruct? _s182163_ _s282164_))))
              _s282164_
              (if (or (let () (declare (not safe)) (not _s282164_))
                      (and _s182163_
                           (let ()
                             (declare (not safe))
                             (substruct? _s282164_ _s182163_))))
                  _s182163_
                  (error '"bad mixin: incompatible struct bases"
                         _klass182160_
                         _klass282161_
                         _s182163_
                         _s282164_))))))
    (define base-struct/list
      (lambda (_all-supers82044_)
        (let* ((_all-supers8204582070_ _all-supers82044_)
               (_E8205082074_
                (lambda ()
                  (error '"No clause matching" _all-supers8204582070_))))
          (let ((_K8206882157_ (lambda () '#f))
                (_K8206582143_
                 (lambda (_x82141_)
                   (let () (declare (not safe)) (base-struct/1 _x82141_))))
                (_K8206082120_
                 (lambda (_y82117_ _x82118_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x82118_ _y82117_))))
                (_K8205182081_
                 (lambda (_y82078_ _x82079_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x82079_ _y82078_)))))
            (let* ((___match8667086671_
                    (lambda (_hd8205282084_ _tl8205382086_)
                      (let ((_x82089_ _hd8205282084_))
                        (letrec ((_splice-rest8205582091_
                                  (lambda (_rest8205982098_ _y82100_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8205982098_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8205182081_ _y82100_ _x82089_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8205082074_)))))
                                 (_splice-try8205782093_
                                  (lambda (_hd8205882102_
                                           _rest8205982104_
                                           _y8205482105_)
                                    (let ((_y82108_ _hd8205882102_))
                                      (let ((__tmp86709
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8205982104_)))
                                            (__tmp86708
                                             (let ()
                                               (declare (not safe))
                                               (cons _y82108_ _y8205482105_))))
                                        (declare (not safe))
                                        (_splice-loop8205682095_
                                         __tmp86709
                                         __tmp86708)))))
                                 (_splice-loop8205682095_
                                  (lambda (_rest8205982110_ _y8205482111_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8205982110_))
                                        (let ((__tmp86711
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8205982110_))))
                                          (declare (not safe))
                                          (_splice-try8205782093_
                                           __tmp86711
                                           _rest8205982110_
                                           _y8205482111_))
                                        (let ((__tmp86710
                                               (reverse _y8205482111_)))
                                          (declare (not safe))
                                          (_splice-rest8205582091_
                                           _rest8205982110_
                                           __tmp86710))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8205682095_ _tl8205382086_ '()))))))
                   (_try-match8204782153_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8204582070_))
                          (let ((_tl8206782148_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8204582070_)))
                                (_hd8206682146_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8204582070_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8206782148_))
                                (let ((_x82151_ _hd8206682146_))
                                  (declare (not safe))
                                  (base-struct/1 _x82151_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8206782148_))
                                    (let ((_tl8206482132_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8206782148_)))
                                          (_hd8206382130_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8206782148_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8206482132_))
                                          (let ((_x82128_ _hd8206682146_)
                                                (_y82135_ _hd8206382130_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8206082120_
                                               _y82135_
                                               _x82128_)))
                                          (___match8667086671_
                                           _hd8206682146_
                                           _tl8206782148_)))
                                    (___match8667086671_
                                     _hd8206682146_
                                     _tl8206782148_))))
                          (let () (declare (not safe)) (_E8205082074_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8204582070_))
                  (let () (declare (not safe)) (_K8206882157_))
                  (let () (declare (not safe)) (_try-match8204782153_))))))))
    (define base-struct
      (lambda _all-supers82042_
        (let () (declare (not safe)) (base-struct/list _all-supers82042_))))
    (define find-super-ctor
      (lambda (_super82040_)
        (let () (declare (not safe)) (find-super-constructor _super82040_))))
    (define find-super-constructor
      (lambda (_super81992_)
        (let _lp81994_ ((_rest81996_ _super81992_) (_constructor81997_ '#f))
          (let* ((_rest8199882006_ _rest81996_)
                 (_else8200082014_ (lambda () _constructor81997_))
                 (_K8200282028_
                  (lambda (_rest82017_ _hd82018_)
                    (let ((_$e82020_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd82018_))))
                      (if _$e82020_
                          ((lambda (_xconstructor82023_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor81997_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor81997_
                                            _xconstructor82023_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp81994_ _rest82017_ _xconstructor82023_))
                                 (error '"conflicting implicit constructors"
                                        _constructor81997_
                                        _xconstructor82023_)))
                           _$e82020_)
                          (let ()
                            (declare (not safe))
                            (_lp81994_ _rest82017_ _constructor81997_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8199882006_))
                (let ((_hd8200382031_
                       (let () (declare (not safe)) (##car _rest8199882006_)))
                      (_tl8200482033_
                       (let () (declare (not safe)) (##cdr _rest8199882006_))))
                  (let* ((_hd82036_ _hd8200382031_)
                         (_rest82038_ _tl8200482033_))
                    (declare (not safe))
                    (_K8200282028_ _rest82038_ _hd82036_)))
                (let () (declare (not safe)) (_else8200082014_)))))))
    (define compute-class-slots
      (lambda (_super-struct81963_
               _class-precedence-list81964_
               _direct-slots81965_)
        (let* ((_previous-slots81967_
                (if _super-struct81963_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct81963_))
                    '#(#f)))
               (_next-slot81969_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots81967_)))
               (_slot-table81971_
                (if _super-struct81963_
                    (let ((__tmp86712
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct81963_))))
                      (declare (not safe))
                      (hash-copy __tmp86712))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots81973_ '())
               (_process-slot81977_
                (lambda (_slot81975_)
                  (if (let () (declare (not safe)) (symbol? _slot81975_))
                      '#!void
                      (error '"invalid slot name" _slot81975_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table81971_ _slot81975_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table81971_
                           _slot81975_
                           _next-slot81969_))
                        (let ((__tmp86713 (symbol->keyword _slot81975_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table81971_
                           __tmp86713
                           _next-slot81969_))
                        (set! _r-slots81973_
                              (let ()
                                (declare (not safe))
                                (cons _slot81975_ _r-slots81973_)))
                        (set! _next-slot81969_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot81969_ '1)))))))
               (_process-slots81983_
                (lambda (_g8197881980_)
                  (for-each _process-slot81977_ _g8197881980_))))
          (for-each
           (lambda (_mixin81986_)
             (if (let () (declare (not safe)) (type-struct? _mixin81986_))
                 '#!void
                 (let ((__tmp86714
                        (let ((__tmp86715
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin81986_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp86715 '()))))
                   (declare (not safe))
                   (_process-slots81983_ __tmp86714))))
           (reverse _class-precedence-list81964_))
          (let ()
            (declare (not safe))
            (_process-slots81983_ _direct-slots81965_))
          (let ((_all-slots81988_ (make-vector _next-slot81969_ '#f)))
            (vector-copy! _all-slots81988_ '0 _previous-slots81967_)
            (for-each
             (lambda (_slot81990_)
               (set! _next-slot81969_
                     (let () (declare (not safe)) (##fx- _next-slot81969_ '1)))
               (vector-set! _all-slots81988_ _next-slot81969_ _slot81990_))
             _r-slots81973_)
            (values _all-slots81988_ _slot-table81971_)))))
    (define make-class-type
      (lambda (_id81925_
               _name81926_
               _direct-supers81927_
               _direct-slots81928_
               _properties81929_
               _constructor81930_)
        (let ((_$e81934_
               (let ((__tmp86716
                      (lambda (_klass81932_)
                        (let ((__tmp86717
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass81932_))))
                          (declare (not safe))
                          (not __tmp86717)))))
                 (declare (not safe))
                 (find __tmp86716 _direct-supers81927_))))
          (if _$e81934_
              ((lambda (_g8193681938_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8193681938_))
               _$e81934_)
              (let ((_$e81941_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers81927_))))
                (if _$e81941_
                    ((lambda (_g8194381945_)
                       (error '"Cannot extend final class" _g8194381945_))
                     _$e81941_)
                    '#!void))))
        (let* ((_struct-super81948_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers81927_)))
               (_precedence-list81950_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers81927_)))
               (_g86718_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super81948_
                   _precedence-list81950_
                   _direct-slots81928_))))
          (begin
            (let ((_g86719_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g86718_) (##vector-length _g86718_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g86719_ 2)))
                  (error "Context expects 2 values" _g86719_)))
            (let ((_all-slots81952_
                   (let () (declare (not safe)) (##vector-ref _g86718_ 0)))
                  (_slot-table81953_
                   (let () (declare (not safe)) (##vector-ref _g86718_ 1))))
              (let* ((_properties81955_
                      (let ((__tmp86722
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots81928_)))
                            (__tmp86720
                             (let ((__tmp86721
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers81927_))))
                               (declare (not safe))
                               (cons __tmp86721 _properties81929_))))
                        (declare (not safe))
                        (cons __tmp86722 __tmp86720)))
                     (_constructor*81960_
                      (let ((_$e81957_ _constructor81930_))
                        (if _$e81957_
                            _$e81957_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers81927_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor
                   _id81925_
                   _name81926_
                   _struct-super81948_
                   _precedence-list81950_
                   _all-slots81952_
                   _properties81955_
                   _constructor*81960_
                   _slot-table81953_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass81923_)
        (let ((__tmp86723
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81923_))))
          (declare (not safe))
          (cons _klass81923_ __tmp86723))))
    (define struct-precedence-list
      (lambda (_strukt81918_)
        (let ((__tmp86724
               (let ((_$e81920_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt81918_))))
                 (if _$e81920_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e81920_))
                     '()))))
          (declare (not safe))
          (cons _strukt81918_ __tmp86724))))
    (define class-linearize-mixins
      (lambda (_klass-lst81916_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst81916_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass81906_)
        (if (let () (declare (not safe)) (type-final? _klass81906_))
            (lambda (_g8190781909_)
              (let ((__tmp86725
                     (let () (declare (not safe)) (##type-id _klass81906_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8190781909_ __tmp86725)))
            (lambda (_g8191181913_)
              (let ()
                (declare (not safe))
                (class-instance? _klass81906_ _g8191181913_))))))
    (define if-class-slot-field
      (lambda (_klass81895_
               _slot81896_
               _if-final81897_
               _if-struct81898_
               _if-struct-field81899_
               _if-class-slot81900_)
        (let ((_field81902_
               (let ((__tmp86726
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass81895_))))
                 (declare (not safe))
                 (table-ref __tmp86726 _slot81896_ '#f))))
          (if (let () (declare (not safe)) (not _field81902_))
              (error '"unknown slot" 'class: _klass81895_ 'slot: _slot81896_)
              (if (let () (declare (not safe)) (type-final? _klass81895_))
                  (_if-final81897_ _klass81895_ _slot81896_ _field81902_)
                  (if (let () (declare (not safe)) (type-struct? _klass81895_))
                      (_if-struct81898_ _klass81895_ _slot81896_ _field81902_)
                      (if (let ((_strukt81904_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass81895_))))
                            (and _strukt81904_
                                 (let ((__tmp86727
                                        (let ((__tmp86728
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt81904_))))
                                          (declare (not safe))
                                          (##vector-length __tmp86728))))
                                   (declare (not safe))
                                   (##fx< _field81902_ __tmp86727))))
                          (_if-struct-field81899_
                           _klass81895_
                           _slot81896_
                           _field81902_)
                          (_if-class-slot81900_
                           _klass81895_
                           _slot81896_
                           _field81902_))))))))
    (define make-class-slot-accessor
      (lambda (_klass81892_ _slot81893_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81892_
           _slot81893_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object81876_ _class81877_ _slot81878_)
        (apply error
               '"not an instance"
               'object:
               _object81876_
               'class:
               _class81877_
               (if _slot81878_
                   (let ((__tmp86729
                          (let ()
                            (declare (not safe))
                            (cons _slot81878_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp86729))
                   '()))))
    (define not-an-instance__0
      (lambda (_object81883_ _class81884_)
        (let ((_slot81886_ '#f))
          (declare (not safe))
          (not-an-instance__% _object81883_ _class81884_ _slot81886_))))
    (define not-an-instance
      (lambda _g86731_
        (let ((_g86730_ (let () (declare (not safe)) (##length _g86731_))))
          (cond ((let () (declare (not safe)) (##fx= _g86730_ 2))
                 (apply (lambda (_object81883_ _class81884_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object81883_ _class81884_)))
                        _g86731_))
                ((let () (declare (not safe)) (##fx= _g86730_ 3))
                 (apply (lambda (_object81888_ _class81889_ _slot81890_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object81888_
                             _class81889_
                             _slot81890_)))
                        _g86731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g86731_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass81869_ _slot81870_ _field81871_)
        (lambda (_obj81873_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81869_ _obj81873_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81873_ _field81871_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81873_ _klass81869_ _slot81870_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass81863_ _slot81864_ _field81865_)
        (lambda (_obj81867_)
          (if (let ((__tmp86732
                     (let () (declare (not safe)) (##type-id _klass81863_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81867_ __tmp86732))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81867_ _field81865_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81863_ _obj81867_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj81867_ _slot81864_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81867_
                     _klass81863_
                     _slot81864_)))))))
    (define make-class-slot-mutator
      (lambda (_klass81860_ _slot81861_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81860_
           _slot81861_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass81853_ _slot81854_ _field81855_)
        (lambda (_obj81857_ _val81858_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81853_ _obj81857_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81857_ _field81855_ _val81858_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81857_ _klass81853_ _slot81854_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass81846_ _slot81847_ _field81848_)
        (lambda (_obj81850_ _val81851_)
          (if (let ((__tmp86733
                     (let () (declare (not safe)) (##type-id _klass81846_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81850_ __tmp86733))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81850_ _field81848_ _val81851_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81846_ _obj81850_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj81850_ _slot81847_ _val81851_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81850_
                     _klass81846_
                     _slot81847_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass81843_ _slot81844_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81843_
           _slot81844_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass81837_ _slot81838_ _field81839_)
        (lambda (_obj81841_)
          (if (let ((__tmp86734
                     (let () (declare (not safe)) (##type-id _klass81837_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81841_ __tmp86734))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81841_ _field81839_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj81841_ _slot81838_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass81834_ _slot81835_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81834_
           _slot81835_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass81827_ _slot81828_ _field81829_)
        (lambda (_obj81831_ _val81832_)
          (if (let ((__tmp86735
                     (let () (declare (not safe)) (##type-id _klass81827_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81831_ __tmp86735))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81831_ _field81829_ _val81832_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj81831_ _slot81828_ _val81832_))))))
    (define class-slot-offset
      (lambda (_klass81824_ _slot81825_)
        (let ((__tmp86736
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass81824_))))
          (declare (not safe))
          (table-ref __tmp86736 _slot81825_ '#f))))
    (define class-slot-ref
      (lambda (_klass81818_ _obj81819_ _slot81820_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81818_ _obj81819_))
            (let ((_off81822_
                   (let ((__tmp86737
                          (let ()
                            (declare (not safe))
                            (object-type _obj81819_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86737 _slot81820_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj81819_
               _off81822_
               _klass81818_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81819_ _klass81818_)))))
    (define class-slot-set!
      (lambda (_klass81811_ _obj81812_ _slot81813_ _val81814_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81811_ _obj81812_))
            (let ((_off81816_
                   (let ((__tmp86738
                          (let ()
                            (declare (not safe))
                            (object-type _obj81812_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86738 _slot81813_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj81812_
               _val81814_
               _off81816_
               _klass81811_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81812_ _klass81811_)))))
    (define unchecked-field-ref
      (lambda (_obj81808_ _off81809_)
        (let ((__tmp86739
               (let () (declare (not safe)) (##structure-type _obj81808_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj81808_ _off81809_ __tmp86739 '#f))))
    (define unchecked-field-set!
      (lambda (_obj81804_ _off81805_ _val81806_)
        (let ((__tmp86740
               (let () (declare (not safe)) (##structure-type _obj81804_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj81804_
           _val81806_
           _off81805_
           __tmp86740
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj81801_ _slot81802_)
        (let ((__tmp86741
               (let ((__tmp86742
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81801_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86742 _slot81802_))))
          (declare (not safe))
          (unchecked-field-ref _obj81801_ __tmp86741))))
    (define unchecked-slot-set!
      (lambda (_obj81797_ _slot81798_ _val81799_)
        (let ((__tmp86743
               (let ((__tmp86744
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81797_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86744 _slot81798_))))
          (declare (not safe))
          (unchecked-field-set! _obj81797_ __tmp86743 _val81799_))))
    (define slot-ref__%
      (lambda (_obj81773_ _slot81774_ _E81775_)
        (if (let () (declare (not safe)) (object? _obj81773_))
            (let* ((_klass81777_
                    (let () (declare (not safe)) (object-type _obj81773_)))
                   (_$e81780_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81777_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81777_ _slot81774_))
                        '#f)))
              (if _$e81780_
                  ((lambda (_off81783_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj81773_ _off81783_)))
                   _$e81780_)
                  (_E81775_ _obj81773_ _slot81774_)))
            (_E81775_ _obj81773_ _slot81774_))))
    (define slot-ref__0
      (lambda (_obj81788_ _slot81789_)
        (let ((_E81791_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj81788_ _slot81789_ _E81791_))))
    (define slot-ref
      (lambda _g86746_
        (let ((_g86745_ (let () (declare (not safe)) (##length _g86746_))))
          (cond ((let () (declare (not safe)) (##fx= _g86745_ 2))
                 (apply (lambda (_obj81788_ _slot81789_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj81788_ _slot81789_)))
                        _g86746_))
                ((let () (declare (not safe)) (##fx= _g86745_ 3))
                 (apply (lambda (_obj81793_ _slot81794_ _E81795_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj81793_ _slot81794_ _E81795_)))
                        _g86746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g86746_))))))
    (define slot-set!__%
      (lambda (_obj81745_ _slot81746_ _val81747_ _E81748_)
        (if (let () (declare (not safe)) (object? _obj81745_))
            (let* ((_klass81750_
                    (let () (declare (not safe)) (object-type _obj81745_)))
                   (_$e81753_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81750_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81750_ _slot81746_))
                        '#f)))
              (if _$e81753_
                  ((lambda (_off81756_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj81745_
                        _off81756_
                        _val81747_)))
                   _$e81753_)
                  (_E81748_ _obj81745_ _slot81746_)))
            (_E81748_ _obj81745_ _slot81746_))))
    (define slot-set!__0
      (lambda (_obj81761_ _slot81762_ _val81763_)
        (let ((_E81765_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj81761_ _slot81762_ _val81763_ _E81765_))))
    (define slot-set!
      (lambda _g86748_
        (let ((_g86747_ (let () (declare (not safe)) (##length _g86748_))))
          (cond ((let () (declare (not safe)) (##fx= _g86747_ 3))
                 (apply (lambda (_obj81761_ _slot81762_ _val81763_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj81761_ _slot81762_ _val81763_)))
                        _g86748_))
                ((let () (declare (not safe)) (##fx= _g86747_ 4))
                 (apply (lambda (_obj81767_ _slot81768_ _val81769_ _E81770_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj81767_
                             _slot81768_
                             _val81769_
                             _E81770_)))
                        _g86748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g86748_))))))
    (define __slot-error
      (lambda (_obj81741_ _slot81742_)
        (error '"Cannot find slot" 'object: _obj81741_ 'slot: _slot81742_)))
    (define subclass?
      (lambda (_maybe-sub-class81731_ _maybe-super-class81732_)
        (let* ((_maybe-super-class-id81734_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class81732_)))
               (_$e81736_
                (let ((__tmp86749
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class81731_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id81734_ __tmp86749))))
          (if _$e81736_
              _$e81736_
              (let ((__tmp86751
                     (lambda (_super-class81739_)
                       (let ((__tmp86752
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class81739_))))
                         (declare (not safe))
                         (eq? __tmp86752 _maybe-super-class-id81734_))))
                    (__tmp86750
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class81731_))))
                (declare (not safe))
                (ormap1 __tmp86751 __tmp86750))))))
    (define class-subtype?
      (lambda (_maybe-super-class81728_ _maybe-sub-class81729_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class81729_ _maybe-super-class81728_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass81725_ _obj81726_)
        (let ((__tmp86753
               (let () (declare (not safe)) (##type-id _klass81725_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj81726_ __tmp86753))))
    (define struct-instance?
      (lambda (_klass81722_ _obj81723_)
        (let ((__tmp86754
               (let () (declare (not safe)) (##type-id _klass81722_))))
          (declare (not safe))
          (##structure-instance-of? _obj81723_ __tmp86754))))
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
          (let ((__tmp86755 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj81715_ __tmp86755))
          _obj81715_)))
    (define make-instance
      (lambda (_klass81710_)
        (let ((__tmp86756
               (let ((__tmp86757
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass81710_))))
                 (declare (not safe))
                 (##vector-length __tmp86757))))
          (declare (not safe))
          (make-object _klass81710_ __tmp86756))))
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
                   (let ((__tmp86760
                          (let ()
                            (declare (not safe))
                            (make-object _klass81697_ _size81702_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass81697_
                      _kons-id81708_
                      __tmp86760
                      _args81698_)))
                 _$e81705_)
                (if (let ((__tmp86759
                           (let ()
                             (declare (not safe))
                             (##fx- _size81702_ '1)))
                          (__tmp86758 (length _args81698_)))
                      (declare (not safe))
                      (##fx= __tmp86759 __tmp86758))
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
        (if (let ((__tmp86762 (length _args81685_))
                  (__tmp86761
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj81684_))))
              (declare (not safe))
              (##fx< __tmp86762 __tmp86761))
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
                    (let ((__tmp86763
                           (let () (declare (not safe)) (##fx+ _k81648_ '1))))
                      (declare (not safe))
                      (_lp81646_ __tmp86763 _rest81669_)))))
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
        (let ((__tmp86764
               (let () (declare (not safe)) (object-type _obj81640_))))
          (declare (not safe))
          (__class-instance-init! __tmp86764 _obj81640_ _args81641_))))
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
                                       (let ((__tmp86770
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots81556_))))
                                         (declare (not safe))
                                         (##fx- __tmp86770 '1)))
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
                            (let ((__tmp86769
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index81560_ '1)))
                                  (__tmp86765
                                   (let ((__tmp86768
                                          (symbol->keyword _slot81563_))
                                         (__tmp86766
                                          (let ((__tmp86767
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj81552_
                                                    _index81560_))))
                                            (declare (not safe))
                                            (cons __tmp86767 _plist81561_))))
                                     (declare (not safe))
                                     (cons __tmp86768 __tmp86766))))
                              (declare (not safe))
                              (_loop81558_ __tmp86769 __tmp86765))))))
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
            (let ((__tmp86771
                   (let () (declare (not safe)) (object-type _obj81540_))))
              (declare (not safe))
              (find-method __tmp86771 _id81541_))
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
        (let ((__tmp86772
               (lambda (_g8150081502_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8150081502_ _id81499_)))))
          (declare (not safe))
          (ormap1 __tmp86772 _mixins81498_))))
    (define builtin-find-method
      (lambda (_klass81492_ _id81493_)
        (if (let () (declare (not safe)) (##type? _klass81492_))
            (let ((_$e81495_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass81492_ _id81493_))))
              (if _$e81495_
                  _$e81495_
                  (let ((__tmp86773
                         (let ()
                           (declare (not safe))
                           (##type-super _klass81492_))))
                    (declare (not safe))
                    (builtin-find-method __tmp86773 _id81493_))))
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
        (let ((__tmp86774
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81481_))))
          (declare (not safe))
          (mixin-find-method __tmp86774 _id81482_))))
    (define builtin-method-ref
      (lambda (_klass81473_ _id81474_)
        (let ((_$e81476_
               (let ((__tmp86775
                      (let () (declare (not safe)) (##type-id _klass81473_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp86775 '#f))))
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
                                (let ((__tmp86776
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass81439_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp86776
                                   '#f))))
                           (if _$e81450_
                               _$e81450_
                               (let ((_ht81453_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp86777
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass81439_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp86777
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
      (lambda _g86779_
        (let ((_g86778_ (let () (declare (not safe)) (##length _g86779_))))
          (cond ((let () (declare (not safe)) (##fx= _g86778_ 3))
                 (apply (lambda (_klass81462_ _id81463_ _proc81464_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass81462_
                             _id81463_
                             _proc81464_)))
                        _g86779_))
                ((let () (declare (not safe)) (##fx= _g86778_ 4))
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
                        _g86779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g86779_))))))
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
                                (let ((__tmp86780
                                       (lambda (_id81432_ _proc81433_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab81420_
                                            _id81432_
                                            _proc81433_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp86780 _tab81430_))))
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
                      (let ((__tmp86781
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
                                               (let ((__tmp86782
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass81402_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp86782
                                                  '"::["
                                                  _id81409_
                                                  '"]"))))
                                          (eval (let ((__tmp86783
                                                       (let ((__tmp86784
                                                              (let ((__tmp86785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp86786
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc81417_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp86786))))
                        (declare (not safe))
                        (cons __tmp86785 '()))))
                 (declare (not safe))
                 (cons _gid81418_ __tmp86784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp86783)))
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
                        (table-for-each __tmp86781 _mtab81407_))
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
                          (if (let ((__tmp86789
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass81381_))))
                                (declare (not safe))
                                (eq? _type-id81356_ __tmp86789))
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
                    (if (let ((__tmp86788
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass81397_))))
                          (declare (not safe))
                          (eq? _type-id81356_ __tmp86788))
                        (let ((__tmp86787
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81397_))))
                          (declare (not safe))
                          (builtin-find-method __tmp86787 _id81353_))
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
