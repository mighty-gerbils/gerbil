(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710694202)
  (begin
    (define CastError::t
      (let ((__tmp66916 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp66916
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args66909_ (apply make-instance CastError::t _$args66909_)))
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
      (lambda (_where66783_ _message66784_ . _irritants66785_)
        (raise (let ((__obj66912
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj66912
                  _message66784_
                  'where:
                  _where66783_
                  'irritants:
                  _irritants66785_)
                 __obj66912))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp66919 (list))
            (__tmp66917
             (let ((__tmp66918
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp66918 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp66919
         '(__object)
         __tmp66917
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
      (let ((__tmp66924 (list))
            (__tmp66920
             (let ((__tmp66923
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp66921
                    (let ((__tmp66922
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp66922 '()))))
               (declare (not safe))
               (cons __tmp66923 __tmp66921))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp66924
         '(type methods)
         __tmp66920
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args66780_
        (apply make-instance interface-descriptor::t _$args66780_)))
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
      (lambda (_key66778_)
        (let ((__tmp66926
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key66778_))))
              (__tmp66925
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key66778_)))))
          (declare (not safe))
          (##fxxor __tmp66926 __tmp66925))))
    (define __interface-test-key
      (lambda (_a66775_ _b66776_)
        (if (let ((__tmp66928 (let () (declare (not safe)) (##car _a66775_)))
                  (__tmp66927 (let () (declare (not safe)) (##car _b66776_))))
              (declare (not safe))
              (##eq? __tmp66928 __tmp66927))
            (let ((__tmp66930 (let () (declare (not safe)) (##cdr _a66775_)))
                  (__tmp66929 (let () (declare (not safe)) (##cdr _b66776_))))
              (declare (not safe))
              (##eq? __tmp66930 __tmp66929))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint66756_ _seed66758_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint66756_
           __interface-hash-key
           __interface-test-key
           _seed66758_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint66764_ '#f) (_seed66766_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint66764_ _seed66766_))))
    (define make-prototype-table__1
      (lambda (_size-hint66768_)
        (let ((_seed66770_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint66768_ _seed66770_))))
    (define make-prototype-table
      (lambda _g66932_
        (let ((_g66931_ (let () (declare (not safe)) (##length _g66932_))))
          (cond ((let () (declare (not safe)) (##fx= _g66931_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g66932_))
                ((let () (declare (not safe)) (##fx= _g66931_ 1))
                 (apply (lambda (_size-hint66768_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint66768_)))
                        _g66932_))
                ((let () (declare (not safe)) (##fx= _g66931_ 2))
                 (apply (lambda (_size-hint66772_ _seed66773_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint66772_
                             _seed66773_)))
                        _g66932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g66932_))))))
    (define prototype-table-ref
      (lambda (_tab66713_ _key66714_ _default66715_)
        (let ((_table66717_
               (let () (declare (not safe)) (&raw-table-table _tab66713_)))
              (_seed66718_
               (let () (declare (not safe)) (&raw-table-seed _tab66713_))))
          (let* ((_h66720_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66714_))
                         _seed66718_))
                 (_size66723_ (vector-length _table66717_))
                 (_entries66726_ (fxquotient _size66723_ '2))
                 (_start66729_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66720_ _entries66726_)
                   '1)))
            (let _loop66733_ ((_probe66736_ _start66729_)
                              (_i66738_ '1)
                              (_deleted66740_ '#f))
              (let ((_k66743_ (vector-ref _table66717_ _probe66736_)))
                (if (let ((__tmp66933 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66743_ __tmp66933))
                    _default66715_
                    (if (let ((__tmp66934 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66743_ __tmp66934))
                        (let ((__tmp66937
                               (let ((_next-probe66746_
                                      (fx+ _start66729_
                                           _i66738_
                                           (fx* _i66738_ _i66738_))))
                                 (fxmodulo _next-probe66746_ _size66723_)))
                              (__tmp66936 (fx+ _i66738_ '1))
                              (__tmp66935
                               (let ((_$e66749_ _deleted66740_))
                                 (if _$e66749_ _$e66749_ _probe66736_))))
                          (declare (not safe))
                          (_loop66733_ __tmp66937 __tmp66936 __tmp66935))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66714_ _k66743_))
                            (vector-ref _table66717_ (fx+ _probe66736_ '1))
                            (let ((__tmp66939
                                   (let ((_next-probe66752_
                                          (fx+ _start66729_
                                               _i66738_
                                               (fx* _i66738_ _i66738_))))
                                     (fxmodulo _next-probe66752_ _size66723_)))
                                  (__tmp66938 (fx+ _i66738_ '1)))
                              (declare (not safe))
                              (_loop66733_
                               __tmp66939
                               __tmp66938
                               _deleted66740_)))))))))))
    (define prototype-table-set!
      (lambda (_tab66709_ _key66710_ _value66711_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab66709_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab66709_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab66709_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab66709_ _key66710_ _value66711_))))
    (define __prototype-table-set!
      (lambda (_tab66664_ _key66665_ _value66666_)
        (let ((_table66669_
               (let () (declare (not safe)) (&raw-table-table _tab66664_)))
              (_seed66670_
               (let () (declare (not safe)) (&raw-table-seed _tab66664_))))
          (let* ((_h66672_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66665_))
                         _seed66670_))
                 (_size66675_ (vector-length _table66669_))
                 (_entries66678_ (fxquotient _size66675_ '2))
                 (_start66681_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66672_ _entries66678_)
                   '1)))
            (let _loop66685_ ((_probe66688_ _start66681_)
                              (_i66690_ '1)
                              (_deleted66692_ '#f))
              (let ((_k66695_ (vector-ref _table66669_ _probe66688_)))
                (if (let ((__tmp66940 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66695_ __tmp66940))
                    (if _deleted66692_
                        (begin
                          (vector-set! _table66669_ _deleted66692_ _key66665_)
                          (vector-set!
                           _table66669_
                           (fx+ _deleted66692_ '1)
                           _value66666_)
                          ((lambda ()
                             (let ((__tmp66941
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66664_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66664_
                                __tmp66941)))))
                        (begin
                          (vector-set! _table66669_ _probe66688_ _key66665_)
                          (vector-set!
                           _table66669_
                           (fx+ _probe66688_ '1)
                           _value66666_)
                          ((lambda ()
                             (let ((__tmp66942
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab66664_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab66664_ __tmp66942))
                             (let ((__tmp66943
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66664_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66664_
                                __tmp66943))))))
                    (if (let ((__tmp66944 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66695_ __tmp66944))
                        (let ((__tmp66947
                               (let ((_next-probe66700_
                                      (fx+ _start66681_
                                           _i66690_
                                           (fx* _i66690_ _i66690_))))
                                 (fxmodulo _next-probe66700_ _size66675_)))
                              (__tmp66946 (fx+ _i66690_ '1))
                              (__tmp66945
                               (let ((_$e66703_ _deleted66692_))
                                 (if _$e66703_ _$e66703_ _probe66688_))))
                          (declare (not safe))
                          (_loop66685_ __tmp66947 __tmp66946 __tmp66945))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66665_ _k66695_))
                            (begin
                              (vector-set!
                               _table66669_
                               _probe66688_
                               _key66665_)
                              (vector-set!
                               _table66669_
                               (fx+ _probe66688_ '1)
                               _value66666_))
                            (let ((__tmp66949
                                   (let ((_next-probe66706_
                                          (fx+ _start66681_
                                               _i66690_
                                               (fx* _i66690_ _i66690_))))
                                     (fxmodulo _next-probe66706_ _size66675_)))
                                  (__tmp66948 (fx+ _i66690_ '1)))
                              (declare (not safe))
                              (_loop66685_
                               __tmp66949
                               __tmp66948
                               _deleted66692_)))))))))))
    (define prototype-table-update!
      (lambda (_tab66659_
               _key66660_
               _prototype-table-update!66661_
               _default66662_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab66659_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab66659_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab66659_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab66659_
           _key66660_
           _prototype-table-update!66661_
           _default66662_))))
    (define __prototype-table-update!
      (lambda (_tab66613_
               _key66614_
               _prototype-table-update!66615_
               _default66616_)
        (let ((_table66619_
               (let () (declare (not safe)) (&raw-table-table _tab66613_)))
              (_seed66620_
               (let () (declare (not safe)) (&raw-table-seed _tab66613_))))
          (let* ((_h66622_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66614_))
                         _seed66620_))
                 (_size66625_ (vector-length _table66619_))
                 (_entries66628_ (fxquotient _size66625_ '2))
                 (_start66631_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66622_ _entries66628_)
                   '1)))
            (let _loop66635_ ((_probe66638_ _start66631_)
                              (_i66640_ '1)
                              (_deleted66642_ '#f))
              (let ((_k66645_ (vector-ref _table66619_ _probe66638_)))
                (if (let ((__tmp66950 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66645_ __tmp66950))
                    (if _deleted66642_
                        (begin
                          (vector-set! _table66619_ _deleted66642_ _key66614_)
                          (vector-set!
                           _table66619_
                           (fx+ _deleted66642_ '1)
                           (_prototype-table-update!66615_ _default66616_))
                          ((lambda ()
                             (let ((__tmp66951
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66613_
                                __tmp66951)))))
                        (begin
                          (vector-set! _table66619_ _probe66638_ _key66614_)
                          (vector-set!
                           _table66619_
                           (fx+ _probe66638_ '1)
                           (_prototype-table-update!66615_ _default66616_))
                          ((lambda ()
                             (let ((__tmp66952
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab66613_ __tmp66952))
                             (let ((__tmp66953
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66613_
                                __tmp66953))))))
                    (if (let ((__tmp66954 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66645_ __tmp66954))
                        (let ((__tmp66957
                               (let ((_next-probe66650_
                                      (fx+ _start66631_
                                           _i66640_
                                           (fx* _i66640_ _i66640_))))
                                 (fxmodulo _next-probe66650_ _size66625_)))
                              (__tmp66956 (fx+ _i66640_ '1))
                              (__tmp66955
                               (let ((_$e66653_ _deleted66642_))
                                 (if _$e66653_ _$e66653_ _probe66638_))))
                          (declare (not safe))
                          (_loop66635_ __tmp66957 __tmp66956 __tmp66955))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66614_ _k66645_))
                            (begin
                              (vector-set!
                               _table66619_
                               _probe66638_
                               _key66614_)
                              (vector-set!
                               _table66619_
                               (fx+ _probe66638_ '1)
                               (_prototype-table-update!66615_
                                (vector-ref
                                 _table66619_
                                 (fx+ _probe66638_ '1)))))
                            (let ((__tmp66959
                                   (let ((_next-probe66656_
                                          (fx+ _start66631_
                                               _i66640_
                                               (fx* _i66640_ _i66640_))))
                                     (fxmodulo _next-probe66656_ _size66625_)))
                                  (__tmp66958 (fx+ _i66640_ '1)))
                              (declare (not safe))
                              (_loop66635_
                               __tmp66959
                               __tmp66958
                               _deleted66642_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab66572_ _key66574_)
        (let ((_table66577_
               (let () (declare (not safe)) (&raw-table-table _tab66572_)))
              (_seed66579_
               (let () (declare (not safe)) (&raw-table-seed _tab66572_))))
          (let* ((_h66582_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66574_))
                         _seed66579_))
                 (_size66585_ (vector-length _table66577_))
                 (_entries66588_ (fxquotient _size66585_ '2))
                 (_start66591_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66582_ _entries66588_)
                   '1)))
            (let _loop66595_ ((_probe66598_ _start66591_) (_i66600_ '1))
              (let ((_k66603_ (vector-ref _table66577_ _probe66598_)))
                (if (let ((__tmp66960 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66603_ __tmp66960))
                    '#!void
                    (if (let ((__tmp66961 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66603_ __tmp66961))
                        (let ((__tmp66963
                               (let ((_next-probe66606_
                                      (fx+ _start66591_
                                           _i66600_
                                           (fx* _i66600_ _i66600_))))
                                 (fxmodulo _next-probe66606_ _size66585_)))
                              (__tmp66962 (fx+ _i66600_ '1)))
                          (declare (not safe))
                          (_loop66595_ __tmp66963 __tmp66962))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66574_ _k66603_))
                            (begin
                              (vector-set!
                               _table66577_
                               _probe66598_
                               (macro-deleted-obj))
                              (vector-set!
                               _table66577_
                               (fx+ _probe66598_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66964
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab66572_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab66572_
                                    __tmp66964)))))
                            (let ((__tmp66966
                                   (let ((_next-probe66610_
                                          (fx+ _start66591_
                                               _i66600_
                                               (fx* _i66600_ _i66600_))))
                                     (fxmodulo _next-probe66610_ _size66585_)))
                                  (__tmp66965 (fx+ _i66600_ '1)))
                              (declare (not safe))
                              (_loop66595_ __tmp66966 __tmp66965)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass66564_)
        (let ((_super6656566567_
               (let () (declare (not safe)) (##type-super _klass66564_))))
          (if _super6656566567_
              (let ((_super66570_ _super6656566567_))
                (let ((__tmp66968
                       (let () (declare (not safe)) (##type-id _super66570_)))
                      (__tmp66967
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp66968 __tmp66967)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor66450_ _klass66451_ _obj-klass66452_)
        (let ((_method-table66454_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass66452_))))
          (let _loop66457_ ((_rest66460_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor66450_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count66462_ '0)
                            (_methods66464_ '()))
            (let* ((_rest6646666474_ _rest66460_)
                   (_else6646866536_
                    (lambda ()
                      (let ((_prototype66482_
                             (let ((__obj66914
                                    (let ((__tmp66969
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66462_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass66451_
                                       __tmp66969))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj66914 '#f))
                               __obj66914)))
                        (let _loop66485_ ((_rest66487_ _methods66464_)
                                          (_off66488_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66462_ '1))))
                          (let* ((_rest6649066498_ _rest66487_)
                                 (_else6649266517_
                                  (lambda ()
                                    (let ((_prototype-key66506_
                                           (let ((__tmp66971
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass66451_)))
                                                 (__tmp66970
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass66452_))))
                                             (declare (not safe))
                                             (cons __tmp66971 __tmp66970))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again66511_ ()
                                          (if (let ((__tmp66972
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp66972 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again66511_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key66506_
                                         _prototype66482_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype66515_)
                                         _prototype66515_)
                                       _prototype66482_))))
                                 (_K6649466524_
                                  (lambda (_rest66520_ _method66521_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype66482_
                                       _method66521_
                                       _off66488_
                                       _klass66451_
                                       '#f))
                                    (let ((__tmp66973
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off66488_ '1))))
                                      (declare (not safe))
                                      (_loop66485_ _rest66520_ __tmp66973)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6649066498_))
                                (let ((_hd6649566527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6649066498_)))
                                      (_tl6649666529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6649066498_))))
                                  (let* ((_method66532_ _hd6649566527_)
                                         (_rest66534_ _tl6649666529_))
                                    (declare (not safe))
                                    (_K6649466524_ _rest66534_ _method66532_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6649266517_))))))))
                   (_K6647066552_
                    (lambda (_rest66539_ _method-name66540_)
                      (let ((_$e66543_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table66454_
                                _method-name66540_
                                '#f))))
                        (if _$e66543_
                            ((lambda (_method66546_)
                               (let ((__tmp66975
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count66462_ '1)))
                                     (__tmp66974
                                      (let ()
                                        (declare (not safe))
                                        (cons _method66546_ _methods66464_))))
                                 (declare (not safe))
                                 (_loop66457_
                                  _rest66539_
                                  __tmp66975
                                  __tmp66974)))
                             _$e66543_)
                            ((lambda (_klass66548_
                                      _obj-klass66549_
                                      _method-name66550_)
                               (let ((__tmp66977
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass66548_)))
                                     (__tmp66976
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass66549_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass66548_
                                  'interface-id:
                                  __tmp66977
                                  'class:
                                  _obj-klass66549_
                                  'class-id:
                                  __tmp66976
                                  'method:
                                  _method-name66550_)))
                             _klass66451_
                             _obj-klass66452_
                             _method-name66540_))))))
              (if (let () (declare (not safe)) (##pair? _rest6646666474_))
                  (let ((_hd6647166555_
                         (let ()
                           (declare (not safe))
                           (##car _rest6646666474_)))
                        (_tl6647266557_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6646666474_))))
                    (let* ((_method-name66560_ _hd6647166555_)
                           (_rest66562_ _tl6647266557_))
                      (declare (not safe))
                      (_K6647066552_ _rest66562_ _method-name66560_)))
                  (let () (declare (not safe)) (_else6646866536_))))))))
    (define try-create-prototype
      (lambda (_descriptor66336_ _klass66337_ _obj-klass66338_)
        (let ((_method-table66340_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass66338_))))
          (let _loop66343_ ((_rest66346_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor66336_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count66348_ '0)
                            (_methods66350_ '()))
            (let* ((_rest6635266360_ _rest66346_)
                   (_else6635466422_
                    (lambda ()
                      (let ((_prototype66368_
                             (let ((__obj66915
                                    (let ((__tmp66978
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66348_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass66337_
                                       __tmp66978))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj66915 '#f))
                               __obj66915)))
                        (let _loop66371_ ((_rest66373_ _methods66350_)
                                          (_off66374_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66348_ '1))))
                          (let* ((_rest6637666384_ _rest66373_)
                                 (_else6637866403_
                                  (lambda ()
                                    (let ((_prototype-key66392_
                                           (let ((__tmp66980
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass66337_)))
                                                 (__tmp66979
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass66338_))))
                                             (declare (not safe))
                                             (cons __tmp66980 __tmp66979))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again66397_ ()
                                          (if (let ((__tmp66981
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp66981 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again66397_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key66392_
                                         _prototype66368_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype66401_)
                                         _prototype66401_)
                                       _prototype66368_))))
                                 (_K6638066410_
                                  (lambda (_rest66406_ _method66407_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype66368_
                                       _method66407_
                                       _off66374_
                                       _klass66337_
                                       '#f))
                                    (let ((__tmp66982
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off66374_ '1))))
                                      (declare (not safe))
                                      (_loop66371_ _rest66406_ __tmp66982)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6637666384_))
                                (let ((_hd6638166413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6637666384_)))
                                      (_tl6638266415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6637666384_))))
                                  (let* ((_method66418_ _hd6638166413_)
                                         (_rest66420_ _tl6638266415_))
                                    (declare (not safe))
                                    (_K6638066410_ _rest66420_ _method66418_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6637866403_))))))))
                   (_K6635666438_
                    (lambda (_rest66425_ _method-name66426_)
                      (let ((_$e66429_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table66340_
                                _method-name66426_
                                '#f))))
                        (if _$e66429_
                            ((lambda (_method66432_)
                               (let ((__tmp66984
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count66348_ '1)))
                                     (__tmp66983
                                      (let ()
                                        (declare (not safe))
                                        (cons _method66432_ _methods66350_))))
                                 (declare (not safe))
                                 (_loop66343_
                                  _rest66425_
                                  __tmp66984
                                  __tmp66983)))
                             _$e66429_)
                            ((lambda (_klass66434_
                                      _obj-klass66435_
                                      _method-name66436_)
                               '#f)
                             _klass66337_
                             _obj-klass66338_
                             _method-name66426_))))))
              (if (let () (declare (not safe)) (##pair? _rest6635266360_))
                  (let ((_hd6635766441_
                         (let ()
                           (declare (not safe))
                           (##car _rest6635266360_)))
                        (_tl6635866443_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6635266360_))))
                    (let* ((_method-name66446_ _hd6635766441_)
                           (_rest66448_ _tl6635866443_))
                      (declare (not safe))
                      (_K6635666438_ _rest66448_ _method-name66446_)))
                  (let () (declare (not safe)) (_else6635466422_))))))))
    (define cast
      (lambda (_descriptor66298_ _obj66300_)
        (declare (not interrupts-enabled))
        (let* ((_klass66304_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66298_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66307_
                (let () (declare (not safe)) (##type-id _klass66304_)))
               (_obj-klass66310_
                (let () (declare (not safe)) (class-of _obj66300_)))
               (_obj-klass-id66313_
                (let () (declare (not safe)) (##type-id _obj-klass66310_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66307_ _obj-klass-id66313_))
              _obj66300_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66310_))
                  (let ((__tmp66985
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66300_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor66298_ __tmp66985))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66319_ ()
                        (if (let ((__tmp66986
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66986 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66319_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66307_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66313_))
                    (let ((_prototype66329_
                           (let ((_$e66323_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66323_
                                 ((lambda (_prototype66326_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66326_)
                                  _$e66323_)
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
                                      _descriptor66298_
                                      _klass66304_
                                      _obj-klass66310_)))))))
                      ((lambda (_prototype66331_ _obj66332_)
                         (let ((_instance66334_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype66331_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance66334_
                              _obj66332_
                              '1
                              '#f
                              'cast))
                           _instance66334_))
                       _prototype66329_
                       _obj66300_))))))))
    (define try-cast
      (lambda (_descriptor66260_ _obj66262_)
        (declare (not interrupts-enabled))
        (let* ((_klass66266_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66260_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66269_
                (let () (declare (not safe)) (##type-id _klass66266_)))
               (_obj-klass66272_
                (let () (declare (not safe)) (class-of _obj66262_)))
               (_obj-klass-id66275_
                (let () (declare (not safe)) (##type-id _obj-klass66272_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66269_ _obj-klass-id66275_))
              _obj66262_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66272_))
                  (let ((__tmp66987
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66262_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor66260_ __tmp66987))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66281_ ()
                        (if (let ((__tmp66988
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66988 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66281_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66269_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66275_))
                    (let ((_prototype66291_
                           (let ((_$e66285_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66285_
                                 ((lambda (_prototype66288_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66288_)
                                  _$e66285_)
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
                                      _descriptor66260_
                                      _klass66266_
                                      _obj-klass66272_)))))))
                      ((lambda (_prototype66293_ _obj66294_)
                         (if _prototype66293_
                             (let ((_instance66296_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype66293_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance66296_
                                  _obj66294_
                                  '1
                                  '#f
                                  'cast))
                               _instance66296_)
                             '#f))
                       _prototype66291_
                       _obj66262_))))))))
    (define satisfies?
      (lambda (_descriptor66224_ _obj66226_)
        (declare (not interrupts-enabled))
        (let* ((_klass66230_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66224_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66233_
                (let () (declare (not safe)) (##type-id _klass66230_)))
               (_obj-klass66236_
                (let () (declare (not safe)) (class-of _obj66226_)))
               (_obj-klass-id66239_
                (let () (declare (not safe)) (##type-id _obj-klass66236_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66233_ _obj-klass-id66239_))
              _obj66226_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66236_))
                  (let ((__tmp66989
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66226_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor66224_ __tmp66989))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66245_ ()
                        (if (let ((__tmp66990
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66990 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66245_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66233_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66239_))
                    (let ((_prototype66255_
                           (let ((_$e66249_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66249_
                                 ((lambda (_prototype66252_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66252_)
                                  _$e66249_)
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
                                      _descriptor66224_
                                      _klass66230_
                                      _obj-klass66236_)))))))
                      ((lambda (_prototype66257_ _obj66258_)
                         (if _prototype66257_ '#t '#f))
                       _prototype66255_
                       _obj66226_))))))))))
