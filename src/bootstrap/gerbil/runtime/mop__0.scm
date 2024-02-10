(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707552285)
  (begin
    (define type-id
      (lambda (_klass82449_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82449_))
            (let () (declare (not safe)) (##type-id _klass82449_))
            (if (let () (declare (not safe)) (not _klass82449_))
                '#f
                (error '"not a type descriptor" _klass82449_)))))
    (define type=?
      (lambda (_x82446_ _y82447_)
        (let ((__tmp86668 (let () (declare (not safe)) (type-id _x82446_)))
              (__tmp86667 (let () (declare (not safe)) (type-id _y82447_))))
          (declare (not safe))
          (eq? __tmp86668 __tmp86667))))
    (define type-descriptor?
      (lambda (_klass82444_)
        (if (let () (declare (not safe)) (##type? _klass82444_))
            (let ((__tmp86669
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass82444_))))
              (declare (not safe))
              (eq? __tmp86669 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass82442_)
        (let ((__tmp86670
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82442_))))
          (declare (not safe))
          (assgetq 'struct: __tmp86670))))
    (define type-final?
      (lambda (_klass82440_)
        (let ((__tmp86671
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82440_))))
          (declare (not safe))
          (assgetq 'final: __tmp86671))))
    (define struct-type?
      (lambda (_klass82438_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82438_))
            (let () (declare (not safe)) (type-struct? _klass82438_))
            '#f)))
    (define class-type?
      (lambda (_klass82436_)
        (let () (declare (not safe)) (type-descriptor? _klass82436_))))
    (define properties-form
      (lambda (_properties82402_)
        (map (lambda (_e8240382405_)
               (let* ((_g8240782414_ _e8240382405_)
                      (_E8240982418_
                       (lambda () (error '"No clause matching" _g8240782414_)))
                      (_K8241082424_
                       (lambda (_val82421_ _key82422_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key82422_ 'direct-supers:))
                             (let ((__tmp86672 (map type-id _val82421_)))
                               (declare (not safe))
                               (cons _key82422_ __tmp86672))
                             (let ()
                               (declare (not safe))
                               (cons _key82422_ _val82421_))))))
                 (if (let () (declare (not safe)) (##pair? _g8240782414_))
                     (let ((_hd8241182427_
                            (let ()
                              (declare (not safe))
                              (##car _g8240782414_)))
                           (_tl8241282429_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8240782414_))))
                       (let* ((_key82432_ _hd8241182427_)
                              (_val82434_ _tl8241282429_))
                         (declare (not safe))
                         (_K8241082424_ _val82434_ _key82432_)))
                     (let () (declare (not safe)) (_E8240982418_)))))
             _properties82402_)))
    (define make-type-descriptor
      (lambda (_type-id82315_
               _type-name82316_
               _type-super82317_
               _precedence-list82318_
               _all-slots82319_
               _properties82320_
               _constructor82321_
               _slot-table82322_
               _methods82323_)
        (letrec ((_make-props!82325_
                  (lambda (_key82371_)
                    (letrec* ((_ht82373_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!82374_
                               (lambda (_ht82395_ _slots82396_)
                                 (for-each
                                  (lambda (_g8239782399_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht82395_
                                       _g8239782399_
                                       '#t)))
                                  _slots82396_)))
                              (_put-alist!82375_
                               (lambda (_ht82384_ _key82385_ _alist82386_)
                                 (let ((_$e82388_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key82385_ _alist82386_))))
                                   (if _$e82388_
                                       ((lambda (_g8239082392_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!82374_
                                             _ht82384_
                                             _g8239082392_)))
                                        _$e82388_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!82375_
                         _ht82373_
                         _key82371_
                         _properties82320_))
                      (for-each
                       (lambda (_mixin82377_)
                         (let ((_alist82379_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin82377_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist82379_))
                                   (let ((__tmp86674
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key82371_
                                                     _alist82379_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp86674)))
                               (let ((__tmp86673
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin82377_))))))
                                 (declare (not safe))
                                 (_put-slots!82374_ _ht82373_ __tmp86673))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!82375_
                                  _ht82373_
                                  _key82371_
                                  _alist82379_)))))
                       _precedence-list82318_)
                      _ht82373_))))
          (let* ((_transparent?82327_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties82320_)))
                 (_all-slots-printable?82332_
                  (let ((_$e82329_ _transparent?82327_))
                    (if _$e82329_
                        _$e82329_
                        (let ((__tmp86675
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties82320_))))
                          (declare (not safe))
                          (eq? '#t __tmp86675)))))
                 (_printable82334_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?82332_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82325_ 'print:))
                      '#f))
                 (_all-slots-equalable?82339_
                  (let ((_$e82336_ _transparent?82327_))
                    (if _$e82336_
                        _$e82336_
                        (let ((__tmp86676
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties82320_))))
                          (declare (not safe))
                          (eq? '#t __tmp86676)))))
                 (_equalable82341_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?82339_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82325_ 'equal:))
                      '#f))
                 (_first-new-field82343_
                  (if _type-super82317_
                      (let ((__tmp86677
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super82317_))))
                        (declare (not safe))
                        (##vector-length __tmp86677))
                      '1))
                 (_field-info-length82345_
                  (let ((__tmp86678
                         (let ((__tmp86679
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots82319_))))
                           (declare (not safe))
                           (##fx- __tmp86679 _first-new-field82343_))))
                    (declare (not safe))
                    (##fx* '3 __tmp86678)))
                 (_field-info82347_ (make-vector _field-info-length82345_ '#f))
                 (_opaque?82352_
                  (let ((_$e82349_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?82339_))))
                    (if _$e82349_
                        _$e82349_
                        (if _type-super82317_
                            (let ((__tmp86680
                                   (let ((__tmp86681
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super82317_))))
                                     (declare (not safe))
                                     (##fxand __tmp86681 '1))))
                              (declare (not safe))
                              (##fx= __tmp86680 '1))
                            '#f)))))
            (let _loop82355_ ((_i82357_ _first-new-field82343_) (_j82358_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j82358_ _field-info-length82345_))
                  (let* ((_slot82360_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots82319_ _i82357_)))
                         (_flags82368_
                          (if _transparent?82327_
                              '0
                              (let ((__tmp86683
                                     (if (or _all-slots-printable?82332_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable82334_
                                                _slot82360_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp86682
                                     (if (or _all-slots-equalable?82339_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable82341_
                                                _slot82360_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp86683 __tmp86682)))))
                    (vector-set! _field-info82347_ _j82358_ _slot82360_)
                    (vector-set!
                     _field-info82347_
                     (let () (declare (not safe)) (##fx+ _j82358_ '1))
                     _flags82368_)
                    (let ((__tmp86685
                           (let () (declare (not safe)) (##fx+ _i82357_ '1)))
                          (__tmp86684
                           (let () (declare (not safe)) (##fx+ _j82358_ '3))))
                      (declare (not safe))
                      (_loop82355_ __tmp86685 __tmp86684)))
                  '#!void))
            (let ((__tmp86686 (if _opaque?82352_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id82315_
               _type-name82316_
               __tmp86686
               _type-super82317_
               _field-info82347_
               _precedence-list82318_
               _all-slots82319_
               _slot-table82322_
               _properties82320_
               _constructor82321_
               _methods82323_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass82313_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82313_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass82311_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82311_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass82309_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82309_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass82307_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82307_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass82305_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82305_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass82303_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass82303_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass82300_ _ht82301_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass82300_
           _ht82301_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-fields
      (lambda (_klass82298_)
        (let ((__tmp86687
               (let ((__tmp86688
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass82298_))))
                 (declare (not safe))
                 (##vector-length __tmp86688))))
          (declare (not safe))
          (##fx- __tmp86687 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass82296_)
        (let ((__tmp86689
               (let () (declare (not safe)) (##type-flags _klass82296_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp86689))))
    (define type-descriptor-seal!
      (lambda (_klass82294_)
        (let ((__tmp86690
               (let ((__tmp86692
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp86691
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass82294_))))
                 (declare (not safe))
                 (##fxior __tmp86692 __tmp86691))))
          (declare (not safe))
          (##structure-set!
           _klass82294_
           __tmp86690
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id82275_
               _name82276_
               _super82277_
               _direct-slots82278_
               _properties82279_
               _constructor82280_)
        (if (and _super82277_
                 (let ((__tmp86693
                        (let ()
                          (declare (not safe))
                          (struct-type? _super82277_))))
                   (declare (not safe))
                   (not __tmp86693)))
            (error '"illegal super type; not a struct-type" _super82277_)
            '#!void)
        (let* ((_type82282_
                (let ((__tmp86696
                       (if _super82277_
                           (let ()
                             (declare (not safe))
                             (cons _super82277_ '()))
                           '()))
                      (__tmp86694
                       (if (let ()
                             (declare (not safe))
                             (assgetq 'struct: _properties82279_))
                           _properties82279_
                           (let ((__tmp86695
                                  (let ()
                                    (declare (not safe))
                                    (cons 'struct: '#t))))
                             (declare (not safe))
                             (cons __tmp86695 _properties82279_)))))
                  (declare (not safe))
                  (make-class-type
                   _id82275_
                   _name82276_
                   __tmp86696
                   _direct-slots82278_
                   __tmp86694
                   _constructor82280_)))
               (_all-slots82284_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type82282_)))
               (_len82286_ (length _direct-slots82278_))
               (_start82288_
                (let ((__tmp86697
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots82284_))))
                  (declare (not safe))
                  (##fx- __tmp86697 _len82286_))))
          (if (let ((__tmp86699
                     (lambda (_slot82291_ _i82292_)
                       (let ((__tmp86700
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots82284_ _i82292_))))
                         (declare (not safe))
                         (eq? _slot82291_ __tmp86700))))
                    (__tmp86698
                     (let ()
                       (declare (not safe))
                       (iota _len82286_ _start82288_))))
                (declare (not safe))
                (andmap2 __tmp86699 _direct-slots82278_ __tmp86698))
              '#!void
              (error '"non-unique slots in struct"
                     _name82276_
                     _direct-slots82278_))
          _type82282_)))
    (define make-struct-type* make-struct-type)
    (define make-struct-predicate
      (lambda (_klass82267_)
        (let ((_tid82269_
               (let () (declare (not safe)) (##type-id _klass82267_))))
          (if (let () (declare (not safe)) (type-final? _klass82267_))
              (lambda (_obj82271_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj82271_ _tid82269_)))
              (lambda (_obj82273_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj82273_ _tid82269_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass82255_ _slot82256_)
        (let ((_$e82258_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82255_ _slot82256_))))
          (if _$e82258_
              ((lambda (_off82261_)
                 (if (let () (declare (not safe)) (type-final? _klass82255_))
                     (lambda (_obj82263_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _obj82263_
                          _off82261_
                          _klass82255_
                          '#f)))
                     (lambda (_obj82265_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _obj82265_
                          _off82261_
                          _klass82255_
                          '#f)))))
               _$e82258_)
              (error '"unknown slot"
                     'class:
                     _klass82255_
                     'slot:
                     _slot82256_)))))
    (define make-struct-slot-mutator
      (lambda (_klass82241_ _slot82242_)
        (let ((_$e82244_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82241_ _slot82242_))))
          (if _$e82244_
              ((lambda (_off82247_)
                 (if (let () (declare (not safe)) (type-final? _klass82241_))
                     (lambda (_obj82249_ _val82250_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _obj82249_
                          _val82250_
                          _off82247_
                          _klass82241_
                          '#f)))
                     (lambda (_obj82252_ _val82253_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _obj82252_
                          _val82253_
                          _off82247_
                          _klass82241_
                          '#f)))))
               _$e82244_)
              (error '"unknown slot"
                     'class:
                     _klass82241_
                     'slot:
                     _slot82242_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass82231_ _slot82232_)
        (let ((_$e82234_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82231_ _slot82232_))))
          (if _$e82234_
              ((lambda (_off82237_)
                 (lambda (_obj82239_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _obj82239_
                      _off82237_
                      _klass82231_
                      '#f))))
               _$e82234_)
              (error '"unknown slot"
                     'class:
                     _klass82231_
                     'slot:
                     _slot82232_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass82220_ _slot82221_)
        (let ((_$e82223_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass82220_ _slot82221_))))
          (if _$e82223_
              ((lambda (_off82226_)
                 (lambda (_obj82228_ _val82229_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj82228_
                      _val82229_
                      _off82226_
                      _klass82220_
                      '#f))))
               _$e82223_)
              (error '"unknown slot"
                     'class:
                     _klass82220_
                     'slot:
                     _slot82221_)))))
    (define make-final-field-accessor
      (lambda (_klass82214_ _slot82215_ _field82216_)
        (lambda (_obj82218_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj82218_
             _field82216_
             _klass82214_
             _slot82215_)))))
    (define make-struct-field-accessor
      (lambda (_klass82208_ _slot82209_ _field82210_)
        (lambda (_obj82212_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj82212_
             _field82210_
             _klass82208_
             _slot82209_)))))
    (define make-final-field-mutator
      (lambda (_klass82201_ _slot82202_ _field82203_)
        (lambda (_obj82205_ _val82206_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj82205_
             _val82206_
             _field82203_
             _klass82201_
             _slot82202_)))))
    (define make-struct-field-mutator
      (lambda (_klass82194_ _slot82195_ _field82196_)
        (lambda (_obj82198_ _val82199_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj82198_
             _val82199_
             _field82196_
             _klass82194_
             _slot82195_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass82188_ _slot82189_ _field82190_)
        (lambda (_obj82192_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj82192_
             _field82190_
             _klass82188_
             _slot82189_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass82181_ _slot82182_ _field82183_)
        (lambda (_obj82185_ _val82186_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj82185_
             _val82186_
             _field82183_
             _klass82181_
             _slot82182_)))))
    (define substruct?
      (lambda (_maybe-sub-struct82172_ _maybe-super-struct82173_)
        (let ((_maybe-super-struct-id82175_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct82173_))))
          (let _lp82177_ ((_super-struct82179_ _maybe-sub-struct82172_))
            (if (let () (declare (not safe)) (not _super-struct82179_))
                '#f
                (if (let ((__tmp86702
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct82179_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id82175_ __tmp86702))
                    '#t
                    (let ((__tmp86701
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct82179_))))
                      (declare (not safe))
                      (_lp82177_ __tmp86701))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct82169_ _maybe-sub-struct82170_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct82170_ _maybe-super-struct82169_))))
    (define base-struct/1
      (lambda (_klass82167_)
        (if (let () (declare (not safe)) (struct-type? _klass82167_))
            _klass82167_
            (if (let () (declare (not safe)) (class-type? _klass82167_))
                (let () (declare (not safe)) (##type-super _klass82167_))
                (if (let () (declare (not safe)) (not _klass82167_))
                    '#f
                    (error '"not a class or false" _klass82167_))))))
    (define base-struct/2
      (lambda (_klass182155_ _klass282156_)
        (let ((_s182158_
               (let () (declare (not safe)) (base-struct/1 _klass182155_)))
              (_s282159_
               (let () (declare (not safe)) (base-struct/1 _klass282156_))))
          (if (or (let () (declare (not safe)) (not _s182158_))
                  (and _s282159_
                       (let ()
                         (declare (not safe))
                         (substruct? _s182158_ _s282159_))))
              _s282159_
              (if (or (let () (declare (not safe)) (not _s282159_))
                      (and _s182158_
                           (let ()
                             (declare (not safe))
                             (substruct? _s282159_ _s182158_))))
                  _s182158_
                  (error '"bad mixin: incompatible struct bases"
                         _klass182155_
                         _klass282156_
                         _s182158_
                         _s282159_))))))
    (define base-struct/list
      (lambda (_all-supers82039_)
        (let* ((_all-supers8204082065_ _all-supers82039_)
               (_E8204582069_
                (lambda ()
                  (error '"No clause matching" _all-supers8204082065_))))
          (let ((_K8206382152_ (lambda () '#f))
                (_K8206082138_
                 (lambda (_x82136_)
                   (let () (declare (not safe)) (base-struct/1 _x82136_))))
                (_K8205582115_
                 (lambda (_y82112_ _x82113_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x82113_ _y82112_))))
                (_K8204682076_
                 (lambda (_y82073_ _x82074_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x82074_ _y82073_)))))
            (let* ((___match8666586666_
                    (lambda (_hd8204782079_ _tl8204882081_)
                      (let ((_x82084_ _hd8204782079_))
                        (letrec ((_splice-rest8205082086_
                                  (lambda (_rest8205482093_ _y82095_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8205482093_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8204682076_ _y82095_ _x82084_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8204582069_)))))
                                 (_splice-try8205282088_
                                  (lambda (_hd8205382097_
                                           _rest8205482099_
                                           _y8204982100_)
                                    (let ((_y82103_ _hd8205382097_))
                                      (let ((__tmp86704
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8205482099_)))
                                            (__tmp86703
                                             (let ()
                                               (declare (not safe))
                                               (cons _y82103_ _y8204982100_))))
                                        (declare (not safe))
                                        (_splice-loop8205182090_
                                         __tmp86704
                                         __tmp86703)))))
                                 (_splice-loop8205182090_
                                  (lambda (_rest8205482105_ _y8204982106_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8205482105_))
                                        (let ((__tmp86706
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8205482105_))))
                                          (declare (not safe))
                                          (_splice-try8205282088_
                                           __tmp86706
                                           _rest8205482105_
                                           _y8204982106_))
                                        (let ((__tmp86705
                                               (reverse _y8204982106_)))
                                          (declare (not safe))
                                          (_splice-rest8205082086_
                                           _rest8205482105_
                                           __tmp86705))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8205182090_ _tl8204882081_ '()))))))
                   (_try-match8204282148_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8204082065_))
                          (let ((_tl8206282143_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8204082065_)))
                                (_hd8206182141_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8204082065_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8206282143_))
                                (let ((_x82146_ _hd8206182141_))
                                  (declare (not safe))
                                  (base-struct/1 _x82146_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8206282143_))
                                    (let ((_tl8205982127_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8206282143_)))
                                          (_hd8205882125_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8206282143_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8205982127_))
                                          (let ((_x82123_ _hd8206182141_)
                                                (_y82130_ _hd8205882125_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8205582115_
                                               _y82130_
                                               _x82123_)))
                                          (___match8666586666_
                                           _hd8206182141_
                                           _tl8206282143_)))
                                    (___match8666586666_
                                     _hd8206182141_
                                     _tl8206282143_))))
                          (let () (declare (not safe)) (_E8204582069_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8204082065_))
                  (let () (declare (not safe)) (_K8206382152_))
                  (let () (declare (not safe)) (_try-match8204282148_))))))))
    (define base-struct
      (lambda _all-supers82037_
        (let () (declare (not safe)) (base-struct/list _all-supers82037_))))
    (define find-super-ctor
      (lambda (_super82035_)
        (let () (declare (not safe)) (find-super-constructor _super82035_))))
    (define find-super-constructor
      (lambda (_super81987_)
        (let _lp81989_ ((_rest81991_ _super81987_) (_constructor81992_ '#f))
          (let* ((_rest8199382001_ _rest81991_)
                 (_else8199582009_ (lambda () _constructor81992_))
                 (_K8199782023_
                  (lambda (_rest82012_ _hd82013_)
                    (let ((_$e82015_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd82013_))))
                      (if _$e82015_
                          ((lambda (_xconstructor82018_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor81992_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor81992_
                                            _xconstructor82018_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp81989_ _rest82012_ _xconstructor82018_))
                                 (error '"conflicting implicit constructors"
                                        _constructor81992_
                                        _xconstructor82018_)))
                           _$e82015_)
                          (let ()
                            (declare (not safe))
                            (_lp81989_ _rest82012_ _constructor81992_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8199382001_))
                (let ((_hd8199882026_
                       (let () (declare (not safe)) (##car _rest8199382001_)))
                      (_tl8199982028_
                       (let () (declare (not safe)) (##cdr _rest8199382001_))))
                  (let* ((_hd82031_ _hd8199882026_)
                         (_rest82033_ _tl8199982028_))
                    (declare (not safe))
                    (_K8199782023_ _rest82033_ _hd82031_)))
                (let () (declare (not safe)) (_else8199582009_)))))))
    (define compute-class-slots
      (lambda (_super-struct81958_
               _class-precedence-list81959_
               _direct-slots81960_)
        (let* ((_previous-slots81962_
                (if _super-struct81958_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct81958_))
                    '#(#f)))
               (_next-slot81964_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots81962_)))
               (_slot-table81966_
                (if _super-struct81958_
                    (let ((__tmp86707
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct81958_))))
                      (declare (not safe))
                      (hash-copy __tmp86707))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots81968_ '())
               (_process-slot81972_
                (lambda (_slot81970_)
                  (if (let () (declare (not safe)) (symbol? _slot81970_))
                      '#!void
                      (error '"invalid slot name" _slot81970_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table81966_ _slot81970_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table81966_
                           _slot81970_
                           _next-slot81964_))
                        (let ((__tmp86708 (symbol->keyword _slot81970_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table81966_
                           __tmp86708
                           _next-slot81964_))
                        (set! _r-slots81968_
                              (let ()
                                (declare (not safe))
                                (cons _slot81970_ _r-slots81968_)))
                        (set! _next-slot81964_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot81964_ '1)))))))
               (_process-slots81978_
                (lambda (_g8197381975_)
                  (for-each _process-slot81972_ _g8197381975_))))
          (for-each
           (lambda (_mixin81981_)
             (if (let () (declare (not safe)) (type-struct? _mixin81981_))
                 '#!void
                 (let ((__tmp86709
                        (let ((__tmp86710
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin81981_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp86710 '()))))
                   (declare (not safe))
                   (_process-slots81978_ __tmp86709))))
           (reverse _class-precedence-list81959_))
          (let ()
            (declare (not safe))
            (_process-slots81978_ _direct-slots81960_))
          (let ((_all-slots81983_ (make-vector _next-slot81964_ '#f)))
            (vector-copy! _all-slots81983_ '0 _previous-slots81962_)
            (for-each
             (lambda (_slot81985_)
               (set! _next-slot81964_
                     (let () (declare (not safe)) (##fx- _next-slot81964_ '1)))
               (vector-set! _all-slots81983_ _next-slot81964_ _slot81985_))
             _r-slots81968_)
            (values _all-slots81983_ _slot-table81966_)))))
    (define make-class-type
      (lambda (_id81920_
               _name81921_
               _direct-supers81922_
               _direct-slots81923_
               _properties81924_
               _constructor81925_)
        (let ((_$e81929_
               (let ((__tmp86711
                      (lambda (_klass81927_)
                        (let ((__tmp86712
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass81927_))))
                          (declare (not safe))
                          (not __tmp86712)))))
                 (declare (not safe))
                 (find __tmp86711 _direct-supers81922_))))
          (if _$e81929_
              ((lambda (_g8193181933_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8193181933_))
               _$e81929_)
              (let ((_$e81936_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers81922_))))
                (if _$e81936_
                    ((lambda (_g8193881940_)
                       (error '"Cannot extend final class" _g8193881940_))
                     _$e81936_)
                    '#!void))))
        (let* ((_struct-super81943_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers81922_)))
               (_precedence-list81945_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers81922_)))
               (_g86713_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super81943_
                   _precedence-list81945_
                   _direct-slots81923_))))
          (begin
            (let ((_g86714_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g86713_) (##vector-length _g86713_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g86714_ 2)))
                  (error "Context expects 2 values" _g86714_)))
            (let ((_all-slots81947_
                   (let () (declare (not safe)) (##vector-ref _g86713_ 0)))
                  (_slot-table81948_
                   (let () (declare (not safe)) (##vector-ref _g86713_ 1))))
              (let* ((_properties81950_
                      (let ((__tmp86717
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots81923_)))
                            (__tmp86715
                             (let ((__tmp86716
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers81922_))))
                               (declare (not safe))
                               (cons __tmp86716 _properties81924_))))
                        (declare (not safe))
                        (cons __tmp86717 __tmp86715)))
                     (_constructor*81955_
                      (let ((_$e81952_ _constructor81925_))
                        (if _$e81952_
                            _$e81952_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers81922_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor
                   _id81920_
                   _name81921_
                   _struct-super81943_
                   _precedence-list81945_
                   _all-slots81947_
                   _properties81950_
                   _constructor*81955_
                   _slot-table81948_
                   '#f))))))))
    (define make-class-type* make-class-type)
    (define class-precedence-list
      (lambda (_klass81918_)
        (let ((__tmp86718
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81918_))))
          (declare (not safe))
          (cons _klass81918_ __tmp86718))))
    (define struct-precedence-list
      (lambda (_strukt81913_)
        (let ((__tmp86719
               (let ((_$e81915_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt81913_))))
                 (if _$e81915_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e81915_))
                     '()))))
          (declare (not safe))
          (cons _strukt81913_ __tmp86719))))
    (define class-linearize-mixins
      (lambda (_klass-lst81911_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst81911_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass81901_)
        (if (let () (declare (not safe)) (type-final? _klass81901_))
            (lambda (_g8190281904_)
              (let ((__tmp86720
                     (let () (declare (not safe)) (##type-id _klass81901_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8190281904_ __tmp86720)))
            (lambda (_g8190681908_)
              (let ()
                (declare (not safe))
                (class-instance? _klass81901_ _g8190681908_))))))
    (define if-class-slot-field
      (lambda (_klass81890_
               _slot81891_
               _if-final81892_
               _if-struct81893_
               _if-struct-field81894_
               _if-class-slot81895_)
        (let ((_field81897_
               (let ((__tmp86721
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass81890_))))
                 (declare (not safe))
                 (table-ref __tmp86721 _slot81891_ '#f))))
          (if (let () (declare (not safe)) (not _field81897_))
              (error '"unknown slot" 'class: _klass81890_ 'slot: _slot81891_)
              (if (let () (declare (not safe)) (type-final? _klass81890_))
                  (_if-final81892_ _klass81890_ _slot81891_ _field81897_)
                  (if (let () (declare (not safe)) (type-struct? _klass81890_))
                      (_if-struct81893_ _klass81890_ _slot81891_ _field81897_)
                      (if (let ((_strukt81899_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass81890_))))
                            (and _strukt81899_
                                 (let ((__tmp86722
                                        (let ((__tmp86723
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt81899_))))
                                          (declare (not safe))
                                          (##vector-length __tmp86723))))
                                   (declare (not safe))
                                   (##fx< _field81897_ __tmp86722))))
                          (_if-struct-field81894_
                           _klass81890_
                           _slot81891_
                           _field81897_)
                          (_if-class-slot81895_
                           _klass81890_
                           _slot81891_
                           _field81897_))))))))
    (define make-class-slot-accessor
      (lambda (_klass81887_ _slot81888_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81887_
           _slot81888_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object81871_ _class81872_ _slot81873_)
        (apply error
               '"not an instance"
               'object:
               _object81871_
               'class:
               _class81872_
               (if _slot81873_
                   (let ((__tmp86724
                          (let ()
                            (declare (not safe))
                            (cons _slot81873_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp86724))
                   '()))))
    (define not-an-instance__0
      (lambda (_object81878_ _class81879_)
        (let ((_slot81881_ '#f))
          (declare (not safe))
          (not-an-instance__% _object81878_ _class81879_ _slot81881_))))
    (define not-an-instance
      (lambda _g86726_
        (let ((_g86725_ (let () (declare (not safe)) (##length _g86726_))))
          (cond ((let () (declare (not safe)) (##fx= _g86725_ 2))
                 (apply (lambda (_object81878_ _class81879_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object81878_ _class81879_)))
                        _g86726_))
                ((let () (declare (not safe)) (##fx= _g86725_ 3))
                 (apply (lambda (_object81883_ _class81884_ _slot81885_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object81883_
                             _class81884_
                             _slot81885_)))
                        _g86726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g86726_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass81864_ _slot81865_ _field81866_)
        (lambda (_obj81868_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81864_ _obj81868_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81868_ _field81866_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81868_ _klass81864_ _slot81865_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass81858_ _slot81859_ _field81860_)
        (lambda (_obj81862_)
          (if (let ((__tmp86727
                     (let () (declare (not safe)) (##type-id _klass81858_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81862_ __tmp86727))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81862_ _field81860_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81858_ _obj81862_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj81862_ _slot81859_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81862_
                     _klass81858_
                     _slot81859_)))))))
    (define make-class-slot-mutator
      (lambda (_klass81855_ _slot81856_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81855_
           _slot81856_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass81848_ _slot81849_ _field81850_)
        (lambda (_obj81852_ _val81853_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81848_ _obj81852_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81852_ _field81850_ _val81853_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj81852_ _klass81848_ _slot81849_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass81841_ _slot81842_ _field81843_)
        (lambda (_obj81845_ _val81846_)
          (if (let ((__tmp86728
                     (let () (declare (not safe)) (##type-id _klass81841_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81845_ __tmp86728))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81845_ _field81843_ _val81846_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81841_ _obj81845_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj81845_ _slot81842_ _val81846_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj81845_
                     _klass81841_
                     _slot81842_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass81838_ _slot81839_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81838_
           _slot81839_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass81832_ _slot81833_ _field81834_)
        (lambda (_obj81836_)
          (if (let ((__tmp86729
                     (let () (declare (not safe)) (##type-id _klass81832_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81836_ __tmp86729))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81836_ _field81834_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj81836_ _slot81833_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass81829_ _slot81830_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass81829_
           _slot81830_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass81822_ _slot81823_ _field81824_)
        (lambda (_obj81826_ _val81827_)
          (if (let ((__tmp86730
                     (let () (declare (not safe)) (##type-id _klass81822_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81826_ __tmp86730))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81826_ _field81824_ _val81827_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj81826_ _slot81823_ _val81827_))))))
    (define class-slot-offset
      (lambda (_klass81819_ _slot81820_)
        (let ((__tmp86731
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass81819_))))
          (declare (not safe))
          (table-ref __tmp86731 _slot81820_ '#f))))
    (define class-slot-offset* class-slot-offset)
    (define class-slot-ref
      (lambda (_klass81813_ _obj81814_ _slot81815_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81813_ _obj81814_))
            (let ((_off81817_
                   (let ((__tmp86732
                          (let ()
                            (declare (not safe))
                            (object-type _obj81814_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86732 _slot81815_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj81814_
               _off81817_
               _klass81813_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81814_ _klass81813_)))))
    (define class-slot-set!
      (lambda (_klass81806_ _obj81807_ _slot81808_ _val81809_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81806_ _obj81807_))
            (let ((_off81811_
                   (let ((__tmp86733
                          (let ()
                            (declare (not safe))
                            (object-type _obj81807_))))
                     (declare (not safe))
                     (class-slot-offset __tmp86733 _slot81808_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj81807_
               _val81809_
               _off81811_
               _klass81806_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj81807_ _klass81806_)))))
    (define unchecked-field-ref
      (lambda (_obj81803_ _off81804_)
        (let ((__tmp86734
               (let () (declare (not safe)) (##structure-type _obj81803_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj81803_ _off81804_ __tmp86734 '#f))))
    (define unchecked-field-set!
      (lambda (_obj81799_ _off81800_ _val81801_)
        (let ((__tmp86735
               (let () (declare (not safe)) (##structure-type _obj81799_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj81799_
           _val81801_
           _off81800_
           __tmp86735
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj81796_ _slot81797_)
        (let ((__tmp86736
               (let ((__tmp86737
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81796_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86737 _slot81797_))))
          (declare (not safe))
          (unchecked-field-ref _obj81796_ __tmp86736))))
    (define unchecked-slot-set!
      (lambda (_obj81792_ _slot81793_ _val81794_)
        (let ((__tmp86738
               (let ((__tmp86739
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81792_))))
                 (declare (not safe))
                 (class-slot-offset __tmp86739 _slot81793_))))
          (declare (not safe))
          (unchecked-field-set! _obj81792_ __tmp86738 _val81794_))))
    (define slot-ref__%
      (lambda (_obj81768_ _slot81769_ _E81770_)
        (if (let () (declare (not safe)) (object? _obj81768_))
            (let* ((_klass81772_
                    (let () (declare (not safe)) (object-type _obj81768_)))
                   (_$e81775_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81772_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81772_ _slot81769_))
                        '#f)))
              (if _$e81775_
                  ((lambda (_off81778_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj81768_ _off81778_)))
                   _$e81775_)
                  (_E81770_ _obj81768_ _slot81769_)))
            (_E81770_ _obj81768_ _slot81769_))))
    (define slot-ref__0
      (lambda (_obj81783_ _slot81784_)
        (let ((_E81786_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj81783_ _slot81784_ _E81786_))))
    (define slot-ref
      (lambda _g86741_
        (let ((_g86740_ (let () (declare (not safe)) (##length _g86741_))))
          (cond ((let () (declare (not safe)) (##fx= _g86740_ 2))
                 (apply (lambda (_obj81783_ _slot81784_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj81783_ _slot81784_)))
                        _g86741_))
                ((let () (declare (not safe)) (##fx= _g86740_ 3))
                 (apply (lambda (_obj81788_ _slot81789_ _E81790_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj81788_ _slot81789_ _E81790_)))
                        _g86741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g86741_))))))
    (define slot-set!__%
      (lambda (_obj81740_ _slot81741_ _val81742_ _E81743_)
        (if (let () (declare (not safe)) (object? _obj81740_))
            (let* ((_klass81745_
                    (let () (declare (not safe)) (object-type _obj81740_)))
                   (_$e81748_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81745_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass81745_ _slot81741_))
                        '#f)))
              (if _$e81748_
                  ((lambda (_off81751_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj81740_
                        _off81751_
                        _val81742_)))
                   _$e81748_)
                  (_E81743_ _obj81740_ _slot81741_)))
            (_E81743_ _obj81740_ _slot81741_))))
    (define slot-set!__0
      (lambda (_obj81756_ _slot81757_ _val81758_)
        (let ((_E81760_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj81756_ _slot81757_ _val81758_ _E81760_))))
    (define slot-set!
      (lambda _g86743_
        (let ((_g86742_ (let () (declare (not safe)) (##length _g86743_))))
          (cond ((let () (declare (not safe)) (##fx= _g86742_ 3))
                 (apply (lambda (_obj81756_ _slot81757_ _val81758_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj81756_ _slot81757_ _val81758_)))
                        _g86743_))
                ((let () (declare (not safe)) (##fx= _g86742_ 4))
                 (apply (lambda (_obj81762_ _slot81763_ _val81764_ _E81765_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj81762_
                             _slot81763_
                             _val81764_
                             _E81765_)))
                        _g86743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g86743_))))))
    (define __slot-error
      (lambda (_obj81736_ _slot81737_)
        (error '"Cannot find slot" 'object: _obj81736_ 'slot: _slot81737_)))
    (define subclass?
      (lambda (_maybe-sub-class81726_ _maybe-super-class81727_)
        (let* ((_maybe-super-class-id81729_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class81727_)))
               (_$e81731_
                (let ((__tmp86744
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class81726_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id81729_ __tmp86744))))
          (if _$e81731_
              _$e81731_
              (let ((__tmp86746
                     (lambda (_super-class81734_)
                       (let ((__tmp86747
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class81734_))))
                         (declare (not safe))
                         (eq? __tmp86747 _maybe-super-class-id81729_))))
                    (__tmp86745
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class81726_))))
                (declare (not safe))
                (ormap1 __tmp86746 __tmp86745))))))
    (define class-subtype?
      (lambda (_maybe-super-class81723_ _maybe-sub-class81724_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class81724_ _maybe-super-class81723_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass81720_ _obj81721_)
        (let ((__tmp86748
               (let () (declare (not safe)) (##type-id _klass81720_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj81721_ __tmp86748))))
    (define struct-instance?
      (lambda (_klass81717_ _obj81718_)
        (let ((__tmp86749
               (let () (declare (not safe)) (##type-id _klass81717_))))
          (declare (not safe))
          (##structure-instance-of? _obj81718_ __tmp86749))))
    (define class-instance?
      (lambda (_klass81712_ _obj81713_)
        (if (let () (declare (not safe)) (object? _obj81713_))
            (let ((_type81715_
                   (let () (declare (not safe)) (object-type _obj81713_))))
              (if (let () (declare (not safe)) (type-descriptor? _type81715_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type81715_ _klass81712_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass81707_ _k81708_)
        (let ((_obj81710_
               (let () (declare (not safe)) (##make-vector _k81708_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj81710_ '0 _klass81707_))
          (let ((__tmp86750 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj81710_ __tmp86750))
          _obj81710_)))
    (define make-object* make-object)
    (define make-instance
      (lambda (_klass81705_)
        (let ((__tmp86751
               (let ((__tmp86752
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass81705_))))
                 (declare (not safe))
                 (##vector-length __tmp86752))))
          (declare (not safe))
          (make-object _klass81705_ __tmp86751))))
    (define make-struct-instance
      (lambda (_klass81692_ . _args81693_)
        (let* ((_all-slots81695_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass81692_)))
               (_size81697_
                (let ()
                  (declare (not safe))
                  (##vector-length _all-slots81695_))))
          (let ((_$e81700_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass81692_))))
            (if _$e81700_
                ((lambda (_kons-id81703_)
                   (let ((__tmp86755
                          (let ()
                            (declare (not safe))
                            (make-object _klass81692_ _size81697_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass81692_
                      _kons-id81703_
                      __tmp86755
                      _args81693_)))
                 _$e81700_)
                (if (let ((__tmp86754
                           (let ()
                             (declare (not safe))
                             (##fx- _size81697_ '1)))
                          (__tmp86753 (length _args81693_)))
                      (declare (not safe))
                      (##fx= __tmp86754 __tmp86753))
                    (apply ##structure _klass81692_ _args81693_)
                    (error '"arguments don't match object size"
                           'class:
                           _klass81692_
                           'slots:
                           (let () (declare (not safe)) (##fx- _size81697_ '1))
                           'args:
                           _args81693_)))))))
    (define make-class-instance
      (lambda (_klass81682_ . _args81683_)
        (let* ((_obj81685_
                (let () (declare (not safe)) (make-instance _klass81682_)))
               (_$e81687_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass81682_))))
          (if _$e81687_
              ((lambda (_kons-id81690_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass81682_
                    _kons-id81690_
                    _obj81685_
                    _args81683_)))
               _$e81687_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass81682_
                 _obj81685_
                 _args81683_))))))
    (define struct-instance-init!
      (lambda (_obj81679_ . _args81680_)
        (if (let ((__tmp86757 (length _args81680_))
                  (__tmp86756
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj81679_))))
              (declare (not safe))
              (##fx< __tmp86757 __tmp86756))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj81679_ _args81680_))
            (error '"too many arguments for struct"
                   'object:
                   _obj81679_
                   'args:
                   _args81680_))))
    (define __struct-instance-init!
      (lambda (_obj81638_ _args81639_)
        (let _lp81641_ ((_k81643_ '1) (_rest81644_ _args81639_))
          (let* ((_rest8164581653_ _rest81644_)
                 (_else8164781661_ (lambda () _obj81638_))
                 (_K8164981667_
                  (lambda (_rest81664_ _hd81665_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj81638_ _k81643_ _hd81665_))
                    (let ((__tmp86758
                           (let () (declare (not safe)) (##fx+ _k81643_ '1))))
                      (declare (not safe))
                      (_lp81641_ __tmp86758 _rest81664_)))))
            (if (let () (declare (not safe)) (##pair? _rest8164581653_))
                (let ((_hd8165081670_
                       (let () (declare (not safe)) (##car _rest8164581653_)))
                      (_tl8165181672_
                       (let () (declare (not safe)) (##cdr _rest8164581653_))))
                  (let* ((_hd81675_ _hd8165081670_)
                         (_rest81677_ _tl8165181672_))
                    (declare (not safe))
                    (_K8164981667_ _rest81677_ _hd81675_)))
                (let () (declare (not safe)) (_else8164781661_)))))))
    (define class-instance-init!
      (lambda (_obj81635_ . _args81636_)
        (let ((__tmp86759
               (let () (declare (not safe)) (object-type _obj81635_))))
          (declare (not safe))
          (__class-instance-init! __tmp86759 _obj81635_ _args81636_))))
    (define __class-instance-init!
      (lambda (_klass81579_ _obj81580_ _args81581_)
        (let _lp81583_ ((_rest81585_ _args81581_))
          (let* ((_rest8158681596_ _rest81585_)
                 (_else8158881604_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest81585_))
                        _obj81580_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass81579_
                               'rest:
                               _rest81585_))))
                 (_K8159081616_
                  (lambda (_rest81607_ _val81608_ _key81609_)
                    (let ((_$e81611_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass81579_ _key81609_))))
                      (if _$e81611_
                          ((lambda (_off81614_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj81580_
                                _off81614_
                                _val81608_))
                             (let ()
                               (declare (not safe))
                               (_lp81583_ _rest81607_)))
                           _$e81611_)
                          (error '"unknown slot"
                                 'class:
                                 _klass81579_
                                 'slot:
                                 _key81609_))))))
            (if (let () (declare (not safe)) (##pair? _rest8158681596_))
                (let ((_hd8159181619_
                       (let () (declare (not safe)) (##car _rest8158681596_)))
                      (_tl8159281621_
                       (let () (declare (not safe)) (##cdr _rest8158681596_))))
                  (let ((_key81624_ _hd8159181619_))
                    (if (let () (declare (not safe)) (##pair? _tl8159281621_))
                        (let ((_hd8159381626_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8159281621_)))
                              (_tl8159481628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8159281621_))))
                          (let* ((_val81631_ _hd8159381626_)
                                 (_rest81633_ _tl8159481628_))
                            (declare (not safe))
                            (_K8159081616_ _rest81633_ _val81631_ _key81624_)))
                        (let () (declare (not safe)) (_else8158881604_)))))
                (let () (declare (not safe)) (_else8158881604_)))))))
    (define constructor-init!
      (lambda (_klass81574_ _kons-id81575_ _obj81576_ . _args81577_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass81574_
           _kons-id81575_
           _obj81576_
           _args81577_))))
    (define __constructor-init!
      (lambda (_klass81564_ _kons-id81565_ _obj81566_ _args81567_)
        (let ((_$e81569_
               (let ()
                 (declare (not safe))
                 (__find-method _klass81564_ _kons-id81565_))))
          (if _$e81569_
              ((lambda (_kons81572_)
                 (apply _kons81572_ _obj81566_ _args81567_)
                 _obj81566_)
               _$e81569_)
              (error '"missing constructor"
                     'class:
                     _klass81564_
                     'method:
                     _kons-id81565_)))))
    (define struct-copy
      (lambda (_struct81562_)
        (if (let () (declare (not safe)) (##structure? _struct81562_))
            '#!void
            (error '"not a structure" _struct81562_))
        (let () (declare (not safe)) (##structure-copy _struct81562_))))
    (define struct->list
      (lambda (_obj81560_)
        (if (let () (declare (not safe)) (object? _obj81560_))
            (let () (declare (not safe)) (##vector->list _obj81560_))
            (error '"not an object" _obj81560_))))
    (define class->list
      (lambda (_obj81547_)
        (if (let () (declare (not safe)) (object? _obj81547_))
            (let ((_klass81549_
                   (let () (declare (not safe)) (object-type _obj81547_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass81549_))
                  (let ((_all-slots81551_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass81549_))))
                    (let _loop81553_ ((_index81555_
                                       (let ((__tmp86765
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots81551_))))
                                         (declare (not safe))
                                         (##fx- __tmp86765 '1)))
                                      (_plist81556_ '()))
                      (if (let () (declare (not safe)) (##fx< _index81555_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass81549_ _plist81556_))
                          (let ((_slot81558_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots81551_
                                    _index81555_))))
                            (let ((__tmp86764
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index81555_ '1)))
                                  (__tmp86760
                                   (let ((__tmp86763
                                          (symbol->keyword _slot81558_))
                                         (__tmp86761
                                          (let ((__tmp86762
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj81547_
                                                    _index81555_))))
                                            (declare (not safe))
                                            (cons __tmp86762 _plist81556_))))
                                     (declare (not safe))
                                     (cons __tmp86763 __tmp86761))))
                              (declare (not safe))
                              (_loop81553_ __tmp86764 __tmp86760))))))
                  (error '"not a class type"
                         'object:
                         _obj81547_
                         'class:
                         _klass81549_)))
            (error '"not an object" _obj81547_))))
    (define call-method
      (lambda (_obj81538_ _id81539_ . _args81540_)
        (let ((_$e81542_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81538_ _id81539_))))
          (if _$e81542_
              ((lambda (_method81545_)
                 (apply _method81545_ _obj81538_ _args81540_))
               _$e81542_)
              (error '"cannot find method"
                     'object:
                     _obj81538_
                     'method:
                     _id81539_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj81535_ _id81536_)
        (if (let () (declare (not safe)) (object? _obj81535_))
            (let ((__tmp86766
                   (let () (declare (not safe)) (object-type _obj81535_))))
              (declare (not safe))
              (find-method __tmp86766 _id81536_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj81529_ _id81530_)
        (let ((_$e81532_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81529_ _id81530_))))
          (if _$e81532_
              _$e81532_
              (error '"missing method"
                     'object:
                     _obj81529_
                     'method:
                     _id81530_)))))
    (define bound-method-ref
      (lambda (_obj81519_ _id81520_)
        (let ((_$e81522_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81519_ _id81520_))))
          (if _$e81522_
              ((lambda (_method81525_)
                 (lambda _args81527_
                   (apply _method81525_ _obj81519_ _args81527_)))
               _$e81522_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj81512_ _id81513_)
        (let ((_method81515_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj81512_ _id81513_))))
          (lambda _args81517_ (apply _method81515_ _obj81512_ _args81517_)))))
    (define find-method
      (lambda (_klass81509_ _id81510_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81509_))
            (let ()
              (declare (not safe))
              (__find-method _klass81509_ _id81510_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass81509_ _id81510_)))))
    (define __find-method
      (lambda (_klass81503_ _id81504_)
        (let ((_$e81506_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass81503_ _id81504_))))
          (if _$e81506_
              _$e81506_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81503_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass81503_ _id81504_)))))))
    (define struct-find-method find-method)
    (define class-find-method
      (lambda (_klass81500_ _id81501_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81500_))
            (let ()
              (declare (not safe))
              (__find-method _klass81500_ _id81501_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins81493_ _id81494_)
        (let ((__tmp86767
               (lambda (_g8149581497_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8149581497_ _id81494_)))))
          (declare (not safe))
          (ormap1 __tmp86767 _mixins81493_))))
    (define builtin-find-method
      (lambda (_klass81487_ _id81488_)
        (if (let () (declare (not safe)) (##type? _klass81487_))
            (let ((_$e81490_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass81487_ _id81488_))))
              (if _$e81490_
                  _$e81490_
                  (let ((__tmp86768
                         (let ()
                           (declare (not safe))
                           (##type-super _klass81487_))))
                    (declare (not safe))
                    (builtin-find-method __tmp86768 _id81488_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass81479_ _id81480_)
        (let ((_$e81482_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass81479_))))
          (if _$e81482_
              ((lambda (_ht81485_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht81485_ _id81480_ '#f)))
               _$e81482_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass81476_ _id81477_)
        (let ((__tmp86769
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81476_))))
          (declare (not safe))
          (mixin-find-method __tmp86769 _id81477_))))
    (define builtin-method-ref
      (lambda (_klass81468_ _id81469_)
        (let ((_$e81471_
               (let ((__tmp86770
                      (let () (declare (not safe)) (##type-id _klass81468_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp86770 '#f))))
          (if _$e81471_
              ((lambda (_mtab81474_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab81474_ _id81469_ '#f)))
               _$e81471_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass81434_ _id81435_ _proc81436_ _rebind?81437_)
        (letrec ((_bind!81439_
                  (lambda (_ht81452_)
                    (if (and (let () (declare (not safe)) (not _rebind?81437_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht81452_ _id81435_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass81434_
                               'method:
                               _id81435_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht81452_ _id81435_ _proc81436_))))))
          (if (let () (declare (not safe)) (procedure? _proc81436_))
              '#!void
              (error '"bad method; expected procedure" _proc81436_))
          (if (let () (declare (not safe)) (type-descriptor? _klass81434_))
              (let ((_ht81441_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass81434_))))
                (if _ht81441_
                    (let () (declare (not safe)) (_bind!81439_ _ht81441_))
                    (let ((_ht81443_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass81434_ _ht81443_))
                      (let () (declare (not safe)) (_bind!81439_ _ht81443_)))))
              (if (let () (declare (not safe)) (##type? _klass81434_))
                  (let ((_ht81450_
                         (let ((_$e81445_
                                (let ((__tmp86771
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass81434_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp86771
                                   '#f))))
                           (if _$e81445_
                               _$e81445_
                               (let ((_ht81448_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp86772
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass81434_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp86772
                                    _ht81448_))
                                 _ht81448_)))))
                    (declare (not safe))
                    (_bind!81439_ _ht81450_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass81434_))))))
    (define bind-method!__0
      (lambda (_klass81457_ _id81458_ _proc81459_)
        (let ((_rebind?81461_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass81457_
           _id81458_
           _proc81459_
           _rebind?81461_))))
    (define bind-method!
      (lambda _g86774_
        (let ((_g86773_ (let () (declare (not safe)) (##length _g86774_))))
          (cond ((let () (declare (not safe)) (##fx= _g86773_ 3))
                 (apply (lambda (_klass81457_ _id81458_ _proc81459_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass81457_
                             _id81458_
                             _proc81459_)))
                        _g86774_))
                ((let () (declare (not safe)) (##fx= _g86773_ 4))
                 (apply (lambda (_klass81463_
                                 _id81464_
                                 _proc81465_
                                 _rebind?81466_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass81463_
                             _id81464_
                             _proc81465_
                             _rebind?81466_)))
                        _g86774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g86774_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc81430_ _specializer81431_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc81430_ _specializer81431_))))
    (define seal-class!
      (lambda (_klass81397_)
        (letrec ((_collect-methods!81399_
                  (lambda (_mtab81415_)
                    (letrec ((_merge!81417_
                              (lambda (_tab81425_)
                                (let ((__tmp86775
                                       (lambda (_id81427_ _proc81428_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab81415_
                                            _id81427_
                                            _proc81428_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp86775 _tab81425_))))
                             (_collect-direct-methods!81418_
                              (lambda (_klass81420_)
                                (let ((_$e81422_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass81420_))))
                                  (if _$e81422_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!81417_ _$e81422_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!81418_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass81397_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81397_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81397_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass81397_))
                        '#!void
                        (error '"cannot seal non-final class" _klass81397_))
                    (let ((_vtab81401_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab81402_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!81399_ _mtab81402_))
                      (let ((__tmp86776
                             (lambda (_id81404_ _proc81405_)
                               (let ((_$e81407_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc81405_
                                         '#f))))
                                 (if _$e81407_
                                     ((lambda (_specializer81410_)
                                        (let ((_proc81412_
                                               (_specializer81410_
                                                _klass81397_))
                                              (_gid81413_
                                               (let ((__tmp86777
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass81397_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp86777
                                                  '"::["
                                                  _id81404_
                                                  '"]"))))
                                          (eval (let ((__tmp86778
                                                       (let ((__tmp86779
                                                              (let ((__tmp86780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp86781
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc81412_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp86781))))
                        (declare (not safe))
                        (cons __tmp86780 '()))))
                 (declare (not safe))
                 (cons _gid81413_ __tmp86779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp86778)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab81401_
                                             _id81404_
                                             _proc81412_))))
                                      _$e81407_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab81401_
                                        _id81404_
                                        _proc81405_)))))))
                        (declare (not safe))
                        (table-for-each __tmp86776 _mtab81402_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass81397_
                         _vtab81401_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass81397_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass81346_ _obj81347_ _id81348_)
        (let ((_klass81350_
               (let () (declare (not safe)) (object-type _obj81347_)))
              (_type-id81351_
               (let () (declare (not safe)) (##type-id _subklass81346_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81350_))
              (let _lp81353_ ((_rest81355_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass81350_))))
                (let* ((_rest8135681364_ _rest81355_)
                       (_else8135881372_ (lambda () '#f))
                       (_K8136081378_
                        (lambda (_rest81375_ _klass81376_)
                          (if (let ((__tmp86784
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass81376_))))
                                (declare (not safe))
                                (eq? _type-id81351_ __tmp86784))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest81375_ _id81348_))
                              (let ()
                                (declare (not safe))
                                (_lp81353_ _rest81375_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8135681364_))
                      (let ((_hd8136181381_
                             (let ()
                               (declare (not safe))
                               (##car _rest8135681364_)))
                            (_tl8136281383_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8135681364_))))
                        (let* ((_klass81386_ _hd8136181381_)
                               (_rest81388_ _tl8136281383_))
                          (declare (not safe))
                          (_K8136081378_ _rest81388_ _klass81386_)))
                      (let () (declare (not safe)) (_else8135881372_)))))
              (if (let () (declare (not safe)) (##type? _klass81350_))
                  (let _lp81390_ ((_klass81392_ _klass81350_))
                    (if (let ((__tmp86783
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass81392_))))
                          (declare (not safe))
                          (eq? _type-id81351_ __tmp86783))
                        (let ((__tmp86782
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81392_))))
                          (declare (not safe))
                          (builtin-find-method __tmp86782 _id81348_))
                        (let ((_$e81394_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81392_))))
                          (if _$e81394_
                              (let ()
                                (declare (not safe))
                                (_lp81390_ _$e81394_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass81336_ _obj81337_ _id81338_ . _args81339_)
        (let ((_$e81341_
               (let ()
                 (declare (not safe))
                 (next-method _subklass81336_ _obj81337_ _id81338_))))
          (if _$e81341_
              ((lambda (_methodf81344_)
                 (apply _methodf81344_ _obj81337_ _args81339_))
               _$e81341_)
              (error '"cannot find next method"
                     'object:
                     _obj81337_
                     'method:
                     _id81338_)))))
    (define write-style (lambda (_we81334_) (macro-writeenv-style _we81334_)))
    (define write-object
      (lambda (_we81326_ _obj81327_)
        (let ((_$e81329_
               (let () (declare (not safe)) (method-ref _obj81327_ ':wr))))
          (if _$e81329_
              ((lambda (_method81332_) (_method81332_ _obj81327_ _we81326_))
               _$e81329_)
              (let ()
                (declare (not safe))
                (##default-wr _we81326_ _obj81327_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
