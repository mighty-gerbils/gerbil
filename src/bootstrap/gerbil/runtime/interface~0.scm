(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710943025)
  (begin
    (define CastError::t
      (let ((__tmp69934 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69934
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69927_ (apply make-instance CastError::t _$args69927_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_where69801_ _message69802_ . _irritants69803_)
        (raise (let ((__obj69930
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69930
                  _message69802_
                  'where:
                  _where69801_
                  'irritants:
                  _irritants69803_)
                 __obj69930))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69937 (list))
            (__tmp69935
             (let ((__tmp69936
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69936 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69937
         '(__object)
         __tmp69935
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-instance::t '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp69942 (list))
            (__tmp69938
             (let ((__tmp69941
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69939
                    (let ((__tmp69940
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69940 '()))))
               (declare (not safe))
               (cons __tmp69941 __tmp69939))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69942
         '(type methods)
         __tmp69938
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69798_
        (apply make-instance interface-descriptor::t _$args69798_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-descriptor::t 'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-descriptor::t 'methods)))
    (define __interface-hash-key
      (lambda (_key69796_)
        (let ((__tmp69944
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69796_))))
              (__tmp69943
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69796_)))))
          (declare (not safe))
          (##fxxor __tmp69944 __tmp69943))))
    (define __interface-test-key
      (lambda (_a69793_ _b69794_)
        (if (let ((__tmp69948 (let () (declare (not safe)) (##car _a69793_)))
                  (__tmp69947 (let () (declare (not safe)) (##car _b69794_))))
              (declare (not safe))
              (##eq? __tmp69948 __tmp69947))
            (let ((__tmp69946 (let () (declare (not safe)) (##cdr _a69793_)))
                  (__tmp69945 (let () (declare (not safe)) (##cdr _b69794_))))
              (declare (not safe))
              (##eq? __tmp69946 __tmp69945))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69774_ _seed69776_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69774_
           __interface-hash-key
           __interface-test-key
           _seed69776_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69782_ '#f) (_seed69784_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69782_ _seed69784_))))
    (define make-prototype-table__1
      (lambda (_size-hint69786_)
        (let ((_seed69788_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69786_ _seed69788_))))
    (define make-prototype-table
      (lambda _g69950_
        (let ((_g69949_ (let () (declare (not safe)) (##length _g69950_))))
          (cond ((let () (declare (not safe)) (##fx= _g69949_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69950_))
                ((let () (declare (not safe)) (##fx= _g69949_ 1))
                 (apply (lambda (_size-hint69786_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69786_)))
                        _g69950_))
                ((let () (declare (not safe)) (##fx= _g69949_ 2))
                 (apply (lambda (_size-hint69790_ _seed69791_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69790_
                             _seed69791_)))
                        _g69950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69950_))))))
    (define prototype-table-ref
      (lambda (_tab69731_ _key69732_ _default69733_)
        (let ((_table69735_
               (let () (declare (not safe)) (&raw-table-table _tab69731_)))
              (_seed69736_
               (let () (declare (not safe)) (&raw-table-seed _tab69731_))))
          (let* ((_h69738_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69732_))
                         _seed69736_))
                 (_size69741_ (vector-length _table69735_))
                 (_entries69744_ (fxquotient _size69741_ '2))
                 (_start69747_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69738_ _entries69744_)
                   '1)))
            (let _loop69751_ ((_probe69754_ _start69747_)
                              (_i69756_ '1)
                              (_deleted69758_ '#f))
              (let ((_k69761_ (vector-ref _table69735_ _probe69754_)))
                (if (let ((__tmp69957 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69761_ __tmp69957))
                    _default69733_
                    (if (let ((__tmp69956 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69761_ __tmp69956))
                        (let ((__tmp69955
                               (let ((_next-probe69764_
                                      (fx+ _start69747_
                                           _i69756_
                                           (fx* _i69756_ _i69756_))))
                                 (fxmodulo _next-probe69764_ _size69741_)))
                              (__tmp69954 (fx+ _i69756_ '1))
                              (__tmp69953
                               (let ((_$e69767_ _deleted69758_))
                                 (if _$e69767_ _$e69767_ _probe69754_))))
                          (declare (not safe))
                          (_loop69751_ __tmp69955 __tmp69954 __tmp69953))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69732_ _k69761_))
                            (vector-ref _table69735_ (fx+ _probe69754_ '1))
                            (let ((__tmp69952
                                   (let ((_next-probe69770_
                                          (fx+ _start69747_
                                               _i69756_
                                               (fx* _i69756_ _i69756_))))
                                     (fxmodulo _next-probe69770_ _size69741_)))
                                  (__tmp69951 (fx+ _i69756_ '1)))
                              (declare (not safe))
                              (_loop69751_
                               __tmp69952
                               __tmp69951
                               _deleted69758_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69727_ _key69728_ _value69729_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69727_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69727_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69727_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69727_ _key69728_ _value69729_))))
    (define __prototype-table-set!
      (lambda (_tab69682_ _key69683_ _value69684_)
        (let ((_table69687_
               (let () (declare (not safe)) (&raw-table-table _tab69682_)))
              (_seed69688_
               (let () (declare (not safe)) (&raw-table-seed _tab69682_))))
          (let* ((_h69690_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69683_))
                         _seed69688_))
                 (_size69693_ (vector-length _table69687_))
                 (_entries69696_ (fxquotient _size69693_ '2))
                 (_start69699_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69690_ _entries69696_)
                   '1)))
            (let _loop69703_ ((_probe69706_ _start69699_)
                              (_i69708_ '1)
                              (_deleted69710_ '#f))
              (let ((_k69713_ (vector-ref _table69687_ _probe69706_)))
                (if (let ((__tmp69967 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69713_ __tmp69967))
                    (if _deleted69710_
                        (begin
                          (vector-set! _table69687_ _deleted69710_ _key69683_)
                          (vector-set!
                           _table69687_
                           (fx+ _deleted69710_ '1)
                           _value69684_)
                          ((lambda ()
                             (let ((__tmp69966
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69682_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69682_
                                __tmp69966)))))
                        (begin
                          (vector-set! _table69687_ _probe69706_ _key69683_)
                          (vector-set!
                           _table69687_
                           (fx+ _probe69706_ '1)
                           _value69684_)
                          ((lambda ()
                             (let ((__tmp69964
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69682_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69682_ __tmp69964))
                             (let ((__tmp69965
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69682_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69682_
                                __tmp69965))))))
                    (if (let ((__tmp69963 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69713_ __tmp69963))
                        (let ((__tmp69962
                               (let ((_next-probe69718_
                                      (fx+ _start69699_
                                           _i69708_
                                           (fx* _i69708_ _i69708_))))
                                 (fxmodulo _next-probe69718_ _size69693_)))
                              (__tmp69961 (fx+ _i69708_ '1))
                              (__tmp69960
                               (let ((_$e69721_ _deleted69710_))
                                 (if _$e69721_ _$e69721_ _probe69706_))))
                          (declare (not safe))
                          (_loop69703_ __tmp69962 __tmp69961 __tmp69960))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69683_ _k69713_))
                            (begin
                              (vector-set!
                               _table69687_
                               _probe69706_
                               _key69683_)
                              (vector-set!
                               _table69687_
                               (fx+ _probe69706_ '1)
                               _value69684_))
                            (let ((__tmp69959
                                   (let ((_next-probe69724_
                                          (fx+ _start69699_
                                               _i69708_
                                               (fx* _i69708_ _i69708_))))
                                     (fxmodulo _next-probe69724_ _size69693_)))
                                  (__tmp69958 (fx+ _i69708_ '1)))
                              (declare (not safe))
                              (_loop69703_
                               __tmp69959
                               __tmp69958
                               _deleted69710_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69677_
               _key69678_
               _prototype-table-update!69679_
               _default69680_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69677_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69677_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69677_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69677_
           _key69678_
           _prototype-table-update!69679_
           _default69680_))))
    (define __prototype-table-update!
      (lambda (_tab69631_
               _key69632_
               _prototype-table-update!69633_
               _default69634_)
        (let ((_table69637_
               (let () (declare (not safe)) (&raw-table-table _tab69631_)))
              (_seed69638_
               (let () (declare (not safe)) (&raw-table-seed _tab69631_))))
          (let* ((_h69640_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69632_))
                         _seed69638_))
                 (_size69643_ (vector-length _table69637_))
                 (_entries69646_ (fxquotient _size69643_ '2))
                 (_start69649_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69640_ _entries69646_)
                   '1)))
            (let _loop69653_ ((_probe69656_ _start69649_)
                              (_i69658_ '1)
                              (_deleted69660_ '#f))
              (let ((_k69663_ (vector-ref _table69637_ _probe69656_)))
                (if (let ((__tmp69977 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69663_ __tmp69977))
                    (if _deleted69660_
                        (begin
                          (vector-set! _table69637_ _deleted69660_ _key69632_)
                          (vector-set!
                           _table69637_
                           (fx+ _deleted69660_ '1)
                           (_prototype-table-update!69633_ _default69634_))
                          ((lambda ()
                             (let ((__tmp69976
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69631_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69631_
                                __tmp69976)))))
                        (begin
                          (vector-set! _table69637_ _probe69656_ _key69632_)
                          (vector-set!
                           _table69637_
                           (fx+ _probe69656_ '1)
                           (_prototype-table-update!69633_ _default69634_))
                          ((lambda ()
                             (let ((__tmp69974
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69631_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69631_ __tmp69974))
                             (let ((__tmp69975
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69631_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69631_
                                __tmp69975))))))
                    (if (let ((__tmp69973 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69663_ __tmp69973))
                        (let ((__tmp69972
                               (let ((_next-probe69668_
                                      (fx+ _start69649_
                                           _i69658_
                                           (fx* _i69658_ _i69658_))))
                                 (fxmodulo _next-probe69668_ _size69643_)))
                              (__tmp69971 (fx+ _i69658_ '1))
                              (__tmp69970
                               (let ((_$e69671_ _deleted69660_))
                                 (if _$e69671_ _$e69671_ _probe69656_))))
                          (declare (not safe))
                          (_loop69653_ __tmp69972 __tmp69971 __tmp69970))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69632_ _k69663_))
                            (begin
                              (vector-set!
                               _table69637_
                               _probe69656_
                               _key69632_)
                              (vector-set!
                               _table69637_
                               (fx+ _probe69656_ '1)
                               (_prototype-table-update!69633_
                                (vector-ref
                                 _table69637_
                                 (fx+ _probe69656_ '1)))))
                            (let ((__tmp69969
                                   (let ((_next-probe69674_
                                          (fx+ _start69649_
                                               _i69658_
                                               (fx* _i69658_ _i69658_))))
                                     (fxmodulo _next-probe69674_ _size69643_)))
                                  (__tmp69968 (fx+ _i69658_ '1)))
                              (declare (not safe))
                              (_loop69653_
                               __tmp69969
                               __tmp69968
                               _deleted69660_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69590_ _key69592_)
        (let ((_table69595_
               (let () (declare (not safe)) (&raw-table-table _tab69590_)))
              (_seed69597_
               (let () (declare (not safe)) (&raw-table-seed _tab69590_))))
          (let* ((_h69600_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69592_))
                         _seed69597_))
                 (_size69603_ (vector-length _table69595_))
                 (_entries69606_ (fxquotient _size69603_ '2))
                 (_start69609_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69600_ _entries69606_)
                   '1)))
            (let _loop69613_ ((_probe69616_ _start69609_) (_i69618_ '1))
              (let ((_k69621_ (vector-ref _table69595_ _probe69616_)))
                (if (let ((__tmp69984 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69621_ __tmp69984))
                    '#!void
                    (if (let ((__tmp69983 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69621_ __tmp69983))
                        (let ((__tmp69982
                               (let ((_next-probe69624_
                                      (fx+ _start69609_
                                           _i69618_
                                           (fx* _i69618_ _i69618_))))
                                 (fxmodulo _next-probe69624_ _size69603_)))
                              (__tmp69981 (fx+ _i69618_ '1)))
                          (declare (not safe))
                          (_loop69613_ __tmp69982 __tmp69981))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69592_ _k69621_))
                            (begin
                              (vector-set!
                               _table69595_
                               _probe69616_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69595_
                               (fx+ _probe69616_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69980
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69590_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69590_
                                    __tmp69980)))))
                            (let ((__tmp69979
                                   (let ((_next-probe69628_
                                          (fx+ _start69609_
                                               _i69618_
                                               (fx* _i69618_ _i69618_))))
                                     (fxmodulo _next-probe69628_ _size69603_)))
                                  (__tmp69978 (fx+ _i69618_ '1)))
                              (declare (not safe))
                              (_loop69613_ __tmp69979 __tmp69978)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69582_)
        (let ((_super6958369585_
               (let () (declare (not safe)) (##type-super _klass69582_))))
          (if _super6958369585_
              (let ((_super69588_ _super6958369585_))
                (let ((__tmp69986
                       (let () (declare (not safe)) (##type-id _super69588_)))
                      (__tmp69985
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69986 __tmp69985)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69468_ _klass69469_ _obj-klass69470_)
        (let ((_method-table69472_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69470_))))
          (let _loop69475_ ((_rest69478_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69468_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69480_ '0)
                            (_methods69482_ '()))
            (let* ((_rest6948469492_ _rest69478_)
                   (_else6948669554_
                    (lambda ()
                      (let ((_prototype69500_
                             (let ((__obj69932
                                    (let ((__tmp69987
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69480_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69469_
                                       __tmp69987))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69932 '#f))
                               __obj69932)))
                        (let _loop69503_ ((_rest69505_ _methods69482_)
                                          (_off69506_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69480_ '1))))
                          (let* ((_rest6950869516_ _rest69505_)
                                 (_else6951069535_
                                  (lambda ()
                                    (let ((_prototype-key69524_
                                           (let ((__tmp69989
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69469_)))
                                                 (__tmp69988
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69470_))))
                                             (declare (not safe))
                                             (cons __tmp69989 __tmp69988))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69529_ ()
                                          (if (let ((__tmp69990
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69990 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69529_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69524_
                                         _prototype69500_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69533_)
                                         _prototype69533_)
                                       _prototype69500_))))
                                 (_K6951269542_
                                  (lambda (_rest69538_ _method69539_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69500_
                                       _method69539_
                                       _off69506_
                                       _klass69469_
                                       '#f))
                                    (let ((__tmp69991
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69506_ '1))))
                                      (declare (not safe))
                                      (_loop69503_ _rest69538_ __tmp69991)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6950869516_))
                                (let ((_hd6951369545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6950869516_)))
                                      (_tl6951469547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6950869516_))))
                                  (let* ((_method69550_ _hd6951369545_)
                                         (_rest69552_ _tl6951469547_))
                                    (declare (not safe))
                                    (_K6951269542_ _rest69552_ _method69550_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6951069535_))))))))
                   (_K6948869570_
                    (lambda (_rest69557_ _method-name69558_)
                      (let ((_$e69561_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69472_
                                _method-name69558_
                                '#f))))
                        (if _$e69561_
                            ((lambda (_method69564_)
                               (let ((__tmp69995
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69480_ '1)))
                                     (__tmp69994
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69564_ _methods69482_))))
                                 (declare (not safe))
                                 (_loop69475_
                                  _rest69557_
                                  __tmp69995
                                  __tmp69994)))
                             _$e69561_)
                            ((lambda (_klass69566_
                                      _obj-klass69567_
                                      _method-name69568_)
                               (let ((__tmp69993
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69566_)))
                                     (__tmp69992
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69567_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69566_
                                  'interface-id:
                                  __tmp69993
                                  'class:
                                  _obj-klass69567_
                                  'class-id:
                                  __tmp69992
                                  'method:
                                  _method-name69568_)))
                             _klass69469_
                             _obj-klass69470_
                             _method-name69558_))))))
              (if (let () (declare (not safe)) (##pair? _rest6948469492_))
                  (let ((_hd6948969573_
                         (let ()
                           (declare (not safe))
                           (##car _rest6948469492_)))
                        (_tl6949069575_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6948469492_))))
                    (let* ((_method-name69578_ _hd6948969573_)
                           (_rest69580_ _tl6949069575_))
                      (declare (not safe))
                      (_K6948869570_ _rest69580_ _method-name69578_)))
                  (let () (declare (not safe)) (_else6948669554_))))))))
    (define try-create-prototype
      (lambda (_descriptor69354_ _klass69355_ _obj-klass69356_)
        (let ((_method-table69358_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69356_))))
          (let _loop69361_ ((_rest69364_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69354_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69366_ '0)
                            (_methods69368_ '()))
            (let* ((_rest6937069378_ _rest69364_)
                   (_else6937269440_
                    (lambda ()
                      (let ((_prototype69386_
                             (let ((__obj69933
                                    (let ((__tmp69996
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69366_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69355_
                                       __tmp69996))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69933 '#f))
                               __obj69933)))
                        (let _loop69389_ ((_rest69391_ _methods69368_)
                                          (_off69392_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69366_ '1))))
                          (let* ((_rest6939469402_ _rest69391_)
                                 (_else6939669421_
                                  (lambda ()
                                    (let ((_prototype-key69410_
                                           (let ((__tmp69998
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69355_)))
                                                 (__tmp69997
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69356_))))
                                             (declare (not safe))
                                             (cons __tmp69998 __tmp69997))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69415_ ()
                                          (if (let ((__tmp69999
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69999 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69415_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69410_
                                         _prototype69386_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69419_)
                                         _prototype69419_)
                                       _prototype69386_))))
                                 (_K6939869428_
                                  (lambda (_rest69424_ _method69425_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69386_
                                       _method69425_
                                       _off69392_
                                       _klass69355_
                                       '#f))
                                    (let ((__tmp70000
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69392_ '1))))
                                      (declare (not safe))
                                      (_loop69389_ _rest69424_ __tmp70000)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6939469402_))
                                (let ((_hd6939969431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6939469402_)))
                                      (_tl6940069433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6939469402_))))
                                  (let* ((_method69436_ _hd6939969431_)
                                         (_rest69438_ _tl6940069433_))
                                    (declare (not safe))
                                    (_K6939869428_ _rest69438_ _method69436_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6939669421_))))))))
                   (_K6937469456_
                    (lambda (_rest69443_ _method-name69444_)
                      (let ((_$e69447_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69358_
                                _method-name69444_
                                '#f))))
                        (if _$e69447_
                            ((lambda (_method69450_)
                               (let ((__tmp70002
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69366_ '1)))
                                     (__tmp70001
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69450_ _methods69368_))))
                                 (declare (not safe))
                                 (_loop69361_
                                  _rest69443_
                                  __tmp70002
                                  __tmp70001)))
                             _$e69447_)
                            ((lambda (_klass69452_
                                      _obj-klass69453_
                                      _method-name69454_)
                               '#f)
                             _klass69355_
                             _obj-klass69356_
                             _method-name69444_))))))
              (if (let () (declare (not safe)) (##pair? _rest6937069378_))
                  (let ((_hd6937569459_
                         (let ()
                           (declare (not safe))
                           (##car _rest6937069378_)))
                        (_tl6937669461_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6937069378_))))
                    (let* ((_method-name69464_ _hd6937569459_)
                           (_rest69466_ _tl6937669461_))
                      (declare (not safe))
                      (_K6937469456_ _rest69466_ _method-name69464_)))
                  (let () (declare (not safe)) (_else6937269440_))))))))
    (define cast
      (lambda (_descriptor69316_ _obj69318_)
        (declare (not interrupts-enabled))
        (let* ((_klass69322_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69316_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69325_
                (let () (declare (not safe)) (##type-id _klass69322_)))
               (_obj-klass69328_
                (let () (declare (not safe)) (class-of _obj69318_)))
               (_obj-klass-id69331_
                (let () (declare (not safe)) (##type-id _obj-klass69328_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69325_ _obj-klass-id69331_))
              _obj69318_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69328_))
                  (let ((__tmp70004
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69318_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor69316_ __tmp70004))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69337_ ()
                        (if (let ((__tmp70003
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70003 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69337_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69325_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69331_))
                    (let ((_prototype69347_
                           (let ((_$e69341_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69341_
                                 ((lambda (_prototype69344_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69344_)
                                  _$e69341_)
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (create-prototype
                                      _descriptor69316_
                                      _klass69322_
                                      _obj-klass69328_)))))))
                      ((lambda (_prototype69349_ _obj69350_)
                         (let ((_instance69352_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype69349_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance69352_
                              _obj69350_
                              '1
                              '#f
                              'cast))
                           _instance69352_))
                       _prototype69347_
                       _obj69318_))))))))
    (define try-cast
      (lambda (_descriptor69278_ _obj69280_)
        (declare (not interrupts-enabled))
        (let* ((_klass69284_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69278_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69287_
                (let () (declare (not safe)) (##type-id _klass69284_)))
               (_obj-klass69290_
                (let () (declare (not safe)) (class-of _obj69280_)))
               (_obj-klass-id69293_
                (let () (declare (not safe)) (##type-id _obj-klass69290_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69287_ _obj-klass-id69293_))
              _obj69280_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69290_))
                  (let ((__tmp70006
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69280_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor69278_ __tmp70006))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69299_ ()
                        (if (let ((__tmp70005
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70005 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69299_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69287_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69293_))
                    (let ((_prototype69309_
                           (let ((_$e69303_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69303_
                                 ((lambda (_prototype69306_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69306_)
                                  _$e69303_)
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _descriptor69278_
                                      _klass69284_
                                      _obj-klass69290_)))))))
                      ((lambda (_prototype69311_ _obj69312_)
                         (if _prototype69311_
                             (let ((_instance69314_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype69311_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance69314_
                                  _obj69312_
                                  '1
                                  '#f
                                  'cast))
                               _instance69314_)
                             '#f))
                       _prototype69309_
                       _obj69280_))))))))
    (define satisfies?
      (lambda (_descriptor69242_ _obj69244_)
        (declare (not interrupts-enabled))
        (let* ((_klass69248_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69242_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69251_
                (let () (declare (not safe)) (##type-id _klass69248_)))
               (_obj-klass69254_
                (let () (declare (not safe)) (class-of _obj69244_)))
               (_obj-klass-id69257_
                (let () (declare (not safe)) (##type-id _obj-klass69254_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69251_ _obj-klass-id69257_))
              _obj69244_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69254_))
                  (let ((__tmp70008
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69244_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor69242_ __tmp70008))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69263_ ()
                        (if (let ((__tmp70007
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70007 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69263_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69251_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69257_))
                    (let ((_prototype69273_
                           (let ((_$e69267_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69267_
                                 ((lambda (_prototype69270_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69270_)
                                  _$e69267_)
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _descriptor69242_
                                      _klass69248_
                                      _obj-klass69254_)))))))
                      ((lambda (_prototype69275_ _obj69276_)
                         (if _prototype69275_ '#t '#f))
                       _prototype69273_
                       _obj69244_))))))))))
