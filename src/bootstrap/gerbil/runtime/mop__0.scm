(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707573210)
  (begin
    (define type-id
      (lambda (_klass84373_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84373_))
            (let () (declare (not safe)) (##type-id _klass84373_))
            (if (let () (declare (not safe)) (not _klass84373_))
                '#f
                (error '"not a type descriptor" _klass84373_)))))
    (define type=?
      (lambda (_x84370_ _y84371_)
        (let ((__tmp88868 (let () (declare (not safe)) (type-id _x84370_)))
              (__tmp88867 (let () (declare (not safe)) (type-id _y84371_))))
          (declare (not safe))
          (eq? __tmp88868 __tmp88867))))
    (define type-descriptor?
      (lambda (_klass84368_)
        (if (let () (declare (not safe)) (##type? _klass84368_))
            (let ((__tmp88869
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84368_))))
              (declare (not safe))
              (eq? __tmp88869 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84366_)
        (let ((__tmp88870
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84366_))))
          (declare (not safe))
          (assgetq 'struct: __tmp88870))))
    (define type-final?
      (lambda (_klass84364_)
        (let ((__tmp88871
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84364_))))
          (declare (not safe))
          (assgetq 'final: __tmp88871))))
    (define struct-type?
      (lambda (_klass84362_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84362_))
            (let () (declare (not safe)) (type-struct? _klass84362_))
            '#f)))
    (define class-type?
      (lambda (_klass84360_)
        (let () (declare (not safe)) (type-descriptor? _klass84360_))))
    (define properties-form
      (lambda (_properties84326_)
        (map (lambda (_e8432784329_)
               (let* ((_g8433184338_ _e8432784329_)
                      (_E8433384342_
                       (lambda () (error '"No clause matching" _g8433184338_)))
                      (_K8433484348_
                       (lambda (_val84345_ _key84346_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84346_ 'direct-supers:))
                             (let ((__tmp88872 (map type-id _val84345_)))
                               (declare (not safe))
                               (cons _key84346_ __tmp88872))
                             (let ()
                               (declare (not safe))
                               (cons _key84346_ _val84345_))))))
                 (if (let () (declare (not safe)) (##pair? _g8433184338_))
                     (let ((_hd8433584351_
                            (let ()
                              (declare (not safe))
                              (##car _g8433184338_)))
                           (_tl8433684353_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8433184338_))))
                       (let* ((_key84356_ _hd8433584351_)
                              (_val84358_ _tl8433684353_))
                         (declare (not safe))
                         (_K8433484348_ _val84358_ _key84356_)))
                     (let () (declare (not safe)) (_E8433384342_)))))
             _properties84326_)))
    (define make-type-descriptor
      (lambda (_type-id84239_
               _type-name84240_
               _type-super84241_
               _precedence-list84242_
               _all-slots84243_
               _properties84244_
               _constructor84245_
               _slot-table84246_
               _methods84247_)
        (letrec ((_make-props!84249_
                  (lambda (_key84295_)
                    (letrec* ((_ht84297_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84298_
                               (lambda (_ht84319_ _slots84320_)
                                 (for-each
                                  (lambda (_g8432184323_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84319_
                                       _g8432184323_
                                       '#t)))
                                  _slots84320_)))
                              (_put-alist!84299_
                               (lambda (_ht84308_ _key84309_ _alist84310_)
                                 (let ((_$e84312_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84309_ _alist84310_))))
                                   (if _$e84312_
                                       ((lambda (_g8431484316_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84298_
                                             _ht84308_
                                             _g8431484316_)))
                                        _$e84312_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84299_
                         _ht84297_
                         _key84295_
                         _properties84244_))
                      (for-each
                       (lambda (_mixin84301_)
                         (let ((_alist84303_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84301_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84303_))
                                   (let ((__tmp88874
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84295_
                                                     _alist84303_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88874)))
                               (let ((__tmp88873
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin84301_))))))
                                 (declare (not safe))
                                 (_put-slots!84298_ _ht84297_ __tmp88873))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84299_
                                  _ht84297_
                                  _key84295_
                                  _alist84303_)))))
                       _precedence-list84242_)
                      _ht84297_))))
          (let* ((_transparent?84251_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84244_)))
                 (_all-slots-printable?84256_
                  (let ((_$e84253_ _transparent?84251_))
                    (if _$e84253_
                        _$e84253_
                        (let ((__tmp88875
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84244_))))
                          (declare (not safe))
                          (eq? '#t __tmp88875)))))
                 (_printable84258_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84256_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84249_ 'print:))
                      '#f))
                 (_all-slots-equalable?84263_
                  (let ((_$e84260_ _transparent?84251_))
                    (if _$e84260_
                        _$e84260_
                        (let ((__tmp88876
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84244_))))
                          (declare (not safe))
                          (eq? '#t __tmp88876)))))
                 (_equalable84265_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84263_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84249_ 'equal:))
                      '#f))
                 (_first-new-field84267_
                  (if _type-super84241_
                      (let ((__tmp88877
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84241_))))
                        (declare (not safe))
                        (##vector-length __tmp88877))
                      '1))
                 (_field-info-length84269_
                  (let ((__tmp88878
                         (let ((__tmp88879
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84243_))))
                           (declare (not safe))
                           (##fx- __tmp88879 _first-new-field84267_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88878)))
                 (_field-info84271_ (make-vector _field-info-length84269_ '#f))
                 (_opaque?84276_
                  (let ((_$e84273_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84263_))))
                    (if _$e84273_
                        _$e84273_
                        (if _type-super84241_
                            (let ((__tmp88880
                                   (let ((__tmp88881
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84241_))))
                                     (declare (not safe))
                                     (##fxand __tmp88881 '1))))
                              (declare (not safe))
                              (##fx= __tmp88880 '1))
                            '#f)))))
            (let _loop84279_ ((_i84281_ _first-new-field84267_) (_j84282_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84282_ _field-info-length84269_))
                  (let* ((_slot84284_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84243_ _i84281_)))
                         (_flags84292_
                          (if _transparent?84251_
                              '0
                              (let ((__tmp88883
                                     (if (or _all-slots-printable?84256_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84258_
                                                _slot84284_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88882
                                     (if (or _all-slots-equalable?84263_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84265_
                                                _slot84284_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88883 __tmp88882)))))
                    (vector-set! _field-info84271_ _j84282_ _slot84284_)
                    (vector-set!
                     _field-info84271_
                     (let () (declare (not safe)) (##fx+ _j84282_ '1))
                     _flags84292_)
                    (let ((__tmp88885
                           (let () (declare (not safe)) (##fx+ _i84281_ '1)))
                          (__tmp88884
                           (let () (declare (not safe)) (##fx+ _j84282_ '3))))
                      (declare (not safe))
                      (_loop84279_ __tmp88885 __tmp88884)))
                  '#!void))
            (let ((__tmp88886 (if _opaque?84276_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84239_
               _type-name84240_
               __tmp88886
               _type-super84241_
               _field-info84271_
               _precedence-list84242_
               _all-slots84243_
               _slot-table84246_
               _properties84244_
               _constructor84245_
               _methods84247_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84237_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84237_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84235_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84235_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84233_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84233_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84231_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84231_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84229_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84229_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84227_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84227_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84224_ _ht84225_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84224_
           _ht84225_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-fields
      (lambda (_klass84222_)
        (let ((__tmp88887
               (let ((__tmp88888
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84222_))))
                 (declare (not safe))
                 (##vector-length __tmp88888))))
          (declare (not safe))
          (##fx- __tmp88887 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84220_)
        (let ((__tmp88889
               (let () (declare (not safe)) (##type-flags _klass84220_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp88889))))
    (define type-descriptor-seal!
      (lambda (_klass84218_)
        (let ((__tmp88890
               (let ((__tmp88892
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp88891
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84218_))))
                 (declare (not safe))
                 (##fxior __tmp88892 __tmp88891))))
          (declare (not safe))
          (##structure-set!
           _klass84218_
           __tmp88890
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84199_
               _name84200_
               _super84201_
               _direct-slots84202_
               _properties84203_
               _constructor84204_)
        (if (and _super84201_
                 (let ((__tmp88893
                        (let ()
                          (declare (not safe))
                          (struct-type? _super84201_))))
                   (declare (not safe))
                   (not __tmp88893)))
            (error '"illegal super type; not a struct-type" _super84201_)
            '#!void)
        (let* ((_type84206_
                (let ((__tmp88896
                       (if _super84201_
                           (let ()
                             (declare (not safe))
                             (cons _super84201_ '()))
                           '()))
                      (__tmp88894
                       (if (let ()
                             (declare (not safe))
                             (assgetq 'struct: _properties84203_))
                           _properties84203_
                           (let ((__tmp88895
                                  (let ()
                                    (declare (not safe))
                                    (cons 'struct: '#t))))
                             (declare (not safe))
                             (cons __tmp88895 _properties84203_)))))
                  (declare (not safe))
                  (make-class-type
                   _id84199_
                   _name84200_
                   __tmp88896
                   _direct-slots84202_
                   __tmp88894
                   _constructor84204_)))
               (_all-slots84208_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type84206_)))
               (_len84210_ (length _direct-slots84202_))
               (_start84212_
                (let ((__tmp88897
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots84208_))))
                  (declare (not safe))
                  (##fx- __tmp88897 _len84210_))))
          (if (let ((__tmp88899
                     (lambda (_slot84215_ _i84216_)
                       (let ((__tmp88900
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots84208_ _i84216_))))
                         (declare (not safe))
                         (eq? _slot84215_ __tmp88900))))
                    (__tmp88898
                     (let ()
                       (declare (not safe))
                       (iota _len84210_ _start84212_))))
                (declare (not safe))
                (andmap2 __tmp88899 _direct-slots84202_ __tmp88898))
              '#!void
              (error '"non-unique slots in struct"
                     _name84200_
                     _direct-slots84202_))
          _type84206_)))
    (define make-struct-predicate
      (lambda (_klass84191_)
        (let ((_tid84193_
               (let () (declare (not safe)) (##type-id _klass84191_))))
          (if (let () (declare (not safe)) (type-final? _klass84191_))
              (lambda (_obj84195_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj84195_ _tid84193_)))
              (lambda (_obj84197_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj84197_ _tid84193_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84179_ _slot84180_)
        (let ((_$e84182_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84179_ _slot84180_))))
          (if _$e84182_
              ((lambda (_off84185_)
                 (if (let () (declare (not safe)) (type-final? _klass84179_))
                     (lambda (_obj84187_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _obj84187_
                          _off84185_
                          _klass84179_
                          '#f)))
                     (lambda (_obj84189_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _obj84189_
                          _off84185_
                          _klass84179_
                          '#f)))))
               _$e84182_)
              (error '"unknown slot"
                     'class:
                     _klass84179_
                     'slot:
                     _slot84180_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84165_ _slot84166_)
        (let ((_$e84168_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84165_ _slot84166_))))
          (if _$e84168_
              ((lambda (_off84171_)
                 (if (let () (declare (not safe)) (type-final? _klass84165_))
                     (lambda (_obj84173_ _val84174_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _obj84173_
                          _val84174_
                          _off84171_
                          _klass84165_
                          '#f)))
                     (lambda (_obj84176_ _val84177_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _obj84176_
                          _val84177_
                          _off84171_
                          _klass84165_
                          '#f)))))
               _$e84168_)
              (error '"unknown slot"
                     'class:
                     _klass84165_
                     'slot:
                     _slot84166_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84155_ _slot84156_)
        (let ((_$e84158_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84155_ _slot84156_))))
          (if _$e84158_
              ((lambda (_off84161_)
                 (lambda (_obj84163_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _obj84163_
                      _off84161_
                      _klass84155_
                      '#f))))
               _$e84158_)
              (error '"unknown slot"
                     'class:
                     _klass84155_
                     'slot:
                     _slot84156_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84144_ _slot84145_)
        (let ((_$e84147_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84144_ _slot84145_))))
          (if _$e84147_
              ((lambda (_off84150_)
                 (lambda (_obj84152_ _val84153_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84152_
                      _val84153_
                      _off84150_
                      _klass84144_
                      '#f))))
               _$e84147_)
              (error '"unknown slot"
                     'class:
                     _klass84144_
                     'slot:
                     _slot84145_)))))
    (define make-final-field-accessor
      (lambda (_klass84138_ _slot84139_ _field84140_)
        (lambda (_obj84142_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84142_
             _field84140_
             _klass84138_
             _slot84139_)))))
    (define make-struct-field-accessor
      (lambda (_klass84132_ _slot84133_ _field84134_)
        (lambda (_obj84136_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84136_
             _field84134_
             _klass84132_
             _slot84133_)))))
    (define make-final-field-mutator
      (lambda (_klass84125_ _slot84126_ _field84127_)
        (lambda (_obj84129_ _val84130_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84129_
             _val84130_
             _field84127_
             _klass84125_
             _slot84126_)))))
    (define make-struct-field-mutator
      (lambda (_klass84118_ _slot84119_ _field84120_)
        (lambda (_obj84122_ _val84123_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84122_
             _val84123_
             _field84120_
             _klass84118_
             _slot84119_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84112_ _slot84113_ _field84114_)
        (lambda (_obj84116_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84116_
             _field84114_
             _klass84112_
             _slot84113_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84105_ _slot84106_ _field84107_)
        (lambda (_obj84109_ _val84110_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84109_
             _val84110_
             _field84107_
             _klass84105_
             _slot84106_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84096_ _maybe-super-struct84097_)
        (let ((_maybe-super-struct-id84099_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84097_))))
          (let _lp84101_ ((_super-struct84103_ _maybe-sub-struct84096_))
            (if (let () (declare (not safe)) (not _super-struct84103_))
                '#f
                (if (let ((__tmp88902
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84103_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84099_ __tmp88902))
                    '#t
                    (let ((__tmp88901
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84103_))))
                      (declare (not safe))
                      (_lp84101_ __tmp88901))))))))
    (define base-struct/1
      (lambda (_klass84094_)
        (if (let () (declare (not safe)) (struct-type? _klass84094_))
            _klass84094_
            (if (let () (declare (not safe)) (class-type? _klass84094_))
                (let () (declare (not safe)) (##type-super _klass84094_))
                (if (let () (declare (not safe)) (not _klass84094_))
                    '#f
                    (error '"not a class or false" _klass84094_))))))
    (define base-struct/2
      (lambda (_klass184082_ _klass284083_)
        (let ((_s184085_
               (let () (declare (not safe)) (base-struct/1 _klass184082_)))
              (_s284086_
               (let () (declare (not safe)) (base-struct/1 _klass284083_))))
          (if (or (let () (declare (not safe)) (not _s184085_))
                  (and _s284086_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184085_ _s284086_))))
              _s284086_
              (if (or (let () (declare (not safe)) (not _s284086_))
                      (and _s184085_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284086_ _s184085_))))
                  _s184085_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184082_
                         _klass284083_
                         _s184085_
                         _s284086_))))))
    (define base-struct/list
      (lambda (_all-supers83966_)
        (let* ((_all-supers8396783992_ _all-supers83966_)
               (_E8397283996_
                (lambda ()
                  (error '"No clause matching" _all-supers8396783992_))))
          (let ((_K8399084079_ (lambda () '#f))
                (_K8398784065_
                 (lambda (_x84063_)
                   (let () (declare (not safe)) (base-struct/1 _x84063_))))
                (_K8398284042_
                 (lambda (_y84039_ _x84040_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84040_ _y84039_))))
                (_K8397384003_
                 (lambda (_y84000_ _x84001_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84001_ _y84000_)))))
            (let* ((___match8886388864_
                    (lambda (_hd8397484006_ _tl8397584008_)
                      (let ((_x84011_ _hd8397484006_))
                        (letrec ((_splice-rest8397784013_
                                  (lambda (_rest8398184020_ _y84022_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8398184020_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8397384003_ _y84022_ _x84011_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8397283996_)))))
                                 (_splice-try8397984015_
                                  (lambda (_hd8398084024_
                                           _rest8398184026_
                                           _y8397684027_)
                                    (let ((_y84030_ _hd8398084024_))
                                      (let ((__tmp88904
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8398184026_)))
                                            (__tmp88903
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84030_ _y8397684027_))))
                                        (declare (not safe))
                                        (_splice-loop8397884017_
                                         __tmp88904
                                         __tmp88903)))))
                                 (_splice-loop8397884017_
                                  (lambda (_rest8398184032_ _y8397684033_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8398184032_))
                                        (let ((__tmp88906
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8398184032_))))
                                          (declare (not safe))
                                          (_splice-try8397984015_
                                           __tmp88906
                                           _rest8398184032_
                                           _y8397684033_))
                                        (let ((__tmp88905
                                               (reverse _y8397684033_)))
                                          (declare (not safe))
                                          (_splice-rest8397784013_
                                           _rest8398184032_
                                           __tmp88905))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8397884017_ _tl8397584008_ '()))))))
                   (_try-match8396984075_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8396783992_))
                          (let ((_tl8398984070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8396783992_)))
                                (_hd8398884068_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8396783992_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8398984070_))
                                (let ((_x84073_ _hd8398884068_))
                                  (declare (not safe))
                                  (base-struct/1 _x84073_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8398984070_))
                                    (let ((_tl8398684054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8398984070_)))
                                          (_hd8398584052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8398984070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8398684054_))
                                          (let ((_x84050_ _hd8398884068_)
                                                (_y84057_ _hd8398584052_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8398284042_
                                               _y84057_
                                               _x84050_)))
                                          (___match8886388864_
                                           _hd8398884068_
                                           _tl8398984070_)))
                                    (___match8886388864_
                                     _hd8398884068_
                                     _tl8398984070_))))
                          (let () (declare (not safe)) (_E8397283996_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8396783992_))
                  (let () (declare (not safe)) (_K8399084079_))
                  (let () (declare (not safe)) (_try-match8396984075_))))))))
    (define base-struct
      (lambda _all-supers83964_
        (let () (declare (not safe)) (base-struct/list _all-supers83964_))))
    (define find-super-ctor
      (lambda (_super83962_)
        (let () (declare (not safe)) (find-super-constructor _super83962_))))
    (define find-super-constructor
      (lambda (_super83914_)
        (let _lp83916_ ((_rest83918_ _super83914_) (_constructor83919_ '#f))
          (let* ((_rest8392083928_ _rest83918_)
                 (_else8392283936_ (lambda () _constructor83919_))
                 (_K8392483950_
                  (lambda (_rest83939_ _hd83940_)
                    (let ((_$e83942_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd83940_))))
                      (if _$e83942_
                          ((lambda (_xconstructor83945_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83919_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83919_
                                            _xconstructor83945_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83916_ _rest83939_ _xconstructor83945_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83919_
                                        _xconstructor83945_)))
                           _$e83942_)
                          (let ()
                            (declare (not safe))
                            (_lp83916_ _rest83939_ _constructor83919_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8392083928_))
                (let ((_hd8392583953_
                       (let () (declare (not safe)) (##car _rest8392083928_)))
                      (_tl8392683955_
                       (let () (declare (not safe)) (##cdr _rest8392083928_))))
                  (let* ((_hd83958_ _hd8392583953_)
                         (_rest83960_ _tl8392683955_))
                    (declare (not safe))
                    (_K8392483950_ _rest83960_ _hd83958_)))
                (let () (declare (not safe)) (_else8392283936_)))))))
    (define compute-class-slots
      (lambda (_super-struct83885_
               _class-precedence-list83886_
               _direct-slots83887_)
        (let* ((_previous-slots83889_
                (if _super-struct83885_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct83885_))
                    '#(#f)))
               (_next-slot83891_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots83889_)))
               (_slot-table83893_
                (if _super-struct83885_
                    (let ((__tmp88907
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct83885_))))
                      (declare (not safe))
                      (hash-copy __tmp88907))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots83895_ '())
               (_process-slot83899_
                (lambda (_slot83897_)
                  (if (let () (declare (not safe)) (symbol? _slot83897_))
                      '#!void
                      (error '"invalid slot name" _slot83897_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83893_ _slot83897_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83893_
                           _slot83897_
                           _next-slot83891_))
                        (let ((__tmp88908 (symbol->keyword _slot83897_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83893_
                           __tmp88908
                           _next-slot83891_))
                        (set! _r-slots83895_
                              (let ()
                                (declare (not safe))
                                (cons _slot83897_ _r-slots83895_)))
                        (set! _next-slot83891_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83891_ '1)))))))
               (_process-slots83905_
                (lambda (_g8390083902_)
                  (for-each _process-slot83899_ _g8390083902_))))
          (for-each
           (lambda (_mixin83908_)
             (if (let () (declare (not safe)) (type-struct? _mixin83908_))
                 '#!void
                 (let ((__tmp88909
                        (let ((__tmp88910
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin83908_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp88910 '()))))
                   (declare (not safe))
                   (_process-slots83905_ __tmp88909))))
           (reverse _class-precedence-list83886_))
          (let ()
            (declare (not safe))
            (_process-slots83905_ _direct-slots83887_))
          (let ((_all-slots83910_ (make-vector _next-slot83891_ '#f)))
            (vector-copy! _all-slots83910_ '0 _previous-slots83889_)
            (for-each
             (lambda (_slot83912_)
               (set! _next-slot83891_
                     (let () (declare (not safe)) (##fx- _next-slot83891_ '1)))
               (vector-set! _all-slots83910_ _next-slot83891_ _slot83912_))
             _r-slots83895_)
            (values _all-slots83910_ _slot-table83893_)))))
    (define make-class-type
      (lambda (_id83847_
               _name83848_
               _direct-supers83849_
               _direct-slots83850_
               _properties83851_
               _constructor83852_)
        (let ((_$e83856_
               (let ((__tmp88911
                      (lambda (_klass83854_)
                        (let ((__tmp88912
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass83854_))))
                          (declare (not safe))
                          (not __tmp88912)))))
                 (declare (not safe))
                 (find __tmp88911 _direct-supers83849_))))
          (if _$e83856_
              ((lambda (_g8385883860_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8385883860_))
               _$e83856_)
              (let ((_$e83863_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers83849_))))
                (if _$e83863_
                    ((lambda (_g8386583867_)
                       (error '"Cannot extend final class" _g8386583867_))
                     _$e83863_)
                    '#!void))))
        (let* ((_struct-super83870_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers83849_)))
               (_precedence-list83872_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers83849_)))
               (_g88913_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super83870_
                   _precedence-list83872_
                   _direct-slots83850_))))
          (begin
            (let ((_g88914_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88913_) (##vector-length _g88913_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88914_ 2)))
                  (error "Context expects 2 values" _g88914_)))
            (let ((_all-slots83874_
                   (let () (declare (not safe)) (##vector-ref _g88913_ 0)))
                  (_slot-table83875_
                   (let () (declare (not safe)) (##vector-ref _g88913_ 1))))
              (let* ((_properties83877_
                      (let ((__tmp88917
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots83850_)))
                            (__tmp88915
                             (let ((__tmp88916
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers83849_))))
                               (declare (not safe))
                               (cons __tmp88916 _properties83851_))))
                        (declare (not safe))
                        (cons __tmp88917 __tmp88915)))
                     (_constructor*83882_
                      (let ((_$e83879_ _constructor83852_))
                        (if _$e83879_
                            _$e83879_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers83849_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor
                   _id83847_
                   _name83848_
                   _struct-super83870_
                   _precedence-list83872_
                   _all-slots83874_
                   _properties83877_
                   _constructor*83882_
                   _slot-table83875_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass83845_)
        (let ((__tmp88918
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83845_))))
          (declare (not safe))
          (cons _klass83845_ __tmp88918))))
    (define struct-precedence-list
      (lambda (_strukt83840_)
        (let ((__tmp88919
               (let ((_$e83842_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt83840_))))
                 (if _$e83842_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e83842_))
                     '()))))
          (declare (not safe))
          (cons _strukt83840_ __tmp88919))))
    (define class-linearize-mixins
      (lambda (_klass-lst83838_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst83838_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass83828_)
        (if (let () (declare (not safe)) (type-final? _klass83828_))
            (lambda (_g8382983831_)
              (let ((__tmp88920
                     (let () (declare (not safe)) (##type-id _klass83828_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8382983831_ __tmp88920)))
            (lambda (_g8383383835_)
              (let ()
                (declare (not safe))
                (class-instance? _klass83828_ _g8383383835_))))))
    (define if-class-slot-field
      (lambda (_klass83817_
               _slot83818_
               _if-final83819_
               _if-struct83820_
               _if-struct-field83821_
               _if-class-slot83822_)
        (let ((_field83824_
               (let ((__tmp88921
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass83817_))))
                 (declare (not safe))
                 (table-ref __tmp88921 _slot83818_ '#f))))
          (if (let () (declare (not safe)) (not _field83824_))
              (error '"unknown slot" 'class: _klass83817_ 'slot: _slot83818_)
              (if (let () (declare (not safe)) (type-final? _klass83817_))
                  (_if-final83819_ _klass83817_ _slot83818_ _field83824_)
                  (if (let () (declare (not safe)) (type-struct? _klass83817_))
                      (_if-struct83820_ _klass83817_ _slot83818_ _field83824_)
                      (if (let ((_strukt83826_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83817_))))
                            (and _strukt83826_
                                 (let ((__tmp88922
                                        (let ((__tmp88923
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt83826_))))
                                          (declare (not safe))
                                          (##vector-length __tmp88923))))
                                   (declare (not safe))
                                   (##fx< _field83824_ __tmp88922))))
                          (_if-struct-field83821_
                           _klass83817_
                           _slot83818_
                           _field83824_)
                          (_if-class-slot83822_
                           _klass83817_
                           _slot83818_
                           _field83824_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83814_ _slot83815_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83814_
           _slot83815_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object83798_ _class83799_ _slot83800_)
        (apply error
               '"not an instance"
               'object:
               _object83798_
               'class:
               _class83799_
               (if _slot83800_
                   (let ((__tmp88924
                          (let ()
                            (declare (not safe))
                            (cons _slot83800_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88924))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83805_ _class83806_)
        (let ((_slot83808_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83805_ _class83806_ _slot83808_))))
    (define not-an-instance
      (lambda _g88926_
        (let ((_g88925_ (let () (declare (not safe)) (##length _g88926_))))
          (cond ((let () (declare (not safe)) (##fx= _g88925_ 2))
                 (apply (lambda (_object83805_ _class83806_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83805_ _class83806_)))
                        _g88926_))
                ((let () (declare (not safe)) (##fx= _g88925_ 3))
                 (apply (lambda (_object83810_ _class83811_ _slot83812_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83810_
                             _class83811_
                             _slot83812_)))
                        _g88926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88926_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass83791_ _slot83792_ _field83793_)
        (lambda (_obj83795_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83791_ _obj83795_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83795_ _field83793_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83795_ _klass83791_ _slot83792_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83785_ _slot83786_ _field83787_)
        (lambda (_obj83789_)
          (if (let ((__tmp88927
                     (let () (declare (not safe)) (##type-id _klass83785_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83789_ __tmp88927))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83789_ _field83787_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83785_ _obj83789_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83789_ _slot83786_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83789_
                     _klass83785_
                     _slot83786_)))))))
    (define make-class-slot-mutator
      (lambda (_klass83782_ _slot83783_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83782_
           _slot83783_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass83775_ _slot83776_ _field83777_)
        (lambda (_obj83779_ _val83780_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83775_ _obj83779_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83779_ _field83777_ _val83780_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83779_ _klass83775_ _slot83776_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83768_ _slot83769_ _field83770_)
        (lambda (_obj83772_ _val83773_)
          (if (let ((__tmp88928
                     (let () (declare (not safe)) (##type-id _klass83768_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83772_ __tmp88928))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83772_ _field83770_ _val83773_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83768_ _obj83772_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83772_ _slot83769_ _val83773_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83772_
                     _klass83768_
                     _slot83769_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83765_ _slot83766_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83765_
           _slot83766_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83759_ _slot83760_ _field83761_)
        (lambda (_obj83763_)
          (if (let ((__tmp88929
                     (let () (declare (not safe)) (##type-id _klass83759_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83763_ __tmp88929))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83763_ _field83761_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83763_ _slot83760_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83756_ _slot83757_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83756_
           _slot83757_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83749_ _slot83750_ _field83751_)
        (lambda (_obj83753_ _val83754_)
          (if (let ((__tmp88930
                     (let () (declare (not safe)) (##type-id _klass83749_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83753_ __tmp88930))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83753_ _field83751_ _val83754_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83753_ _slot83750_ _val83754_))))))
    (define class-slot-offset
      (lambda (_klass83746_ _slot83747_)
        (let ((__tmp88931
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83746_))))
          (declare (not safe))
          (table-ref __tmp88931 _slot83747_ '#f))))
    (define class-slot-ref
      (lambda (_klass83740_ _obj83741_ _slot83742_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83740_ _obj83741_))
            (let ((_off83744_
                   (let ((__tmp88932
                          (let ()
                            (declare (not safe))
                            (object-type _obj83741_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88932 _slot83742_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83741_
               _off83744_
               _klass83740_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83741_ _klass83740_)))))
    (define class-slot-set!
      (lambda (_klass83733_ _obj83734_ _slot83735_ _val83736_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83733_ _obj83734_))
            (let ((_off83738_
                   (let ((__tmp88933
                          (let ()
                            (declare (not safe))
                            (object-type _obj83734_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88933 _slot83735_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83734_
               _val83736_
               _off83738_
               _klass83733_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83734_ _klass83733_)))))
    (define unchecked-field-ref
      (lambda (_obj83730_ _off83731_)
        (let ((__tmp88934
               (let () (declare (not safe)) (##structure-type _obj83730_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83730_ _off83731_ __tmp88934 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83726_ _off83727_ _val83728_)
        (let ((__tmp88935
               (let () (declare (not safe)) (##structure-type _obj83726_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83726_
           _val83728_
           _off83727_
           __tmp88935
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83723_ _slot83724_)
        (let ((__tmp88936
               (let ((__tmp88937
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83723_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88937 _slot83724_))))
          (declare (not safe))
          (unchecked-field-ref _obj83723_ __tmp88936))))
    (define unchecked-slot-set!
      (lambda (_obj83719_ _slot83720_ _val83721_)
        (let ((__tmp88938
               (let ((__tmp88939
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83719_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88939 _slot83720_))))
          (declare (not safe))
          (unchecked-field-set! _obj83719_ __tmp88938 _val83721_))))
    (define slot-ref__%
      (lambda (_obj83695_ _slot83696_ _E83697_)
        (if (let () (declare (not safe)) (object? _obj83695_))
            (let* ((_klass83699_
                    (let () (declare (not safe)) (object-type _obj83695_)))
                   (_$e83702_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83699_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83699_ _slot83696_))
                        '#f)))
              (if _$e83702_
                  ((lambda (_off83705_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83695_ _off83705_)))
                   _$e83702_)
                  (_E83697_ _obj83695_ _slot83696_)))
            (_E83697_ _obj83695_ _slot83696_))))
    (define slot-ref__0
      (lambda (_obj83710_ _slot83711_)
        (let ((_E83713_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83710_ _slot83711_ _E83713_))))
    (define slot-ref
      (lambda _g88941_
        (let ((_g88940_ (let () (declare (not safe)) (##length _g88941_))))
          (cond ((let () (declare (not safe)) (##fx= _g88940_ 2))
                 (apply (lambda (_obj83710_ _slot83711_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83710_ _slot83711_)))
                        _g88941_))
                ((let () (declare (not safe)) (##fx= _g88940_ 3))
                 (apply (lambda (_obj83715_ _slot83716_ _E83717_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83715_ _slot83716_ _E83717_)))
                        _g88941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88941_))))))
    (define slot-set!__%
      (lambda (_obj83667_ _slot83668_ _val83669_ _E83670_)
        (if (let () (declare (not safe)) (object? _obj83667_))
            (let* ((_klass83672_
                    (let () (declare (not safe)) (object-type _obj83667_)))
                   (_$e83675_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83672_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83672_ _slot83668_))
                        '#f)))
              (if _$e83675_
                  ((lambda (_off83678_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83667_
                        _off83678_
                        _val83669_)))
                   _$e83675_)
                  (_E83670_ _obj83667_ _slot83668_)))
            (_E83670_ _obj83667_ _slot83668_))))
    (define slot-set!__0
      (lambda (_obj83683_ _slot83684_ _val83685_)
        (let ((_E83687_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83683_ _slot83684_ _val83685_ _E83687_))))
    (define slot-set!
      (lambda _g88943_
        (let ((_g88942_ (let () (declare (not safe)) (##length _g88943_))))
          (cond ((let () (declare (not safe)) (##fx= _g88942_ 3))
                 (apply (lambda (_obj83683_ _slot83684_ _val83685_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83683_ _slot83684_ _val83685_)))
                        _g88943_))
                ((let () (declare (not safe)) (##fx= _g88942_ 4))
                 (apply (lambda (_obj83689_ _slot83690_ _val83691_ _E83692_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83689_
                             _slot83690_
                             _val83691_
                             _E83692_)))
                        _g88943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88943_))))))
    (define __slot-error
      (lambda (_obj83663_ _slot83664_)
        (error '"Cannot find slot" 'object: _obj83663_ 'slot: _slot83664_)))
    (define subclass?
      (lambda (_maybe-sub-class83653_ _maybe-super-class83654_)
        (let* ((_maybe-super-class-id83656_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83654_)))
               (_$e83658_
                (let ((__tmp88944
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83653_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83656_ __tmp88944))))
          (if _$e83658_
              _$e83658_
              (let ((__tmp88946
                     (lambda (_super-class83661_)
                       (let ((__tmp88947
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83661_))))
                         (declare (not safe))
                         (eq? __tmp88947 _maybe-super-class-id83656_))))
                    (__tmp88945
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83653_))))
                (declare (not safe))
                (ormap1 __tmp88946 __tmp88945))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83650_ _obj83651_)
        (let ((__tmp88948
               (let () (declare (not safe)) (##type-id _klass83650_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83651_ __tmp88948))))
    (define struct-instance?
      (lambda (_klass83647_ _obj83648_)
        (let ((__tmp88949
               (let () (declare (not safe)) (##type-id _klass83647_))))
          (declare (not safe))
          (##structure-instance-of? _obj83648_ __tmp88949))))
    (define class-instance?
      (lambda (_klass83642_ _obj83643_)
        (if (let () (declare (not safe)) (object? _obj83643_))
            (let ((_type83645_
                   (let () (declare (not safe)) (object-type _obj83643_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83645_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83645_ _klass83642_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83637_ _k83638_)
        (let ((_obj83640_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83637_ _k83638_))))
          (let () (declare (not safe)) (object-fill! _obj83640_ '#f))
          _obj83640_)))
    (define object-fill!
      (lambda (_obj83630_ _fill83631_)
        (let _loop83633_ ((_i83635_
                           (let ((__tmp88951
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83630_))))
                             (declare (not safe))
                             (##fx- __tmp88951 '1))))
          (if (let () (declare (not safe)) (##fx> _i83635_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83630_
                   _fill83631_
                   _i83635_
                   '#f
                   '#f))
                (let ((__tmp88950
                       (let () (declare (not safe)) (##fx- _i83635_ '1))))
                  (declare (not safe))
                  (_loop83633_ __tmp88950)))
              _obj83630_))))
    (define make-instance
      (lambda (_klass83628_)
        (let ((__obj88865
               (let ((__tmp88952
                      (let ((__tmp88953
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83628_))))
                        (declare (not safe))
                        (##vector-length __tmp88953))))
                 (declare (not safe))
                 (##make-structure _klass83628_ __tmp88952))))
          (let () (declare (not safe)) (object-fill! __obj88865 '#f))
          __obj88865)))
    (define make-struct-instance
      (lambda (_klass83615_ . _args83616_)
        (let* ((_all-slots83618_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass83615_)))
               (_size83620_
                (let ()
                  (declare (not safe))
                  (##vector-length _all-slots83618_))))
          (let ((_$e83623_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass83615_))))
            (if _$e83623_
                ((lambda (_kons-id83626_)
                   (let ((__tmp88956
                          (let ((__obj88866
                                 (let ()
                                   (declare (not safe))
                                   (##make-structure
                                    _klass83615_
                                    _size83620_))))
                            (let ()
                              (declare (not safe))
                              (object-fill! __obj88866 '#f))
                            __obj88866)))
                     (declare (not safe))
                     (__constructor-init!
                      _klass83615_
                      _kons-id83626_
                      __tmp88956
                      _args83616_)))
                 _$e83623_)
                (if (let ((__tmp88955
                           (let ()
                             (declare (not safe))
                             (##fx- _size83620_ '1)))
                          (__tmp88954 (length _args83616_)))
                      (declare (not safe))
                      (##fx= __tmp88955 __tmp88954))
                    (apply ##structure _klass83615_ _args83616_)
                    (error '"arguments don't match object size"
                           'class:
                           _klass83615_
                           'slots:
                           (let () (declare (not safe)) (##fx- _size83620_ '1))
                           'args:
                           _args83616_)))))))
    (define make-class-instance
      (lambda (_klass83605_ . _args83606_)
        (let* ((_obj83608_
                (let () (declare (not safe)) (make-instance _klass83605_)))
               (_$e83610_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83605_))))
          (if _$e83610_
              ((lambda (_kons-id83613_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83605_
                    _kons-id83613_
                    _obj83608_
                    _args83606_)))
               _$e83610_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83605_
                 _obj83608_
                 _args83606_))))))
    (define struct-instance-init!
      (lambda (_obj83602_ . _args83603_)
        (if (let ((__tmp88958 (length _args83603_))
                  (__tmp88957
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83602_))))
              (declare (not safe))
              (##fx< __tmp88958 __tmp88957))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83602_ _args83603_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83602_
                   'args:
                   _args83603_))))
    (define __struct-instance-init!
      (lambda (_obj83561_ _args83562_)
        (let _lp83564_ ((_k83566_ '1) (_rest83567_ _args83562_))
          (let* ((_rest8356883576_ _rest83567_)
                 (_else8357083584_ (lambda () _obj83561_))
                 (_K8357283590_
                  (lambda (_rest83587_ _hd83588_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83561_ _k83566_ _hd83588_))
                    (let ((__tmp88959
                           (let () (declare (not safe)) (##fx+ _k83566_ '1))))
                      (declare (not safe))
                      (_lp83564_ __tmp88959 _rest83587_)))))
            (if (let () (declare (not safe)) (##pair? _rest8356883576_))
                (let ((_hd8357383593_
                       (let () (declare (not safe)) (##car _rest8356883576_)))
                      (_tl8357483595_
                       (let () (declare (not safe)) (##cdr _rest8356883576_))))
                  (let* ((_hd83598_ _hd8357383593_)
                         (_rest83600_ _tl8357483595_))
                    (declare (not safe))
                    (_K8357283590_ _rest83600_ _hd83598_)))
                (let () (declare (not safe)) (_else8357083584_)))))))
    (define class-instance-init!
      (lambda (_obj83558_ . _args83559_)
        (let ((__tmp88960
               (let () (declare (not safe)) (object-type _obj83558_))))
          (declare (not safe))
          (__class-instance-init! __tmp88960 _obj83558_ _args83559_))))
    (define __class-instance-init!
      (lambda (_klass83502_ _obj83503_ _args83504_)
        (let _lp83506_ ((_rest83508_ _args83504_))
          (let* ((_rest8350983519_ _rest83508_)
                 (_else8351183527_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83508_))
                        _obj83503_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83502_
                               'rest:
                               _rest83508_))))
                 (_K8351383539_
                  (lambda (_rest83530_ _val83531_ _key83532_)
                    (let ((_$e83534_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83502_ _key83532_))))
                      (if _$e83534_
                          ((lambda (_off83537_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83503_
                                _off83537_
                                _val83531_))
                             (let ()
                               (declare (not safe))
                               (_lp83506_ _rest83530_)))
                           _$e83534_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83502_
                                 'slot:
                                 _key83532_))))))
            (if (let () (declare (not safe)) (##pair? _rest8350983519_))
                (let ((_hd8351483542_
                       (let () (declare (not safe)) (##car _rest8350983519_)))
                      (_tl8351583544_
                       (let () (declare (not safe)) (##cdr _rest8350983519_))))
                  (let ((_key83547_ _hd8351483542_))
                    (if (let () (declare (not safe)) (##pair? _tl8351583544_))
                        (let ((_hd8351683549_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8351583544_)))
                              (_tl8351783551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8351583544_))))
                          (let* ((_val83554_ _hd8351683549_)
                                 (_rest83556_ _tl8351783551_))
                            (declare (not safe))
                            (_K8351383539_ _rest83556_ _val83554_ _key83547_)))
                        (let () (declare (not safe)) (_else8351183527_)))))
                (let () (declare (not safe)) (_else8351183527_)))))))
    (define constructor-init!
      (lambda (_klass83497_ _kons-id83498_ _obj83499_ . _args83500_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83497_
           _kons-id83498_
           _obj83499_
           _args83500_))))
    (define __constructor-init!
      (lambda (_klass83487_ _kons-id83488_ _obj83489_ _args83490_)
        (let ((_$e83492_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83487_ _kons-id83488_))))
          (if _$e83492_
              ((lambda (_kons83495_)
                 (apply _kons83495_ _obj83489_ _args83490_)
                 _obj83489_)
               _$e83492_)
              (error '"missing constructor"
                     'class:
                     _klass83487_
                     'method:
                     _kons-id83488_)))))
    (define struct-copy
      (lambda (_struct83485_)
        (if (let () (declare (not safe)) (##structure? _struct83485_))
            '#!void
            (error '"not a structure" _struct83485_))
        (let () (declare (not safe)) (##structure-copy _struct83485_))))
    (define struct->list
      (lambda (_obj83483_)
        (if (let () (declare (not safe)) (object? _obj83483_))
            (let () (declare (not safe)) (##vector->list _obj83483_))
            (error '"not an object" _obj83483_))))
    (define class->list
      (lambda (_obj83470_)
        (if (let () (declare (not safe)) (object? _obj83470_))
            (let ((_klass83472_
                   (let () (declare (not safe)) (object-type _obj83470_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83472_))
                  (let ((_all-slots83474_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83472_))))
                    (let _loop83476_ ((_index83478_
                                       (let ((__tmp88966
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83474_))))
                                         (declare (not safe))
                                         (##fx- __tmp88966 '1)))
                                      (_plist83479_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83478_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83472_ _plist83479_))
                          (let ((_slot83481_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83474_
                                    _index83478_))))
                            (let ((__tmp88965
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83478_ '1)))
                                  (__tmp88961
                                   (let ((__tmp88964
                                          (symbol->keyword _slot83481_))
                                         (__tmp88962
                                          (let ((__tmp88963
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83470_
                                                    _index83478_))))
                                            (declare (not safe))
                                            (cons __tmp88963 _plist83479_))))
                                     (declare (not safe))
                                     (cons __tmp88964 __tmp88962))))
                              (declare (not safe))
                              (_loop83476_ __tmp88965 __tmp88961))))))
                  (error '"not a class type"
                         'object:
                         _obj83470_
                         'class:
                         _klass83472_)))
            (error '"not an object" _obj83470_))))
    (define call-method
      (lambda (_obj83461_ _id83462_ . _args83463_)
        (let ((_$e83465_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83461_ _id83462_))))
          (if _$e83465_
              ((lambda (_method83468_)
                 (apply _method83468_ _obj83461_ _args83463_))
               _$e83465_)
              (error '"cannot find method"
                     'object:
                     _obj83461_
                     'method:
                     _id83462_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83458_ _id83459_)
        (if (let () (declare (not safe)) (object? _obj83458_))
            (let ((__tmp88967
                   (let () (declare (not safe)) (object-type _obj83458_))))
              (declare (not safe))
              (find-method __tmp88967 _id83459_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83452_ _id83453_)
        (let ((_$e83455_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83452_ _id83453_))))
          (if _$e83455_
              _$e83455_
              (error '"missing method"
                     'object:
                     _obj83452_
                     'method:
                     _id83453_)))))
    (define bound-method-ref
      (lambda (_obj83442_ _id83443_)
        (let ((_$e83445_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83442_ _id83443_))))
          (if _$e83445_
              ((lambda (_method83448_)
                 (lambda _args83450_
                   (apply _method83448_ _obj83442_ _args83450_)))
               _$e83445_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83435_ _id83436_)
        (let ((_method83438_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83435_ _id83436_))))
          (lambda _args83440_ (apply _method83438_ _obj83435_ _args83440_)))))
    (define find-method
      (lambda (_klass83432_ _id83433_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83432_))
            (let ()
              (declare (not safe))
              (__find-method _klass83432_ _id83433_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83432_ _id83433_)))))
    (define __find-method
      (lambda (_klass83426_ _id83427_)
        (let ((_$e83429_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83426_ _id83427_))))
          (if _$e83429_
              _$e83429_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83426_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83426_ _id83427_)))))))
    (define class-find-method
      (lambda (_klass83423_ _id83424_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83423_))
            (let ()
              (declare (not safe))
              (__find-method _klass83423_ _id83424_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83416_ _id83417_)
        (let ((__tmp88968
               (lambda (_g8341883420_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8341883420_ _id83417_)))))
          (declare (not safe))
          (ormap1 __tmp88968 _mixins83416_))))
    (define builtin-find-method
      (lambda (_klass83410_ _id83411_)
        (if (let () (declare (not safe)) (##type? _klass83410_))
            (let ((_$e83413_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83410_ _id83411_))))
              (if _$e83413_
                  _$e83413_
                  (let ((__tmp88969
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83410_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88969 _id83411_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83402_ _id83403_)
        (let ((_$e83405_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83402_))))
          (if _$e83405_
              ((lambda (_ht83408_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83408_ _id83403_ '#f)))
               _$e83405_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83399_ _id83400_)
        (let ((__tmp88970
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83399_))))
          (declare (not safe))
          (mixin-find-method __tmp88970 _id83400_))))
    (define builtin-method-ref
      (lambda (_klass83391_ _id83392_)
        (let ((_$e83394_
               (let ((__tmp88971
                      (let () (declare (not safe)) (##type-id _klass83391_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp88971 '#f))))
          (if _$e83394_
              ((lambda (_mtab83397_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83397_ _id83392_ '#f)))
               _$e83394_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83357_ _id83358_ _proc83359_ _rebind?83360_)
        (letrec ((_bind!83362_
                  (lambda (_ht83375_)
                    (if (and (let () (declare (not safe)) (not _rebind?83360_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83375_ _id83358_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83357_
                               'method:
                               _id83358_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83375_ _id83358_ _proc83359_))))))
          (if (let () (declare (not safe)) (procedure? _proc83359_))
              '#!void
              (error '"bad method; expected procedure" _proc83359_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83357_))
              (let ((_ht83364_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83357_))))
                (if _ht83364_
                    (let () (declare (not safe)) (_bind!83362_ _ht83364_))
                    (let ((_ht83366_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83357_ _ht83366_))
                      (let () (declare (not safe)) (_bind!83362_ _ht83366_)))))
              (if (let () (declare (not safe)) (##type? _klass83357_))
                  (let ((_ht83373_
                         (let ((_$e83368_
                                (let ((__tmp88972
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83357_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp88972
                                   '#f))))
                           (if _$e83368_
                               _$e83368_
                               (let ((_ht83371_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp88973
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83357_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88973
                                    _ht83371_))
                                 _ht83371_)))))
                    (declare (not safe))
                    (_bind!83362_ _ht83373_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83357_))))))
    (define bind-method!__0
      (lambda (_klass83380_ _id83381_ _proc83382_)
        (let ((_rebind?83384_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83380_
           _id83381_
           _proc83382_
           _rebind?83384_))))
    (define bind-method!
      (lambda _g88975_
        (let ((_g88974_ (let () (declare (not safe)) (##length _g88975_))))
          (cond ((let () (declare (not safe)) (##fx= _g88974_ 3))
                 (apply (lambda (_klass83380_ _id83381_ _proc83382_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83380_
                             _id83381_
                             _proc83382_)))
                        _g88975_))
                ((let () (declare (not safe)) (##fx= _g88974_ 4))
                 (apply (lambda (_klass83386_
                                 _id83387_
                                 _proc83388_
                                 _rebind?83389_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83386_
                             _id83387_
                             _proc83388_
                             _rebind?83389_)))
                        _g88975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88975_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83353_ _specializer83354_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83353_ _specializer83354_))))
    (define seal-class!
      (lambda (_klass83320_)
        (letrec ((_collect-methods!83322_
                  (lambda (_mtab83338_)
                    (letrec ((_merge!83340_
                              (lambda (_tab83348_)
                                (let ((__tmp88976
                                       (lambda (_id83350_ _proc83351_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83338_
                                            _id83350_
                                            _proc83351_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp88976 _tab83348_))))
                             (_collect-direct-methods!83341_
                              (lambda (_klass83343_)
                                (let ((_$e83345_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83343_))))
                                  (if _$e83345_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83340_ _$e83345_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83341_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83320_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83320_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83320_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83320_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83320_))
                    (let ((_vtab83324_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83325_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83322_ _mtab83325_))
                      (let ((__tmp88977
                             (lambda (_id83327_ _proc83328_)
                               (let ((_$e83330_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83328_
                                         '#f))))
                                 (if _$e83330_
                                     ((lambda (_specializer83333_)
                                        (let ((_proc83335_
                                               (_specializer83333_
                                                _klass83320_))
                                              (_gid83336_
                                               (let ((__tmp88978
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83320_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp88978
                                                  '"::["
                                                  _id83327_
                                                  '"]"))))
                                          (eval (let ((__tmp88979
                                                       (let ((__tmp88980
                                                              (let ((__tmp88981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88982
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83335_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp88982))))
                        (declare (not safe))
                        (cons __tmp88981 '()))))
                 (declare (not safe))
                 (cons _gid83336_ __tmp88980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp88979)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83324_
                                             _id83327_
                                             _proc83335_))))
                                      _$e83330_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83324_
                                        _id83327_
                                        _proc83328_)))))))
                        (declare (not safe))
                        (table-for-each __tmp88977 _mtab83325_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83320_
                         _vtab83324_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83320_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83269_ _obj83270_ _id83271_)
        (let ((_klass83273_
               (let () (declare (not safe)) (object-type _obj83270_)))
              (_type-id83274_
               (let () (declare (not safe)) (##type-id _subklass83269_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83273_))
              (let _lp83276_ ((_rest83278_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83273_))))
                (let* ((_rest8327983287_ _rest83278_)
                       (_else8328183295_ (lambda () '#f))
                       (_K8328383301_
                        (lambda (_rest83298_ _klass83299_)
                          (if (let ((__tmp88985
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83299_))))
                                (declare (not safe))
                                (eq? _type-id83274_ __tmp88985))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83298_ _id83271_))
                              (let ()
                                (declare (not safe))
                                (_lp83276_ _rest83298_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8327983287_))
                      (let ((_hd8328483304_
                             (let ()
                               (declare (not safe))
                               (##car _rest8327983287_)))
                            (_tl8328583306_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8327983287_))))
                        (let* ((_klass83309_ _hd8328483304_)
                               (_rest83311_ _tl8328583306_))
                          (declare (not safe))
                          (_K8328383301_ _rest83311_ _klass83309_)))
                      (let () (declare (not safe)) (_else8328183295_)))))
              (if (let () (declare (not safe)) (##type? _klass83273_))
                  (let _lp83313_ ((_klass83315_ _klass83273_))
                    (if (let ((__tmp88984
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83315_))))
                          (declare (not safe))
                          (eq? _type-id83274_ __tmp88984))
                        (let ((__tmp88983
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83315_))))
                          (declare (not safe))
                          (builtin-find-method __tmp88983 _id83271_))
                        (let ((_$e83317_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83315_))))
                          (if _$e83317_
                              (let ()
                                (declare (not safe))
                                (_lp83313_ _$e83317_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83259_ _obj83260_ _id83261_ . _args83262_)
        (let ((_$e83264_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83259_ _obj83260_ _id83261_))))
          (if _$e83264_
              ((lambda (_methodf83267_)
                 (apply _methodf83267_ _obj83260_ _args83262_))
               _$e83264_)
              (error '"cannot find next method"
                     'object:
                     _obj83260_
                     'method:
                     _id83261_)))))
    (define write-style (lambda (_we83257_) (macro-writeenv-style _we83257_)))
    (define write-object
      (lambda (_we83249_ _obj83250_)
        (let ((_$e83252_
               (let () (declare (not safe)) (method-ref _obj83250_ ':wr))))
          (if _$e83252_
              ((lambda (_method83255_) (_method83255_ _obj83250_ _we83249_))
               _$e83252_)
              (let ()
                (declare (not safe))
                (##default-wr _we83249_ _obj83250_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
