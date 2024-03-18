(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710781148)
  (begin
    (define CastError::t
      (let ((__tmp69933 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69933
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69926_ (apply make-instance CastError::t _$args69926_)))
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
      (lambda (_where69800_ _message69801_ . _irritants69802_)
        (raise (let ((__obj69929
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69929
                  _message69801_
                  'where:
                  _where69800_
                  'irritants:
                  _irritants69802_)
                 __obj69929))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69936 (list))
            (__tmp69934
             (let ((__tmp69935
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69935 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69936
         '(__object)
         __tmp69934
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
      (let ((__tmp69941 (list))
            (__tmp69937
             (let ((__tmp69940
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69938
                    (let ((__tmp69939
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69939 '()))))
               (declare (not safe))
               (cons __tmp69940 __tmp69938))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69941
         '(type methods)
         __tmp69937
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69797_
        (apply make-instance interface-descriptor::t _$args69797_)))
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
      (lambda (_key69795_)
        (let ((__tmp69943
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69795_))))
              (__tmp69942
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69795_)))))
          (declare (not safe))
          (##fxxor __tmp69943 __tmp69942))))
    (define __interface-test-key
      (lambda (_a69792_ _b69793_)
        (if (let ((__tmp69947 (let () (declare (not safe)) (##car _a69792_)))
                  (__tmp69946 (let () (declare (not safe)) (##car _b69793_))))
              (declare (not safe))
              (##eq? __tmp69947 __tmp69946))
            (let ((__tmp69945 (let () (declare (not safe)) (##cdr _a69792_)))
                  (__tmp69944 (let () (declare (not safe)) (##cdr _b69793_))))
              (declare (not safe))
              (##eq? __tmp69945 __tmp69944))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69773_ _seed69775_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69773_
           __interface-hash-key
           __interface-test-key
           _seed69775_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69781_ '#f) (_seed69783_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69781_ _seed69783_))))
    (define make-prototype-table__1
      (lambda (_size-hint69785_)
        (let ((_seed69787_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69785_ _seed69787_))))
    (define make-prototype-table
      (lambda _g69949_
        (let ((_g69948_ (let () (declare (not safe)) (##length _g69949_))))
          (cond ((let () (declare (not safe)) (##fx= _g69948_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69949_))
                ((let () (declare (not safe)) (##fx= _g69948_ 1))
                 (apply (lambda (_size-hint69785_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69785_)))
                        _g69949_))
                ((let () (declare (not safe)) (##fx= _g69948_ 2))
                 (apply (lambda (_size-hint69789_ _seed69790_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69789_
                             _seed69790_)))
                        _g69949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69949_))))))
    (define prototype-table-ref
      (lambda (_tab69730_ _key69731_ _default69732_)
        (let ((_table69734_
               (let () (declare (not safe)) (&raw-table-table _tab69730_)))
              (_seed69735_
               (let () (declare (not safe)) (&raw-table-seed _tab69730_))))
          (let* ((_h69737_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69731_))
                         _seed69735_))
                 (_size69740_ (vector-length _table69734_))
                 (_entries69743_ (fxquotient _size69740_ '2))
                 (_start69746_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69737_ _entries69743_)
                   '1)))
            (let _loop69750_ ((_probe69753_ _start69746_)
                              (_i69755_ '1)
                              (_deleted69757_ '#f))
              (let ((_k69760_ (vector-ref _table69734_ _probe69753_)))
                (if (let ((__tmp69956 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69760_ __tmp69956))
                    _default69732_
                    (if (let ((__tmp69955 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69760_ __tmp69955))
                        (let ((__tmp69954
                               (let ((_next-probe69763_
                                      (fx+ _start69746_
                                           _i69755_
                                           (fx* _i69755_ _i69755_))))
                                 (fxmodulo _next-probe69763_ _size69740_)))
                              (__tmp69953 (fx+ _i69755_ '1))
                              (__tmp69952
                               (let ((_$e69766_ _deleted69757_))
                                 (if _$e69766_ _$e69766_ _probe69753_))))
                          (declare (not safe))
                          (_loop69750_ __tmp69954 __tmp69953 __tmp69952))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69731_ _k69760_))
                            (vector-ref _table69734_ (fx+ _probe69753_ '1))
                            (let ((__tmp69951
                                   (let ((_next-probe69769_
                                          (fx+ _start69746_
                                               _i69755_
                                               (fx* _i69755_ _i69755_))))
                                     (fxmodulo _next-probe69769_ _size69740_)))
                                  (__tmp69950 (fx+ _i69755_ '1)))
                              (declare (not safe))
                              (_loop69750_
                               __tmp69951
                               __tmp69950
                               _deleted69757_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69726_ _key69727_ _value69728_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69726_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69726_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69726_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69726_ _key69727_ _value69728_))))
    (define __prototype-table-set!
      (lambda (_tab69681_ _key69682_ _value69683_)
        (let ((_table69686_
               (let () (declare (not safe)) (&raw-table-table _tab69681_)))
              (_seed69687_
               (let () (declare (not safe)) (&raw-table-seed _tab69681_))))
          (let* ((_h69689_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69682_))
                         _seed69687_))
                 (_size69692_ (vector-length _table69686_))
                 (_entries69695_ (fxquotient _size69692_ '2))
                 (_start69698_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69689_ _entries69695_)
                   '1)))
            (let _loop69702_ ((_probe69705_ _start69698_)
                              (_i69707_ '1)
                              (_deleted69709_ '#f))
              (let ((_k69712_ (vector-ref _table69686_ _probe69705_)))
                (if (let ((__tmp69966 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69712_ __tmp69966))
                    (if _deleted69709_
                        (begin
                          (vector-set! _table69686_ _deleted69709_ _key69682_)
                          (vector-set!
                           _table69686_
                           (fx+ _deleted69709_ '1)
                           _value69683_)
                          ((lambda ()
                             (let ((__tmp69965
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69681_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69681_
                                __tmp69965)))))
                        (begin
                          (vector-set! _table69686_ _probe69705_ _key69682_)
                          (vector-set!
                           _table69686_
                           (fx+ _probe69705_ '1)
                           _value69683_)
                          ((lambda ()
                             (let ((__tmp69963
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69681_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69681_ __tmp69963))
                             (let ((__tmp69964
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69681_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69681_
                                __tmp69964))))))
                    (if (let ((__tmp69962 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69712_ __tmp69962))
                        (let ((__tmp69961
                               (let ((_next-probe69717_
                                      (fx+ _start69698_
                                           _i69707_
                                           (fx* _i69707_ _i69707_))))
                                 (fxmodulo _next-probe69717_ _size69692_)))
                              (__tmp69960 (fx+ _i69707_ '1))
                              (__tmp69959
                               (let ((_$e69720_ _deleted69709_))
                                 (if _$e69720_ _$e69720_ _probe69705_))))
                          (declare (not safe))
                          (_loop69702_ __tmp69961 __tmp69960 __tmp69959))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69682_ _k69712_))
                            (begin
                              (vector-set!
                               _table69686_
                               _probe69705_
                               _key69682_)
                              (vector-set!
                               _table69686_
                               (fx+ _probe69705_ '1)
                               _value69683_))
                            (let ((__tmp69958
                                   (let ((_next-probe69723_
                                          (fx+ _start69698_
                                               _i69707_
                                               (fx* _i69707_ _i69707_))))
                                     (fxmodulo _next-probe69723_ _size69692_)))
                                  (__tmp69957 (fx+ _i69707_ '1)))
                              (declare (not safe))
                              (_loop69702_
                               __tmp69958
                               __tmp69957
                               _deleted69709_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69676_
               _key69677_
               _prototype-table-update!69678_
               _default69679_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69676_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69676_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69676_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69676_
           _key69677_
           _prototype-table-update!69678_
           _default69679_))))
    (define __prototype-table-update!
      (lambda (_tab69630_
               _key69631_
               _prototype-table-update!69632_
               _default69633_)
        (let ((_table69636_
               (let () (declare (not safe)) (&raw-table-table _tab69630_)))
              (_seed69637_
               (let () (declare (not safe)) (&raw-table-seed _tab69630_))))
          (let* ((_h69639_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69631_))
                         _seed69637_))
                 (_size69642_ (vector-length _table69636_))
                 (_entries69645_ (fxquotient _size69642_ '2))
                 (_start69648_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69639_ _entries69645_)
                   '1)))
            (let _loop69652_ ((_probe69655_ _start69648_)
                              (_i69657_ '1)
                              (_deleted69659_ '#f))
              (let ((_k69662_ (vector-ref _table69636_ _probe69655_)))
                (if (let ((__tmp69976 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69662_ __tmp69976))
                    (if _deleted69659_
                        (begin
                          (vector-set! _table69636_ _deleted69659_ _key69631_)
                          (vector-set!
                           _table69636_
                           (fx+ _deleted69659_ '1)
                           (_prototype-table-update!69632_ _default69633_))
                          ((lambda ()
                             (let ((__tmp69975
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69630_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69630_
                                __tmp69975)))))
                        (begin
                          (vector-set! _table69636_ _probe69655_ _key69631_)
                          (vector-set!
                           _table69636_
                           (fx+ _probe69655_ '1)
                           (_prototype-table-update!69632_ _default69633_))
                          ((lambda ()
                             (let ((__tmp69973
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69630_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69630_ __tmp69973))
                             (let ((__tmp69974
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69630_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69630_
                                __tmp69974))))))
                    (if (let ((__tmp69972 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69662_ __tmp69972))
                        (let ((__tmp69971
                               (let ((_next-probe69667_
                                      (fx+ _start69648_
                                           _i69657_
                                           (fx* _i69657_ _i69657_))))
                                 (fxmodulo _next-probe69667_ _size69642_)))
                              (__tmp69970 (fx+ _i69657_ '1))
                              (__tmp69969
                               (let ((_$e69670_ _deleted69659_))
                                 (if _$e69670_ _$e69670_ _probe69655_))))
                          (declare (not safe))
                          (_loop69652_ __tmp69971 __tmp69970 __tmp69969))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69631_ _k69662_))
                            (begin
                              (vector-set!
                               _table69636_
                               _probe69655_
                               _key69631_)
                              (vector-set!
                               _table69636_
                               (fx+ _probe69655_ '1)
                               (_prototype-table-update!69632_
                                (vector-ref
                                 _table69636_
                                 (fx+ _probe69655_ '1)))))
                            (let ((__tmp69968
                                   (let ((_next-probe69673_
                                          (fx+ _start69648_
                                               _i69657_
                                               (fx* _i69657_ _i69657_))))
                                     (fxmodulo _next-probe69673_ _size69642_)))
                                  (__tmp69967 (fx+ _i69657_ '1)))
                              (declare (not safe))
                              (_loop69652_
                               __tmp69968
                               __tmp69967
                               _deleted69659_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69589_ _key69591_)
        (let ((_table69594_
               (let () (declare (not safe)) (&raw-table-table _tab69589_)))
              (_seed69596_
               (let () (declare (not safe)) (&raw-table-seed _tab69589_))))
          (let* ((_h69599_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69591_))
                         _seed69596_))
                 (_size69602_ (vector-length _table69594_))
                 (_entries69605_ (fxquotient _size69602_ '2))
                 (_start69608_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69599_ _entries69605_)
                   '1)))
            (let _loop69612_ ((_probe69615_ _start69608_) (_i69617_ '1))
              (let ((_k69620_ (vector-ref _table69594_ _probe69615_)))
                (if (let ((__tmp69983 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69620_ __tmp69983))
                    '#!void
                    (if (let ((__tmp69982 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69620_ __tmp69982))
                        (let ((__tmp69981
                               (let ((_next-probe69623_
                                      (fx+ _start69608_
                                           _i69617_
                                           (fx* _i69617_ _i69617_))))
                                 (fxmodulo _next-probe69623_ _size69602_)))
                              (__tmp69980 (fx+ _i69617_ '1)))
                          (declare (not safe))
                          (_loop69612_ __tmp69981 __tmp69980))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69591_ _k69620_))
                            (begin
                              (vector-set!
                               _table69594_
                               _probe69615_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69594_
                               (fx+ _probe69615_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69979
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69589_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69589_
                                    __tmp69979)))))
                            (let ((__tmp69978
                                   (let ((_next-probe69627_
                                          (fx+ _start69608_
                                               _i69617_
                                               (fx* _i69617_ _i69617_))))
                                     (fxmodulo _next-probe69627_ _size69602_)))
                                  (__tmp69977 (fx+ _i69617_ '1)))
                              (declare (not safe))
                              (_loop69612_ __tmp69978 __tmp69977)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69581_)
        (let ((_super6958269584_
               (let () (declare (not safe)) (##type-super _klass69581_))))
          (if _super6958269584_
              (let ((_super69587_ _super6958269584_))
                (let ((__tmp69985
                       (let () (declare (not safe)) (##type-id _super69587_)))
                      (__tmp69984
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69985 __tmp69984)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69467_ _klass69468_ _obj-klass69469_)
        (let ((_method-table69471_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69469_))))
          (let _loop69474_ ((_rest69477_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69467_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69479_ '0)
                            (_methods69481_ '()))
            (let* ((_rest6948369491_ _rest69477_)
                   (_else6948569553_
                    (lambda ()
                      (let ((_prototype69499_
                             (let ((__obj69931
                                    (let ((__tmp69986
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69479_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69468_
                                       __tmp69986))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69931 '#f))
                               __obj69931)))
                        (let _loop69502_ ((_rest69504_ _methods69481_)
                                          (_off69505_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69479_ '1))))
                          (let* ((_rest6950769515_ _rest69504_)
                                 (_else6950969534_
                                  (lambda ()
                                    (let ((_prototype-key69523_
                                           (let ((__tmp69988
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69468_)))
                                                 (__tmp69987
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69469_))))
                                             (declare (not safe))
                                             (cons __tmp69988 __tmp69987))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69528_ ()
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
                                                  (_again69528_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69523_
                                         _prototype69499_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69532_)
                                         _prototype69532_)
                                       _prototype69499_))))
                                 (_K6951169541_
                                  (lambda (_rest69537_ _method69538_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69499_
                                       _method69538_
                                       _off69505_
                                       _klass69468_
                                       '#f))
                                    (let ((__tmp69990
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69505_ '1))))
                                      (declare (not safe))
                                      (_loop69502_ _rest69537_ __tmp69990)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6950769515_))
                                (let ((_hd6951269544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6950769515_)))
                                      (_tl6951369546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6950769515_))))
                                  (let* ((_method69549_ _hd6951269544_)
                                         (_rest69551_ _tl6951369546_))
                                    (declare (not safe))
                                    (_K6951169541_ _rest69551_ _method69549_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6950969534_))))))))
                   (_K6948769569_
                    (lambda (_rest69556_ _method-name69557_)
                      (let ((_$e69560_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69471_
                                _method-name69557_
                                '#f))))
                        (if _$e69560_
                            ((lambda (_method69563_)
                               (let ((__tmp69994
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69479_ '1)))
                                     (__tmp69993
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69563_ _methods69481_))))
                                 (declare (not safe))
                                 (_loop69474_
                                  _rest69556_
                                  __tmp69994
                                  __tmp69993)))
                             _$e69560_)
                            ((lambda (_klass69565_
                                      _obj-klass69566_
                                      _method-name69567_)
                               (let ((__tmp69992
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69565_)))
                                     (__tmp69991
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69566_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69565_
                                  'interface-id:
                                  __tmp69992
                                  'class:
                                  _obj-klass69566_
                                  'class-id:
                                  __tmp69991
                                  'method:
                                  _method-name69567_)))
                             _klass69468_
                             _obj-klass69469_
                             _method-name69557_))))))
              (if (let () (declare (not safe)) (##pair? _rest6948369491_))
                  (let ((_hd6948869572_
                         (let ()
                           (declare (not safe))
                           (##car _rest6948369491_)))
                        (_tl6948969574_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6948369491_))))
                    (let* ((_method-name69577_ _hd6948869572_)
                           (_rest69579_ _tl6948969574_))
                      (declare (not safe))
                      (_K6948769569_ _rest69579_ _method-name69577_)))
                  (let () (declare (not safe)) (_else6948569553_))))))))
    (define try-create-prototype
      (lambda (_descriptor69353_ _klass69354_ _obj-klass69355_)
        (let ((_method-table69357_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69355_))))
          (let _loop69360_ ((_rest69363_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69353_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69365_ '0)
                            (_methods69367_ '()))
            (let* ((_rest6936969377_ _rest69363_)
                   (_else6937169439_
                    (lambda ()
                      (let ((_prototype69385_
                             (let ((__obj69932
                                    (let ((__tmp69995
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69365_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69354_
                                       __tmp69995))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69932 '#f))
                               __obj69932)))
                        (let _loop69388_ ((_rest69390_ _methods69367_)
                                          (_off69391_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69365_ '1))))
                          (let* ((_rest6939369401_ _rest69390_)
                                 (_else6939569420_
                                  (lambda ()
                                    (let ((_prototype-key69409_
                                           (let ((__tmp69997
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69354_)))
                                                 (__tmp69996
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69355_))))
                                             (declare (not safe))
                                             (cons __tmp69997 __tmp69996))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69414_ ()
                                          (if (let ((__tmp69998
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69998 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69414_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69409_
                                         _prototype69385_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69418_)
                                         _prototype69418_)
                                       _prototype69385_))))
                                 (_K6939769427_
                                  (lambda (_rest69423_ _method69424_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69385_
                                       _method69424_
                                       _off69391_
                                       _klass69354_
                                       '#f))
                                    (let ((__tmp69999
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69391_ '1))))
                                      (declare (not safe))
                                      (_loop69388_ _rest69423_ __tmp69999)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6939369401_))
                                (let ((_hd6939869430_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6939369401_)))
                                      (_tl6939969432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6939369401_))))
                                  (let* ((_method69435_ _hd6939869430_)
                                         (_rest69437_ _tl6939969432_))
                                    (declare (not safe))
                                    (_K6939769427_ _rest69437_ _method69435_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6939569420_))))))))
                   (_K6937369455_
                    (lambda (_rest69442_ _method-name69443_)
                      (let ((_$e69446_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69357_
                                _method-name69443_
                                '#f))))
                        (if _$e69446_
                            ((lambda (_method69449_)
                               (let ((__tmp70001
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69365_ '1)))
                                     (__tmp70000
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69449_ _methods69367_))))
                                 (declare (not safe))
                                 (_loop69360_
                                  _rest69442_
                                  __tmp70001
                                  __tmp70000)))
                             _$e69446_)
                            ((lambda (_klass69451_
                                      _obj-klass69452_
                                      _method-name69453_)
                               '#f)
                             _klass69354_
                             _obj-klass69355_
                             _method-name69443_))))))
              (if (let () (declare (not safe)) (##pair? _rest6936969377_))
                  (let ((_hd6937469458_
                         (let ()
                           (declare (not safe))
                           (##car _rest6936969377_)))
                        (_tl6937569460_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6936969377_))))
                    (let* ((_method-name69463_ _hd6937469458_)
                           (_rest69465_ _tl6937569460_))
                      (declare (not safe))
                      (_K6937369455_ _rest69465_ _method-name69463_)))
                  (let () (declare (not safe)) (_else6937169439_))))))))
    (define cast
      (lambda (_descriptor69315_ _obj69317_)
        (declare (not interrupts-enabled))
        (let* ((_klass69321_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69315_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69324_
                (let () (declare (not safe)) (##type-id _klass69321_)))
               (_obj-klass69327_
                (let () (declare (not safe)) (class-of _obj69317_)))
               (_obj-klass-id69330_
                (let () (declare (not safe)) (##type-id _obj-klass69327_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69324_ _obj-klass-id69330_))
              _obj69317_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69327_))
                  (let ((__tmp70003
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69317_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor69315_ __tmp70003))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69336_ ()
                        (if (let ((__tmp70002
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70002 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69336_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69324_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69330_))
                    (let ((_prototype69346_
                           (let ((_$e69340_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69340_
                                 ((lambda (_prototype69343_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69343_)
                                  _$e69340_)
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
                                      _descriptor69315_
                                      _klass69321_
                                      _obj-klass69327_)))))))
                      ((lambda (_prototype69348_ _obj69349_)
                         (let ((_instance69351_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype69348_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance69351_
                              _obj69349_
                              '1
                              '#f
                              'cast))
                           _instance69351_))
                       _prototype69346_
                       _obj69317_))))))))
    (define try-cast
      (lambda (_descriptor69277_ _obj69279_)
        (declare (not interrupts-enabled))
        (let* ((_klass69283_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69277_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69286_
                (let () (declare (not safe)) (##type-id _klass69283_)))
               (_obj-klass69289_
                (let () (declare (not safe)) (class-of _obj69279_)))
               (_obj-klass-id69292_
                (let () (declare (not safe)) (##type-id _obj-klass69289_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69286_ _obj-klass-id69292_))
              _obj69279_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69289_))
                  (let ((__tmp70005
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69279_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor69277_ __tmp70005))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69298_ ()
                        (if (let ((__tmp70004
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70004 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69298_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69286_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69292_))
                    (let ((_prototype69308_
                           (let ((_$e69302_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69302_
                                 ((lambda (_prototype69305_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69305_)
                                  _$e69302_)
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
                                      _descriptor69277_
                                      _klass69283_
                                      _obj-klass69289_)))))))
                      ((lambda (_prototype69310_ _obj69311_)
                         (if _prototype69310_
                             (let ((_instance69313_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype69310_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance69313_
                                  _obj69311_
                                  '1
                                  '#f
                                  'cast))
                               _instance69313_)
                             '#f))
                       _prototype69308_
                       _obj69279_))))))))
    (define satisfies?
      (lambda (_descriptor69241_ _obj69243_)
        (declare (not interrupts-enabled))
        (let* ((_klass69247_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69241_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69250_
                (let () (declare (not safe)) (##type-id _klass69247_)))
               (_obj-klass69253_
                (let () (declare (not safe)) (class-of _obj69243_)))
               (_obj-klass-id69256_
                (let () (declare (not safe)) (##type-id _obj-klass69253_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69250_ _obj-klass-id69256_))
              _obj69243_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69253_))
                  (let ((__tmp70007
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69243_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor69241_ __tmp70007))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69262_ ()
                        (if (let ((__tmp70006
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp70006 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69262_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69250_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69256_))
                    (let ((_prototype69272_
                           (let ((_$e69266_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69266_
                                 ((lambda (_prototype69269_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69269_)
                                  _$e69266_)
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
                                      _descriptor69241_
                                      _klass69247_
                                      _obj-klass69253_)))))))
                      ((lambda (_prototype69274_ _obj69275_)
                         (if _prototype69274_ '#t '#f))
                       _prototype69272_
                       _obj69243_))))))))))
