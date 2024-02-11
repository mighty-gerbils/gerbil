(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707647931)
  (begin
    (define type-id
      (lambda (_klass84300_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84300_))
            (let () (declare (not safe)) (##type-id _klass84300_))
            (if (let () (declare (not safe)) (not _klass84300_))
                '#f
                (error '"not a type descriptor" _klass84300_)))))
    (define type=?
      (lambda (_x84297_ _y84298_)
        (let ((__tmp88794 (let () (declare (not safe)) (type-id _x84297_)))
              (__tmp88793 (let () (declare (not safe)) (type-id _y84298_))))
          (declare (not safe))
          (eq? __tmp88794 __tmp88793))))
    (define type-descriptor?
      (lambda (_klass84295_)
        (if (let () (declare (not safe)) (##type? _klass84295_))
            (let ((__tmp88795
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84295_))))
              (declare (not safe))
              (eq? __tmp88795 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84293_)
        (let ((__tmp88796
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84293_))))
          (declare (not safe))
          (assgetq 'struct: __tmp88796))))
    (define type-final?
      (lambda (_klass84291_)
        (let ((__tmp88797
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84291_))))
          (declare (not safe))
          (assgetq 'final: __tmp88797))))
    (define struct-type?
      (lambda (_klass84289_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84289_))
            (let () (declare (not safe)) (type-struct? _klass84289_))
            '#f)))
    (define class-type?
      (lambda (_klass84287_)
        (let () (declare (not safe)) (type-descriptor? _klass84287_))))
    (define properties-form
      (lambda (_properties84253_)
        (map (lambda (_e8425484256_)
               (let* ((_g8425884265_ _e8425484256_)
                      (_E8426084269_
                       (lambda () (error '"No clause matching" _g8425884265_)))
                      (_K8426184275_
                       (lambda (_val84272_ _key84273_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84273_ 'direct-supers:))
                             (let ((__tmp88798 (map type-id _val84272_)))
                               (declare (not safe))
                               (cons _key84273_ __tmp88798))
                             (let ()
                               (declare (not safe))
                               (cons _key84273_ _val84272_))))))
                 (if (let () (declare (not safe)) (##pair? _g8425884265_))
                     (let ((_hd8426284278_
                            (let ()
                              (declare (not safe))
                              (##car _g8425884265_)))
                           (_tl8426384280_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8425884265_))))
                       (let* ((_key84283_ _hd8426284278_)
                              (_val84285_ _tl8426384280_))
                         (declare (not safe))
                         (_K8426184275_ _val84285_ _key84283_)))
                     (let () (declare (not safe)) (_E8426084269_)))))
             _properties84253_)))
    (define make-type-descriptor
      (lambda (_type-id84166_
               _type-name84167_
               _type-super84168_
               _precedence-list84169_
               _all-slots84170_
               _properties84171_
               _constructor84172_
               _slot-table84173_
               _methods84174_)
        (letrec ((_make-props!84176_
                  (lambda (_key84222_)
                    (letrec* ((_ht84224_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84225_
                               (lambda (_ht84246_ _slots84247_)
                                 (for-each
                                  (lambda (_g8424884250_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84246_
                                       _g8424884250_
                                       '#t)))
                                  _slots84247_)))
                              (_put-alist!84226_
                               (lambda (_ht84235_ _key84236_ _alist84237_)
                                 (let ((_$e84239_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84236_ _alist84237_))))
                                   (if _$e84239_
                                       ((lambda (_g8424184243_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84225_
                                             _ht84235_
                                             _g8424184243_)))
                                        _$e84239_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84226_
                         _ht84224_
                         _key84222_
                         _properties84171_))
                      (for-each
                       (lambda (_mixin84228_)
                         (let ((_alist84230_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84228_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84230_))
                                   (let ((__tmp88800
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84222_
                                                     _alist84230_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88800)))
                               (let ((__tmp88799
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84228_))))
                                 (declare (not safe))
                                 (_put-slots!84225_ _ht84224_ __tmp88799))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84226_
                                  _ht84224_
                                  _key84222_
                                  _alist84230_)))))
                       _precedence-list84169_)
                      _ht84224_))))
          (let* ((_transparent?84178_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84171_)))
                 (_all-slots-printable?84183_
                  (let ((_$e84180_ _transparent?84178_))
                    (if _$e84180_
                        _$e84180_
                        (let ((__tmp88801
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84171_))))
                          (declare (not safe))
                          (eq? '#t __tmp88801)))))
                 (_printable84185_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84183_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84176_ 'print:))
                      '#f))
                 (_all-slots-equalable?84190_
                  (let ((_$e84187_ _transparent?84178_))
                    (if _$e84187_
                        _$e84187_
                        (let ((__tmp88802
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84171_))))
                          (declare (not safe))
                          (eq? '#t __tmp88802)))))
                 (_equalable84192_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84190_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84176_ 'equal:))
                      '#f))
                 (_first-new-field84194_
                  (if _type-super84168_
                      (let ((__tmp88803
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84168_))))
                        (declare (not safe))
                        (##vector-length __tmp88803))
                      '1))
                 (_field-info-length84196_
                  (let ((__tmp88804
                         (let ((__tmp88805
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84170_))))
                           (declare (not safe))
                           (##fx- __tmp88805 _first-new-field84194_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88804)))
                 (_field-info84198_ (make-vector _field-info-length84196_ '#f))
                 (_opaque?84203_
                  (let ((_$e84200_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84190_))))
                    (if _$e84200_
                        _$e84200_
                        (if _type-super84168_
                            (let ((__tmp88806
                                   (let ((__tmp88807
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84168_))))
                                     (declare (not safe))
                                     (##fxand __tmp88807 '1))))
                              (declare (not safe))
                              (##fx= __tmp88806 '1))
                            '#f)))))
            (let _loop84206_ ((_i84208_ _first-new-field84194_) (_j84209_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84209_ _field-info-length84196_))
                  (let* ((_slot84211_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84170_ _i84208_)))
                         (_flags84219_
                          (if _transparent?84178_
                              '0
                              (let ((__tmp88809
                                     (if (or _all-slots-printable?84183_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84185_
                                                _slot84211_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88808
                                     (if (or _all-slots-equalable?84190_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84192_
                                                _slot84211_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88809 __tmp88808)))))
                    (vector-set! _field-info84198_ _j84209_ _slot84211_)
                    (vector-set!
                     _field-info84198_
                     (let () (declare (not safe)) (##fx+ _j84209_ '1))
                     _flags84219_)
                    (let ((__tmp88811
                           (let () (declare (not safe)) (##fx+ _i84208_ '1)))
                          (__tmp88810
                           (let () (declare (not safe)) (##fx+ _j84209_ '3))))
                      (declare (not safe))
                      (_loop84206_ __tmp88811 __tmp88810)))
                  '#!void))
            (let ((__tmp88812 (if _opaque?84203_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84166_
               _type-name84167_
               __tmp88812
               _type-super84168_
               _field-info84198_
               _precedence-list84169_
               _all-slots84170_
               _slot-table84173_
               _properties84171_
               _constructor84172_
               _methods84174_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84164_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84164_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84162_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84162_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84160_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84160_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84158_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84158_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84156_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84156_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84154_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84154_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84151_ _ht84152_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84151_
           _ht84152_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84149_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84149_))))))
    (define type-descriptor-fields
      (lambda (_klass84147_)
        (let ((__tmp88813
               (let ((__tmp88814
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84147_))))
                 (declare (not safe))
                 (##vector-length __tmp88814))))
          (declare (not safe))
          (##fx- __tmp88813 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84145_)
        (let ((__tmp88815
               (let () (declare (not safe)) (##type-flags _klass84145_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp88815))))
    (define type-descriptor-seal!
      (lambda (_klass84143_)
        (let ((__tmp88816
               (let ((__tmp88818
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp88817
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84143_))))
                 (declare (not safe))
                 (##fxior __tmp88818 __tmp88817))))
          (declare (not safe))
          (##structure-set!
           _klass84143_
           __tmp88816
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84136_
               _name84137_
               _super84138_
               _direct-slots84139_
               _properties84140_
               _constructor84141_)
        (let ((__tmp88821
               (if (let () (declare (not safe)) (list? _super84138_))
                   _super84138_
                   (if (let ()
                         (declare (not safe))
                         (type-descriptor? _super84138_))
                       (let () (declare (not safe)) (cons _super84138_ '()))
                       (if (let () (declare (not safe)) (not _super84138_))
                           '()
                           (error '"Invalid super for struct" _super84138_)))))
              (__tmp88819
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84140_))
                   _properties84140_
                   (let ((__tmp88820
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp88820 _properties84140_)))))
          (declare (not safe))
          (make-class-type
           _id84136_
           _name84137_
           __tmp88821
           _direct-slots84139_
           __tmp88819
           _constructor84141_))))
    (define make-struct-predicate
      (lambda (_klass84124_)
        (let ((_tid84126_
               (let () (declare (not safe)) (##type-id _klass84124_))))
          (if (let () (declare (not safe)) (type-final? _klass84124_))
              (lambda (_g8412784129_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8412784129_ _tid84126_)))
              (lambda (_g8413184133_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8413184133_ _tid84126_)))))))
    (define make-final-slot-accessor
      (lambda (_klass84118_ _slot84119_ _field84120_)
        (lambda (_obj84122_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84122_
             _field84120_
             _klass84118_
             _slot84119_)))))
    (define make-final-slot-mutator
      (lambda (_klass84111_ _slot84112_ _field84113_)
        (lambda (_obj84115_ _val84116_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84115_
             _val84116_
             _field84113_
             _klass84111_
             _slot84112_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84105_ _slot84106_ _field84107_)
        (lambda (_obj84109_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84109_
             _field84107_
             _klass84105_
             _slot84106_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84098_ _slot84099_ _field84100_)
        (lambda (_obj84102_ _val84103_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84102_
             _val84103_
             _field84100_
             _klass84098_
             _slot84099_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84092_ _slot84093_ _field84094_)
        (lambda (_obj84096_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84096_
             _field84094_
             _klass84092_
             _slot84093_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84085_ _slot84086_ _field84087_)
        (lambda (_obj84089_ _val84090_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84089_
             _val84090_
             _field84087_
             _klass84085_
             _slot84086_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84076_ _maybe-super-struct84077_)
        (let ((_maybe-super-struct-id84079_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84077_))))
          (let _lp84081_ ((_super-struct84083_ _maybe-sub-struct84076_))
            (if (let () (declare (not safe)) (not _super-struct84083_))
                '#f
                (if (let ((__tmp88823
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84083_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84079_ __tmp88823))
                    '#t
                    (let ((__tmp88822
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84083_))))
                      (declare (not safe))
                      (_lp84081_ __tmp88822))))))))
    (define base-struct/1
      (lambda (_klass84074_)
        (if (let () (declare (not safe)) (struct-type? _klass84074_))
            _klass84074_
            (if (let () (declare (not safe)) (class-type? _klass84074_))
                (let () (declare (not safe)) (##type-super _klass84074_))
                (if (let () (declare (not safe)) (not _klass84074_))
                    '#f
                    (error '"not a class or false" _klass84074_))))))
    (define base-struct/2
      (lambda (_klass184062_ _klass284063_)
        (let ((_s184065_
               (let () (declare (not safe)) (base-struct/1 _klass184062_)))
              (_s284066_
               (let () (declare (not safe)) (base-struct/1 _klass284063_))))
          (if (or (let () (declare (not safe)) (not _s184065_))
                  (and _s284066_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184065_ _s284066_))))
              _s284066_
              (if (or (let () (declare (not safe)) (not _s284066_))
                      (and _s184065_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284066_ _s184065_))))
                  _s184065_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184062_
                         _klass284063_
                         _s184065_
                         _s284066_))))))
    (define base-struct/list
      (lambda (_all-supers83946_)
        (let* ((_all-supers8394783972_ _all-supers83946_)
               (_E8395283976_
                (lambda ()
                  (error '"No clause matching" _all-supers8394783972_))))
          (let ((_K8397084059_ (lambda () '#f))
                (_K8396784045_
                 (lambda (_x84043_)
                   (let () (declare (not safe)) (base-struct/1 _x84043_))))
                (_K8396284022_
                 (lambda (_y84019_ _x84020_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84020_ _y84019_))))
                (_K8395383983_
                 (lambda (_y83980_ _x83981_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x83981_ _y83980_)))))
            (let* ((___match8879088791_
                    (lambda (_hd8395483986_ _tl8395583988_)
                      (let ((_x83991_ _hd8395483986_))
                        (letrec ((_splice-rest8395783993_
                                  (lambda (_rest8396184000_ _y84002_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8396184000_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8395383983_ _y84002_ _x83991_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8395283976_)))))
                                 (_splice-try8395983995_
                                  (lambda (_hd8396084004_
                                           _rest8396184006_
                                           _y8395684007_)
                                    (let ((_y84010_ _hd8396084004_))
                                      (let ((__tmp88825
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8396184006_)))
                                            (__tmp88824
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84010_ _y8395684007_))))
                                        (declare (not safe))
                                        (_splice-loop8395883997_
                                         __tmp88825
                                         __tmp88824)))))
                                 (_splice-loop8395883997_
                                  (lambda (_rest8396184012_ _y8395684013_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8396184012_))
                                        (let ((__tmp88827
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8396184012_))))
                                          (declare (not safe))
                                          (_splice-try8395983995_
                                           __tmp88827
                                           _rest8396184012_
                                           _y8395684013_))
                                        (let ((__tmp88826
                                               (reverse _y8395684013_)))
                                          (declare (not safe))
                                          (_splice-rest8395783993_
                                           _rest8396184012_
                                           __tmp88826))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8395883997_ _tl8395583988_ '()))))))
                   (_try-match8394984055_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8394783972_))
                          (let ((_tl8396984050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8394783972_)))
                                (_hd8396884048_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8394783972_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8396984050_))
                                (let ((_x84053_ _hd8396884048_))
                                  (declare (not safe))
                                  (base-struct/1 _x84053_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8396984050_))
                                    (let ((_tl8396684034_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8396984050_)))
                                          (_hd8396584032_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8396984050_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8396684034_))
                                          (let ((_x84030_ _hd8396884048_)
                                                (_y84037_ _hd8396584032_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8396284022_
                                               _y84037_
                                               _x84030_)))
                                          (___match8879088791_
                                           _hd8396884048_
                                           _tl8396984050_)))
                                    (___match8879088791_
                                     _hd8396884048_
                                     _tl8396984050_))))
                          (let () (declare (not safe)) (_E8395283976_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8394783972_))
                  (let () (declare (not safe)) (_K8397084059_))
                  (let () (declare (not safe)) (_try-match8394984055_))))))))
    (define base-struct
      (lambda _all-supers83944_
        (let () (declare (not safe)) (base-struct/list _all-supers83944_))))
    (define find-super-ctor
      (lambda (_super83942_)
        (let () (declare (not safe)) (find-super-constructor _super83942_))))
    (define find-super-constructor
      (lambda (_super83894_)
        (let _lp83896_ ((_rest83898_ _super83894_) (_constructor83899_ '#f))
          (let* ((_rest8390083908_ _rest83898_)
                 (_else8390283916_ (lambda () _constructor83899_))
                 (_K8390483930_
                  (lambda (_rest83919_ _hd83920_)
                    (let ((_$e83922_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd83920_))))
                      (if _$e83922_
                          ((lambda (_xconstructor83925_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83899_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83899_
                                            _xconstructor83925_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83896_ _rest83919_ _xconstructor83925_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83899_
                                        _xconstructor83925_)))
                           _$e83922_)
                          (let ()
                            (declare (not safe))
                            (_lp83896_ _rest83919_ _constructor83899_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8390083908_))
                (let ((_hd8390583933_
                       (let () (declare (not safe)) (##car _rest8390083908_)))
                      (_tl8390683935_
                       (let () (declare (not safe)) (##cdr _rest8390083908_))))
                  (let* ((_hd83938_ _hd8390583933_)
                         (_rest83940_ _tl8390683935_))
                    (declare (not safe))
                    (_K8390483930_ _rest83940_ _hd83938_)))
                (let () (declare (not safe)) (_else8390283916_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83870_ _direct-slots83871_)
        (let* ((_next-slot83873_ '1)
               (_slot-table83875_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots83877_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot83881_
                (lambda (_slot83879_)
                  (if (let () (declare (not safe)) (symbol? _slot83879_))
                      '#!void
                      (error '"invalid slot name" _slot83879_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83875_ _slot83879_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83875_
                           _slot83879_
                           _next-slot83873_))
                        (let ((__tmp88828 (symbol->keyword _slot83879_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83875_
                           __tmp88828
                           _next-slot83873_))
                        (set! _r-slots83877_
                              (let ()
                                (declare (not safe))
                                (cons _slot83879_ _r-slots83877_)))
                        (set! _next-slot83873_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83873_ '1)))))))
               (_process-slots83887_
                (lambda (_g8388283884_)
                  (for-each _process-slot83881_ _g8388283884_))))
          (for-each
           (lambda (_mixin83890_)
             (let ((__tmp88829
                    (let ((__tmp88830
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin83890_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88830 '()))))
               (declare (not safe))
               (_process-slots83887_ __tmp88829)))
           (reverse _class-precedence-list83870_))
          (let ()
            (declare (not safe))
            (_process-slots83887_ _direct-slots83871_))
          (let ((_all-slots83892_ (list->vector (reverse _r-slots83877_))))
            (values _all-slots83892_ _slot-table83875_)))))
    (define make-class-type
      (lambda (_id83833_
               _name83834_
               _direct-supers83835_
               _direct-slots83836_
               _properties83837_
               _constructor83838_)
        (let ((_$e83842_
               (let ((__tmp88831
                      (lambda (_klass83840_)
                        (let ((__tmp88832
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass83840_))))
                          (declare (not safe))
                          (not __tmp88832)))))
                 (declare (not safe))
                 (find __tmp88831 _direct-supers83835_))))
          (if _$e83842_
              ((lambda (_g8384483846_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8384483846_))
               _$e83842_)
              (let ((_$e83849_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers83835_))))
                (if _$e83849_
                    ((lambda (_g8385183853_)
                       (error '"Cannot extend final class" _g8385183853_))
                     _$e83849_)
                    '#!void))))
        (let ((_g88833_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83835_))))
          (begin
            (let ((_g88834_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88833_) (##vector-length _g88833_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88834_ 2)))
                  (error "Context expects 2 values" _g88834_)))
            (let ((_precedence-list83856_
                   (let () (declare (not safe)) (##vector-ref _g88833_ 0)))
                  (_struct-super83857_
                   (let () (declare (not safe)) (##vector-ref _g88833_ 1))))
              (let ((_g88835_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83856_
                        _direct-slots83836_))))
                (begin
                  (let ((_g88836_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88835_)
                               (##vector-length _g88835_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88836_ 2)))
                        (error "Context expects 2 values" _g88836_)))
                  (let ((_all-slots83859_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88835_ 0)))
                        (_slot-table83860_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88835_ 1))))
                    (let* ((_properties83862_
                            (let ((__tmp88839
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83836_)))
                                  (__tmp88837
                                   (let ((__tmp88838
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83835_))))
                                     (declare (not safe))
                                     (cons __tmp88838 _properties83837_))))
                              (declare (not safe))
                              (cons __tmp88839 __tmp88837)))
                           (_constructor*83867_
                            (let ((_$e83864_ _constructor83838_))
                              (if _$e83864_
                                  _$e83864_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83835_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id83833_
                         _name83834_
                         _struct-super83857_
                         _precedence-list83856_
                         _all-slots83859_
                         _properties83862_
                         _constructor*83867_
                         _slot-table83860_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83831_)
        (let ((__tmp88840
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83831_))))
          (declare (not safe))
          (cons _klass83831_ __tmp88840))))
    (define compute-precedence-list
      (lambda (_direct-supers83829_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers83829_))))
    (define make-class-predicate
      (lambda (_klass83817_)
        (if (let () (declare (not safe)) (type-final? _klass83817_))
            (let ((_tid83819_
                   (let () (declare (not safe)) (##type-id _klass83817_))))
              (lambda (_g8382083822_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8382083822_ _tid83819_))))
            (lambda (_g8382483826_)
              (let ()
                (declare (not safe))
                (class-instance? _klass83817_ _g8382483826_))))))
    (define if-class-slot-field
      (lambda (_klass83806_
               _slot83807_
               _if-final83808_
               _if-struct83809_
               _if-struct-field83810_
               _if-class-slot83811_)
        (let ((_field83813_
               (let ((__tmp88841
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass83806_))))
                 (declare (not safe))
                 (table-ref __tmp88841 _slot83807_ '#f))))
          (if (let () (declare (not safe)) (not _field83813_))
              (error '"unknown slot" 'class: _klass83806_ 'slot: _slot83807_)
              (if (let () (declare (not safe)) (type-final? _klass83806_))
                  (_if-final83808_ _klass83806_ _slot83807_ _field83813_)
                  (if (let () (declare (not safe)) (type-struct? _klass83806_))
                      (_if-struct83809_ _klass83806_ _slot83807_ _field83813_)
                      (if (let ((_strukt83815_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83806_))))
                            (and _strukt83815_
                                 (let ((__tmp88842
                                        (let ((__tmp88843
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt83815_))))
                                          (declare (not safe))
                                          (##vector-length __tmp88843))))
                                   (declare (not safe))
                                   (##fx< _field83813_ __tmp88842))))
                          (_if-struct-field83810_
                           _klass83806_
                           _slot83807_
                           _field83813_)
                          (_if-class-slot83811_
                           _klass83806_
                           _slot83807_
                           _field83813_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83803_ _slot83804_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83803_
           _slot83804_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object83787_ _class83788_ _slot83789_)
        (apply error
               '"not an instance"
               'object:
               _object83787_
               'class:
               _class83788_
               (if _slot83789_
                   (let ((__tmp88844
                          (let ()
                            (declare (not safe))
                            (cons _slot83789_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88844))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83794_ _class83795_)
        (let ((_slot83797_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83794_ _class83795_ _slot83797_))))
    (define not-an-instance
      (lambda _g88846_
        (let ((_g88845_ (let () (declare (not safe)) (##length _g88846_))))
          (cond ((let () (declare (not safe)) (##fx= _g88845_ 2))
                 (apply (lambda (_object83794_ _class83795_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83794_ _class83795_)))
                        _g88846_))
                ((let () (declare (not safe)) (##fx= _g88845_ 3))
                 (apply (lambda (_object83799_ _class83800_ _slot83801_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83799_
                             _class83800_
                             _slot83801_)))
                        _g88846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88846_))))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83780_ _slot83781_ _field83782_)
        (lambda (_obj83784_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83780_ _obj83784_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83784_ _field83782_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83784_ _klass83780_ _slot83781_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83774_ _slot83775_ _field83776_)
        (lambda (_obj83778_)
          (if (let ((__tmp88847
                     (let () (declare (not safe)) (##type-id _klass83774_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83778_ __tmp88847))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83778_ _field83776_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83774_ _obj83778_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83778_ _slot83775_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83778_
                     _klass83774_
                     _slot83775_)))))))
    (define make-class-slot-mutator
      (lambda (_klass83771_ _slot83772_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83771_
           _slot83772_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83764_ _slot83765_ _field83766_)
        (lambda (_obj83768_ _val83769_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83764_ _obj83768_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83768_ _field83766_ _val83769_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83768_ _klass83764_ _slot83765_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83757_ _slot83758_ _field83759_)
        (lambda (_obj83761_ _val83762_)
          (if (let ((__tmp88848
                     (let () (declare (not safe)) (##type-id _klass83757_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83761_ __tmp88848))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83761_ _field83759_ _val83762_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83757_ _obj83761_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83761_ _slot83758_ _val83762_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83761_
                     _klass83757_
                     _slot83758_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83754_ _slot83755_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83754_
           _slot83755_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83748_ _slot83749_ _field83750_)
        (lambda (_obj83752_)
          (if (let ((__tmp88849
                     (let () (declare (not safe)) (##type-id _klass83748_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83752_ __tmp88849))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83752_ _field83750_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83752_ _slot83749_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83745_ _slot83746_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83745_
           _slot83746_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83738_ _slot83739_ _field83740_)
        (lambda (_obj83742_ _val83743_)
          (if (let ((__tmp88850
                     (let () (declare (not safe)) (##type-id _klass83738_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83742_ __tmp88850))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83742_ _field83740_ _val83743_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83742_ _slot83739_ _val83743_))))))
    (define class-slot-offset
      (lambda (_klass83735_ _slot83736_)
        (let ((__tmp88851
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83735_))))
          (declare (not safe))
          (table-ref __tmp88851 _slot83736_ '#f))))
    (define class-slot-ref
      (lambda (_klass83729_ _obj83730_ _slot83731_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83729_ _obj83730_))
            (let ((_off83733_
                   (let ((__tmp88852
                          (let ()
                            (declare (not safe))
                            (object-type _obj83730_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88852 _slot83731_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83730_
               _off83733_
               _klass83729_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83730_ _klass83729_)))))
    (define class-slot-set!
      (lambda (_klass83722_ _obj83723_ _slot83724_ _val83725_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83722_ _obj83723_))
            (let ((_off83727_
                   (let ((__tmp88853
                          (let ()
                            (declare (not safe))
                            (object-type _obj83723_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88853 _slot83724_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83723_
               _val83725_
               _off83727_
               _klass83722_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83723_ _klass83722_)))))
    (define unchecked-field-ref
      (lambda (_obj83719_ _off83720_)
        (let ((__tmp88854
               (let () (declare (not safe)) (##structure-type _obj83719_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83719_ _off83720_ __tmp88854 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83715_ _off83716_ _val83717_)
        (let ((__tmp88855
               (let () (declare (not safe)) (##structure-type _obj83715_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83715_
           _val83717_
           _off83716_
           __tmp88855
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83712_ _slot83713_)
        (let ((__tmp88856
               (let ((__tmp88857
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83712_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88857 _slot83713_))))
          (declare (not safe))
          (unchecked-field-ref _obj83712_ __tmp88856))))
    (define unchecked-slot-set!
      (lambda (_obj83708_ _slot83709_ _val83710_)
        (let ((__tmp88858
               (let ((__tmp88859
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83708_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88859 _slot83709_))))
          (declare (not safe))
          (unchecked-field-set! _obj83708_ __tmp88858 _val83710_))))
    (define slot-ref__%
      (lambda (_obj83684_ _slot83685_ _E83686_)
        (if (let () (declare (not safe)) (object? _obj83684_))
            (let* ((_klass83688_
                    (let () (declare (not safe)) (object-type _obj83684_)))
                   (_$e83691_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83688_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83688_ _slot83685_))
                        '#f)))
              (if _$e83691_
                  ((lambda (_off83694_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83684_ _off83694_)))
                   _$e83691_)
                  (_E83686_ _obj83684_ _slot83685_)))
            (_E83686_ _obj83684_ _slot83685_))))
    (define slot-ref__0
      (lambda (_obj83699_ _slot83700_)
        (let ((_E83702_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83699_ _slot83700_ _E83702_))))
    (define slot-ref
      (lambda _g88861_
        (let ((_g88860_ (let () (declare (not safe)) (##length _g88861_))))
          (cond ((let () (declare (not safe)) (##fx= _g88860_ 2))
                 (apply (lambda (_obj83699_ _slot83700_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83699_ _slot83700_)))
                        _g88861_))
                ((let () (declare (not safe)) (##fx= _g88860_ 3))
                 (apply (lambda (_obj83704_ _slot83705_ _E83706_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83704_ _slot83705_ _E83706_)))
                        _g88861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88861_))))))
    (define slot-set!__%
      (lambda (_obj83656_ _slot83657_ _val83658_ _E83659_)
        (if (let () (declare (not safe)) (object? _obj83656_))
            (let* ((_klass83661_
                    (let () (declare (not safe)) (object-type _obj83656_)))
                   (_$e83664_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83661_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83661_ _slot83657_))
                        '#f)))
              (if _$e83664_
                  ((lambda (_off83667_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83656_
                        _off83667_
                        _val83658_)))
                   _$e83664_)
                  (_E83659_ _obj83656_ _slot83657_)))
            (_E83659_ _obj83656_ _slot83657_))))
    (define slot-set!__0
      (lambda (_obj83672_ _slot83673_ _val83674_)
        (let ((_E83676_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83672_ _slot83673_ _val83674_ _E83676_))))
    (define slot-set!
      (lambda _g88863_
        (let ((_g88862_ (let () (declare (not safe)) (##length _g88863_))))
          (cond ((let () (declare (not safe)) (##fx= _g88862_ 3))
                 (apply (lambda (_obj83672_ _slot83673_ _val83674_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83672_ _slot83673_ _val83674_)))
                        _g88863_))
                ((let () (declare (not safe)) (##fx= _g88862_ 4))
                 (apply (lambda (_obj83678_ _slot83679_ _val83680_ _E83681_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83678_
                             _slot83679_
                             _val83680_
                             _E83681_)))
                        _g88863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88863_))))))
    (define __slot-error
      (lambda (_obj83652_ _slot83653_)
        (error '"Cannot find slot" 'object: _obj83652_ 'slot: _slot83653_)))
    (define subclass?
      (lambda (_maybe-sub-class83642_ _maybe-super-class83643_)
        (let* ((_maybe-super-class-id83645_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83643_)))
               (_$e83647_
                (let ((__tmp88864
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83642_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83645_ __tmp88864))))
          (if _$e83647_
              _$e83647_
              (let ((__tmp88866
                     (lambda (_super-class83650_)
                       (let ((__tmp88867
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83650_))))
                         (declare (not safe))
                         (eq? __tmp88867 _maybe-super-class-id83645_))))
                    (__tmp88865
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83642_))))
                (declare (not safe))
                (ormap1 __tmp88866 __tmp88865))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83639_ _obj83640_)
        (let ((__tmp88868
               (let () (declare (not safe)) (##type-id _klass83639_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83640_ __tmp88868))))
    (define struct-instance?
      (lambda (_klass83636_ _obj83637_)
        (let ((__tmp88869
               (let () (declare (not safe)) (##type-id _klass83636_))))
          (declare (not safe))
          (##structure-instance-of? _obj83637_ __tmp88869))))
    (define class-instance?
      (lambda (_klass83631_ _obj83632_)
        (if (let () (declare (not safe)) (object? _obj83632_))
            (let ((_type83634_
                   (let () (declare (not safe)) (object-type _obj83632_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83634_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83634_ _klass83631_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83626_ _k83627_)
        (let ((_obj83629_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83626_ _k83627_))))
          (let () (declare (not safe)) (object-fill! _obj83629_ '#f))
          _obj83629_)))
    (define object-fill!
      (lambda (_obj83619_ _fill83620_)
        (let _loop83622_ ((_i83624_
                           (let ((__tmp88871
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83619_))))
                             (declare (not safe))
                             (##fx- __tmp88871 '1))))
          (if (let () (declare (not safe)) (##fx> _i83624_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83619_
                   _fill83620_
                   _i83624_
                   '#f
                   '#f))
                (let ((__tmp88870
                       (let () (declare (not safe)) (##fx- _i83624_ '1))))
                  (declare (not safe))
                  (_loop83622_ __tmp88870)))
              _obj83619_))))
    (define make-instance
      (lambda (_klass83617_)
        (let ((__obj88792
               (let ((__tmp88872
                      (let ((__tmp88873
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83617_))))
                        (declare (not safe))
                        (##vector-length __tmp88873))))
                 (declare (not safe))
                 (##make-structure _klass83617_ __tmp88872))))
          (let () (declare (not safe)) (object-fill! __obj88792 '#f))
          __obj88792)))
    (define make-struct-instance
      (lambda (_klass83607_ . _args83608_)
        (let* ((_obj83610_
                (let () (declare (not safe)) (make-instance _klass83607_)))
               (_$e83612_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83607_))))
          (if _$e83612_
              ((lambda (_kons-id83615_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83607_
                    _kons-id83615_
                    _obj83610_
                    _args83608_)))
               _$e83612_)
              (if (let ((__tmp88875
                         (let ((__tmp88876
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83610_))))
                           (declare (not safe))
                           (##fx- __tmp88876 '1)))
                        (__tmp88874 (length _args83608_)))
                    (declare (not safe))
                    (##fx= __tmp88875 __tmp88874))
                  (apply ##structure _klass83607_ _args83608_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83607_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83607_))
                         'args:
                         _args83608_))))))
    (define make-class-instance
      (lambda (_klass83597_ . _args83598_)
        (let* ((_obj83600_
                (let () (declare (not safe)) (make-instance _klass83597_)))
               (_$e83602_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83597_))))
          (if _$e83602_
              ((lambda (_kons-id83605_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83597_
                    _kons-id83605_
                    _obj83600_
                    _args83598_)))
               _$e83602_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83597_
                 _obj83600_
                 _args83598_))))))
    (define struct-instance-init!
      (lambda (_obj83594_ . _args83595_)
        (if (let ((__tmp88878 (length _args83595_))
                  (__tmp88877
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83594_))))
              (declare (not safe))
              (##fx< __tmp88878 __tmp88877))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83594_ _args83595_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83594_
                   'args:
                   _args83595_))))
    (define __struct-instance-init!
      (lambda (_obj83553_ _args83554_)
        (let _lp83556_ ((_k83558_ '1) (_rest83559_ _args83554_))
          (let* ((_rest8356083568_ _rest83559_)
                 (_else8356283576_ (lambda () _obj83553_))
                 (_K8356483582_
                  (lambda (_rest83579_ _hd83580_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83553_ _k83558_ _hd83580_))
                    (let ((__tmp88879
                           (let () (declare (not safe)) (##fx+ _k83558_ '1))))
                      (declare (not safe))
                      (_lp83556_ __tmp88879 _rest83579_)))))
            (if (let () (declare (not safe)) (##pair? _rest8356083568_))
                (let ((_hd8356583585_
                       (let () (declare (not safe)) (##car _rest8356083568_)))
                      (_tl8356683587_
                       (let () (declare (not safe)) (##cdr _rest8356083568_))))
                  (let* ((_hd83590_ _hd8356583585_)
                         (_rest83592_ _tl8356683587_))
                    (declare (not safe))
                    (_K8356483582_ _rest83592_ _hd83590_)))
                (let () (declare (not safe)) (_else8356283576_)))))))
    (define class-instance-init!
      (lambda (_obj83550_ . _args83551_)
        (let ((__tmp88880
               (let () (declare (not safe)) (object-type _obj83550_))))
          (declare (not safe))
          (__class-instance-init! __tmp88880 _obj83550_ _args83551_))))
    (define __class-instance-init!
      (lambda (_klass83494_ _obj83495_ _args83496_)
        (let _lp83498_ ((_rest83500_ _args83496_))
          (let* ((_rest8350183511_ _rest83500_)
                 (_else8350383519_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83500_))
                        _obj83495_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83494_
                               'rest:
                               _rest83500_))))
                 (_K8350583531_
                  (lambda (_rest83522_ _val83523_ _key83524_)
                    (let ((_$e83526_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83494_ _key83524_))))
                      (if _$e83526_
                          ((lambda (_off83529_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83495_
                                _off83529_
                                _val83523_))
                             (let ()
                               (declare (not safe))
                               (_lp83498_ _rest83522_)))
                           _$e83526_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83494_
                                 'slot:
                                 _key83524_))))))
            (if (let () (declare (not safe)) (##pair? _rest8350183511_))
                (let ((_hd8350683534_
                       (let () (declare (not safe)) (##car _rest8350183511_)))
                      (_tl8350783536_
                       (let () (declare (not safe)) (##cdr _rest8350183511_))))
                  (let ((_key83539_ _hd8350683534_))
                    (if (let () (declare (not safe)) (##pair? _tl8350783536_))
                        (let ((_hd8350883541_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8350783536_)))
                              (_tl8350983543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8350783536_))))
                          (let* ((_val83546_ _hd8350883541_)
                                 (_rest83548_ _tl8350983543_))
                            (declare (not safe))
                            (_K8350583531_ _rest83548_ _val83546_ _key83539_)))
                        (let () (declare (not safe)) (_else8350383519_)))))
                (let () (declare (not safe)) (_else8350383519_)))))))
    (define constructor-init!
      (lambda (_klass83489_ _kons-id83490_ _obj83491_ . _args83492_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83489_
           _kons-id83490_
           _obj83491_
           _args83492_))))
    (define __constructor-init!
      (lambda (_klass83479_ _kons-id83480_ _obj83481_ _args83482_)
        (let ((_$e83484_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83479_ _kons-id83480_))))
          (if _$e83484_
              ((lambda (_kons83487_)
                 (apply _kons83487_ _obj83481_ _args83482_)
                 _obj83481_)
               _$e83484_)
              (error '"missing constructor"
                     'class:
                     _klass83479_
                     'method:
                     _kons-id83480_)))))
    (define struct-copy
      (lambda (_struct83477_)
        (if (let () (declare (not safe)) (##structure? _struct83477_))
            '#!void
            (error '"not a structure" _struct83477_))
        (let () (declare (not safe)) (##structure-copy _struct83477_))))
    (define struct->list
      (lambda (_obj83475_)
        (if (let () (declare (not safe)) (object? _obj83475_))
            (let () (declare (not safe)) (##vector->list _obj83475_))
            (error '"not an object" _obj83475_))))
    (define class->list
      (lambda (_obj83462_)
        (if (let () (declare (not safe)) (object? _obj83462_))
            (let ((_klass83464_
                   (let () (declare (not safe)) (object-type _obj83462_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83464_))
                  (let ((_all-slots83466_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83464_))))
                    (let _loop83468_ ((_index83470_
                                       (let ((__tmp88886
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83466_))))
                                         (declare (not safe))
                                         (##fx- __tmp88886 '1)))
                                      (_plist83471_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83470_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83464_ _plist83471_))
                          (let ((_slot83473_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83466_
                                    _index83470_))))
                            (let ((__tmp88885
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83470_ '1)))
                                  (__tmp88881
                                   (let ((__tmp88884
                                          (symbol->keyword _slot83473_))
                                         (__tmp88882
                                          (let ((__tmp88883
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83462_
                                                    _index83470_))))
                                            (declare (not safe))
                                            (cons __tmp88883 _plist83471_))))
                                     (declare (not safe))
                                     (cons __tmp88884 __tmp88882))))
                              (declare (not safe))
                              (_loop83468_ __tmp88885 __tmp88881))))))
                  (error '"not a class type"
                         'object:
                         _obj83462_
                         'class:
                         _klass83464_)))
            (error '"not an object" _obj83462_))))
    (define call-method
      (lambda (_obj83453_ _id83454_ . _args83455_)
        (let ((_$e83457_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83453_ _id83454_))))
          (if _$e83457_
              ((lambda (_method83460_)
                 (apply _method83460_ _obj83453_ _args83455_))
               _$e83457_)
              (error '"cannot find method"
                     'object:
                     _obj83453_
                     'method:
                     _id83454_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83450_ _id83451_)
        (if (let () (declare (not safe)) (object? _obj83450_))
            (let ((__tmp88887
                   (let () (declare (not safe)) (object-type _obj83450_))))
              (declare (not safe))
              (find-method __tmp88887 _id83451_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83444_ _id83445_)
        (let ((_$e83447_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83444_ _id83445_))))
          (if _$e83447_
              _$e83447_
              (error '"missing method"
                     'object:
                     _obj83444_
                     'method:
                     _id83445_)))))
    (define bound-method-ref
      (lambda (_obj83434_ _id83435_)
        (let ((_$e83437_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83434_ _id83435_))))
          (if _$e83437_
              ((lambda (_method83440_)
                 (lambda _args83442_
                   (apply _method83440_ _obj83434_ _args83442_)))
               _$e83437_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83427_ _id83428_)
        (let ((_method83430_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83427_ _id83428_))))
          (lambda _args83432_ (apply _method83430_ _obj83427_ _args83432_)))))
    (define find-method
      (lambda (_klass83424_ _id83425_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83424_))
            (let ()
              (declare (not safe))
              (__find-method _klass83424_ _id83425_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83424_ _id83425_)))))
    (define __find-method
      (lambda (_klass83418_ _id83419_)
        (let ((_$e83421_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83418_ _id83419_))))
          (if _$e83421_
              _$e83421_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83418_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83418_ _id83419_)))))))
    (define class-find-method
      (lambda (_klass83415_ _id83416_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83415_))
            (let ()
              (declare (not safe))
              (__find-method _klass83415_ _id83416_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83408_ _id83409_)
        (let ((__tmp88888
               (lambda (_g8341083412_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8341083412_ _id83409_)))))
          (declare (not safe))
          (ormap1 __tmp88888 _mixins83408_))))
    (define builtin-find-method
      (lambda (_klass83402_ _id83403_)
        (if (let () (declare (not safe)) (##type? _klass83402_))
            (let ((_$e83405_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83402_ _id83403_))))
              (if _$e83405_
                  _$e83405_
                  (let ((__tmp88889
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83402_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88889 _id83403_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83394_ _id83395_)
        (let ((_$e83397_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83394_))))
          (if _$e83397_
              ((lambda (_ht83400_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83400_ _id83395_ '#f)))
               _$e83397_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83391_ _id83392_)
        (let ((__tmp88890
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83391_))))
          (declare (not safe))
          (mixin-find-method __tmp88890 _id83392_))))
    (define builtin-method-ref
      (lambda (_klass83383_ _id83384_)
        (let ((_$e83386_
               (let ((__tmp88891
                      (let () (declare (not safe)) (##type-id _klass83383_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp88891 '#f))))
          (if _$e83386_
              ((lambda (_mtab83389_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83389_ _id83384_ '#f)))
               _$e83386_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83349_ _id83350_ _proc83351_ _rebind?83352_)
        (letrec ((_bind!83354_
                  (lambda (_ht83367_)
                    (if (and (let () (declare (not safe)) (not _rebind?83352_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83367_ _id83350_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83349_
                               'method:
                               _id83350_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83367_ _id83350_ _proc83351_))))))
          (if (let () (declare (not safe)) (procedure? _proc83351_))
              '#!void
              (error '"bad method; expected procedure" _proc83351_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83349_))
              (let ((_ht83356_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83349_))))
                (if _ht83356_
                    (let () (declare (not safe)) (_bind!83354_ _ht83356_))
                    (let ((_ht83358_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83349_ _ht83358_))
                      (let () (declare (not safe)) (_bind!83354_ _ht83358_)))))
              (if (let () (declare (not safe)) (##type? _klass83349_))
                  (let ((_ht83365_
                         (let ((_$e83360_
                                (let ((__tmp88892
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83349_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp88892
                                   '#f))))
                           (if _$e83360_
                               _$e83360_
                               (let ((_ht83363_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp88893
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83349_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88893
                                    _ht83363_))
                                 _ht83363_)))))
                    (declare (not safe))
                    (_bind!83354_ _ht83365_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83349_))))))
    (define bind-method!__0
      (lambda (_klass83372_ _id83373_ _proc83374_)
        (let ((_rebind?83376_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83372_
           _id83373_
           _proc83374_
           _rebind?83376_))))
    (define bind-method!
      (lambda _g88895_
        (let ((_g88894_ (let () (declare (not safe)) (##length _g88895_))))
          (cond ((let () (declare (not safe)) (##fx= _g88894_ 3))
                 (apply (lambda (_klass83372_ _id83373_ _proc83374_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83372_
                             _id83373_
                             _proc83374_)))
                        _g88895_))
                ((let () (declare (not safe)) (##fx= _g88894_ 4))
                 (apply (lambda (_klass83378_
                                 _id83379_
                                 _proc83380_
                                 _rebind?83381_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83378_
                             _id83379_
                             _proc83380_
                             _rebind?83381_)))
                        _g88895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88895_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83345_ _specializer83346_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83345_ _specializer83346_))))
    (define seal-class!
      (lambda (_klass83312_)
        (letrec ((_collect-methods!83314_
                  (lambda (_mtab83330_)
                    (letrec ((_merge!83332_
                              (lambda (_tab83340_)
                                (let ((__tmp88896
                                       (lambda (_id83342_ _proc83343_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83330_
                                            _id83342_
                                            _proc83343_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp88896 _tab83340_))))
                             (_collect-direct-methods!83333_
                              (lambda (_klass83335_)
                                (let ((_$e83337_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83335_))))
                                  (if _$e83337_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83332_ _$e83337_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83333_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83312_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83312_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83312_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83312_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83312_))
                    (let ((_vtab83316_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83317_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83314_ _mtab83317_))
                      (let ((__tmp88897
                             (lambda (_id83319_ _proc83320_)
                               (let ((_$e83322_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83320_
                                         '#f))))
                                 (if _$e83322_
                                     ((lambda (_specializer83325_)
                                        (let ((_proc83327_
                                               (_specializer83325_
                                                _klass83312_))
                                              (_gid83328_
                                               (let ((__tmp88898
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83312_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp88898
                                                  '"::["
                                                  _id83319_
                                                  '"]"))))
                                          (eval (let ((__tmp88899
                                                       (let ((__tmp88900
                                                              (let ((__tmp88901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88902
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83327_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp88902))))
                        (declare (not safe))
                        (cons __tmp88901 '()))))
                 (declare (not safe))
                 (cons _gid83328_ __tmp88900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp88899)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83316_
                                             _id83319_
                                             _proc83327_))))
                                      _$e83322_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83316_
                                        _id83319_
                                        _proc83320_)))))))
                        (declare (not safe))
                        (table-for-each __tmp88897 _mtab83317_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83312_
                         _vtab83316_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83312_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83261_ _obj83262_ _id83263_)
        (let ((_klass83265_
               (let () (declare (not safe)) (object-type _obj83262_)))
              (_type-id83266_
               (let () (declare (not safe)) (##type-id _subklass83261_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83265_))
              (let _lp83268_ ((_rest83270_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83265_))))
                (let* ((_rest8327183279_ _rest83270_)
                       (_else8327383287_ (lambda () '#f))
                       (_K8327583293_
                        (lambda (_rest83290_ _klass83291_)
                          (if (let ((__tmp88905
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83291_))))
                                (declare (not safe))
                                (eq? _type-id83266_ __tmp88905))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83290_ _id83263_))
                              (let ()
                                (declare (not safe))
                                (_lp83268_ _rest83290_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8327183279_))
                      (let ((_hd8327683296_
                             (let ()
                               (declare (not safe))
                               (##car _rest8327183279_)))
                            (_tl8327783298_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8327183279_))))
                        (let* ((_klass83301_ _hd8327683296_)
                               (_rest83303_ _tl8327783298_))
                          (declare (not safe))
                          (_K8327583293_ _rest83303_ _klass83301_)))
                      (let () (declare (not safe)) (_else8327383287_)))))
              (if (let () (declare (not safe)) (##type? _klass83265_))
                  (let _lp83305_ ((_klass83307_ _klass83265_))
                    (if (let ((__tmp88904
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83307_))))
                          (declare (not safe))
                          (eq? _type-id83266_ __tmp88904))
                        (let ((__tmp88903
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83307_))))
                          (declare (not safe))
                          (builtin-find-method __tmp88903 _id83263_))
                        (let ((_$e83309_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83307_))))
                          (if _$e83309_
                              (let ()
                                (declare (not safe))
                                (_lp83305_ _$e83309_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83251_ _obj83252_ _id83253_ . _args83254_)
        (let ((_$e83256_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83251_ _obj83252_ _id83253_))))
          (if _$e83256_
              ((lambda (_methodf83259_)
                 (apply _methodf83259_ _obj83252_ _args83254_))
               _$e83256_)
              (error '"cannot find next method"
                     'object:
                     _obj83252_
                     'method:
                     _id83253_)))))
    (define write-style (lambda (_we83249_) (macro-writeenv-style _we83249_)))
    (define write-object
      (lambda (_we83241_ _obj83242_)
        (let ((_$e83244_
               (let () (declare (not safe)) (method-ref _obj83242_ ':wr))))
          (if _$e83244_
              ((lambda (_method83247_) (_method83247_ _obj83242_ _we83241_))
               _$e83244_)
              (let ()
                (declare (not safe))
                (##default-wr _we83241_ _obj83242_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
