(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1711108654)
  (begin
    (define CastError::t
      (let ((__tmp69924 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69924
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69917_ (apply make-instance CastError::t _$args69917_)))
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
      (lambda (_where69791_ _message69792_ . _irritants69793_)
        (raise (let ((__obj69920
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69920
                  _message69792_
                  'where:
                  _where69791_
                  'irritants:
                  _irritants69793_)
                 __obj69920))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69927 (list))
            (__tmp69925
             (let ((__tmp69926
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69926 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69927
         '(__object)
         __tmp69925
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
      (let ((__tmp69932 (list))
            (__tmp69928
             (let ((__tmp69931
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69929
                    (let ((__tmp69930
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69930 '()))))
               (declare (not safe))
               (cons __tmp69931 __tmp69929))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69932
         '(type methods)
         __tmp69928
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69788_
        (apply make-instance interface-descriptor::t _$args69788_)))
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
      (lambda (_key69786_)
        (let ((__tmp69934
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69786_))))
              (__tmp69933
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69786_)))))
          (declare (not safe))
          (##fxxor __tmp69934 __tmp69933))))
    (define __interface-test-key
      (lambda (_a69783_ _b69784_)
        (if (let ((__tmp69938 (let () (declare (not safe)) (##car _a69783_)))
                  (__tmp69937 (let () (declare (not safe)) (##car _b69784_))))
              (declare (not safe))
              (##eq? __tmp69938 __tmp69937))
            (let ((__tmp69936 (let () (declare (not safe)) (##cdr _a69783_)))
                  (__tmp69935 (let () (declare (not safe)) (##cdr _b69784_))))
              (declare (not safe))
              (##eq? __tmp69936 __tmp69935))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69764_ _seed69766_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69764_
           __interface-hash-key
           __interface-test-key
           _seed69766_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69772_ '#f) (_seed69774_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69772_ _seed69774_))))
    (define make-prototype-table__1
      (lambda (_size-hint69776_)
        (let ((_seed69778_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69776_ _seed69778_))))
    (define make-prototype-table
      (lambda _g69940_
        (let ((_g69939_ (let () (declare (not safe)) (##length _g69940_))))
          (cond ((let () (declare (not safe)) (##fx= _g69939_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69940_))
                ((let () (declare (not safe)) (##fx= _g69939_ 1))
                 (apply (lambda (_size-hint69776_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69776_)))
                        _g69940_))
                ((let () (declare (not safe)) (##fx= _g69939_ 2))
                 (apply (lambda (_size-hint69780_ _seed69781_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69780_
                             _seed69781_)))
                        _g69940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69940_))))))
    (define prototype-table-ref
      (lambda (_tab69721_ _key69722_ _default69723_)
        (let ((_table69725_
               (let () (declare (not safe)) (&raw-table-table _tab69721_)))
              (_seed69726_
               (let () (declare (not safe)) (&raw-table-seed _tab69721_))))
          (let* ((_h69728_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69722_))
                         _seed69726_))
                 (_size69731_ (vector-length _table69725_))
                 (_entries69734_ (fxquotient _size69731_ '2))
                 (_start69737_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69728_ _entries69734_)
                   '1)))
            (let _loop69741_ ((_probe69744_ _start69737_)
                              (_i69746_ '1)
                              (_deleted69748_ '#f))
              (let ((_k69751_ (vector-ref _table69725_ _probe69744_)))
                (if (let ((__tmp69947 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69751_ __tmp69947))
                    _default69723_
                    (if (let ((__tmp69946 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69751_ __tmp69946))
                        (let ((__tmp69945
                               (let ((_next-probe69754_
                                      (fx+ _start69737_
                                           _i69746_
                                           (fx* _i69746_ _i69746_))))
                                 (fxmodulo _next-probe69754_ _size69731_)))
                              (__tmp69944 (fx+ _i69746_ '1))
                              (__tmp69943
                               (let ((_$e69757_ _deleted69748_))
                                 (if _$e69757_ _$e69757_ _probe69744_))))
                          (declare (not safe))
                          (_loop69741_ __tmp69945 __tmp69944 __tmp69943))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69722_ _k69751_))
                            (vector-ref _table69725_ (fx+ _probe69744_ '1))
                            (let ((__tmp69942
                                   (let ((_next-probe69760_
                                          (fx+ _start69737_
                                               _i69746_
                                               (fx* _i69746_ _i69746_))))
                                     (fxmodulo _next-probe69760_ _size69731_)))
                                  (__tmp69941 (fx+ _i69746_ '1)))
                              (declare (not safe))
                              (_loop69741_
                               __tmp69942
                               __tmp69941
                               _deleted69748_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69717_ _key69718_ _value69719_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69717_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69717_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69717_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69717_ _key69718_ _value69719_))))
    (define __prototype-table-set!
      (lambda (_tab69672_ _key69673_ _value69674_)
        (let ((_table69677_
               (let () (declare (not safe)) (&raw-table-table _tab69672_)))
              (_seed69678_
               (let () (declare (not safe)) (&raw-table-seed _tab69672_))))
          (let* ((_h69680_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69673_))
                         _seed69678_))
                 (_size69683_ (vector-length _table69677_))
                 (_entries69686_ (fxquotient _size69683_ '2))
                 (_start69689_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69680_ _entries69686_)
                   '1)))
            (let _loop69693_ ((_probe69696_ _start69689_)
                              (_i69698_ '1)
                              (_deleted69700_ '#f))
              (let ((_k69703_ (vector-ref _table69677_ _probe69696_)))
                (if (let ((__tmp69957 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69703_ __tmp69957))
                    (if _deleted69700_
                        (begin
                          (vector-set! _table69677_ _deleted69700_ _key69673_)
                          (vector-set!
                           _table69677_
                           (fx+ _deleted69700_ '1)
                           _value69674_)
                          ((lambda ()
                             (let ((__tmp69956
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69672_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69672_
                                __tmp69956)))))
                        (begin
                          (vector-set! _table69677_ _probe69696_ _key69673_)
                          (vector-set!
                           _table69677_
                           (fx+ _probe69696_ '1)
                           _value69674_)
                          ((lambda ()
                             (let ((__tmp69954
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69672_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69672_ __tmp69954))
                             (let ((__tmp69955
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69672_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69672_
                                __tmp69955))))))
                    (if (let ((__tmp69953 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69703_ __tmp69953))
                        (let ((__tmp69952
                               (let ((_next-probe69708_
                                      (fx+ _start69689_
                                           _i69698_
                                           (fx* _i69698_ _i69698_))))
                                 (fxmodulo _next-probe69708_ _size69683_)))
                              (__tmp69951 (fx+ _i69698_ '1))
                              (__tmp69950
                               (let ((_$e69711_ _deleted69700_))
                                 (if _$e69711_ _$e69711_ _probe69696_))))
                          (declare (not safe))
                          (_loop69693_ __tmp69952 __tmp69951 __tmp69950))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69673_ _k69703_))
                            (begin
                              (vector-set!
                               _table69677_
                               _probe69696_
                               _key69673_)
                              (vector-set!
                               _table69677_
                               (fx+ _probe69696_ '1)
                               _value69674_))
                            (let ((__tmp69949
                                   (let ((_next-probe69714_
                                          (fx+ _start69689_
                                               _i69698_
                                               (fx* _i69698_ _i69698_))))
                                     (fxmodulo _next-probe69714_ _size69683_)))
                                  (__tmp69948 (fx+ _i69698_ '1)))
                              (declare (not safe))
                              (_loop69693_
                               __tmp69949
                               __tmp69948
                               _deleted69700_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69667_
               _key69668_
               _prototype-table-update!69669_
               _default69670_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69667_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69667_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69667_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69667_
           _key69668_
           _prototype-table-update!69669_
           _default69670_))))
    (define __prototype-table-update!
      (lambda (_tab69621_
               _key69622_
               _prototype-table-update!69623_
               _default69624_)
        (let ((_table69627_
               (let () (declare (not safe)) (&raw-table-table _tab69621_)))
              (_seed69628_
               (let () (declare (not safe)) (&raw-table-seed _tab69621_))))
          (let* ((_h69630_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69622_))
                         _seed69628_))
                 (_size69633_ (vector-length _table69627_))
                 (_entries69636_ (fxquotient _size69633_ '2))
                 (_start69639_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69630_ _entries69636_)
                   '1)))
            (let _loop69643_ ((_probe69646_ _start69639_)
                              (_i69648_ '1)
                              (_deleted69650_ '#f))
              (let ((_k69653_ (vector-ref _table69627_ _probe69646_)))
                (if (let ((__tmp69967 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69653_ __tmp69967))
                    (if _deleted69650_
                        (begin
                          (vector-set! _table69627_ _deleted69650_ _key69622_)
                          (vector-set!
                           _table69627_
                           (fx+ _deleted69650_ '1)
                           (_prototype-table-update!69623_ _default69624_))
                          ((lambda ()
                             (let ((__tmp69966
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69621_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69621_
                                __tmp69966)))))
                        (begin
                          (vector-set! _table69627_ _probe69646_ _key69622_)
                          (vector-set!
                           _table69627_
                           (fx+ _probe69646_ '1)
                           (_prototype-table-update!69623_ _default69624_))
                          ((lambda ()
                             (let ((__tmp69964
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69621_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69621_ __tmp69964))
                             (let ((__tmp69965
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69621_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69621_
                                __tmp69965))))))
                    (if (let ((__tmp69963 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69653_ __tmp69963))
                        (let ((__tmp69962
                               (let ((_next-probe69658_
                                      (fx+ _start69639_
                                           _i69648_
                                           (fx* _i69648_ _i69648_))))
                                 (fxmodulo _next-probe69658_ _size69633_)))
                              (__tmp69961 (fx+ _i69648_ '1))
                              (__tmp69960
                               (let ((_$e69661_ _deleted69650_))
                                 (if _$e69661_ _$e69661_ _probe69646_))))
                          (declare (not safe))
                          (_loop69643_ __tmp69962 __tmp69961 __tmp69960))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69622_ _k69653_))
                            (begin
                              (vector-set!
                               _table69627_
                               _probe69646_
                               _key69622_)
                              (vector-set!
                               _table69627_
                               (fx+ _probe69646_ '1)
                               (_prototype-table-update!69623_
                                (vector-ref
                                 _table69627_
                                 (fx+ _probe69646_ '1)))))
                            (let ((__tmp69959
                                   (let ((_next-probe69664_
                                          (fx+ _start69639_
                                               _i69648_
                                               (fx* _i69648_ _i69648_))))
                                     (fxmodulo _next-probe69664_ _size69633_)))
                                  (__tmp69958 (fx+ _i69648_ '1)))
                              (declare (not safe))
                              (_loop69643_
                               __tmp69959
                               __tmp69958
                               _deleted69650_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69580_ _key69582_)
        (let ((_table69585_
               (let () (declare (not safe)) (&raw-table-table _tab69580_)))
              (_seed69587_
               (let () (declare (not safe)) (&raw-table-seed _tab69580_))))
          (let* ((_h69590_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69582_))
                         _seed69587_))
                 (_size69593_ (vector-length _table69585_))
                 (_entries69596_ (fxquotient _size69593_ '2))
                 (_start69599_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69590_ _entries69596_)
                   '1)))
            (let _loop69603_ ((_probe69606_ _start69599_) (_i69608_ '1))
              (let ((_k69611_ (vector-ref _table69585_ _probe69606_)))
                (if (let ((__tmp69974 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69611_ __tmp69974))
                    '#!void
                    (if (let ((__tmp69973 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69611_ __tmp69973))
                        (let ((__tmp69972
                               (let ((_next-probe69614_
                                      (fx+ _start69599_
                                           _i69608_
                                           (fx* _i69608_ _i69608_))))
                                 (fxmodulo _next-probe69614_ _size69593_)))
                              (__tmp69971 (fx+ _i69608_ '1)))
                          (declare (not safe))
                          (_loop69603_ __tmp69972 __tmp69971))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69582_ _k69611_))
                            (begin
                              (vector-set!
                               _table69585_
                               _probe69606_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69585_
                               (fx+ _probe69606_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69970
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69580_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69580_
                                    __tmp69970)))))
                            (let ((__tmp69969
                                   (let ((_next-probe69618_
                                          (fx+ _start69599_
                                               _i69608_
                                               (fx* _i69608_ _i69608_))))
                                     (fxmodulo _next-probe69618_ _size69593_)))
                                  (__tmp69968 (fx+ _i69608_ '1)))
                              (declare (not safe))
                              (_loop69603_ __tmp69969 __tmp69968)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69572_)
        (let ((_super6957369575_
               (let () (declare (not safe)) (##type-super _klass69572_))))
          (if _super6957369575_
              (let ((_super69578_ _super6957369575_))
                (let ((__tmp69976
                       (let () (declare (not safe)) (##type-id _super69578_)))
                      (__tmp69975
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69976 __tmp69975)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69458_ _klass69459_ _obj-klass69460_)
        (let ((_method-table69462_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69460_))))
          (let _loop69465_ ((_rest69468_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69458_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69470_ '0)
                            (_methods69472_ '()))
            (let* ((_rest6947469482_ _rest69468_)
                   (_else6947669544_
                    (lambda ()
                      (let ((_prototype69490_
                             (let ((__obj69922
                                    (let ((__tmp69977
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69470_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69459_
                                       __tmp69977))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69922 '#f))
                               __obj69922)))
                        (let _loop69493_ ((_rest69495_ _methods69472_)
                                          (_off69496_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69470_ '1))))
                          (let* ((_rest6949869506_ _rest69495_)
                                 (_else6950069525_
                                  (lambda ()
                                    (let ((_prototype-key69514_
                                           (let ((__tmp69979
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69459_)))
                                                 (__tmp69978
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69460_))))
                                             (declare (not safe))
                                             (cons __tmp69979 __tmp69978))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69519_ ()
                                          (if (let ((__tmp69980
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69980 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69519_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69514_
                                         _prototype69490_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69523_)
                                         _prototype69523_)
                                       _prototype69490_))))
                                 (_K6950269532_
                                  (lambda (_rest69528_ _method69529_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69490_
                                       _method69529_
                                       _off69496_
                                       _klass69459_
                                       '#f))
                                    (let ((__tmp69981
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69496_ '1))))
                                      (declare (not safe))
                                      (_loop69493_ _rest69528_ __tmp69981)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6949869506_))
                                (let ((_hd6950369535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6949869506_)))
                                      (_tl6950469537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6949869506_))))
                                  (let* ((_method69540_ _hd6950369535_)
                                         (_rest69542_ _tl6950469537_))
                                    (declare (not safe))
                                    (_K6950269532_ _rest69542_ _method69540_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6950069525_))))))))
                   (_K6947869560_
                    (lambda (_rest69547_ _method-name69548_)
                      (let ((_$e69551_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69462_
                                _method-name69548_
                                '#f))))
                        (if _$e69551_
                            ((lambda (_method69554_)
                               (let ((__tmp69985
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69470_ '1)))
                                     (__tmp69984
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69554_ _methods69472_))))
                                 (declare (not safe))
                                 (_loop69465_
                                  _rest69547_
                                  __tmp69985
                                  __tmp69984)))
                             _$e69551_)
                            ((lambda (_klass69556_
                                      _obj-klass69557_
                                      _method-name69558_)
                               (let ((__tmp69983
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69556_)))
                                     (__tmp69982
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69557_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69556_
                                  'interface-id:
                                  __tmp69983
                                  'class:
                                  _obj-klass69557_
                                  'class-id:
                                  __tmp69982
                                  'method:
                                  _method-name69558_)))
                             _klass69459_
                             _obj-klass69460_
                             _method-name69548_))))))
              (if (let () (declare (not safe)) (##pair? _rest6947469482_))
                  (let ((_hd6947969563_
                         (let ()
                           (declare (not safe))
                           (##car _rest6947469482_)))
                        (_tl6948069565_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6947469482_))))
                    (let* ((_method-name69568_ _hd6947969563_)
                           (_rest69570_ _tl6948069565_))
                      (declare (not safe))
                      (_K6947869560_ _rest69570_ _method-name69568_)))
                  (let () (declare (not safe)) (_else6947669544_))))))))
    (define try-create-prototype
      (lambda (_descriptor69344_ _klass69345_ _obj-klass69346_)
        (let ((_method-table69348_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69346_))))
          (let _loop69351_ ((_rest69354_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69344_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69356_ '0)
                            (_methods69358_ '()))
            (let* ((_rest6936069368_ _rest69354_)
                   (_else6936269430_
                    (lambda ()
                      (let ((_prototype69376_
                             (let ((__obj69923
                                    (let ((__tmp69986
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69356_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69345_
                                       __tmp69986))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69923 '#f))
                               __obj69923)))
                        (let _loop69379_ ((_rest69381_ _methods69358_)
                                          (_off69382_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69356_ '1))))
                          (let* ((_rest6938469392_ _rest69381_)
                                 (_else6938669411_
                                  (lambda ()
                                    (let ((_prototype-key69400_
                                           (let ((__tmp69988
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69345_)))
                                                 (__tmp69987
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69346_))))
                                             (declare (not safe))
                                             (cons __tmp69988 __tmp69987))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69405_ ()
                                          (if (let ((__tmp69989
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69989 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69405_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69400_
                                         _prototype69376_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69409_)
                                         _prototype69409_)
                                       _prototype69376_))))
                                 (_K6938869418_
                                  (lambda (_rest69414_ _method69415_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69376_
                                       _method69415_
                                       _off69382_
                                       _klass69345_
                                       '#f))
                                    (let ((__tmp69990
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69382_ '1))))
                                      (declare (not safe))
                                      (_loop69379_ _rest69414_ __tmp69990)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6938469392_))
                                (let ((_hd6938969421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6938469392_)))
                                      (_tl6939069423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6938469392_))))
                                  (let* ((_method69426_ _hd6938969421_)
                                         (_rest69428_ _tl6939069423_))
                                    (declare (not safe))
                                    (_K6938869418_ _rest69428_ _method69426_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6938669411_))))))))
                   (_K6936469446_
                    (lambda (_rest69433_ _method-name69434_)
                      (let ((_$e69437_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69348_
                                _method-name69434_
                                '#f))))
                        (if _$e69437_
                            ((lambda (_method69440_)
                               (let ((__tmp69992
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69356_ '1)))
                                     (__tmp69991
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69440_ _methods69358_))))
                                 (declare (not safe))
                                 (_loop69351_
                                  _rest69433_
                                  __tmp69992
                                  __tmp69991)))
                             _$e69437_)
                            ((lambda (_klass69442_
                                      _obj-klass69443_
                                      _method-name69444_)
                               '#f)
                             _klass69345_
                             _obj-klass69346_
                             _method-name69434_))))))
              (if (let () (declare (not safe)) (##pair? _rest6936069368_))
                  (let ((_hd6936569449_
                         (let ()
                           (declare (not safe))
                           (##car _rest6936069368_)))
                        (_tl6936669451_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6936069368_))))
                    (let* ((_method-name69454_ _hd6936569449_)
                           (_rest69456_ _tl6936669451_))
                      (declare (not safe))
                      (_K6936469446_ _rest69456_ _method-name69454_)))
                  (let () (declare (not safe)) (_else6936269430_))))))))
    (define cast
      (lambda (_descriptor69306_ _obj69308_)
        (declare (not interrupts-enabled))
        (let* ((_klass69312_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69306_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69315_
                (let () (declare (not safe)) (##type-id _klass69312_)))
               (_obj-klass69318_
                (let () (declare (not safe)) (class-of _obj69308_)))
               (_obj-klass-id69321_
                (let () (declare (not safe)) (##type-id _obj-klass69318_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69315_ _obj-klass-id69321_))
              _obj69308_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69318_))
                  (let ((__tmp69994
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69308_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor69306_ __tmp69994))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69327_ ()
                        (if (let ((__tmp69993
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69993 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69327_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69315_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69321_))
                    (let ((_prototype69337_
                           (let ((_$e69331_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69331_
                                 ((lambda (_prototype69334_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69334_)
                                  _$e69331_)
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
                                      _descriptor69306_
                                      _klass69312_
                                      _obj-klass69318_)))))))
                      ((lambda (_prototype69339_ _obj69340_)
                         (let ((_instance69342_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype69339_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance69342_
                              _obj69340_
                              '1
                              '#f
                              'cast))
                           _instance69342_))
                       _prototype69337_
                       _obj69308_))))))))
    (define try-cast
      (lambda (_descriptor69268_ _obj69270_)
        (declare (not interrupts-enabled))
        (let* ((_klass69274_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69268_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69277_
                (let () (declare (not safe)) (##type-id _klass69274_)))
               (_obj-klass69280_
                (let () (declare (not safe)) (class-of _obj69270_)))
               (_obj-klass-id69283_
                (let () (declare (not safe)) (##type-id _obj-klass69280_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69277_ _obj-klass-id69283_))
              _obj69270_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69280_))
                  (let ((__tmp69996
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69270_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor69268_ __tmp69996))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69289_ ()
                        (if (let ((__tmp69995
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69995 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69289_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69277_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69283_))
                    (let ((_prototype69299_
                           (let ((_$e69293_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69293_
                                 ((lambda (_prototype69296_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69296_)
                                  _$e69293_)
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
                                      _descriptor69268_
                                      _klass69274_
                                      _obj-klass69280_)))))))
                      ((lambda (_prototype69301_ _obj69302_)
                         (if _prototype69301_
                             (let ((_instance69304_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype69301_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance69304_
                                  _obj69302_
                                  '1
                                  '#f
                                  'cast))
                               _instance69304_)
                             '#f))
                       _prototype69299_
                       _obj69270_))))))))
    (define satisfies?
      (lambda (_descriptor69232_ _obj69234_)
        (declare (not interrupts-enabled))
        (let* ((_klass69238_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69232_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69241_
                (let () (declare (not safe)) (##type-id _klass69238_)))
               (_obj-klass69244_
                (let () (declare (not safe)) (class-of _obj69234_)))
               (_obj-klass-id69247_
                (let () (declare (not safe)) (##type-id _obj-klass69244_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69241_ _obj-klass-id69247_))
              _obj69234_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69244_))
                  (let ((__tmp69998
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69234_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor69232_ __tmp69998))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69253_ ()
                        (if (let ((__tmp69997
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69997 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69253_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69241_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69247_))
                    (let ((_prototype69263_
                           (let ((_$e69257_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69257_
                                 ((lambda (_prototype69260_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69260_)
                                  _$e69257_)
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
                                      _descriptor69232_
                                      _klass69238_
                                      _obj-klass69244_)))))))
                      ((lambda (_prototype69265_ _obj69266_)
                         (if _prototype69265_ '#t '#f))
                       _prototype69263_
                       _obj69234_))))))))))
